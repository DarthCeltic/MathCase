import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard030

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_155327 : ∀ k : Nat,
    iterate (262144 * k + 155327) 29 = 177147 * k + 104965 ∧
      177147 * k + 104965 < 262144 * k + 155327 := by
  intro k
  have h1 : C (262144 * k + 155327) = 786432 * k + 465982 := by
    unfold C
    simp [show (262144 * k + 155327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 465982) = 393216 * k + 232991 := by
    unfold C
    simp [show (786432 * k + 465982) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 232991) = 1179648 * k + 698974 := by
    unfold C
    simp [show (393216 * k + 232991) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 698974) = 589824 * k + 349487 := by
    unfold C
    simp [show (1179648 * k + 698974) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 349487) = 1769472 * k + 1048462 := by
    unfold C
    simp [show (589824 * k + 349487) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1048462) = 884736 * k + 524231 := by
    unfold C
    simp [show (1769472 * k + 1048462) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 524231) = 2654208 * k + 1572694 := by
    unfold C
    simp [show (884736 * k + 524231) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1572694) = 1327104 * k + 786347 := by
    unfold C
    simp [show (2654208 * k + 1572694) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 786347) = 3981312 * k + 2359042 := by
    unfold C
    simp [show (1327104 * k + 786347) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2359042) = 1990656 * k + 1179521 := by
    unfold C
    simp [show (3981312 * k + 2359042) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1179521) = 5971968 * k + 3538564 := by
    unfold C
    simp [show (1990656 * k + 1179521) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3538564) = 2985984 * k + 1769282 := by
    unfold C
    simp [show (5971968 * k + 3538564) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1769282) = 1492992 * k + 884641 := by
    unfold C
    simp [show (2985984 * k + 1769282) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 884641) = 4478976 * k + 2653924 := by
    unfold C
    simp [show (1492992 * k + 884641) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2653924) = 2239488 * k + 1326962 := by
    unfold C
    simp [show (4478976 * k + 2653924) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1326962) = 1119744 * k + 663481 := by
    unfold C
    simp [show (2239488 * k + 1326962) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 663481) = 3359232 * k + 1990444 := by
    unfold C
    simp [show (1119744 * k + 663481) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1990444) = 1679616 * k + 995222 := by
    unfold C
    simp [show (3359232 * k + 1990444) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 995222) = 839808 * k + 497611 := by
    unfold C
    simp [show (1679616 * k + 995222) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 497611) = 2519424 * k + 1492834 := by
    unfold C
    simp [show (839808 * k + 497611) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1492834) = 1259712 * k + 746417 := by
    unfold C
    simp [show (2519424 * k + 1492834) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 746417) = 3779136 * k + 2239252 := by
    unfold C
    simp [show (1259712 * k + 746417) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2239252) = 1889568 * k + 1119626 := by
    unfold C
    simp [show (3779136 * k + 2239252) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1119626) = 944784 * k + 559813 := by
    unfold C
    simp [show (1889568 * k + 1119626) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 559813) = 2834352 * k + 1679440 := by
    unfold C
    simp [show (944784 * k + 559813) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1679440) = 1417176 * k + 839720 := by
    unfold C
    simp [show (2834352 * k + 1679440) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 839720) = 708588 * k + 419860 := by
    unfold C
    simp [show (1417176 * k + 839720) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 419860) = 354294 * k + 209930 := by
    unfold C
    simp [show (708588 * k + 419860) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 209930) = 177147 * k + 104965 := by
    unfold C
    simp [show (354294 * k + 209930) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 155327) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 155327))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_155483 : ∀ k : Nat,
    iterate (262144 * k + 155483) 29 = 177147 * k + 105071 ∧
      177147 * k + 105071 < 262144 * k + 155483 := by
  intro k
  have h1 : C (262144 * k + 155483) = 786432 * k + 466450 := by
    unfold C
    simp [show (262144 * k + 155483) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 466450) = 393216 * k + 233225 := by
    unfold C
    simp [show (786432 * k + 466450) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 233225) = 1179648 * k + 699676 := by
    unfold C
    simp [show (393216 * k + 233225) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 699676) = 589824 * k + 349838 := by
    unfold C
    simp [show (1179648 * k + 699676) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 349838) = 294912 * k + 174919 := by
    unfold C
    simp [show (589824 * k + 349838) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 174919) = 884736 * k + 524758 := by
    unfold C
    simp [show (294912 * k + 174919) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 524758) = 442368 * k + 262379 := by
    unfold C
    simp [show (884736 * k + 524758) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 262379) = 1327104 * k + 787138 := by
    unfold C
    simp [show (442368 * k + 262379) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 787138) = 663552 * k + 393569 := by
    unfold C
    simp [show (1327104 * k + 787138) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 393569) = 1990656 * k + 1180708 := by
    unfold C
    simp [show (663552 * k + 393569) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1180708) = 995328 * k + 590354 := by
    unfold C
    simp [show (1990656 * k + 1180708) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 590354) = 497664 * k + 295177 := by
    unfold C
    simp [show (995328 * k + 590354) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 295177) = 1492992 * k + 885532 := by
    unfold C
    simp [show (497664 * k + 295177) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 885532) = 746496 * k + 442766 := by
    unfold C
    simp [show (1492992 * k + 885532) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 442766) = 373248 * k + 221383 := by
    unfold C
    simp [show (746496 * k + 442766) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 221383) = 1119744 * k + 664150 := by
    unfold C
    simp [show (373248 * k + 221383) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 664150) = 559872 * k + 332075 := by
    unfold C
    simp [show (1119744 * k + 664150) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 332075) = 1679616 * k + 996226 := by
    unfold C
    simp [show (559872 * k + 332075) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 996226) = 839808 * k + 498113 := by
    unfold C
    simp [show (1679616 * k + 996226) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 498113) = 2519424 * k + 1494340 := by
    unfold C
    simp [show (839808 * k + 498113) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1494340) = 1259712 * k + 747170 := by
    unfold C
    simp [show (2519424 * k + 1494340) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 747170) = 629856 * k + 373585 := by
    unfold C
    simp [show (1259712 * k + 747170) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 373585) = 1889568 * k + 1120756 := by
    unfold C
    simp [show (629856 * k + 373585) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1120756) = 944784 * k + 560378 := by
    unfold C
    simp [show (1889568 * k + 1120756) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 560378) = 472392 * k + 280189 := by
    unfold C
    simp [show (944784 * k + 560378) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 280189) = 1417176 * k + 840568 := by
    unfold C
    simp [show (472392 * k + 280189) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 840568) = 708588 * k + 420284 := by
    unfold C
    simp [show (1417176 * k + 840568) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 420284) = 354294 * k + 210142 := by
    unfold C
    simp [show (708588 * k + 420284) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 210142) = 177147 * k + 105071 := by
    unfold C
    simp [show (354294 * k + 210142) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 155483) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 155483))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_155519 : ∀ k : Nat,
    iterate (262144 * k + 155519) 29 = 177147 * k + 105095 ∧
      177147 * k + 105095 < 262144 * k + 155519 := by
  intro k
  have h1 : C (262144 * k + 155519) = 786432 * k + 466558 := by
    unfold C
    simp [show (262144 * k + 155519) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 466558) = 393216 * k + 233279 := by
    unfold C
    simp [show (786432 * k + 466558) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 233279) = 1179648 * k + 699838 := by
    unfold C
    simp [show (393216 * k + 233279) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 699838) = 589824 * k + 349919 := by
    unfold C
    simp [show (1179648 * k + 699838) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 349919) = 1769472 * k + 1049758 := by
    unfold C
    simp [show (589824 * k + 349919) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1049758) = 884736 * k + 524879 := by
    unfold C
    simp [show (1769472 * k + 1049758) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 524879) = 2654208 * k + 1574638 := by
    unfold C
    simp [show (884736 * k + 524879) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1574638) = 1327104 * k + 787319 := by
    unfold C
    simp [show (2654208 * k + 1574638) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 787319) = 3981312 * k + 2361958 := by
    unfold C
    simp [show (1327104 * k + 787319) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2361958) = 1990656 * k + 1180979 := by
    unfold C
    simp [show (3981312 * k + 2361958) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1180979) = 5971968 * k + 3542938 := by
    unfold C
    simp [show (1990656 * k + 1180979) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3542938) = 2985984 * k + 1771469 := by
    unfold C
    simp [show (5971968 * k + 3542938) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1771469) = 8957952 * k + 5314408 := by
    unfold C
    simp [show (2985984 * k + 1771469) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 5314408) = 4478976 * k + 2657204 := by
    unfold C
    simp [show (8957952 * k + 5314408) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 2657204) = 2239488 * k + 1328602 := by
    unfold C
    simp [show (4478976 * k + 2657204) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1328602) = 1119744 * k + 664301 := by
    unfold C
    simp [show (2239488 * k + 1328602) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 664301) = 3359232 * k + 1992904 := by
    unfold C
    simp [show (1119744 * k + 664301) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1992904) = 1679616 * k + 996452 := by
    unfold C
    simp [show (3359232 * k + 1992904) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 996452) = 839808 * k + 498226 := by
    unfold C
    simp [show (1679616 * k + 996452) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 498226) = 419904 * k + 249113 := by
    unfold C
    simp [show (839808 * k + 498226) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 249113) = 1259712 * k + 747340 := by
    unfold C
    simp [show (419904 * k + 249113) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 747340) = 629856 * k + 373670 := by
    unfold C
    simp [show (1259712 * k + 747340) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 373670) = 314928 * k + 186835 := by
    unfold C
    simp [show (629856 * k + 373670) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 186835) = 944784 * k + 560506 := by
    unfold C
    simp [show (314928 * k + 186835) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 560506) = 472392 * k + 280253 := by
    unfold C
    simp [show (944784 * k + 560506) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 280253) = 1417176 * k + 840760 := by
    unfold C
    simp [show (472392 * k + 280253) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 840760) = 708588 * k + 420380 := by
    unfold C
    simp [show (1417176 * k + 840760) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 420380) = 354294 * k + 210190 := by
    unfold C
    simp [show (708588 * k + 420380) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 210190) = 177147 * k + 105095 := by
    unfold C
    simp [show (354294 * k + 210190) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 155519) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 155519))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_155679 : ∀ k : Nat,
    iterate (262144 * k + 155679) 29 = 177147 * k + 105203 ∧
      177147 * k + 105203 < 262144 * k + 155679 := by
  intro k
  have h1 : C (262144 * k + 155679) = 786432 * k + 467038 := by
    unfold C
    simp [show (262144 * k + 155679) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 467038) = 393216 * k + 233519 := by
    unfold C
    simp [show (786432 * k + 467038) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 233519) = 1179648 * k + 700558 := by
    unfold C
    simp [show (393216 * k + 233519) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 700558) = 589824 * k + 350279 := by
    unfold C
    simp [show (1179648 * k + 700558) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 350279) = 1769472 * k + 1050838 := by
    unfold C
    simp [show (589824 * k + 350279) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1050838) = 884736 * k + 525419 := by
    unfold C
    simp [show (1769472 * k + 1050838) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 525419) = 2654208 * k + 1576258 := by
    unfold C
    simp [show (884736 * k + 525419) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1576258) = 1327104 * k + 788129 := by
    unfold C
    simp [show (2654208 * k + 1576258) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 788129) = 3981312 * k + 2364388 := by
    unfold C
    simp [show (1327104 * k + 788129) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2364388) = 1990656 * k + 1182194 := by
    unfold C
    simp [show (3981312 * k + 2364388) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1182194) = 995328 * k + 591097 := by
    unfold C
    simp [show (1990656 * k + 1182194) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 591097) = 2985984 * k + 1773292 := by
    unfold C
    simp [show (995328 * k + 591097) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1773292) = 1492992 * k + 886646 := by
    unfold C
    simp [show (2985984 * k + 1773292) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 886646) = 746496 * k + 443323 := by
    unfold C
    simp [show (1492992 * k + 886646) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 443323) = 2239488 * k + 1329970 := by
    unfold C
    simp [show (746496 * k + 443323) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1329970) = 1119744 * k + 664985 := by
    unfold C
    simp [show (2239488 * k + 1329970) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 664985) = 3359232 * k + 1994956 := by
    unfold C
    simp [show (1119744 * k + 664985) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1994956) = 1679616 * k + 997478 := by
    unfold C
    simp [show (3359232 * k + 1994956) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 997478) = 839808 * k + 498739 := by
    unfold C
    simp [show (1679616 * k + 997478) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 498739) = 2519424 * k + 1496218 := by
    unfold C
    simp [show (839808 * k + 498739) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1496218) = 1259712 * k + 748109 := by
    unfold C
    simp [show (2519424 * k + 1496218) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 748109) = 3779136 * k + 2244328 := by
    unfold C
    simp [show (1259712 * k + 748109) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2244328) = 1889568 * k + 1122164 := by
    unfold C
    simp [show (3779136 * k + 2244328) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1122164) = 944784 * k + 561082 := by
    unfold C
    simp [show (1889568 * k + 1122164) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 561082) = 472392 * k + 280541 := by
    unfold C
    simp [show (944784 * k + 561082) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 280541) = 1417176 * k + 841624 := by
    unfold C
    simp [show (472392 * k + 280541) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 841624) = 708588 * k + 420812 := by
    unfold C
    simp [show (1417176 * k + 841624) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 420812) = 354294 * k + 210406 := by
    unfold C
    simp [show (708588 * k + 420812) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 210406) = 177147 * k + 105203 := by
    unfold C
    simp [show (354294 * k + 210406) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 155679) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 155679))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_156251 : ∀ k : Nat,
    iterate (262144 * k + 156251) 29 = 177147 * k + 105590 ∧
      177147 * k + 105590 < 262144 * k + 156251 := by
  intro k
  have h1 : C (262144 * k + 156251) = 786432 * k + 468754 := by
    unfold C
    simp [show (262144 * k + 156251) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 468754) = 393216 * k + 234377 := by
    unfold C
    simp [show (786432 * k + 468754) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 234377) = 1179648 * k + 703132 := by
    unfold C
    simp [show (393216 * k + 234377) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 703132) = 589824 * k + 351566 := by
    unfold C
    simp [show (1179648 * k + 703132) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 351566) = 294912 * k + 175783 := by
    unfold C
    simp [show (589824 * k + 351566) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 175783) = 884736 * k + 527350 := by
    unfold C
    simp [show (294912 * k + 175783) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 527350) = 442368 * k + 263675 := by
    unfold C
    simp [show (884736 * k + 527350) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 263675) = 1327104 * k + 791026 := by
    unfold C
    simp [show (442368 * k + 263675) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 791026) = 663552 * k + 395513 := by
    unfold C
    simp [show (1327104 * k + 791026) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 395513) = 1990656 * k + 1186540 := by
    unfold C
    simp [show (663552 * k + 395513) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1186540) = 995328 * k + 593270 := by
    unfold C
    simp [show (1990656 * k + 1186540) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 593270) = 497664 * k + 296635 := by
    unfold C
    simp [show (995328 * k + 593270) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 296635) = 1492992 * k + 889906 := by
    unfold C
    simp [show (497664 * k + 296635) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 889906) = 746496 * k + 444953 := by
    unfold C
    simp [show (1492992 * k + 889906) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 444953) = 2239488 * k + 1334860 := by
    unfold C
    simp [show (746496 * k + 444953) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1334860) = 1119744 * k + 667430 := by
    unfold C
    simp [show (2239488 * k + 1334860) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 667430) = 559872 * k + 333715 := by
    unfold C
    simp [show (1119744 * k + 667430) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 333715) = 1679616 * k + 1001146 := by
    unfold C
    simp [show (559872 * k + 333715) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1001146) = 839808 * k + 500573 := by
    unfold C
    simp [show (1679616 * k + 1001146) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 500573) = 2519424 * k + 1501720 := by
    unfold C
    simp [show (839808 * k + 500573) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1501720) = 1259712 * k + 750860 := by
    unfold C
    simp [show (2519424 * k + 1501720) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 750860) = 629856 * k + 375430 := by
    unfold C
    simp [show (1259712 * k + 750860) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 375430) = 314928 * k + 187715 := by
    unfold C
    simp [show (629856 * k + 375430) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 187715) = 944784 * k + 563146 := by
    unfold C
    simp [show (314928 * k + 187715) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 563146) = 472392 * k + 281573 := by
    unfold C
    simp [show (944784 * k + 563146) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 281573) = 1417176 * k + 844720 := by
    unfold C
    simp [show (472392 * k + 281573) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 844720) = 708588 * k + 422360 := by
    unfold C
    simp [show (1417176 * k + 844720) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 422360) = 354294 * k + 211180 := by
    unfold C
    simp [show (708588 * k + 422360) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 211180) = 177147 * k + 105590 := by
    unfold C
    simp [show (354294 * k + 211180) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 156251) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 156251))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_157275 : ∀ k : Nat,
    iterate (262144 * k + 157275) 29 = 177147 * k + 106282 ∧
      177147 * k + 106282 < 262144 * k + 157275 := by
  intro k
  have h1 : C (262144 * k + 157275) = 786432 * k + 471826 := by
    unfold C
    simp [show (262144 * k + 157275) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 471826) = 393216 * k + 235913 := by
    unfold C
    simp [show (786432 * k + 471826) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 235913) = 1179648 * k + 707740 := by
    unfold C
    simp [show (393216 * k + 235913) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 707740) = 589824 * k + 353870 := by
    unfold C
    simp [show (1179648 * k + 707740) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 353870) = 294912 * k + 176935 := by
    unfold C
    simp [show (589824 * k + 353870) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 176935) = 884736 * k + 530806 := by
    unfold C
    simp [show (294912 * k + 176935) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 530806) = 442368 * k + 265403 := by
    unfold C
    simp [show (884736 * k + 530806) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 265403) = 1327104 * k + 796210 := by
    unfold C
    simp [show (442368 * k + 265403) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 796210) = 663552 * k + 398105 := by
    unfold C
    simp [show (1327104 * k + 796210) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 398105) = 1990656 * k + 1194316 := by
    unfold C
    simp [show (663552 * k + 398105) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1194316) = 995328 * k + 597158 := by
    unfold C
    simp [show (1990656 * k + 1194316) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 597158) = 497664 * k + 298579 := by
    unfold C
    simp [show (995328 * k + 597158) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 298579) = 1492992 * k + 895738 := by
    unfold C
    simp [show (497664 * k + 298579) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 895738) = 746496 * k + 447869 := by
    unfold C
    simp [show (1492992 * k + 895738) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 447869) = 2239488 * k + 1343608 := by
    unfold C
    simp [show (746496 * k + 447869) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1343608) = 1119744 * k + 671804 := by
    unfold C
    simp [show (2239488 * k + 1343608) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 671804) = 559872 * k + 335902 := by
    unfold C
    simp [show (1119744 * k + 671804) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 335902) = 279936 * k + 167951 := by
    unfold C
    simp [show (559872 * k + 335902) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 167951) = 839808 * k + 503854 := by
    unfold C
    simp [show (279936 * k + 167951) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 503854) = 419904 * k + 251927 := by
    unfold C
    simp [show (839808 * k + 503854) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 251927) = 1259712 * k + 755782 := by
    unfold C
    simp [show (419904 * k + 251927) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 755782) = 629856 * k + 377891 := by
    unfold C
    simp [show (1259712 * k + 755782) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 377891) = 1889568 * k + 1133674 := by
    unfold C
    simp [show (629856 * k + 377891) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1133674) = 944784 * k + 566837 := by
    unfold C
    simp [show (1889568 * k + 1133674) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 566837) = 2834352 * k + 1700512 := by
    unfold C
    simp [show (944784 * k + 566837) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1700512) = 1417176 * k + 850256 := by
    unfold C
    simp [show (2834352 * k + 1700512) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 850256) = 708588 * k + 425128 := by
    unfold C
    simp [show (1417176 * k + 850256) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 425128) = 354294 * k + 212564 := by
    unfold C
    simp [show (708588 * k + 425128) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 212564) = 177147 * k + 106282 := by
    unfold C
    simp [show (354294 * k + 212564) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 157275) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 157275))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_157391 : ∀ k : Nat,
    iterate (262144 * k + 157391) 29 = 177147 * k + 106360 ∧
      177147 * k + 106360 < 262144 * k + 157391 := by
  intro k
  have h1 : C (262144 * k + 157391) = 786432 * k + 472174 := by
    unfold C
    simp [show (262144 * k + 157391) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 472174) = 393216 * k + 236087 := by
    unfold C
    simp [show (786432 * k + 472174) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 236087) = 1179648 * k + 708262 := by
    unfold C
    simp [show (393216 * k + 236087) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 708262) = 589824 * k + 354131 := by
    unfold C
    simp [show (1179648 * k + 708262) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 354131) = 1769472 * k + 1062394 := by
    unfold C
    simp [show (589824 * k + 354131) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1062394) = 884736 * k + 531197 := by
    unfold C
    simp [show (1769472 * k + 1062394) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 531197) = 2654208 * k + 1593592 := by
    unfold C
    simp [show (884736 * k + 531197) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1593592) = 1327104 * k + 796796 := by
    unfold C
    simp [show (2654208 * k + 1593592) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 796796) = 663552 * k + 398398 := by
    unfold C
    simp [show (1327104 * k + 796796) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 398398) = 331776 * k + 199199 := by
    unfold C
    simp [show (663552 * k + 398398) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 199199) = 995328 * k + 597598 := by
    unfold C
    simp [show (331776 * k + 199199) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 597598) = 497664 * k + 298799 := by
    unfold C
    simp [show (995328 * k + 597598) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 298799) = 1492992 * k + 896398 := by
    unfold C
    simp [show (497664 * k + 298799) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 896398) = 746496 * k + 448199 := by
    unfold C
    simp [show (1492992 * k + 896398) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 448199) = 2239488 * k + 1344598 := by
    unfold C
    simp [show (746496 * k + 448199) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1344598) = 1119744 * k + 672299 := by
    unfold C
    simp [show (2239488 * k + 1344598) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 672299) = 3359232 * k + 2016898 := by
    unfold C
    simp [show (1119744 * k + 672299) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2016898) = 1679616 * k + 1008449 := by
    unfold C
    simp [show (3359232 * k + 2016898) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1008449) = 5038848 * k + 3025348 := by
    unfold C
    simp [show (1679616 * k + 1008449) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3025348) = 2519424 * k + 1512674 := by
    unfold C
    simp [show (5038848 * k + 3025348) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1512674) = 1259712 * k + 756337 := by
    unfold C
    simp [show (2519424 * k + 1512674) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 756337) = 3779136 * k + 2269012 := by
    unfold C
    simp [show (1259712 * k + 756337) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2269012) = 1889568 * k + 1134506 := by
    unfold C
    simp [show (3779136 * k + 2269012) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1134506) = 944784 * k + 567253 := by
    unfold C
    simp [show (1889568 * k + 1134506) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 567253) = 2834352 * k + 1701760 := by
    unfold C
    simp [show (944784 * k + 567253) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1701760) = 1417176 * k + 850880 := by
    unfold C
    simp [show (2834352 * k + 1701760) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 850880) = 708588 * k + 425440 := by
    unfold C
    simp [show (1417176 * k + 850880) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 425440) = 354294 * k + 212720 := by
    unfold C
    simp [show (708588 * k + 425440) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 212720) = 177147 * k + 106360 := by
    unfold C
    simp [show (354294 * k + 212720) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 157391) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 157391))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_157863 : ∀ k : Nat,
    iterate (262144 * k + 157863) 29 = 177147 * k + 106679 ∧
      177147 * k + 106679 < 262144 * k + 157863 := by
  intro k
  have h1 : C (262144 * k + 157863) = 786432 * k + 473590 := by
    unfold C
    simp [show (262144 * k + 157863) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 473590) = 393216 * k + 236795 := by
    unfold C
    simp [show (786432 * k + 473590) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 236795) = 1179648 * k + 710386 := by
    unfold C
    simp [show (393216 * k + 236795) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 710386) = 589824 * k + 355193 := by
    unfold C
    simp [show (1179648 * k + 710386) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 355193) = 1769472 * k + 1065580 := by
    unfold C
    simp [show (589824 * k + 355193) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1065580) = 884736 * k + 532790 := by
    unfold C
    simp [show (1769472 * k + 1065580) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 532790) = 442368 * k + 266395 := by
    unfold C
    simp [show (884736 * k + 532790) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 266395) = 1327104 * k + 799186 := by
    unfold C
    simp [show (442368 * k + 266395) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 799186) = 663552 * k + 399593 := by
    unfold C
    simp [show (1327104 * k + 799186) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 399593) = 1990656 * k + 1198780 := by
    unfold C
    simp [show (663552 * k + 399593) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1198780) = 995328 * k + 599390 := by
    unfold C
    simp [show (1990656 * k + 1198780) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 599390) = 497664 * k + 299695 := by
    unfold C
    simp [show (995328 * k + 599390) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 299695) = 1492992 * k + 899086 := by
    unfold C
    simp [show (497664 * k + 299695) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 899086) = 746496 * k + 449543 := by
    unfold C
    simp [show (1492992 * k + 899086) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 449543) = 2239488 * k + 1348630 := by
    unfold C
    simp [show (746496 * k + 449543) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1348630) = 1119744 * k + 674315 := by
    unfold C
    simp [show (2239488 * k + 1348630) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 674315) = 3359232 * k + 2022946 := by
    unfold C
    simp [show (1119744 * k + 674315) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2022946) = 1679616 * k + 1011473 := by
    unfold C
    simp [show (3359232 * k + 2022946) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1011473) = 5038848 * k + 3034420 := by
    unfold C
    simp [show (1679616 * k + 1011473) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3034420) = 2519424 * k + 1517210 := by
    unfold C
    simp [show (5038848 * k + 3034420) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1517210) = 1259712 * k + 758605 := by
    unfold C
    simp [show (2519424 * k + 1517210) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 758605) = 3779136 * k + 2275816 := by
    unfold C
    simp [show (1259712 * k + 758605) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2275816) = 1889568 * k + 1137908 := by
    unfold C
    simp [show (3779136 * k + 2275816) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1137908) = 944784 * k + 568954 := by
    unfold C
    simp [show (1889568 * k + 1137908) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 568954) = 472392 * k + 284477 := by
    unfold C
    simp [show (944784 * k + 568954) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 284477) = 1417176 * k + 853432 := by
    unfold C
    simp [show (472392 * k + 284477) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 853432) = 708588 * k + 426716 := by
    unfold C
    simp [show (1417176 * k + 853432) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 426716) = 354294 * k + 213358 := by
    unfold C
    simp [show (708588 * k + 426716) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 213358) = 177147 * k + 106679 := by
    unfold C
    simp [show (354294 * k + 213358) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 157863) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 157863))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_157947 : ∀ k : Nat,
    iterate (262144 * k + 157947) 29 = 177147 * k + 106736 ∧
      177147 * k + 106736 < 262144 * k + 157947 := by
  intro k
  have h1 : C (262144 * k + 157947) = 786432 * k + 473842 := by
    unfold C
    simp [show (262144 * k + 157947) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 473842) = 393216 * k + 236921 := by
    unfold C
    simp [show (786432 * k + 473842) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 236921) = 1179648 * k + 710764 := by
    unfold C
    simp [show (393216 * k + 236921) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 710764) = 589824 * k + 355382 := by
    unfold C
    simp [show (1179648 * k + 710764) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 355382) = 294912 * k + 177691 := by
    unfold C
    simp [show (589824 * k + 355382) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 177691) = 884736 * k + 533074 := by
    unfold C
    simp [show (294912 * k + 177691) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 533074) = 442368 * k + 266537 := by
    unfold C
    simp [show (884736 * k + 533074) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 266537) = 1327104 * k + 799612 := by
    unfold C
    simp [show (442368 * k + 266537) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 799612) = 663552 * k + 399806 := by
    unfold C
    simp [show (1327104 * k + 799612) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 399806) = 331776 * k + 199903 := by
    unfold C
    simp [show (663552 * k + 399806) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 199903) = 995328 * k + 599710 := by
    unfold C
    simp [show (331776 * k + 199903) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 599710) = 497664 * k + 299855 := by
    unfold C
    simp [show (995328 * k + 599710) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 299855) = 1492992 * k + 899566 := by
    unfold C
    simp [show (497664 * k + 299855) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 899566) = 746496 * k + 449783 := by
    unfold C
    simp [show (1492992 * k + 899566) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 449783) = 2239488 * k + 1349350 := by
    unfold C
    simp [show (746496 * k + 449783) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1349350) = 1119744 * k + 674675 := by
    unfold C
    simp [show (2239488 * k + 1349350) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 674675) = 3359232 * k + 2024026 := by
    unfold C
    simp [show (1119744 * k + 674675) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2024026) = 1679616 * k + 1012013 := by
    unfold C
    simp [show (3359232 * k + 2024026) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1012013) = 5038848 * k + 3036040 := by
    unfold C
    simp [show (1679616 * k + 1012013) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3036040) = 2519424 * k + 1518020 := by
    unfold C
    simp [show (5038848 * k + 3036040) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1518020) = 1259712 * k + 759010 := by
    unfold C
    simp [show (2519424 * k + 1518020) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 759010) = 629856 * k + 379505 := by
    unfold C
    simp [show (1259712 * k + 759010) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 379505) = 1889568 * k + 1138516 := by
    unfold C
    simp [show (629856 * k + 379505) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1138516) = 944784 * k + 569258 := by
    unfold C
    simp [show (1889568 * k + 1138516) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 569258) = 472392 * k + 284629 := by
    unfold C
    simp [show (944784 * k + 569258) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 284629) = 1417176 * k + 853888 := by
    unfold C
    simp [show (472392 * k + 284629) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 853888) = 708588 * k + 426944 := by
    unfold C
    simp [show (1417176 * k + 853888) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 426944) = 354294 * k + 213472 := by
    unfold C
    simp [show (708588 * k + 426944) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 213472) = 177147 * k + 106736 := by
    unfold C
    simp [show (354294 * k + 213472) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 157947) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 157947))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_158107 : ∀ k : Nat,
    iterate (262144 * k + 158107) 29 = 177147 * k + 106844 ∧
      177147 * k + 106844 < 262144 * k + 158107 := by
  intro k
  have h1 : C (262144 * k + 158107) = 786432 * k + 474322 := by
    unfold C
    simp [show (262144 * k + 158107) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 474322) = 393216 * k + 237161 := by
    unfold C
    simp [show (786432 * k + 474322) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 237161) = 1179648 * k + 711484 := by
    unfold C
    simp [show (393216 * k + 237161) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 711484) = 589824 * k + 355742 := by
    unfold C
    simp [show (1179648 * k + 711484) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 355742) = 294912 * k + 177871 := by
    unfold C
    simp [show (589824 * k + 355742) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 177871) = 884736 * k + 533614 := by
    unfold C
    simp [show (294912 * k + 177871) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 533614) = 442368 * k + 266807 := by
    unfold C
    simp [show (884736 * k + 533614) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 266807) = 1327104 * k + 800422 := by
    unfold C
    simp [show (442368 * k + 266807) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 800422) = 663552 * k + 400211 := by
    unfold C
    simp [show (1327104 * k + 800422) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 400211) = 1990656 * k + 1200634 := by
    unfold C
    simp [show (663552 * k + 400211) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1200634) = 995328 * k + 600317 := by
    unfold C
    simp [show (1990656 * k + 1200634) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 600317) = 2985984 * k + 1800952 := by
    unfold C
    simp [show (995328 * k + 600317) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1800952) = 1492992 * k + 900476 := by
    unfold C
    simp [show (2985984 * k + 1800952) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 900476) = 746496 * k + 450238 := by
    unfold C
    simp [show (1492992 * k + 900476) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 450238) = 373248 * k + 225119 := by
    unfold C
    simp [show (746496 * k + 450238) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 225119) = 1119744 * k + 675358 := by
    unfold C
    simp [show (373248 * k + 225119) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 675358) = 559872 * k + 337679 := by
    unfold C
    simp [show (1119744 * k + 675358) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 337679) = 1679616 * k + 1013038 := by
    unfold C
    simp [show (559872 * k + 337679) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1013038) = 839808 * k + 506519 := by
    unfold C
    simp [show (1679616 * k + 1013038) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 506519) = 2519424 * k + 1519558 := by
    unfold C
    simp [show (839808 * k + 506519) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1519558) = 1259712 * k + 759779 := by
    unfold C
    simp [show (2519424 * k + 1519558) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 759779) = 3779136 * k + 2279338 := by
    unfold C
    simp [show (1259712 * k + 759779) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2279338) = 1889568 * k + 1139669 := by
    unfold C
    simp [show (3779136 * k + 2279338) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1139669) = 5668704 * k + 3419008 := by
    unfold C
    simp [show (1889568 * k + 1139669) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 3419008) = 2834352 * k + 1709504 := by
    unfold C
    simp [show (5668704 * k + 3419008) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1709504) = 1417176 * k + 854752 := by
    unfold C
    simp [show (2834352 * k + 1709504) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 854752) = 708588 * k + 427376 := by
    unfold C
    simp [show (1417176 * k + 854752) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 427376) = 354294 * k + 213688 := by
    unfold C
    simp [show (708588 * k + 427376) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 213688) = 177147 * k + 106844 := by
    unfold C
    simp [show (354294 * k + 213688) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 158107) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 158107))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_158875 : ∀ k : Nat,
    iterate (262144 * k + 158875) 29 = 177147 * k + 107363 ∧
      177147 * k + 107363 < 262144 * k + 158875 := by
  intro k
  have h1 : C (262144 * k + 158875) = 786432 * k + 476626 := by
    unfold C
    simp [show (262144 * k + 158875) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 476626) = 393216 * k + 238313 := by
    unfold C
    simp [show (786432 * k + 476626) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 238313) = 1179648 * k + 714940 := by
    unfold C
    simp [show (393216 * k + 238313) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 714940) = 589824 * k + 357470 := by
    unfold C
    simp [show (1179648 * k + 714940) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 357470) = 294912 * k + 178735 := by
    unfold C
    simp [show (589824 * k + 357470) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 178735) = 884736 * k + 536206 := by
    unfold C
    simp [show (294912 * k + 178735) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 536206) = 442368 * k + 268103 := by
    unfold C
    simp [show (884736 * k + 536206) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 268103) = 1327104 * k + 804310 := by
    unfold C
    simp [show (442368 * k + 268103) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 804310) = 663552 * k + 402155 := by
    unfold C
    simp [show (1327104 * k + 804310) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 402155) = 1990656 * k + 1206466 := by
    unfold C
    simp [show (663552 * k + 402155) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1206466) = 995328 * k + 603233 := by
    unfold C
    simp [show (1990656 * k + 1206466) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 603233) = 2985984 * k + 1809700 := by
    unfold C
    simp [show (995328 * k + 603233) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1809700) = 1492992 * k + 904850 := by
    unfold C
    simp [show (2985984 * k + 1809700) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 904850) = 746496 * k + 452425 := by
    unfold C
    simp [show (1492992 * k + 904850) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 452425) = 2239488 * k + 1357276 := by
    unfold C
    simp [show (746496 * k + 452425) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1357276) = 1119744 * k + 678638 := by
    unfold C
    simp [show (2239488 * k + 1357276) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 678638) = 559872 * k + 339319 := by
    unfold C
    simp [show (1119744 * k + 678638) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 339319) = 1679616 * k + 1017958 := by
    unfold C
    simp [show (559872 * k + 339319) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1017958) = 839808 * k + 508979 := by
    unfold C
    simp [show (1679616 * k + 1017958) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 508979) = 2519424 * k + 1526938 := by
    unfold C
    simp [show (839808 * k + 508979) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1526938) = 1259712 * k + 763469 := by
    unfold C
    simp [show (2519424 * k + 1526938) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 763469) = 3779136 * k + 2290408 := by
    unfold C
    simp [show (1259712 * k + 763469) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2290408) = 1889568 * k + 1145204 := by
    unfold C
    simp [show (3779136 * k + 2290408) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1145204) = 944784 * k + 572602 := by
    unfold C
    simp [show (1889568 * k + 1145204) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 572602) = 472392 * k + 286301 := by
    unfold C
    simp [show (944784 * k + 572602) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 286301) = 1417176 * k + 858904 := by
    unfold C
    simp [show (472392 * k + 286301) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 858904) = 708588 * k + 429452 := by
    unfold C
    simp [show (1417176 * k + 858904) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 429452) = 354294 * k + 214726 := by
    unfold C
    simp [show (708588 * k + 429452) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 214726) = 177147 * k + 107363 := by
    unfold C
    simp [show (354294 * k + 214726) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 158875) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 158875))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_158887 : ∀ k : Nat,
    iterate (262144 * k + 158887) 29 = 177147 * k + 107371 ∧
      177147 * k + 107371 < 262144 * k + 158887 := by
  intro k
  have h1 : C (262144 * k + 158887) = 786432 * k + 476662 := by
    unfold C
    simp [show (262144 * k + 158887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 476662) = 393216 * k + 238331 := by
    unfold C
    simp [show (786432 * k + 476662) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 238331) = 1179648 * k + 714994 := by
    unfold C
    simp [show (393216 * k + 238331) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 714994) = 589824 * k + 357497 := by
    unfold C
    simp [show (1179648 * k + 714994) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 357497) = 1769472 * k + 1072492 := by
    unfold C
    simp [show (589824 * k + 357497) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1072492) = 884736 * k + 536246 := by
    unfold C
    simp [show (1769472 * k + 1072492) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 536246) = 442368 * k + 268123 := by
    unfold C
    simp [show (884736 * k + 536246) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 268123) = 1327104 * k + 804370 := by
    unfold C
    simp [show (442368 * k + 268123) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 804370) = 663552 * k + 402185 := by
    unfold C
    simp [show (1327104 * k + 804370) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 402185) = 1990656 * k + 1206556 := by
    unfold C
    simp [show (663552 * k + 402185) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1206556) = 995328 * k + 603278 := by
    unfold C
    simp [show (1990656 * k + 1206556) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 603278) = 497664 * k + 301639 := by
    unfold C
    simp [show (995328 * k + 603278) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 301639) = 1492992 * k + 904918 := by
    unfold C
    simp [show (497664 * k + 301639) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 904918) = 746496 * k + 452459 := by
    unfold C
    simp [show (1492992 * k + 904918) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 452459) = 2239488 * k + 1357378 := by
    unfold C
    simp [show (746496 * k + 452459) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1357378) = 1119744 * k + 678689 := by
    unfold C
    simp [show (2239488 * k + 1357378) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 678689) = 3359232 * k + 2036068 := by
    unfold C
    simp [show (1119744 * k + 678689) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2036068) = 1679616 * k + 1018034 := by
    unfold C
    simp [show (3359232 * k + 2036068) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1018034) = 839808 * k + 509017 := by
    unfold C
    simp [show (1679616 * k + 1018034) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 509017) = 2519424 * k + 1527052 := by
    unfold C
    simp [show (839808 * k + 509017) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1527052) = 1259712 * k + 763526 := by
    unfold C
    simp [show (2519424 * k + 1527052) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 763526) = 629856 * k + 381763 := by
    unfold C
    simp [show (1259712 * k + 763526) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 381763) = 1889568 * k + 1145290 := by
    unfold C
    simp [show (629856 * k + 381763) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1145290) = 944784 * k + 572645 := by
    unfold C
    simp [show (1889568 * k + 1145290) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 572645) = 2834352 * k + 1717936 := by
    unfold C
    simp [show (944784 * k + 572645) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1717936) = 1417176 * k + 858968 := by
    unfold C
    simp [show (2834352 * k + 1717936) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 858968) = 708588 * k + 429484 := by
    unfold C
    simp [show (1417176 * k + 858968) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 429484) = 354294 * k + 214742 := by
    unfold C
    simp [show (708588 * k + 429484) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 214742) = 177147 * k + 107371 := by
    unfold C
    simp [show (354294 * k + 214742) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 158887) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 158887))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_159231 : ∀ k : Nat,
    iterate (262144 * k + 159231) 29 = 177147 * k + 107603 ∧
      177147 * k + 107603 < 262144 * k + 159231 := by
  intro k
  have h1 : C (262144 * k + 159231) = 786432 * k + 477694 := by
    unfold C
    simp [show (262144 * k + 159231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 477694) = 393216 * k + 238847 := by
    unfold C
    simp [show (786432 * k + 477694) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 238847) = 1179648 * k + 716542 := by
    unfold C
    simp [show (393216 * k + 238847) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 716542) = 589824 * k + 358271 := by
    unfold C
    simp [show (1179648 * k + 716542) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 358271) = 1769472 * k + 1074814 := by
    unfold C
    simp [show (589824 * k + 358271) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1074814) = 884736 * k + 537407 := by
    unfold C
    simp [show (1769472 * k + 1074814) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 537407) = 2654208 * k + 1612222 := by
    unfold C
    simp [show (884736 * k + 537407) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1612222) = 1327104 * k + 806111 := by
    unfold C
    simp [show (2654208 * k + 1612222) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 806111) = 3981312 * k + 2418334 := by
    unfold C
    simp [show (1327104 * k + 806111) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2418334) = 1990656 * k + 1209167 := by
    unfold C
    simp [show (3981312 * k + 2418334) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1209167) = 5971968 * k + 3627502 := by
    unfold C
    simp [show (1990656 * k + 1209167) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3627502) = 2985984 * k + 1813751 := by
    unfold C
    simp [show (5971968 * k + 3627502) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1813751) = 8957952 * k + 5441254 := by
    unfold C
    simp [show (2985984 * k + 1813751) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 5441254) = 4478976 * k + 2720627 := by
    unfold C
    simp [show (8957952 * k + 5441254) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 2720627) = 13436928 * k + 8161882 := by
    unfold C
    simp [show (4478976 * k + 2720627) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 8161882) = 6718464 * k + 4080941 := by
    unfold C
    simp [show (13436928 * k + 8161882) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 4080941) = 20155392 * k + 12242824 := by
    unfold C
    simp [show (6718464 * k + 4080941) % 2 ≠ 0 by omega]
    omega
  have h18 : C (20155392 * k + 12242824) = 10077696 * k + 6121412 := by
    unfold C
    simp [show (20155392 * k + 12242824) % 2 = 0 by omega]
    omega
  have h19 : C (10077696 * k + 6121412) = 5038848 * k + 3060706 := by
    unfold C
    simp [show (10077696 * k + 6121412) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 3060706) = 2519424 * k + 1530353 := by
    unfold C
    simp [show (5038848 * k + 3060706) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1530353) = 7558272 * k + 4591060 := by
    unfold C
    simp [show (2519424 * k + 1530353) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 4591060) = 3779136 * k + 2295530 := by
    unfold C
    simp [show (7558272 * k + 4591060) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2295530) = 1889568 * k + 1147765 := by
    unfold C
    simp [show (3779136 * k + 2295530) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1147765) = 5668704 * k + 3443296 := by
    unfold C
    simp [show (1889568 * k + 1147765) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 3443296) = 2834352 * k + 1721648 := by
    unfold C
    simp [show (5668704 * k + 3443296) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1721648) = 1417176 * k + 860824 := by
    unfold C
    simp [show (2834352 * k + 1721648) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 860824) = 708588 * k + 430412 := by
    unfold C
    simp [show (1417176 * k + 860824) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 430412) = 354294 * k + 215206 := by
    unfold C
    simp [show (708588 * k + 430412) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 215206) = 177147 * k + 107603 := by
    unfold C
    simp [show (354294 * k + 215206) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 159231) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 159231))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_159439 : ∀ k : Nat,
    iterate (262144 * k + 159439) 29 = 177147 * k + 107744 ∧
      177147 * k + 107744 < 262144 * k + 159439 := by
  intro k
  have h1 : C (262144 * k + 159439) = 786432 * k + 478318 := by
    unfold C
    simp [show (262144 * k + 159439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 478318) = 393216 * k + 239159 := by
    unfold C
    simp [show (786432 * k + 478318) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 239159) = 1179648 * k + 717478 := by
    unfold C
    simp [show (393216 * k + 239159) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 717478) = 589824 * k + 358739 := by
    unfold C
    simp [show (1179648 * k + 717478) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 358739) = 1769472 * k + 1076218 := by
    unfold C
    simp [show (589824 * k + 358739) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1076218) = 884736 * k + 538109 := by
    unfold C
    simp [show (1769472 * k + 1076218) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 538109) = 2654208 * k + 1614328 := by
    unfold C
    simp [show (884736 * k + 538109) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1614328) = 1327104 * k + 807164 := by
    unfold C
    simp [show (2654208 * k + 1614328) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 807164) = 663552 * k + 403582 := by
    unfold C
    simp [show (1327104 * k + 807164) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 403582) = 331776 * k + 201791 := by
    unfold C
    simp [show (663552 * k + 403582) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 201791) = 995328 * k + 605374 := by
    unfold C
    simp [show (331776 * k + 201791) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 605374) = 497664 * k + 302687 := by
    unfold C
    simp [show (995328 * k + 605374) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 302687) = 1492992 * k + 908062 := by
    unfold C
    simp [show (497664 * k + 302687) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 908062) = 746496 * k + 454031 := by
    unfold C
    simp [show (1492992 * k + 908062) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 454031) = 2239488 * k + 1362094 := by
    unfold C
    simp [show (746496 * k + 454031) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1362094) = 1119744 * k + 681047 := by
    unfold C
    simp [show (2239488 * k + 1362094) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 681047) = 3359232 * k + 2043142 := by
    unfold C
    simp [show (1119744 * k + 681047) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2043142) = 1679616 * k + 1021571 := by
    unfold C
    simp [show (3359232 * k + 2043142) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1021571) = 5038848 * k + 3064714 := by
    unfold C
    simp [show (1679616 * k + 1021571) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3064714) = 2519424 * k + 1532357 := by
    unfold C
    simp [show (5038848 * k + 3064714) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1532357) = 7558272 * k + 4597072 := by
    unfold C
    simp [show (2519424 * k + 1532357) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 4597072) = 3779136 * k + 2298536 := by
    unfold C
    simp [show (7558272 * k + 4597072) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2298536) = 1889568 * k + 1149268 := by
    unfold C
    simp [show (3779136 * k + 2298536) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1149268) = 944784 * k + 574634 := by
    unfold C
    simp [show (1889568 * k + 1149268) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 574634) = 472392 * k + 287317 := by
    unfold C
    simp [show (944784 * k + 574634) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 287317) = 1417176 * k + 861952 := by
    unfold C
    simp [show (472392 * k + 287317) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 861952) = 708588 * k + 430976 := by
    unfold C
    simp [show (1417176 * k + 861952) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 430976) = 354294 * k + 215488 := by
    unfold C
    simp [show (708588 * k + 430976) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 215488) = 177147 * k + 107744 := by
    unfold C
    simp [show (354294 * k + 215488) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 159439) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 159439))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_159679 : ∀ k : Nat,
    iterate (262144 * k + 159679) 29 = 177147 * k + 107906 ∧
      177147 * k + 107906 < 262144 * k + 159679 := by
  intro k
  have h1 : C (262144 * k + 159679) = 786432 * k + 479038 := by
    unfold C
    simp [show (262144 * k + 159679) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 479038) = 393216 * k + 239519 := by
    unfold C
    simp [show (786432 * k + 479038) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 239519) = 1179648 * k + 718558 := by
    unfold C
    simp [show (393216 * k + 239519) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 718558) = 589824 * k + 359279 := by
    unfold C
    simp [show (1179648 * k + 718558) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 359279) = 1769472 * k + 1077838 := by
    unfold C
    simp [show (589824 * k + 359279) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1077838) = 884736 * k + 538919 := by
    unfold C
    simp [show (1769472 * k + 1077838) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 538919) = 2654208 * k + 1616758 := by
    unfold C
    simp [show (884736 * k + 538919) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1616758) = 1327104 * k + 808379 := by
    unfold C
    simp [show (2654208 * k + 1616758) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 808379) = 3981312 * k + 2425138 := by
    unfold C
    simp [show (1327104 * k + 808379) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2425138) = 1990656 * k + 1212569 := by
    unfold C
    simp [show (3981312 * k + 2425138) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1212569) = 5971968 * k + 3637708 := by
    unfold C
    simp [show (1990656 * k + 1212569) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3637708) = 2985984 * k + 1818854 := by
    unfold C
    simp [show (5971968 * k + 3637708) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1818854) = 1492992 * k + 909427 := by
    unfold C
    simp [show (2985984 * k + 1818854) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 909427) = 4478976 * k + 2728282 := by
    unfold C
    simp [show (1492992 * k + 909427) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2728282) = 2239488 * k + 1364141 := by
    unfold C
    simp [show (4478976 * k + 2728282) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1364141) = 6718464 * k + 4092424 := by
    unfold C
    simp [show (2239488 * k + 1364141) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4092424) = 3359232 * k + 2046212 := by
    unfold C
    simp [show (6718464 * k + 4092424) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2046212) = 1679616 * k + 1023106 := by
    unfold C
    simp [show (3359232 * k + 2046212) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1023106) = 839808 * k + 511553 := by
    unfold C
    simp [show (1679616 * k + 1023106) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 511553) = 2519424 * k + 1534660 := by
    unfold C
    simp [show (839808 * k + 511553) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1534660) = 1259712 * k + 767330 := by
    unfold C
    simp [show (2519424 * k + 1534660) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 767330) = 629856 * k + 383665 := by
    unfold C
    simp [show (1259712 * k + 767330) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 383665) = 1889568 * k + 1150996 := by
    unfold C
    simp [show (629856 * k + 383665) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1150996) = 944784 * k + 575498 := by
    unfold C
    simp [show (1889568 * k + 1150996) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 575498) = 472392 * k + 287749 := by
    unfold C
    simp [show (944784 * k + 575498) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 287749) = 1417176 * k + 863248 := by
    unfold C
    simp [show (472392 * k + 287749) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 863248) = 708588 * k + 431624 := by
    unfold C
    simp [show (1417176 * k + 863248) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 431624) = 354294 * k + 215812 := by
    unfold C
    simp [show (708588 * k + 431624) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 215812) = 177147 * k + 107906 := by
    unfold C
    simp [show (354294 * k + 215812) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 159679) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 159679))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_159967 : ∀ k : Nat,
    iterate (262144 * k + 159967) 29 = 177147 * k + 108101 ∧
      177147 * k + 108101 < 262144 * k + 159967 := by
  intro k
  have h1 : C (262144 * k + 159967) = 786432 * k + 479902 := by
    unfold C
    simp [show (262144 * k + 159967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 479902) = 393216 * k + 239951 := by
    unfold C
    simp [show (786432 * k + 479902) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 239951) = 1179648 * k + 719854 := by
    unfold C
    simp [show (393216 * k + 239951) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 719854) = 589824 * k + 359927 := by
    unfold C
    simp [show (1179648 * k + 719854) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 359927) = 1769472 * k + 1079782 := by
    unfold C
    simp [show (589824 * k + 359927) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1079782) = 884736 * k + 539891 := by
    unfold C
    simp [show (1769472 * k + 1079782) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 539891) = 2654208 * k + 1619674 := by
    unfold C
    simp [show (884736 * k + 539891) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1619674) = 1327104 * k + 809837 := by
    unfold C
    simp [show (2654208 * k + 1619674) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 809837) = 3981312 * k + 2429512 := by
    unfold C
    simp [show (1327104 * k + 809837) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2429512) = 1990656 * k + 1214756 := by
    unfold C
    simp [show (3981312 * k + 2429512) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1214756) = 995328 * k + 607378 := by
    unfold C
    simp [show (1990656 * k + 1214756) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 607378) = 497664 * k + 303689 := by
    unfold C
    simp [show (995328 * k + 607378) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 303689) = 1492992 * k + 911068 := by
    unfold C
    simp [show (497664 * k + 303689) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 911068) = 746496 * k + 455534 := by
    unfold C
    simp [show (1492992 * k + 911068) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 455534) = 373248 * k + 227767 := by
    unfold C
    simp [show (746496 * k + 455534) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 227767) = 1119744 * k + 683302 := by
    unfold C
    simp [show (373248 * k + 227767) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 683302) = 559872 * k + 341651 := by
    unfold C
    simp [show (1119744 * k + 683302) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 341651) = 1679616 * k + 1024954 := by
    unfold C
    simp [show (559872 * k + 341651) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1024954) = 839808 * k + 512477 := by
    unfold C
    simp [show (1679616 * k + 1024954) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 512477) = 2519424 * k + 1537432 := by
    unfold C
    simp [show (839808 * k + 512477) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1537432) = 1259712 * k + 768716 := by
    unfold C
    simp [show (2519424 * k + 1537432) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 768716) = 629856 * k + 384358 := by
    unfold C
    simp [show (1259712 * k + 768716) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 384358) = 314928 * k + 192179 := by
    unfold C
    simp [show (629856 * k + 384358) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 192179) = 944784 * k + 576538 := by
    unfold C
    simp [show (314928 * k + 192179) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 576538) = 472392 * k + 288269 := by
    unfold C
    simp [show (944784 * k + 576538) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 288269) = 1417176 * k + 864808 := by
    unfold C
    simp [show (472392 * k + 288269) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 864808) = 708588 * k + 432404 := by
    unfold C
    simp [show (1417176 * k + 864808) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 432404) = 354294 * k + 216202 := by
    unfold C
    simp [show (708588 * k + 432404) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 216202) = 177147 * k + 108101 := by
    unfold C
    simp [show (354294 * k + 216202) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 159967) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 159967))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_160255 : ∀ k : Nat,
    iterate (262144 * k + 160255) 29 = 177147 * k + 108295 ∧
      177147 * k + 108295 < 262144 * k + 160255 := by
  intro k
  have h1 : C (262144 * k + 160255) = 786432 * k + 480766 := by
    unfold C
    simp [show (262144 * k + 160255) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 480766) = 393216 * k + 240383 := by
    unfold C
    simp [show (786432 * k + 480766) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 240383) = 1179648 * k + 721150 := by
    unfold C
    simp [show (393216 * k + 240383) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 721150) = 589824 * k + 360575 := by
    unfold C
    simp [show (1179648 * k + 721150) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 360575) = 1769472 * k + 1081726 := by
    unfold C
    simp [show (589824 * k + 360575) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1081726) = 884736 * k + 540863 := by
    unfold C
    simp [show (1769472 * k + 1081726) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 540863) = 2654208 * k + 1622590 := by
    unfold C
    simp [show (884736 * k + 540863) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1622590) = 1327104 * k + 811295 := by
    unfold C
    simp [show (2654208 * k + 1622590) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 811295) = 3981312 * k + 2433886 := by
    unfold C
    simp [show (1327104 * k + 811295) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2433886) = 1990656 * k + 1216943 := by
    unfold C
    simp [show (3981312 * k + 2433886) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1216943) = 5971968 * k + 3650830 := by
    unfold C
    simp [show (1990656 * k + 1216943) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3650830) = 2985984 * k + 1825415 := by
    unfold C
    simp [show (5971968 * k + 3650830) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1825415) = 8957952 * k + 5476246 := by
    unfold C
    simp [show (2985984 * k + 1825415) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 5476246) = 4478976 * k + 2738123 := by
    unfold C
    simp [show (8957952 * k + 5476246) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 2738123) = 13436928 * k + 8214370 := by
    unfold C
    simp [show (4478976 * k + 2738123) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 8214370) = 6718464 * k + 4107185 := by
    unfold C
    simp [show (13436928 * k + 8214370) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 4107185) = 20155392 * k + 12321556 := by
    unfold C
    simp [show (6718464 * k + 4107185) % 2 ≠ 0 by omega]
    omega
  have h18 : C (20155392 * k + 12321556) = 10077696 * k + 6160778 := by
    unfold C
    simp [show (20155392 * k + 12321556) % 2 = 0 by omega]
    omega
  have h19 : C (10077696 * k + 6160778) = 5038848 * k + 3080389 := by
    unfold C
    simp [show (10077696 * k + 6160778) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 3080389) = 15116544 * k + 9241168 := by
    unfold C
    simp [show (5038848 * k + 3080389) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 9241168) = 7558272 * k + 4620584 := by
    unfold C
    simp [show (15116544 * k + 9241168) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 4620584) = 3779136 * k + 2310292 := by
    unfold C
    simp [show (7558272 * k + 4620584) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2310292) = 1889568 * k + 1155146 := by
    unfold C
    simp [show (3779136 * k + 2310292) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1155146) = 944784 * k + 577573 := by
    unfold C
    simp [show (1889568 * k + 1155146) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 577573) = 2834352 * k + 1732720 := by
    unfold C
    simp [show (944784 * k + 577573) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1732720) = 1417176 * k + 866360 := by
    unfold C
    simp [show (2834352 * k + 1732720) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 866360) = 708588 * k + 433180 := by
    unfold C
    simp [show (1417176 * k + 866360) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 433180) = 354294 * k + 216590 := by
    unfold C
    simp [show (708588 * k + 433180) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 216590) = 177147 * k + 108295 := by
    unfold C
    simp [show (354294 * k + 216590) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 160255) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 160255))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_160991 : ∀ k : Nat,
    iterate (262144 * k + 160991) 29 = 177147 * k + 108793 ∧
      177147 * k + 108793 < 262144 * k + 160991 := by
  intro k
  have h1 : C (262144 * k + 160991) = 786432 * k + 482974 := by
    unfold C
    simp [show (262144 * k + 160991) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 482974) = 393216 * k + 241487 := by
    unfold C
    simp [show (786432 * k + 482974) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 241487) = 1179648 * k + 724462 := by
    unfold C
    simp [show (393216 * k + 241487) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 724462) = 589824 * k + 362231 := by
    unfold C
    simp [show (1179648 * k + 724462) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 362231) = 1769472 * k + 1086694 := by
    unfold C
    simp [show (589824 * k + 362231) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1086694) = 884736 * k + 543347 := by
    unfold C
    simp [show (1769472 * k + 1086694) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 543347) = 2654208 * k + 1630042 := by
    unfold C
    simp [show (884736 * k + 543347) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1630042) = 1327104 * k + 815021 := by
    unfold C
    simp [show (2654208 * k + 1630042) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 815021) = 3981312 * k + 2445064 := by
    unfold C
    simp [show (1327104 * k + 815021) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2445064) = 1990656 * k + 1222532 := by
    unfold C
    simp [show (3981312 * k + 2445064) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1222532) = 995328 * k + 611266 := by
    unfold C
    simp [show (1990656 * k + 1222532) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 611266) = 497664 * k + 305633 := by
    unfold C
    simp [show (995328 * k + 611266) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 305633) = 1492992 * k + 916900 := by
    unfold C
    simp [show (497664 * k + 305633) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 916900) = 746496 * k + 458450 := by
    unfold C
    simp [show (1492992 * k + 916900) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 458450) = 373248 * k + 229225 := by
    unfold C
    simp [show (746496 * k + 458450) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 229225) = 1119744 * k + 687676 := by
    unfold C
    simp [show (373248 * k + 229225) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 687676) = 559872 * k + 343838 := by
    unfold C
    simp [show (1119744 * k + 687676) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 343838) = 279936 * k + 171919 := by
    unfold C
    simp [show (559872 * k + 343838) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 171919) = 839808 * k + 515758 := by
    unfold C
    simp [show (279936 * k + 171919) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 515758) = 419904 * k + 257879 := by
    unfold C
    simp [show (839808 * k + 515758) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 257879) = 1259712 * k + 773638 := by
    unfold C
    simp [show (419904 * k + 257879) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 773638) = 629856 * k + 386819 := by
    unfold C
    simp [show (1259712 * k + 773638) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 386819) = 1889568 * k + 1160458 := by
    unfold C
    simp [show (629856 * k + 386819) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1160458) = 944784 * k + 580229 := by
    unfold C
    simp [show (1889568 * k + 1160458) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 580229) = 2834352 * k + 1740688 := by
    unfold C
    simp [show (944784 * k + 580229) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1740688) = 1417176 * k + 870344 := by
    unfold C
    simp [show (2834352 * k + 1740688) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 870344) = 708588 * k + 435172 := by
    unfold C
    simp [show (1417176 * k + 870344) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 435172) = 354294 * k + 217586 := by
    unfold C
    simp [show (708588 * k + 435172) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 217586) = 177147 * k + 108793 := by
    unfold C
    simp [show (354294 * k + 217586) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 160991) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 160991))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_161071 : ∀ k : Nat,
    iterate (262144 * k + 161071) 29 = 177147 * k + 108847 ∧
      177147 * k + 108847 < 262144 * k + 161071 := by
  intro k
  have h1 : C (262144 * k + 161071) = 786432 * k + 483214 := by
    unfold C
    simp [show (262144 * k + 161071) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 483214) = 393216 * k + 241607 := by
    unfold C
    simp [show (786432 * k + 483214) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 241607) = 1179648 * k + 724822 := by
    unfold C
    simp [show (393216 * k + 241607) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 724822) = 589824 * k + 362411 := by
    unfold C
    simp [show (1179648 * k + 724822) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 362411) = 1769472 * k + 1087234 := by
    unfold C
    simp [show (589824 * k + 362411) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1087234) = 884736 * k + 543617 := by
    unfold C
    simp [show (1769472 * k + 1087234) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 543617) = 2654208 * k + 1630852 := by
    unfold C
    simp [show (884736 * k + 543617) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1630852) = 1327104 * k + 815426 := by
    unfold C
    simp [show (2654208 * k + 1630852) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 815426) = 663552 * k + 407713 := by
    unfold C
    simp [show (1327104 * k + 815426) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 407713) = 1990656 * k + 1223140 := by
    unfold C
    simp [show (663552 * k + 407713) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1223140) = 995328 * k + 611570 := by
    unfold C
    simp [show (1990656 * k + 1223140) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 611570) = 497664 * k + 305785 := by
    unfold C
    simp [show (995328 * k + 611570) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 305785) = 1492992 * k + 917356 := by
    unfold C
    simp [show (497664 * k + 305785) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 917356) = 746496 * k + 458678 := by
    unfold C
    simp [show (1492992 * k + 917356) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 458678) = 373248 * k + 229339 := by
    unfold C
    simp [show (746496 * k + 458678) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 229339) = 1119744 * k + 688018 := by
    unfold C
    simp [show (373248 * k + 229339) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 688018) = 559872 * k + 344009 := by
    unfold C
    simp [show (1119744 * k + 688018) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 344009) = 1679616 * k + 1032028 := by
    unfold C
    simp [show (559872 * k + 344009) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1032028) = 839808 * k + 516014 := by
    unfold C
    simp [show (1679616 * k + 1032028) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 516014) = 419904 * k + 258007 := by
    unfold C
    simp [show (839808 * k + 516014) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 258007) = 1259712 * k + 774022 := by
    unfold C
    simp [show (419904 * k + 258007) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 774022) = 629856 * k + 387011 := by
    unfold C
    simp [show (1259712 * k + 774022) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 387011) = 1889568 * k + 1161034 := by
    unfold C
    simp [show (629856 * k + 387011) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1161034) = 944784 * k + 580517 := by
    unfold C
    simp [show (1889568 * k + 1161034) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 580517) = 2834352 * k + 1741552 := by
    unfold C
    simp [show (944784 * k + 580517) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1741552) = 1417176 * k + 870776 := by
    unfold C
    simp [show (2834352 * k + 1741552) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 870776) = 708588 * k + 435388 := by
    unfold C
    simp [show (1417176 * k + 870776) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 435388) = 354294 * k + 217694 := by
    unfold C
    simp [show (708588 * k + 435388) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 217694) = 177147 * k + 108847 := by
    unfold C
    simp [show (354294 * k + 217694) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 161071) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 161071))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_161311 : ∀ k : Nat,
    iterate (262144 * k + 161311) 29 = 177147 * k + 109009 ∧
      177147 * k + 109009 < 262144 * k + 161311 := by
  intro k
  have h1 : C (262144 * k + 161311) = 786432 * k + 483934 := by
    unfold C
    simp [show (262144 * k + 161311) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 483934) = 393216 * k + 241967 := by
    unfold C
    simp [show (786432 * k + 483934) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 241967) = 1179648 * k + 725902 := by
    unfold C
    simp [show (393216 * k + 241967) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 725902) = 589824 * k + 362951 := by
    unfold C
    simp [show (1179648 * k + 725902) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 362951) = 1769472 * k + 1088854 := by
    unfold C
    simp [show (589824 * k + 362951) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1088854) = 884736 * k + 544427 := by
    unfold C
    simp [show (1769472 * k + 1088854) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 544427) = 2654208 * k + 1633282 := by
    unfold C
    simp [show (884736 * k + 544427) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1633282) = 1327104 * k + 816641 := by
    unfold C
    simp [show (2654208 * k + 1633282) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 816641) = 3981312 * k + 2449924 := by
    unfold C
    simp [show (1327104 * k + 816641) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2449924) = 1990656 * k + 1224962 := by
    unfold C
    simp [show (3981312 * k + 2449924) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1224962) = 995328 * k + 612481 := by
    unfold C
    simp [show (1990656 * k + 1224962) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 612481) = 2985984 * k + 1837444 := by
    unfold C
    simp [show (995328 * k + 612481) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1837444) = 1492992 * k + 918722 := by
    unfold C
    simp [show (2985984 * k + 1837444) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 918722) = 746496 * k + 459361 := by
    unfold C
    simp [show (1492992 * k + 918722) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 459361) = 2239488 * k + 1378084 := by
    unfold C
    simp [show (746496 * k + 459361) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1378084) = 1119744 * k + 689042 := by
    unfold C
    simp [show (2239488 * k + 1378084) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 689042) = 559872 * k + 344521 := by
    unfold C
    simp [show (1119744 * k + 689042) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 344521) = 1679616 * k + 1033564 := by
    unfold C
    simp [show (559872 * k + 344521) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1033564) = 839808 * k + 516782 := by
    unfold C
    simp [show (1679616 * k + 1033564) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 516782) = 419904 * k + 258391 := by
    unfold C
    simp [show (839808 * k + 516782) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 258391) = 1259712 * k + 775174 := by
    unfold C
    simp [show (419904 * k + 258391) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 775174) = 629856 * k + 387587 := by
    unfold C
    simp [show (1259712 * k + 775174) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 387587) = 1889568 * k + 1162762 := by
    unfold C
    simp [show (629856 * k + 387587) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1162762) = 944784 * k + 581381 := by
    unfold C
    simp [show (1889568 * k + 1162762) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 581381) = 2834352 * k + 1744144 := by
    unfold C
    simp [show (944784 * k + 581381) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1744144) = 1417176 * k + 872072 := by
    unfold C
    simp [show (2834352 * k + 1744144) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 872072) = 708588 * k + 436036 := by
    unfold C
    simp [show (1417176 * k + 872072) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 436036) = 354294 * k + 218018 := by
    unfold C
    simp [show (708588 * k + 436036) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 218018) = 177147 * k + 109009 := by
    unfold C
    simp [show (354294 * k + 218018) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 161311) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 161311))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard030
