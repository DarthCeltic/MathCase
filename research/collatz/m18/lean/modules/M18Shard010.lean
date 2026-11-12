import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard010

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_49279 : ∀ k : Nat,
    iterate (262144 * k + 49279) 29 = 177147 * k + 33302 ∧
      177147 * k + 33302 < 262144 * k + 49279 := by
  intro k
  have h1 : C (262144 * k + 49279) = 786432 * k + 147838 := by
    unfold C
    simp [show (262144 * k + 49279) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 147838) = 393216 * k + 73919 := by
    unfold C
    simp [show (786432 * k + 147838) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 73919) = 1179648 * k + 221758 := by
    unfold C
    simp [show (393216 * k + 73919) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 221758) = 589824 * k + 110879 := by
    unfold C
    simp [show (1179648 * k + 221758) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 110879) = 1769472 * k + 332638 := by
    unfold C
    simp [show (589824 * k + 110879) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 332638) = 884736 * k + 166319 := by
    unfold C
    simp [show (1769472 * k + 332638) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 166319) = 2654208 * k + 498958 := by
    unfold C
    simp [show (884736 * k + 166319) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 498958) = 1327104 * k + 249479 := by
    unfold C
    simp [show (2654208 * k + 498958) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 249479) = 3981312 * k + 748438 := by
    unfold C
    simp [show (1327104 * k + 249479) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 748438) = 1990656 * k + 374219 := by
    unfold C
    simp [show (3981312 * k + 748438) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 374219) = 5971968 * k + 1122658 := by
    unfold C
    simp [show (1990656 * k + 374219) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1122658) = 2985984 * k + 561329 := by
    unfold C
    simp [show (5971968 * k + 1122658) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 561329) = 8957952 * k + 1683988 := by
    unfold C
    simp [show (2985984 * k + 561329) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 1683988) = 4478976 * k + 841994 := by
    unfold C
    simp [show (8957952 * k + 1683988) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 841994) = 2239488 * k + 420997 := by
    unfold C
    simp [show (4478976 * k + 841994) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 420997) = 6718464 * k + 1262992 := by
    unfold C
    simp [show (2239488 * k + 420997) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1262992) = 3359232 * k + 631496 := by
    unfold C
    simp [show (6718464 * k + 1262992) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 631496) = 1679616 * k + 315748 := by
    unfold C
    simp [show (3359232 * k + 631496) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 315748) = 839808 * k + 157874 := by
    unfold C
    simp [show (1679616 * k + 315748) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 157874) = 419904 * k + 78937 := by
    unfold C
    simp [show (839808 * k + 157874) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 78937) = 1259712 * k + 236812 := by
    unfold C
    simp [show (419904 * k + 78937) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 236812) = 629856 * k + 118406 := by
    unfold C
    simp [show (1259712 * k + 236812) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 118406) = 314928 * k + 59203 := by
    unfold C
    simp [show (629856 * k + 118406) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 59203) = 944784 * k + 177610 := by
    unfold C
    simp [show (314928 * k + 59203) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 177610) = 472392 * k + 88805 := by
    unfold C
    simp [show (944784 * k + 177610) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 88805) = 1417176 * k + 266416 := by
    unfold C
    simp [show (472392 * k + 88805) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 266416) = 708588 * k + 133208 := by
    unfold C
    simp [show (1417176 * k + 266416) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 133208) = 354294 * k + 66604 := by
    unfold C
    simp [show (708588 * k + 133208) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 66604) = 177147 * k + 33302 := by
    unfold C
    simp [show (354294 * k + 66604) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 49279) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 49279))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_49403 : ∀ k : Nat,
    iterate (262144 * k + 49403) 29 = 177147 * k + 33386 ∧
      177147 * k + 33386 < 262144 * k + 49403 := by
  intro k
  have h1 : C (262144 * k + 49403) = 786432 * k + 148210 := by
    unfold C
    simp [show (262144 * k + 49403) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 148210) = 393216 * k + 74105 := by
    unfold C
    simp [show (786432 * k + 148210) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 74105) = 1179648 * k + 222316 := by
    unfold C
    simp [show (393216 * k + 74105) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 222316) = 589824 * k + 111158 := by
    unfold C
    simp [show (1179648 * k + 222316) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 111158) = 294912 * k + 55579 := by
    unfold C
    simp [show (589824 * k + 111158) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 55579) = 884736 * k + 166738 := by
    unfold C
    simp [show (294912 * k + 55579) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 166738) = 442368 * k + 83369 := by
    unfold C
    simp [show (884736 * k + 166738) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 83369) = 1327104 * k + 250108 := by
    unfold C
    simp [show (442368 * k + 83369) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 250108) = 663552 * k + 125054 := by
    unfold C
    simp [show (1327104 * k + 250108) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 125054) = 331776 * k + 62527 := by
    unfold C
    simp [show (663552 * k + 125054) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 62527) = 995328 * k + 187582 := by
    unfold C
    simp [show (331776 * k + 62527) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 187582) = 497664 * k + 93791 := by
    unfold C
    simp [show (995328 * k + 187582) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 93791) = 1492992 * k + 281374 := by
    unfold C
    simp [show (497664 * k + 93791) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 281374) = 746496 * k + 140687 := by
    unfold C
    simp [show (1492992 * k + 281374) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 140687) = 2239488 * k + 422062 := by
    unfold C
    simp [show (746496 * k + 140687) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 422062) = 1119744 * k + 211031 := by
    unfold C
    simp [show (2239488 * k + 422062) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 211031) = 3359232 * k + 633094 := by
    unfold C
    simp [show (1119744 * k + 211031) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 633094) = 1679616 * k + 316547 := by
    unfold C
    simp [show (3359232 * k + 633094) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 316547) = 5038848 * k + 949642 := by
    unfold C
    simp [show (1679616 * k + 316547) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 949642) = 2519424 * k + 474821 := by
    unfold C
    simp [show (5038848 * k + 949642) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 474821) = 7558272 * k + 1424464 := by
    unfold C
    simp [show (2519424 * k + 474821) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 1424464) = 3779136 * k + 712232 := by
    unfold C
    simp [show (7558272 * k + 1424464) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 712232) = 1889568 * k + 356116 := by
    unfold C
    simp [show (3779136 * k + 712232) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 356116) = 944784 * k + 178058 := by
    unfold C
    simp [show (1889568 * k + 356116) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 178058) = 472392 * k + 89029 := by
    unfold C
    simp [show (944784 * k + 178058) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 89029) = 1417176 * k + 267088 := by
    unfold C
    simp [show (472392 * k + 89029) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 267088) = 708588 * k + 133544 := by
    unfold C
    simp [show (1417176 * k + 267088) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 133544) = 354294 * k + 66772 := by
    unfold C
    simp [show (708588 * k + 133544) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 66772) = 177147 * k + 33386 := by
    unfold C
    simp [show (354294 * k + 66772) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 49403) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 49403))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_49599 : ∀ k : Nat,
    iterate (262144 * k + 49599) 29 = 177147 * k + 33518 ∧
      177147 * k + 33518 < 262144 * k + 49599 := by
  intro k
  have h1 : C (262144 * k + 49599) = 786432 * k + 148798 := by
    unfold C
    simp [show (262144 * k + 49599) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 148798) = 393216 * k + 74399 := by
    unfold C
    simp [show (786432 * k + 148798) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 74399) = 1179648 * k + 223198 := by
    unfold C
    simp [show (393216 * k + 74399) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 223198) = 589824 * k + 111599 := by
    unfold C
    simp [show (1179648 * k + 223198) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 111599) = 1769472 * k + 334798 := by
    unfold C
    simp [show (589824 * k + 111599) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 334798) = 884736 * k + 167399 := by
    unfold C
    simp [show (1769472 * k + 334798) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 167399) = 2654208 * k + 502198 := by
    unfold C
    simp [show (884736 * k + 167399) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 502198) = 1327104 * k + 251099 := by
    unfold C
    simp [show (2654208 * k + 502198) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 251099) = 3981312 * k + 753298 := by
    unfold C
    simp [show (1327104 * k + 251099) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 753298) = 1990656 * k + 376649 := by
    unfold C
    simp [show (3981312 * k + 753298) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 376649) = 5971968 * k + 1129948 := by
    unfold C
    simp [show (1990656 * k + 376649) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1129948) = 2985984 * k + 564974 := by
    unfold C
    simp [show (5971968 * k + 1129948) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 564974) = 1492992 * k + 282487 := by
    unfold C
    simp [show (2985984 * k + 564974) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 282487) = 4478976 * k + 847462 := by
    unfold C
    simp [show (1492992 * k + 282487) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 847462) = 2239488 * k + 423731 := by
    unfold C
    simp [show (4478976 * k + 847462) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 423731) = 6718464 * k + 1271194 := by
    unfold C
    simp [show (2239488 * k + 423731) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1271194) = 3359232 * k + 635597 := by
    unfold C
    simp [show (6718464 * k + 1271194) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 635597) = 10077696 * k + 1906792 := by
    unfold C
    simp [show (3359232 * k + 635597) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 1906792) = 5038848 * k + 953396 := by
    unfold C
    simp [show (10077696 * k + 1906792) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 953396) = 2519424 * k + 476698 := by
    unfold C
    simp [show (5038848 * k + 953396) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 476698) = 1259712 * k + 238349 := by
    unfold C
    simp [show (2519424 * k + 476698) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 238349) = 3779136 * k + 715048 := by
    unfold C
    simp [show (1259712 * k + 238349) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 715048) = 1889568 * k + 357524 := by
    unfold C
    simp [show (3779136 * k + 715048) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 357524) = 944784 * k + 178762 := by
    unfold C
    simp [show (1889568 * k + 357524) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 178762) = 472392 * k + 89381 := by
    unfold C
    simp [show (944784 * k + 178762) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 89381) = 1417176 * k + 268144 := by
    unfold C
    simp [show (472392 * k + 89381) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 268144) = 708588 * k + 134072 := by
    unfold C
    simp [show (1417176 * k + 268144) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 134072) = 354294 * k + 67036 := by
    unfold C
    simp [show (708588 * k + 134072) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 67036) = 177147 * k + 33518 := by
    unfold C
    simp [show (354294 * k + 67036) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 49599) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 49599))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_50895 : ∀ k : Nat,
    iterate (262144 * k + 50895) 29 = 177147 * k + 34394 ∧
      177147 * k + 34394 < 262144 * k + 50895 := by
  intro k
  have h1 : C (262144 * k + 50895) = 786432 * k + 152686 := by
    unfold C
    simp [show (262144 * k + 50895) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 152686) = 393216 * k + 76343 := by
    unfold C
    simp [show (786432 * k + 152686) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 76343) = 1179648 * k + 229030 := by
    unfold C
    simp [show (393216 * k + 76343) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 229030) = 589824 * k + 114515 := by
    unfold C
    simp [show (1179648 * k + 229030) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 114515) = 1769472 * k + 343546 := by
    unfold C
    simp [show (589824 * k + 114515) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 343546) = 884736 * k + 171773 := by
    unfold C
    simp [show (1769472 * k + 343546) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 171773) = 2654208 * k + 515320 := by
    unfold C
    simp [show (884736 * k + 171773) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 515320) = 1327104 * k + 257660 := by
    unfold C
    simp [show (2654208 * k + 515320) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 257660) = 663552 * k + 128830 := by
    unfold C
    simp [show (1327104 * k + 257660) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 128830) = 331776 * k + 64415 := by
    unfold C
    simp [show (663552 * k + 128830) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 64415) = 995328 * k + 193246 := by
    unfold C
    simp [show (331776 * k + 64415) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 193246) = 497664 * k + 96623 := by
    unfold C
    simp [show (995328 * k + 193246) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 96623) = 1492992 * k + 289870 := by
    unfold C
    simp [show (497664 * k + 96623) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 289870) = 746496 * k + 144935 := by
    unfold C
    simp [show (1492992 * k + 289870) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 144935) = 2239488 * k + 434806 := by
    unfold C
    simp [show (746496 * k + 144935) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 434806) = 1119744 * k + 217403 := by
    unfold C
    simp [show (2239488 * k + 434806) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 217403) = 3359232 * k + 652210 := by
    unfold C
    simp [show (1119744 * k + 217403) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 652210) = 1679616 * k + 326105 := by
    unfold C
    simp [show (3359232 * k + 652210) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 326105) = 5038848 * k + 978316 := by
    unfold C
    simp [show (1679616 * k + 326105) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 978316) = 2519424 * k + 489158 := by
    unfold C
    simp [show (5038848 * k + 978316) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 489158) = 1259712 * k + 244579 := by
    unfold C
    simp [show (2519424 * k + 489158) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 244579) = 3779136 * k + 733738 := by
    unfold C
    simp [show (1259712 * k + 244579) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 733738) = 1889568 * k + 366869 := by
    unfold C
    simp [show (3779136 * k + 733738) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 366869) = 5668704 * k + 1100608 := by
    unfold C
    simp [show (1889568 * k + 366869) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 1100608) = 2834352 * k + 550304 := by
    unfold C
    simp [show (5668704 * k + 1100608) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 550304) = 1417176 * k + 275152 := by
    unfold C
    simp [show (2834352 * k + 550304) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 275152) = 708588 * k + 137576 := by
    unfold C
    simp [show (1417176 * k + 275152) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 137576) = 354294 * k + 68788 := by
    unfold C
    simp [show (708588 * k + 137576) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 68788) = 177147 * k + 34394 := by
    unfold C
    simp [show (354294 * k + 68788) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 50895) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 50895))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_51035 : ∀ k : Nat,
    iterate (262144 * k + 51035) 29 = 177147 * k + 34489 ∧
      177147 * k + 34489 < 262144 * k + 51035 := by
  intro k
  have h1 : C (262144 * k + 51035) = 786432 * k + 153106 := by
    unfold C
    simp [show (262144 * k + 51035) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 153106) = 393216 * k + 76553 := by
    unfold C
    simp [show (786432 * k + 153106) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 76553) = 1179648 * k + 229660 := by
    unfold C
    simp [show (393216 * k + 76553) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 229660) = 589824 * k + 114830 := by
    unfold C
    simp [show (1179648 * k + 229660) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 114830) = 294912 * k + 57415 := by
    unfold C
    simp [show (589824 * k + 114830) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 57415) = 884736 * k + 172246 := by
    unfold C
    simp [show (294912 * k + 57415) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 172246) = 442368 * k + 86123 := by
    unfold C
    simp [show (884736 * k + 172246) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 86123) = 1327104 * k + 258370 := by
    unfold C
    simp [show (442368 * k + 86123) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 258370) = 663552 * k + 129185 := by
    unfold C
    simp [show (1327104 * k + 258370) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 129185) = 1990656 * k + 387556 := by
    unfold C
    simp [show (663552 * k + 129185) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 387556) = 995328 * k + 193778 := by
    unfold C
    simp [show (1990656 * k + 387556) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 193778) = 497664 * k + 96889 := by
    unfold C
    simp [show (995328 * k + 193778) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 96889) = 1492992 * k + 290668 := by
    unfold C
    simp [show (497664 * k + 96889) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 290668) = 746496 * k + 145334 := by
    unfold C
    simp [show (1492992 * k + 290668) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 145334) = 373248 * k + 72667 := by
    unfold C
    simp [show (746496 * k + 145334) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 72667) = 1119744 * k + 218002 := by
    unfold C
    simp [show (373248 * k + 72667) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 218002) = 559872 * k + 109001 := by
    unfold C
    simp [show (1119744 * k + 218002) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 109001) = 1679616 * k + 327004 := by
    unfold C
    simp [show (559872 * k + 109001) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 327004) = 839808 * k + 163502 := by
    unfold C
    simp [show (1679616 * k + 327004) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 163502) = 419904 * k + 81751 := by
    unfold C
    simp [show (839808 * k + 163502) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 81751) = 1259712 * k + 245254 := by
    unfold C
    simp [show (419904 * k + 81751) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 245254) = 629856 * k + 122627 := by
    unfold C
    simp [show (1259712 * k + 245254) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 122627) = 1889568 * k + 367882 := by
    unfold C
    simp [show (629856 * k + 122627) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 367882) = 944784 * k + 183941 := by
    unfold C
    simp [show (1889568 * k + 367882) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 183941) = 2834352 * k + 551824 := by
    unfold C
    simp [show (944784 * k + 183941) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 551824) = 1417176 * k + 275912 := by
    unfold C
    simp [show (2834352 * k + 551824) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 275912) = 708588 * k + 137956 := by
    unfold C
    simp [show (1417176 * k + 275912) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 137956) = 354294 * k + 68978 := by
    unfold C
    simp [show (708588 * k + 137956) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 68978) = 177147 * k + 34489 := by
    unfold C
    simp [show (354294 * k + 68978) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 51035) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 51035))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_51311 : ∀ k : Nat,
    iterate (262144 * k + 51311) 29 = 177147 * k + 34675 ∧
      177147 * k + 34675 < 262144 * k + 51311 := by
  intro k
  have h1 : C (262144 * k + 51311) = 786432 * k + 153934 := by
    unfold C
    simp [show (262144 * k + 51311) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 153934) = 393216 * k + 76967 := by
    unfold C
    simp [show (786432 * k + 153934) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 76967) = 1179648 * k + 230902 := by
    unfold C
    simp [show (393216 * k + 76967) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 230902) = 589824 * k + 115451 := by
    unfold C
    simp [show (1179648 * k + 230902) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 115451) = 1769472 * k + 346354 := by
    unfold C
    simp [show (589824 * k + 115451) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 346354) = 884736 * k + 173177 := by
    unfold C
    simp [show (1769472 * k + 346354) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 173177) = 2654208 * k + 519532 := by
    unfold C
    simp [show (884736 * k + 173177) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 519532) = 1327104 * k + 259766 := by
    unfold C
    simp [show (2654208 * k + 519532) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 259766) = 663552 * k + 129883 := by
    unfold C
    simp [show (1327104 * k + 259766) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 129883) = 1990656 * k + 389650 := by
    unfold C
    simp [show (663552 * k + 129883) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 389650) = 995328 * k + 194825 := by
    unfold C
    simp [show (1990656 * k + 389650) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 194825) = 2985984 * k + 584476 := by
    unfold C
    simp [show (995328 * k + 194825) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 584476) = 1492992 * k + 292238 := by
    unfold C
    simp [show (2985984 * k + 584476) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 292238) = 746496 * k + 146119 := by
    unfold C
    simp [show (1492992 * k + 292238) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 146119) = 2239488 * k + 438358 := by
    unfold C
    simp [show (746496 * k + 146119) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 438358) = 1119744 * k + 219179 := by
    unfold C
    simp [show (2239488 * k + 438358) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 219179) = 3359232 * k + 657538 := by
    unfold C
    simp [show (1119744 * k + 219179) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 657538) = 1679616 * k + 328769 := by
    unfold C
    simp [show (3359232 * k + 657538) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 328769) = 5038848 * k + 986308 := by
    unfold C
    simp [show (1679616 * k + 328769) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 986308) = 2519424 * k + 493154 := by
    unfold C
    simp [show (5038848 * k + 986308) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 493154) = 1259712 * k + 246577 := by
    unfold C
    simp [show (2519424 * k + 493154) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 246577) = 3779136 * k + 739732 := by
    unfold C
    simp [show (1259712 * k + 246577) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 739732) = 1889568 * k + 369866 := by
    unfold C
    simp [show (3779136 * k + 739732) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 369866) = 944784 * k + 184933 := by
    unfold C
    simp [show (1889568 * k + 369866) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 184933) = 2834352 * k + 554800 := by
    unfold C
    simp [show (944784 * k + 184933) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 554800) = 1417176 * k + 277400 := by
    unfold C
    simp [show (2834352 * k + 554800) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 277400) = 708588 * k + 138700 := by
    unfold C
    simp [show (1417176 * k + 277400) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 138700) = 354294 * k + 69350 := by
    unfold C
    simp [show (708588 * k + 138700) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 69350) = 177147 * k + 34675 := by
    unfold C
    simp [show (354294 * k + 69350) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 51311) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 51311))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_51867 : ∀ k : Nat,
    iterate (262144 * k + 51867) 29 = 177147 * k + 35051 ∧
      177147 * k + 35051 < 262144 * k + 51867 := by
  intro k
  have h1 : C (262144 * k + 51867) = 786432 * k + 155602 := by
    unfold C
    simp [show (262144 * k + 51867) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 155602) = 393216 * k + 77801 := by
    unfold C
    simp [show (786432 * k + 155602) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 77801) = 1179648 * k + 233404 := by
    unfold C
    simp [show (393216 * k + 77801) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 233404) = 589824 * k + 116702 := by
    unfold C
    simp [show (1179648 * k + 233404) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 116702) = 294912 * k + 58351 := by
    unfold C
    simp [show (589824 * k + 116702) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 58351) = 884736 * k + 175054 := by
    unfold C
    simp [show (294912 * k + 58351) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 175054) = 442368 * k + 87527 := by
    unfold C
    simp [show (884736 * k + 175054) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 87527) = 1327104 * k + 262582 := by
    unfold C
    simp [show (442368 * k + 87527) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 262582) = 663552 * k + 131291 := by
    unfold C
    simp [show (1327104 * k + 262582) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 131291) = 1990656 * k + 393874 := by
    unfold C
    simp [show (663552 * k + 131291) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 393874) = 995328 * k + 196937 := by
    unfold C
    simp [show (1990656 * k + 393874) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 196937) = 2985984 * k + 590812 := by
    unfold C
    simp [show (995328 * k + 196937) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 590812) = 1492992 * k + 295406 := by
    unfold C
    simp [show (2985984 * k + 590812) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 295406) = 746496 * k + 147703 := by
    unfold C
    simp [show (1492992 * k + 295406) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 147703) = 2239488 * k + 443110 := by
    unfold C
    simp [show (746496 * k + 147703) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 443110) = 1119744 * k + 221555 := by
    unfold C
    simp [show (2239488 * k + 443110) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 221555) = 3359232 * k + 664666 := by
    unfold C
    simp [show (1119744 * k + 221555) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 664666) = 1679616 * k + 332333 := by
    unfold C
    simp [show (3359232 * k + 664666) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 332333) = 5038848 * k + 997000 := by
    unfold C
    simp [show (1679616 * k + 332333) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 997000) = 2519424 * k + 498500 := by
    unfold C
    simp [show (5038848 * k + 997000) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 498500) = 1259712 * k + 249250 := by
    unfold C
    simp [show (2519424 * k + 498500) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 249250) = 629856 * k + 124625 := by
    unfold C
    simp [show (1259712 * k + 249250) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 124625) = 1889568 * k + 373876 := by
    unfold C
    simp [show (629856 * k + 124625) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 373876) = 944784 * k + 186938 := by
    unfold C
    simp [show (1889568 * k + 373876) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 186938) = 472392 * k + 93469 := by
    unfold C
    simp [show (944784 * k + 186938) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 93469) = 1417176 * k + 280408 := by
    unfold C
    simp [show (472392 * k + 93469) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 280408) = 708588 * k + 140204 := by
    unfold C
    simp [show (1417176 * k + 280408) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 140204) = 354294 * k + 70102 := by
    unfold C
    simp [show (708588 * k + 140204) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 70102) = 177147 * k + 35051 := by
    unfold C
    simp [show (354294 * k + 70102) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 51867) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 51867))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_51903 : ∀ k : Nat,
    iterate (262144 * k + 51903) 29 = 177147 * k + 35075 ∧
      177147 * k + 35075 < 262144 * k + 51903 := by
  intro k
  have h1 : C (262144 * k + 51903) = 786432 * k + 155710 := by
    unfold C
    simp [show (262144 * k + 51903) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 155710) = 393216 * k + 77855 := by
    unfold C
    simp [show (786432 * k + 155710) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 77855) = 1179648 * k + 233566 := by
    unfold C
    simp [show (393216 * k + 77855) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 233566) = 589824 * k + 116783 := by
    unfold C
    simp [show (1179648 * k + 233566) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 116783) = 1769472 * k + 350350 := by
    unfold C
    simp [show (589824 * k + 116783) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 350350) = 884736 * k + 175175 := by
    unfold C
    simp [show (1769472 * k + 350350) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 175175) = 2654208 * k + 525526 := by
    unfold C
    simp [show (884736 * k + 175175) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 525526) = 1327104 * k + 262763 := by
    unfold C
    simp [show (2654208 * k + 525526) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 262763) = 3981312 * k + 788290 := by
    unfold C
    simp [show (1327104 * k + 262763) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 788290) = 1990656 * k + 394145 := by
    unfold C
    simp [show (3981312 * k + 788290) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 394145) = 5971968 * k + 1182436 := by
    unfold C
    simp [show (1990656 * k + 394145) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1182436) = 2985984 * k + 591218 := by
    unfold C
    simp [show (5971968 * k + 1182436) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 591218) = 1492992 * k + 295609 := by
    unfold C
    simp [show (2985984 * k + 591218) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 295609) = 4478976 * k + 886828 := by
    unfold C
    simp [show (1492992 * k + 295609) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 886828) = 2239488 * k + 443414 := by
    unfold C
    simp [show (4478976 * k + 886828) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 443414) = 1119744 * k + 221707 := by
    unfold C
    simp [show (2239488 * k + 443414) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 221707) = 3359232 * k + 665122 := by
    unfold C
    simp [show (1119744 * k + 221707) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 665122) = 1679616 * k + 332561 := by
    unfold C
    simp [show (3359232 * k + 665122) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 332561) = 5038848 * k + 997684 := by
    unfold C
    simp [show (1679616 * k + 332561) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 997684) = 2519424 * k + 498842 := by
    unfold C
    simp [show (5038848 * k + 997684) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 498842) = 1259712 * k + 249421 := by
    unfold C
    simp [show (2519424 * k + 498842) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 249421) = 3779136 * k + 748264 := by
    unfold C
    simp [show (1259712 * k + 249421) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 748264) = 1889568 * k + 374132 := by
    unfold C
    simp [show (3779136 * k + 748264) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 374132) = 944784 * k + 187066 := by
    unfold C
    simp [show (1889568 * k + 374132) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 187066) = 472392 * k + 93533 := by
    unfold C
    simp [show (944784 * k + 187066) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 93533) = 1417176 * k + 280600 := by
    unfold C
    simp [show (472392 * k + 93533) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 280600) = 708588 * k + 140300 := by
    unfold C
    simp [show (1417176 * k + 280600) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 140300) = 354294 * k + 70150 := by
    unfold C
    simp [show (708588 * k + 140300) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 70150) = 177147 * k + 35075 := by
    unfold C
    simp [show (354294 * k + 70150) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 51903) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 51903))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_51963 : ∀ k : Nat,
    iterate (262144 * k + 51963) 29 = 177147 * k + 35116 ∧
      177147 * k + 35116 < 262144 * k + 51963 := by
  intro k
  have h1 : C (262144 * k + 51963) = 786432 * k + 155890 := by
    unfold C
    simp [show (262144 * k + 51963) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 155890) = 393216 * k + 77945 := by
    unfold C
    simp [show (786432 * k + 155890) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 77945) = 1179648 * k + 233836 := by
    unfold C
    simp [show (393216 * k + 77945) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 233836) = 589824 * k + 116918 := by
    unfold C
    simp [show (1179648 * k + 233836) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 116918) = 294912 * k + 58459 := by
    unfold C
    simp [show (589824 * k + 116918) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 58459) = 884736 * k + 175378 := by
    unfold C
    simp [show (294912 * k + 58459) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 175378) = 442368 * k + 87689 := by
    unfold C
    simp [show (884736 * k + 175378) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 87689) = 1327104 * k + 263068 := by
    unfold C
    simp [show (442368 * k + 87689) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 263068) = 663552 * k + 131534 := by
    unfold C
    simp [show (1327104 * k + 263068) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 131534) = 331776 * k + 65767 := by
    unfold C
    simp [show (663552 * k + 131534) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 65767) = 995328 * k + 197302 := by
    unfold C
    simp [show (331776 * k + 65767) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 197302) = 497664 * k + 98651 := by
    unfold C
    simp [show (995328 * k + 197302) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 98651) = 1492992 * k + 295954 := by
    unfold C
    simp [show (497664 * k + 98651) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 295954) = 746496 * k + 147977 := by
    unfold C
    simp [show (1492992 * k + 295954) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 147977) = 2239488 * k + 443932 := by
    unfold C
    simp [show (746496 * k + 147977) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 443932) = 1119744 * k + 221966 := by
    unfold C
    simp [show (2239488 * k + 443932) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 221966) = 559872 * k + 110983 := by
    unfold C
    simp [show (1119744 * k + 221966) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 110983) = 1679616 * k + 332950 := by
    unfold C
    simp [show (559872 * k + 110983) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 332950) = 839808 * k + 166475 := by
    unfold C
    simp [show (1679616 * k + 332950) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 166475) = 2519424 * k + 499426 := by
    unfold C
    simp [show (839808 * k + 166475) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 499426) = 1259712 * k + 249713 := by
    unfold C
    simp [show (2519424 * k + 499426) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 249713) = 3779136 * k + 749140 := by
    unfold C
    simp [show (1259712 * k + 249713) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 749140) = 1889568 * k + 374570 := by
    unfold C
    simp [show (3779136 * k + 749140) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 374570) = 944784 * k + 187285 := by
    unfold C
    simp [show (1889568 * k + 374570) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 187285) = 2834352 * k + 561856 := by
    unfold C
    simp [show (944784 * k + 187285) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 561856) = 1417176 * k + 280928 := by
    unfold C
    simp [show (2834352 * k + 561856) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 280928) = 708588 * k + 140464 := by
    unfold C
    simp [show (1417176 * k + 280928) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 140464) = 354294 * k + 70232 := by
    unfold C
    simp [show (708588 * k + 140464) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 70232) = 177147 * k + 35116 := by
    unfold C
    simp [show (354294 * k + 70232) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 51963) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 51963))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_52223 : ∀ k : Nat,
    iterate (262144 * k + 52223) 29 = 177147 * k + 35291 ∧
      177147 * k + 35291 < 262144 * k + 52223 := by
  intro k
  have h1 : C (262144 * k + 52223) = 786432 * k + 156670 := by
    unfold C
    simp [show (262144 * k + 52223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 156670) = 393216 * k + 78335 := by
    unfold C
    simp [show (786432 * k + 156670) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 78335) = 1179648 * k + 235006 := by
    unfold C
    simp [show (393216 * k + 78335) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 235006) = 589824 * k + 117503 := by
    unfold C
    simp [show (1179648 * k + 235006) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 117503) = 1769472 * k + 352510 := by
    unfold C
    simp [show (589824 * k + 117503) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 352510) = 884736 * k + 176255 := by
    unfold C
    simp [show (1769472 * k + 352510) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 176255) = 2654208 * k + 528766 := by
    unfold C
    simp [show (884736 * k + 176255) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 528766) = 1327104 * k + 264383 := by
    unfold C
    simp [show (2654208 * k + 528766) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 264383) = 3981312 * k + 793150 := by
    unfold C
    simp [show (1327104 * k + 264383) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 793150) = 1990656 * k + 396575 := by
    unfold C
    simp [show (3981312 * k + 793150) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 396575) = 5971968 * k + 1189726 := by
    unfold C
    simp [show (1990656 * k + 396575) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1189726) = 2985984 * k + 594863 := by
    unfold C
    simp [show (5971968 * k + 1189726) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 594863) = 8957952 * k + 1784590 := by
    unfold C
    simp [show (2985984 * k + 594863) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 1784590) = 4478976 * k + 892295 := by
    unfold C
    simp [show (8957952 * k + 1784590) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 892295) = 13436928 * k + 2676886 := by
    unfold C
    simp [show (4478976 * k + 892295) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 2676886) = 6718464 * k + 1338443 := by
    unfold C
    simp [show (13436928 * k + 2676886) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 1338443) = 20155392 * k + 4015330 := by
    unfold C
    simp [show (6718464 * k + 1338443) % 2 ≠ 0 by omega]
    omega
  have h18 : C (20155392 * k + 4015330) = 10077696 * k + 2007665 := by
    unfold C
    simp [show (20155392 * k + 4015330) % 2 = 0 by omega]
    omega
  have h19 : C (10077696 * k + 2007665) = 30233088 * k + 6022996 := by
    unfold C
    simp [show (10077696 * k + 2007665) % 2 ≠ 0 by omega]
    omega
  have h20 : C (30233088 * k + 6022996) = 15116544 * k + 3011498 := by
    unfold C
    simp [show (30233088 * k + 6022996) % 2 = 0 by omega]
    omega
  have h21 : C (15116544 * k + 3011498) = 7558272 * k + 1505749 := by
    unfold C
    simp [show (15116544 * k + 3011498) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 1505749) = 22674816 * k + 4517248 := by
    unfold C
    simp [show (7558272 * k + 1505749) % 2 ≠ 0 by omega]
    omega
  have h23 : C (22674816 * k + 4517248) = 11337408 * k + 2258624 := by
    unfold C
    simp [show (22674816 * k + 4517248) % 2 = 0 by omega]
    omega
  have h24 : C (11337408 * k + 2258624) = 5668704 * k + 1129312 := by
    unfold C
    simp [show (11337408 * k + 2258624) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 1129312) = 2834352 * k + 564656 := by
    unfold C
    simp [show (5668704 * k + 1129312) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 564656) = 1417176 * k + 282328 := by
    unfold C
    simp [show (2834352 * k + 564656) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 282328) = 708588 * k + 141164 := by
    unfold C
    simp [show (1417176 * k + 282328) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 141164) = 354294 * k + 70582 := by
    unfold C
    simp [show (708588 * k + 141164) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 70582) = 177147 * k + 35291 := by
    unfold C
    simp [show (354294 * k + 70582) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 52223) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 52223))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_52315 : ∀ k : Nat,
    iterate (262144 * k + 52315) 29 = 177147 * k + 35354 ∧
      177147 * k + 35354 < 262144 * k + 52315 := by
  intro k
  have h1 : C (262144 * k + 52315) = 786432 * k + 156946 := by
    unfold C
    simp [show (262144 * k + 52315) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 156946) = 393216 * k + 78473 := by
    unfold C
    simp [show (786432 * k + 156946) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 78473) = 1179648 * k + 235420 := by
    unfold C
    simp [show (393216 * k + 78473) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 235420) = 589824 * k + 117710 := by
    unfold C
    simp [show (1179648 * k + 235420) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 117710) = 294912 * k + 58855 := by
    unfold C
    simp [show (589824 * k + 117710) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 58855) = 884736 * k + 176566 := by
    unfold C
    simp [show (294912 * k + 58855) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 176566) = 442368 * k + 88283 := by
    unfold C
    simp [show (884736 * k + 176566) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 88283) = 1327104 * k + 264850 := by
    unfold C
    simp [show (442368 * k + 88283) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 264850) = 663552 * k + 132425 := by
    unfold C
    simp [show (1327104 * k + 264850) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 132425) = 1990656 * k + 397276 := by
    unfold C
    simp [show (663552 * k + 132425) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 397276) = 995328 * k + 198638 := by
    unfold C
    simp [show (1990656 * k + 397276) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 198638) = 497664 * k + 99319 := by
    unfold C
    simp [show (995328 * k + 198638) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 99319) = 1492992 * k + 297958 := by
    unfold C
    simp [show (497664 * k + 99319) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 297958) = 746496 * k + 148979 := by
    unfold C
    simp [show (1492992 * k + 297958) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 148979) = 2239488 * k + 446938 := by
    unfold C
    simp [show (746496 * k + 148979) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 446938) = 1119744 * k + 223469 := by
    unfold C
    simp [show (2239488 * k + 446938) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 223469) = 3359232 * k + 670408 := by
    unfold C
    simp [show (1119744 * k + 223469) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 670408) = 1679616 * k + 335204 := by
    unfold C
    simp [show (3359232 * k + 670408) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 335204) = 839808 * k + 167602 := by
    unfold C
    simp [show (1679616 * k + 335204) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 167602) = 419904 * k + 83801 := by
    unfold C
    simp [show (839808 * k + 167602) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 83801) = 1259712 * k + 251404 := by
    unfold C
    simp [show (419904 * k + 83801) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 251404) = 629856 * k + 125702 := by
    unfold C
    simp [show (1259712 * k + 251404) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 125702) = 314928 * k + 62851 := by
    unfold C
    simp [show (629856 * k + 125702) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 62851) = 944784 * k + 188554 := by
    unfold C
    simp [show (314928 * k + 62851) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 188554) = 472392 * k + 94277 := by
    unfold C
    simp [show (944784 * k + 188554) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 94277) = 1417176 * k + 282832 := by
    unfold C
    simp [show (472392 * k + 94277) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 282832) = 708588 * k + 141416 := by
    unfold C
    simp [show (1417176 * k + 282832) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 141416) = 354294 * k + 70708 := by
    unfold C
    simp [show (708588 * k + 141416) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 70708) = 177147 * k + 35354 := by
    unfold C
    simp [show (354294 * k + 70708) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 52315) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 52315))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_52475 : ∀ k : Nat,
    iterate (262144 * k + 52475) 29 = 177147 * k + 35462 ∧
      177147 * k + 35462 < 262144 * k + 52475 := by
  intro k
  have h1 : C (262144 * k + 52475) = 786432 * k + 157426 := by
    unfold C
    simp [show (262144 * k + 52475) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 157426) = 393216 * k + 78713 := by
    unfold C
    simp [show (786432 * k + 157426) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 78713) = 1179648 * k + 236140 := by
    unfold C
    simp [show (393216 * k + 78713) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 236140) = 589824 * k + 118070 := by
    unfold C
    simp [show (1179648 * k + 236140) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 118070) = 294912 * k + 59035 := by
    unfold C
    simp [show (589824 * k + 118070) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 59035) = 884736 * k + 177106 := by
    unfold C
    simp [show (294912 * k + 59035) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 177106) = 442368 * k + 88553 := by
    unfold C
    simp [show (884736 * k + 177106) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 88553) = 1327104 * k + 265660 := by
    unfold C
    simp [show (442368 * k + 88553) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 265660) = 663552 * k + 132830 := by
    unfold C
    simp [show (1327104 * k + 265660) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 132830) = 331776 * k + 66415 := by
    unfold C
    simp [show (663552 * k + 132830) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 66415) = 995328 * k + 199246 := by
    unfold C
    simp [show (331776 * k + 66415) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 199246) = 497664 * k + 99623 := by
    unfold C
    simp [show (995328 * k + 199246) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 99623) = 1492992 * k + 298870 := by
    unfold C
    simp [show (497664 * k + 99623) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 298870) = 746496 * k + 149435 := by
    unfold C
    simp [show (1492992 * k + 298870) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 149435) = 2239488 * k + 448306 := by
    unfold C
    simp [show (746496 * k + 149435) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 448306) = 1119744 * k + 224153 := by
    unfold C
    simp [show (2239488 * k + 448306) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 224153) = 3359232 * k + 672460 := by
    unfold C
    simp [show (1119744 * k + 224153) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 672460) = 1679616 * k + 336230 := by
    unfold C
    simp [show (3359232 * k + 672460) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 336230) = 839808 * k + 168115 := by
    unfold C
    simp [show (1679616 * k + 336230) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 168115) = 2519424 * k + 504346 := by
    unfold C
    simp [show (839808 * k + 168115) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 504346) = 1259712 * k + 252173 := by
    unfold C
    simp [show (2519424 * k + 504346) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 252173) = 3779136 * k + 756520 := by
    unfold C
    simp [show (1259712 * k + 252173) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 756520) = 1889568 * k + 378260 := by
    unfold C
    simp [show (3779136 * k + 756520) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 378260) = 944784 * k + 189130 := by
    unfold C
    simp [show (1889568 * k + 378260) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 189130) = 472392 * k + 94565 := by
    unfold C
    simp [show (944784 * k + 189130) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 94565) = 1417176 * k + 283696 := by
    unfold C
    simp [show (472392 * k + 94565) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 283696) = 708588 * k + 141848 := by
    unfold C
    simp [show (1417176 * k + 283696) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 141848) = 354294 * k + 70924 := by
    unfold C
    simp [show (708588 * k + 141848) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 70924) = 177147 * k + 35462 := by
    unfold C
    simp [show (354294 * k + 70924) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 52475) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 52475))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_52527 : ∀ k : Nat,
    iterate (262144 * k + 52527) 29 = 177147 * k + 35497 ∧
      177147 * k + 35497 < 262144 * k + 52527 := by
  intro k
  have h1 : C (262144 * k + 52527) = 786432 * k + 157582 := by
    unfold C
    simp [show (262144 * k + 52527) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 157582) = 393216 * k + 78791 := by
    unfold C
    simp [show (786432 * k + 157582) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 78791) = 1179648 * k + 236374 := by
    unfold C
    simp [show (393216 * k + 78791) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 236374) = 589824 * k + 118187 := by
    unfold C
    simp [show (1179648 * k + 236374) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 118187) = 1769472 * k + 354562 := by
    unfold C
    simp [show (589824 * k + 118187) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 354562) = 884736 * k + 177281 := by
    unfold C
    simp [show (1769472 * k + 354562) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 177281) = 2654208 * k + 531844 := by
    unfold C
    simp [show (884736 * k + 177281) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 531844) = 1327104 * k + 265922 := by
    unfold C
    simp [show (2654208 * k + 531844) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 265922) = 663552 * k + 132961 := by
    unfold C
    simp [show (1327104 * k + 265922) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 132961) = 1990656 * k + 398884 := by
    unfold C
    simp [show (663552 * k + 132961) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 398884) = 995328 * k + 199442 := by
    unfold C
    simp [show (1990656 * k + 398884) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 199442) = 497664 * k + 99721 := by
    unfold C
    simp [show (995328 * k + 199442) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 99721) = 1492992 * k + 299164 := by
    unfold C
    simp [show (497664 * k + 99721) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 299164) = 746496 * k + 149582 := by
    unfold C
    simp [show (1492992 * k + 299164) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 149582) = 373248 * k + 74791 := by
    unfold C
    simp [show (746496 * k + 149582) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 74791) = 1119744 * k + 224374 := by
    unfold C
    simp [show (373248 * k + 74791) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 224374) = 559872 * k + 112187 := by
    unfold C
    simp [show (1119744 * k + 224374) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 112187) = 1679616 * k + 336562 := by
    unfold C
    simp [show (559872 * k + 112187) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 336562) = 839808 * k + 168281 := by
    unfold C
    simp [show (1679616 * k + 336562) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 168281) = 2519424 * k + 504844 := by
    unfold C
    simp [show (839808 * k + 168281) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 504844) = 1259712 * k + 252422 := by
    unfold C
    simp [show (2519424 * k + 504844) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 252422) = 629856 * k + 126211 := by
    unfold C
    simp [show (1259712 * k + 252422) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 126211) = 1889568 * k + 378634 := by
    unfold C
    simp [show (629856 * k + 126211) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 378634) = 944784 * k + 189317 := by
    unfold C
    simp [show (1889568 * k + 378634) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 189317) = 2834352 * k + 567952 := by
    unfold C
    simp [show (944784 * k + 189317) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 567952) = 1417176 * k + 283976 := by
    unfold C
    simp [show (2834352 * k + 567952) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 283976) = 708588 * k + 141988 := by
    unfold C
    simp [show (1417176 * k + 283976) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 141988) = 354294 * k + 70994 := by
    unfold C
    simp [show (708588 * k + 141988) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 70994) = 177147 * k + 35497 := by
    unfold C
    simp [show (354294 * k + 70994) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 52527) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 52527))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_52767 : ∀ k : Nat,
    iterate (262144 * k + 52767) 29 = 177147 * k + 35659 ∧
      177147 * k + 35659 < 262144 * k + 52767 := by
  intro k
  have h1 : C (262144 * k + 52767) = 786432 * k + 158302 := by
    unfold C
    simp [show (262144 * k + 52767) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 158302) = 393216 * k + 79151 := by
    unfold C
    simp [show (786432 * k + 158302) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 79151) = 1179648 * k + 237454 := by
    unfold C
    simp [show (393216 * k + 79151) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 237454) = 589824 * k + 118727 := by
    unfold C
    simp [show (1179648 * k + 237454) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 118727) = 1769472 * k + 356182 := by
    unfold C
    simp [show (589824 * k + 118727) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 356182) = 884736 * k + 178091 := by
    unfold C
    simp [show (1769472 * k + 356182) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 178091) = 2654208 * k + 534274 := by
    unfold C
    simp [show (884736 * k + 178091) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 534274) = 1327104 * k + 267137 := by
    unfold C
    simp [show (2654208 * k + 534274) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 267137) = 3981312 * k + 801412 := by
    unfold C
    simp [show (1327104 * k + 267137) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 801412) = 1990656 * k + 400706 := by
    unfold C
    simp [show (3981312 * k + 801412) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 400706) = 995328 * k + 200353 := by
    unfold C
    simp [show (1990656 * k + 400706) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 200353) = 2985984 * k + 601060 := by
    unfold C
    simp [show (995328 * k + 200353) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 601060) = 1492992 * k + 300530 := by
    unfold C
    simp [show (2985984 * k + 601060) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 300530) = 746496 * k + 150265 := by
    unfold C
    simp [show (1492992 * k + 300530) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 150265) = 2239488 * k + 450796 := by
    unfold C
    simp [show (746496 * k + 150265) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 450796) = 1119744 * k + 225398 := by
    unfold C
    simp [show (2239488 * k + 450796) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 225398) = 559872 * k + 112699 := by
    unfold C
    simp [show (1119744 * k + 225398) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 112699) = 1679616 * k + 338098 := by
    unfold C
    simp [show (559872 * k + 112699) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 338098) = 839808 * k + 169049 := by
    unfold C
    simp [show (1679616 * k + 338098) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 169049) = 2519424 * k + 507148 := by
    unfold C
    simp [show (839808 * k + 169049) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 507148) = 1259712 * k + 253574 := by
    unfold C
    simp [show (2519424 * k + 507148) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 253574) = 629856 * k + 126787 := by
    unfold C
    simp [show (1259712 * k + 253574) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 126787) = 1889568 * k + 380362 := by
    unfold C
    simp [show (629856 * k + 126787) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 380362) = 944784 * k + 190181 := by
    unfold C
    simp [show (1889568 * k + 380362) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 190181) = 2834352 * k + 570544 := by
    unfold C
    simp [show (944784 * k + 190181) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 570544) = 1417176 * k + 285272 := by
    unfold C
    simp [show (2834352 * k + 570544) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 285272) = 708588 * k + 142636 := by
    unfold C
    simp [show (1417176 * k + 285272) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 142636) = 354294 * k + 71318 := by
    unfold C
    simp [show (708588 * k + 142636) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 71318) = 177147 * k + 35659 := by
    unfold C
    simp [show (354294 * k + 71318) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 52767) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 52767))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_52927 : ∀ k : Nat,
    iterate (262144 * k + 52927) 29 = 177147 * k + 35767 ∧
      177147 * k + 35767 < 262144 * k + 52927 := by
  intro k
  have h1 : C (262144 * k + 52927) = 786432 * k + 158782 := by
    unfold C
    simp [show (262144 * k + 52927) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 158782) = 393216 * k + 79391 := by
    unfold C
    simp [show (786432 * k + 158782) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 79391) = 1179648 * k + 238174 := by
    unfold C
    simp [show (393216 * k + 79391) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 238174) = 589824 * k + 119087 := by
    unfold C
    simp [show (1179648 * k + 238174) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 119087) = 1769472 * k + 357262 := by
    unfold C
    simp [show (589824 * k + 119087) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 357262) = 884736 * k + 178631 := by
    unfold C
    simp [show (1769472 * k + 357262) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 178631) = 2654208 * k + 535894 := by
    unfold C
    simp [show (884736 * k + 178631) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 535894) = 1327104 * k + 267947 := by
    unfold C
    simp [show (2654208 * k + 535894) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 267947) = 3981312 * k + 803842 := by
    unfold C
    simp [show (1327104 * k + 267947) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 803842) = 1990656 * k + 401921 := by
    unfold C
    simp [show (3981312 * k + 803842) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 401921) = 5971968 * k + 1205764 := by
    unfold C
    simp [show (1990656 * k + 401921) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1205764) = 2985984 * k + 602882 := by
    unfold C
    simp [show (5971968 * k + 1205764) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 602882) = 1492992 * k + 301441 := by
    unfold C
    simp [show (2985984 * k + 602882) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 301441) = 4478976 * k + 904324 := by
    unfold C
    simp [show (1492992 * k + 301441) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 904324) = 2239488 * k + 452162 := by
    unfold C
    simp [show (4478976 * k + 904324) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 452162) = 1119744 * k + 226081 := by
    unfold C
    simp [show (2239488 * k + 452162) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 226081) = 3359232 * k + 678244 := by
    unfold C
    simp [show (1119744 * k + 226081) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 678244) = 1679616 * k + 339122 := by
    unfold C
    simp [show (3359232 * k + 678244) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 339122) = 839808 * k + 169561 := by
    unfold C
    simp [show (1679616 * k + 339122) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 169561) = 2519424 * k + 508684 := by
    unfold C
    simp [show (839808 * k + 169561) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 508684) = 1259712 * k + 254342 := by
    unfold C
    simp [show (2519424 * k + 508684) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 254342) = 629856 * k + 127171 := by
    unfold C
    simp [show (1259712 * k + 254342) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 127171) = 1889568 * k + 381514 := by
    unfold C
    simp [show (629856 * k + 127171) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 381514) = 944784 * k + 190757 := by
    unfold C
    simp [show (1889568 * k + 381514) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 190757) = 2834352 * k + 572272 := by
    unfold C
    simp [show (944784 * k + 190757) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 572272) = 1417176 * k + 286136 := by
    unfold C
    simp [show (2834352 * k + 572272) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 286136) = 708588 * k + 143068 := by
    unfold C
    simp [show (1417176 * k + 286136) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 143068) = 354294 * k + 71534 := by
    unfold C
    simp [show (708588 * k + 143068) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 71534) = 177147 * k + 35767 := by
    unfold C
    simp [show (354294 * k + 71534) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 52927) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 52927))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_52991 : ∀ k : Nat,
    iterate (262144 * k + 52991) 29 = 177147 * k + 35810 ∧
      177147 * k + 35810 < 262144 * k + 52991 := by
  intro k
  have h1 : C (262144 * k + 52991) = 786432 * k + 158974 := by
    unfold C
    simp [show (262144 * k + 52991) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 158974) = 393216 * k + 79487 := by
    unfold C
    simp [show (786432 * k + 158974) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 79487) = 1179648 * k + 238462 := by
    unfold C
    simp [show (393216 * k + 79487) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 238462) = 589824 * k + 119231 := by
    unfold C
    simp [show (1179648 * k + 238462) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 119231) = 1769472 * k + 357694 := by
    unfold C
    simp [show (589824 * k + 119231) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 357694) = 884736 * k + 178847 := by
    unfold C
    simp [show (1769472 * k + 357694) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 178847) = 2654208 * k + 536542 := by
    unfold C
    simp [show (884736 * k + 178847) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 536542) = 1327104 * k + 268271 := by
    unfold C
    simp [show (2654208 * k + 536542) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 268271) = 3981312 * k + 804814 := by
    unfold C
    simp [show (1327104 * k + 268271) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 804814) = 1990656 * k + 402407 := by
    unfold C
    simp [show (3981312 * k + 804814) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 402407) = 5971968 * k + 1207222 := by
    unfold C
    simp [show (1990656 * k + 402407) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1207222) = 2985984 * k + 603611 := by
    unfold C
    simp [show (5971968 * k + 1207222) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 603611) = 8957952 * k + 1810834 := by
    unfold C
    simp [show (2985984 * k + 603611) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 1810834) = 4478976 * k + 905417 := by
    unfold C
    simp [show (8957952 * k + 1810834) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 905417) = 13436928 * k + 2716252 := by
    unfold C
    simp [show (4478976 * k + 905417) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 2716252) = 6718464 * k + 1358126 := by
    unfold C
    simp [show (13436928 * k + 2716252) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 1358126) = 3359232 * k + 679063 := by
    unfold C
    simp [show (6718464 * k + 1358126) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 679063) = 10077696 * k + 2037190 := by
    unfold C
    simp [show (3359232 * k + 679063) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 2037190) = 5038848 * k + 1018595 := by
    unfold C
    simp [show (10077696 * k + 2037190) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 1018595) = 15116544 * k + 3055786 := by
    unfold C
    simp [show (5038848 * k + 1018595) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 3055786) = 7558272 * k + 1527893 := by
    unfold C
    simp [show (15116544 * k + 3055786) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 1527893) = 22674816 * k + 4583680 := by
    unfold C
    simp [show (7558272 * k + 1527893) % 2 ≠ 0 by omega]
    omega
  have h23 : C (22674816 * k + 4583680) = 11337408 * k + 2291840 := by
    unfold C
    simp [show (22674816 * k + 4583680) % 2 = 0 by omega]
    omega
  have h24 : C (11337408 * k + 2291840) = 5668704 * k + 1145920 := by
    unfold C
    simp [show (11337408 * k + 2291840) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 1145920) = 2834352 * k + 572960 := by
    unfold C
    simp [show (5668704 * k + 1145920) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 572960) = 1417176 * k + 286480 := by
    unfold C
    simp [show (2834352 * k + 572960) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 286480) = 708588 * k + 143240 := by
    unfold C
    simp [show (1417176 * k + 286480) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 143240) = 354294 * k + 71620 := by
    unfold C
    simp [show (708588 * k + 143240) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 71620) = 177147 * k + 35810 := by
    unfold C
    simp [show (354294 * k + 71620) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 52991) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 52991))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_53279 : ∀ k : Nat,
    iterate (262144 * k + 53279) 29 = 177147 * k + 36005 ∧
      177147 * k + 36005 < 262144 * k + 53279 := by
  intro k
  have h1 : C (262144 * k + 53279) = 786432 * k + 159838 := by
    unfold C
    simp [show (262144 * k + 53279) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 159838) = 393216 * k + 79919 := by
    unfold C
    simp [show (786432 * k + 159838) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 79919) = 1179648 * k + 239758 := by
    unfold C
    simp [show (393216 * k + 79919) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 239758) = 589824 * k + 119879 := by
    unfold C
    simp [show (1179648 * k + 239758) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 119879) = 1769472 * k + 359638 := by
    unfold C
    simp [show (589824 * k + 119879) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 359638) = 884736 * k + 179819 := by
    unfold C
    simp [show (1769472 * k + 359638) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 179819) = 2654208 * k + 539458 := by
    unfold C
    simp [show (884736 * k + 179819) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 539458) = 1327104 * k + 269729 := by
    unfold C
    simp [show (2654208 * k + 539458) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 269729) = 3981312 * k + 809188 := by
    unfold C
    simp [show (1327104 * k + 269729) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 809188) = 1990656 * k + 404594 := by
    unfold C
    simp [show (3981312 * k + 809188) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 404594) = 995328 * k + 202297 := by
    unfold C
    simp [show (1990656 * k + 404594) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 202297) = 2985984 * k + 606892 := by
    unfold C
    simp [show (995328 * k + 202297) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 606892) = 1492992 * k + 303446 := by
    unfold C
    simp [show (2985984 * k + 606892) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 303446) = 746496 * k + 151723 := by
    unfold C
    simp [show (1492992 * k + 303446) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 151723) = 2239488 * k + 455170 := by
    unfold C
    simp [show (746496 * k + 151723) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 455170) = 1119744 * k + 227585 := by
    unfold C
    simp [show (2239488 * k + 455170) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 227585) = 3359232 * k + 682756 := by
    unfold C
    simp [show (1119744 * k + 227585) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 682756) = 1679616 * k + 341378 := by
    unfold C
    simp [show (3359232 * k + 682756) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 341378) = 839808 * k + 170689 := by
    unfold C
    simp [show (1679616 * k + 341378) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 170689) = 2519424 * k + 512068 := by
    unfold C
    simp [show (839808 * k + 170689) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 512068) = 1259712 * k + 256034 := by
    unfold C
    simp [show (2519424 * k + 512068) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 256034) = 629856 * k + 128017 := by
    unfold C
    simp [show (1259712 * k + 256034) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 128017) = 1889568 * k + 384052 := by
    unfold C
    simp [show (629856 * k + 128017) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 384052) = 944784 * k + 192026 := by
    unfold C
    simp [show (1889568 * k + 384052) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 192026) = 472392 * k + 96013 := by
    unfold C
    simp [show (944784 * k + 192026) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 96013) = 1417176 * k + 288040 := by
    unfold C
    simp [show (472392 * k + 96013) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 288040) = 708588 * k + 144020 := by
    unfold C
    simp [show (1417176 * k + 288040) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 144020) = 354294 * k + 72010 := by
    unfold C
    simp [show (708588 * k + 144020) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 72010) = 177147 * k + 36005 := by
    unfold C
    simp [show (354294 * k + 72010) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 53279) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 53279))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_53359 : ∀ k : Nat,
    iterate (262144 * k + 53359) 29 = 177147 * k + 36059 ∧
      177147 * k + 36059 < 262144 * k + 53359 := by
  intro k
  have h1 : C (262144 * k + 53359) = 786432 * k + 160078 := by
    unfold C
    simp [show (262144 * k + 53359) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 160078) = 393216 * k + 80039 := by
    unfold C
    simp [show (786432 * k + 160078) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 80039) = 1179648 * k + 240118 := by
    unfold C
    simp [show (393216 * k + 80039) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 240118) = 589824 * k + 120059 := by
    unfold C
    simp [show (1179648 * k + 240118) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 120059) = 1769472 * k + 360178 := by
    unfold C
    simp [show (589824 * k + 120059) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 360178) = 884736 * k + 180089 := by
    unfold C
    simp [show (1769472 * k + 360178) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 180089) = 2654208 * k + 540268 := by
    unfold C
    simp [show (884736 * k + 180089) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 540268) = 1327104 * k + 270134 := by
    unfold C
    simp [show (2654208 * k + 540268) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 270134) = 663552 * k + 135067 := by
    unfold C
    simp [show (1327104 * k + 270134) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 135067) = 1990656 * k + 405202 := by
    unfold C
    simp [show (663552 * k + 135067) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 405202) = 995328 * k + 202601 := by
    unfold C
    simp [show (1990656 * k + 405202) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 202601) = 2985984 * k + 607804 := by
    unfold C
    simp [show (995328 * k + 202601) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 607804) = 1492992 * k + 303902 := by
    unfold C
    simp [show (2985984 * k + 607804) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 303902) = 746496 * k + 151951 := by
    unfold C
    simp [show (1492992 * k + 303902) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 151951) = 2239488 * k + 455854 := by
    unfold C
    simp [show (746496 * k + 151951) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 455854) = 1119744 * k + 227927 := by
    unfold C
    simp [show (2239488 * k + 455854) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 227927) = 3359232 * k + 683782 := by
    unfold C
    simp [show (1119744 * k + 227927) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 683782) = 1679616 * k + 341891 := by
    unfold C
    simp [show (3359232 * k + 683782) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 341891) = 5038848 * k + 1025674 := by
    unfold C
    simp [show (1679616 * k + 341891) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1025674) = 2519424 * k + 512837 := by
    unfold C
    simp [show (5038848 * k + 1025674) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 512837) = 7558272 * k + 1538512 := by
    unfold C
    simp [show (2519424 * k + 512837) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 1538512) = 3779136 * k + 769256 := by
    unfold C
    simp [show (7558272 * k + 1538512) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 769256) = 1889568 * k + 384628 := by
    unfold C
    simp [show (3779136 * k + 769256) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 384628) = 944784 * k + 192314 := by
    unfold C
    simp [show (1889568 * k + 384628) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 192314) = 472392 * k + 96157 := by
    unfold C
    simp [show (944784 * k + 192314) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 96157) = 1417176 * k + 288472 := by
    unfold C
    simp [show (472392 * k + 96157) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 288472) = 708588 * k + 144236 := by
    unfold C
    simp [show (1417176 * k + 288472) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 144236) = 354294 * k + 72118 := by
    unfold C
    simp [show (708588 * k + 144236) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 72118) = 177147 * k + 36059 := by
    unfold C
    simp [show (354294 * k + 72118) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 53359) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 53359))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_53759 : ∀ k : Nat,
    iterate (262144 * k + 53759) 29 = 177147 * k + 36329 ∧
      177147 * k + 36329 < 262144 * k + 53759 := by
  intro k
  have h1 : C (262144 * k + 53759) = 786432 * k + 161278 := by
    unfold C
    simp [show (262144 * k + 53759) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 161278) = 393216 * k + 80639 := by
    unfold C
    simp [show (786432 * k + 161278) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 80639) = 1179648 * k + 241918 := by
    unfold C
    simp [show (393216 * k + 80639) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 241918) = 589824 * k + 120959 := by
    unfold C
    simp [show (1179648 * k + 241918) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 120959) = 1769472 * k + 362878 := by
    unfold C
    simp [show (589824 * k + 120959) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 362878) = 884736 * k + 181439 := by
    unfold C
    simp [show (1769472 * k + 362878) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 181439) = 2654208 * k + 544318 := by
    unfold C
    simp [show (884736 * k + 181439) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 544318) = 1327104 * k + 272159 := by
    unfold C
    simp [show (2654208 * k + 544318) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 272159) = 3981312 * k + 816478 := by
    unfold C
    simp [show (1327104 * k + 272159) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 816478) = 1990656 * k + 408239 := by
    unfold C
    simp [show (3981312 * k + 816478) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 408239) = 5971968 * k + 1224718 := by
    unfold C
    simp [show (1990656 * k + 408239) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1224718) = 2985984 * k + 612359 := by
    unfold C
    simp [show (5971968 * k + 1224718) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 612359) = 8957952 * k + 1837078 := by
    unfold C
    simp [show (2985984 * k + 612359) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 1837078) = 4478976 * k + 918539 := by
    unfold C
    simp [show (8957952 * k + 1837078) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 918539) = 13436928 * k + 2755618 := by
    unfold C
    simp [show (4478976 * k + 918539) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 2755618) = 6718464 * k + 1377809 := by
    unfold C
    simp [show (13436928 * k + 2755618) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 1377809) = 20155392 * k + 4133428 := by
    unfold C
    simp [show (6718464 * k + 1377809) % 2 ≠ 0 by omega]
    omega
  have h18 : C (20155392 * k + 4133428) = 10077696 * k + 2066714 := by
    unfold C
    simp [show (20155392 * k + 4133428) % 2 = 0 by omega]
    omega
  have h19 : C (10077696 * k + 2066714) = 5038848 * k + 1033357 := by
    unfold C
    simp [show (10077696 * k + 2066714) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 1033357) = 15116544 * k + 3100072 := by
    unfold C
    simp [show (5038848 * k + 1033357) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 3100072) = 7558272 * k + 1550036 := by
    unfold C
    simp [show (15116544 * k + 3100072) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 1550036) = 3779136 * k + 775018 := by
    unfold C
    simp [show (7558272 * k + 1550036) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 775018) = 1889568 * k + 387509 := by
    unfold C
    simp [show (3779136 * k + 775018) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 387509) = 5668704 * k + 1162528 := by
    unfold C
    simp [show (1889568 * k + 387509) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 1162528) = 2834352 * k + 581264 := by
    unfold C
    simp [show (5668704 * k + 1162528) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 581264) = 1417176 * k + 290632 := by
    unfold C
    simp [show (2834352 * k + 581264) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 290632) = 708588 * k + 145316 := by
    unfold C
    simp [show (1417176 * k + 290632) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 145316) = 354294 * k + 72658 := by
    unfold C
    simp [show (708588 * k + 145316) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 72658) = 177147 * k + 36329 := by
    unfold C
    simp [show (354294 * k + 72658) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 53759) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 53759))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_53807 : ∀ k : Nat,
    iterate (262144 * k + 53807) 29 = 177147 * k + 36362 ∧
      177147 * k + 36362 < 262144 * k + 53807 := by
  intro k
  have h1 : C (262144 * k + 53807) = 786432 * k + 161422 := by
    unfold C
    simp [show (262144 * k + 53807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 161422) = 393216 * k + 80711 := by
    unfold C
    simp [show (786432 * k + 161422) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 80711) = 1179648 * k + 242134 := by
    unfold C
    simp [show (393216 * k + 80711) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 242134) = 589824 * k + 121067 := by
    unfold C
    simp [show (1179648 * k + 242134) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 121067) = 1769472 * k + 363202 := by
    unfold C
    simp [show (589824 * k + 121067) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 363202) = 884736 * k + 181601 := by
    unfold C
    simp [show (1769472 * k + 363202) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 181601) = 2654208 * k + 544804 := by
    unfold C
    simp [show (884736 * k + 181601) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 544804) = 1327104 * k + 272402 := by
    unfold C
    simp [show (2654208 * k + 544804) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 272402) = 663552 * k + 136201 := by
    unfold C
    simp [show (1327104 * k + 272402) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 136201) = 1990656 * k + 408604 := by
    unfold C
    simp [show (663552 * k + 136201) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 408604) = 995328 * k + 204302 := by
    unfold C
    simp [show (1990656 * k + 408604) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 204302) = 497664 * k + 102151 := by
    unfold C
    simp [show (995328 * k + 204302) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 102151) = 1492992 * k + 306454 := by
    unfold C
    simp [show (497664 * k + 102151) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 306454) = 746496 * k + 153227 := by
    unfold C
    simp [show (1492992 * k + 306454) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 153227) = 2239488 * k + 459682 := by
    unfold C
    simp [show (746496 * k + 153227) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 459682) = 1119744 * k + 229841 := by
    unfold C
    simp [show (2239488 * k + 459682) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 229841) = 3359232 * k + 689524 := by
    unfold C
    simp [show (1119744 * k + 229841) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 689524) = 1679616 * k + 344762 := by
    unfold C
    simp [show (3359232 * k + 689524) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 344762) = 839808 * k + 172381 := by
    unfold C
    simp [show (1679616 * k + 344762) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 172381) = 2519424 * k + 517144 := by
    unfold C
    simp [show (839808 * k + 172381) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 517144) = 1259712 * k + 258572 := by
    unfold C
    simp [show (2519424 * k + 517144) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 258572) = 629856 * k + 129286 := by
    unfold C
    simp [show (1259712 * k + 258572) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 129286) = 314928 * k + 64643 := by
    unfold C
    simp [show (629856 * k + 129286) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 64643) = 944784 * k + 193930 := by
    unfold C
    simp [show (314928 * k + 64643) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 193930) = 472392 * k + 96965 := by
    unfold C
    simp [show (944784 * k + 193930) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 96965) = 1417176 * k + 290896 := by
    unfold C
    simp [show (472392 * k + 96965) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 290896) = 708588 * k + 145448 := by
    unfold C
    simp [show (1417176 * k + 290896) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 145448) = 354294 * k + 72724 := by
    unfold C
    simp [show (708588 * k + 145448) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 72724) = 177147 * k + 36362 := by
    unfold C
    simp [show (354294 * k + 72724) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 53807) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 53807))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard010
