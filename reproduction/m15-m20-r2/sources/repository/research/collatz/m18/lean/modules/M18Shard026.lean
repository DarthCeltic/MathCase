import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard026

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_130799 : ∀ k : Nat,
    iterate (262144 * k + 130799) 29 = 177147 * k + 88390 ∧
      177147 * k + 88390 < 262144 * k + 130799 := by
  intro k
  have h1 : C (262144 * k + 130799) = 786432 * k + 392398 := by
    unfold C
    simp [show (262144 * k + 130799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 392398) = 393216 * k + 196199 := by
    unfold C
    simp [show (786432 * k + 392398) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 196199) = 1179648 * k + 588598 := by
    unfold C
    simp [show (393216 * k + 196199) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 588598) = 589824 * k + 294299 := by
    unfold C
    simp [show (1179648 * k + 588598) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 294299) = 1769472 * k + 882898 := by
    unfold C
    simp [show (589824 * k + 294299) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 882898) = 884736 * k + 441449 := by
    unfold C
    simp [show (1769472 * k + 882898) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 441449) = 2654208 * k + 1324348 := by
    unfold C
    simp [show (884736 * k + 441449) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1324348) = 1327104 * k + 662174 := by
    unfold C
    simp [show (2654208 * k + 1324348) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 662174) = 663552 * k + 331087 := by
    unfold C
    simp [show (1327104 * k + 662174) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 331087) = 1990656 * k + 993262 := by
    unfold C
    simp [show (663552 * k + 331087) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 993262) = 995328 * k + 496631 := by
    unfold C
    simp [show (1990656 * k + 993262) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 496631) = 2985984 * k + 1489894 := by
    unfold C
    simp [show (995328 * k + 496631) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1489894) = 1492992 * k + 744947 := by
    unfold C
    simp [show (2985984 * k + 1489894) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 744947) = 4478976 * k + 2234842 := by
    unfold C
    simp [show (1492992 * k + 744947) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2234842) = 2239488 * k + 1117421 := by
    unfold C
    simp [show (4478976 * k + 2234842) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1117421) = 6718464 * k + 3352264 := by
    unfold C
    simp [show (2239488 * k + 1117421) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3352264) = 3359232 * k + 1676132 := by
    unfold C
    simp [show (6718464 * k + 3352264) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1676132) = 1679616 * k + 838066 := by
    unfold C
    simp [show (3359232 * k + 1676132) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 838066) = 839808 * k + 419033 := by
    unfold C
    simp [show (1679616 * k + 838066) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 419033) = 2519424 * k + 1257100 := by
    unfold C
    simp [show (839808 * k + 419033) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1257100) = 1259712 * k + 628550 := by
    unfold C
    simp [show (2519424 * k + 1257100) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 628550) = 629856 * k + 314275 := by
    unfold C
    simp [show (1259712 * k + 628550) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 314275) = 1889568 * k + 942826 := by
    unfold C
    simp [show (629856 * k + 314275) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 942826) = 944784 * k + 471413 := by
    unfold C
    simp [show (1889568 * k + 942826) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 471413) = 2834352 * k + 1414240 := by
    unfold C
    simp [show (944784 * k + 471413) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1414240) = 1417176 * k + 707120 := by
    unfold C
    simp [show (2834352 * k + 1414240) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 707120) = 708588 * k + 353560 := by
    unfold C
    simp [show (1417176 * k + 707120) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 353560) = 354294 * k + 176780 := by
    unfold C
    simp [show (708588 * k + 353560) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 176780) = 177147 * k + 88390 := by
    unfold C
    simp [show (354294 * k + 176780) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 130799) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 130799))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_131311 : ∀ k : Nat,
    iterate (262144 * k + 131311) 29 = 177147 * k + 88736 ∧
      177147 * k + 88736 < 262144 * k + 131311 := by
  intro k
  have h1 : C (262144 * k + 131311) = 786432 * k + 393934 := by
    unfold C
    simp [show (262144 * k + 131311) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 393934) = 393216 * k + 196967 := by
    unfold C
    simp [show (786432 * k + 393934) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 196967) = 1179648 * k + 590902 := by
    unfold C
    simp [show (393216 * k + 196967) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 590902) = 589824 * k + 295451 := by
    unfold C
    simp [show (1179648 * k + 590902) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 295451) = 1769472 * k + 886354 := by
    unfold C
    simp [show (589824 * k + 295451) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 886354) = 884736 * k + 443177 := by
    unfold C
    simp [show (1769472 * k + 886354) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 443177) = 2654208 * k + 1329532 := by
    unfold C
    simp [show (884736 * k + 443177) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1329532) = 1327104 * k + 664766 := by
    unfold C
    simp [show (2654208 * k + 1329532) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 664766) = 663552 * k + 332383 := by
    unfold C
    simp [show (1327104 * k + 664766) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 332383) = 1990656 * k + 997150 := by
    unfold C
    simp [show (663552 * k + 332383) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 997150) = 995328 * k + 498575 := by
    unfold C
    simp [show (1990656 * k + 997150) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 498575) = 2985984 * k + 1495726 := by
    unfold C
    simp [show (995328 * k + 498575) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1495726) = 1492992 * k + 747863 := by
    unfold C
    simp [show (2985984 * k + 1495726) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 747863) = 4478976 * k + 2243590 := by
    unfold C
    simp [show (1492992 * k + 747863) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2243590) = 2239488 * k + 1121795 := by
    unfold C
    simp [show (4478976 * k + 2243590) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1121795) = 6718464 * k + 3365386 := by
    unfold C
    simp [show (2239488 * k + 1121795) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3365386) = 3359232 * k + 1682693 := by
    unfold C
    simp [show (6718464 * k + 3365386) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1682693) = 10077696 * k + 5048080 := by
    unfold C
    simp [show (3359232 * k + 1682693) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 5048080) = 5038848 * k + 2524040 := by
    unfold C
    simp [show (10077696 * k + 5048080) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 2524040) = 2519424 * k + 1262020 := by
    unfold C
    simp [show (5038848 * k + 2524040) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1262020) = 1259712 * k + 631010 := by
    unfold C
    simp [show (2519424 * k + 1262020) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 631010) = 629856 * k + 315505 := by
    unfold C
    simp [show (1259712 * k + 631010) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 315505) = 1889568 * k + 946516 := by
    unfold C
    simp [show (629856 * k + 315505) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 946516) = 944784 * k + 473258 := by
    unfold C
    simp [show (1889568 * k + 946516) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 473258) = 472392 * k + 236629 := by
    unfold C
    simp [show (944784 * k + 473258) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 236629) = 1417176 * k + 709888 := by
    unfold C
    simp [show (472392 * k + 236629) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 709888) = 708588 * k + 354944 := by
    unfold C
    simp [show (1417176 * k + 709888) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 354944) = 354294 * k + 177472 := by
    unfold C
    simp [show (708588 * k + 354944) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 177472) = 177147 * k + 88736 := by
    unfold C
    simp [show (354294 * k + 177472) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 131311) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 131311))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_131391 : ∀ k : Nat,
    iterate (262144 * k + 131391) 29 = 177147 * k + 88790 ∧
      177147 * k + 88790 < 262144 * k + 131391 := by
  intro k
  have h1 : C (262144 * k + 131391) = 786432 * k + 394174 := by
    unfold C
    simp [show (262144 * k + 131391) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 394174) = 393216 * k + 197087 := by
    unfold C
    simp [show (786432 * k + 394174) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 197087) = 1179648 * k + 591262 := by
    unfold C
    simp [show (393216 * k + 197087) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 591262) = 589824 * k + 295631 := by
    unfold C
    simp [show (1179648 * k + 591262) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 295631) = 1769472 * k + 886894 := by
    unfold C
    simp [show (589824 * k + 295631) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 886894) = 884736 * k + 443447 := by
    unfold C
    simp [show (1769472 * k + 886894) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 443447) = 2654208 * k + 1330342 := by
    unfold C
    simp [show (884736 * k + 443447) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1330342) = 1327104 * k + 665171 := by
    unfold C
    simp [show (2654208 * k + 1330342) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 665171) = 3981312 * k + 1995514 := by
    unfold C
    simp [show (1327104 * k + 665171) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1995514) = 1990656 * k + 997757 := by
    unfold C
    simp [show (3981312 * k + 1995514) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 997757) = 5971968 * k + 2993272 := by
    unfold C
    simp [show (1990656 * k + 997757) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2993272) = 2985984 * k + 1496636 := by
    unfold C
    simp [show (5971968 * k + 2993272) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1496636) = 1492992 * k + 748318 := by
    unfold C
    simp [show (2985984 * k + 1496636) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 748318) = 746496 * k + 374159 := by
    unfold C
    simp [show (1492992 * k + 748318) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 374159) = 2239488 * k + 1122478 := by
    unfold C
    simp [show (746496 * k + 374159) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1122478) = 1119744 * k + 561239 := by
    unfold C
    simp [show (2239488 * k + 1122478) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 561239) = 3359232 * k + 1683718 := by
    unfold C
    simp [show (1119744 * k + 561239) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1683718) = 1679616 * k + 841859 := by
    unfold C
    simp [show (3359232 * k + 1683718) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 841859) = 5038848 * k + 2525578 := by
    unfold C
    simp [show (1679616 * k + 841859) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2525578) = 2519424 * k + 1262789 := by
    unfold C
    simp [show (5038848 * k + 2525578) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1262789) = 7558272 * k + 3788368 := by
    unfold C
    simp [show (2519424 * k + 1262789) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 3788368) = 3779136 * k + 1894184 := by
    unfold C
    simp [show (7558272 * k + 3788368) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1894184) = 1889568 * k + 947092 := by
    unfold C
    simp [show (3779136 * k + 1894184) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 947092) = 944784 * k + 473546 := by
    unfold C
    simp [show (1889568 * k + 947092) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 473546) = 472392 * k + 236773 := by
    unfold C
    simp [show (944784 * k + 473546) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 236773) = 1417176 * k + 710320 := by
    unfold C
    simp [show (472392 * k + 236773) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 710320) = 708588 * k + 355160 := by
    unfold C
    simp [show (1417176 * k + 710320) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 355160) = 354294 * k + 177580 := by
    unfold C
    simp [show (708588 * k + 355160) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 177580) = 177147 * k + 88790 := by
    unfold C
    simp [show (354294 * k + 177580) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 131391) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 131391))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_131559 : ∀ k : Nat,
    iterate (262144 * k + 131559) 29 = 177147 * k + 88904 ∧
      177147 * k + 88904 < 262144 * k + 131559 := by
  intro k
  have h1 : C (262144 * k + 131559) = 786432 * k + 394678 := by
    unfold C
    simp [show (262144 * k + 131559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 394678) = 393216 * k + 197339 := by
    unfold C
    simp [show (786432 * k + 394678) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 197339) = 1179648 * k + 592018 := by
    unfold C
    simp [show (393216 * k + 197339) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 592018) = 589824 * k + 296009 := by
    unfold C
    simp [show (1179648 * k + 592018) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 296009) = 1769472 * k + 888028 := by
    unfold C
    simp [show (589824 * k + 296009) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 888028) = 884736 * k + 444014 := by
    unfold C
    simp [show (1769472 * k + 888028) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 444014) = 442368 * k + 222007 := by
    unfold C
    simp [show (884736 * k + 444014) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 222007) = 1327104 * k + 666022 := by
    unfold C
    simp [show (442368 * k + 222007) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 666022) = 663552 * k + 333011 := by
    unfold C
    simp [show (1327104 * k + 666022) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 333011) = 1990656 * k + 999034 := by
    unfold C
    simp [show (663552 * k + 333011) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 999034) = 995328 * k + 499517 := by
    unfold C
    simp [show (1990656 * k + 999034) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 499517) = 2985984 * k + 1498552 := by
    unfold C
    simp [show (995328 * k + 499517) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1498552) = 1492992 * k + 749276 := by
    unfold C
    simp [show (2985984 * k + 1498552) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 749276) = 746496 * k + 374638 := by
    unfold C
    simp [show (1492992 * k + 749276) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 374638) = 373248 * k + 187319 := by
    unfold C
    simp [show (746496 * k + 374638) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 187319) = 1119744 * k + 561958 := by
    unfold C
    simp [show (373248 * k + 187319) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 561958) = 559872 * k + 280979 := by
    unfold C
    simp [show (1119744 * k + 561958) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 280979) = 1679616 * k + 842938 := by
    unfold C
    simp [show (559872 * k + 280979) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 842938) = 839808 * k + 421469 := by
    unfold C
    simp [show (1679616 * k + 842938) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 421469) = 2519424 * k + 1264408 := by
    unfold C
    simp [show (839808 * k + 421469) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1264408) = 1259712 * k + 632204 := by
    unfold C
    simp [show (2519424 * k + 1264408) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 632204) = 629856 * k + 316102 := by
    unfold C
    simp [show (1259712 * k + 632204) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 316102) = 314928 * k + 158051 := by
    unfold C
    simp [show (629856 * k + 316102) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 158051) = 944784 * k + 474154 := by
    unfold C
    simp [show (314928 * k + 158051) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 474154) = 472392 * k + 237077 := by
    unfold C
    simp [show (944784 * k + 474154) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 237077) = 1417176 * k + 711232 := by
    unfold C
    simp [show (472392 * k + 237077) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 711232) = 708588 * k + 355616 := by
    unfold C
    simp [show (1417176 * k + 711232) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 355616) = 354294 * k + 177808 := by
    unfold C
    simp [show (708588 * k + 355616) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 177808) = 177147 * k + 88904 := by
    unfold C
    simp [show (354294 * k + 177808) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 131559) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 131559))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_132583 : ∀ k : Nat,
    iterate (262144 * k + 132583) 29 = 177147 * k + 89596 ∧
      177147 * k + 89596 < 262144 * k + 132583 := by
  intro k
  have h1 : C (262144 * k + 132583) = 786432 * k + 397750 := by
    unfold C
    simp [show (262144 * k + 132583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 397750) = 393216 * k + 198875 := by
    unfold C
    simp [show (786432 * k + 397750) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 198875) = 1179648 * k + 596626 := by
    unfold C
    simp [show (393216 * k + 198875) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 596626) = 589824 * k + 298313 := by
    unfold C
    simp [show (1179648 * k + 596626) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 298313) = 1769472 * k + 894940 := by
    unfold C
    simp [show (589824 * k + 298313) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 894940) = 884736 * k + 447470 := by
    unfold C
    simp [show (1769472 * k + 894940) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 447470) = 442368 * k + 223735 := by
    unfold C
    simp [show (884736 * k + 447470) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 223735) = 1327104 * k + 671206 := by
    unfold C
    simp [show (442368 * k + 223735) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 671206) = 663552 * k + 335603 := by
    unfold C
    simp [show (1327104 * k + 671206) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 335603) = 1990656 * k + 1006810 := by
    unfold C
    simp [show (663552 * k + 335603) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1006810) = 995328 * k + 503405 := by
    unfold C
    simp [show (1990656 * k + 1006810) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 503405) = 2985984 * k + 1510216 := by
    unfold C
    simp [show (995328 * k + 503405) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1510216) = 1492992 * k + 755108 := by
    unfold C
    simp [show (2985984 * k + 1510216) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 755108) = 746496 * k + 377554 := by
    unfold C
    simp [show (1492992 * k + 755108) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 377554) = 373248 * k + 188777 := by
    unfold C
    simp [show (746496 * k + 377554) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 188777) = 1119744 * k + 566332 := by
    unfold C
    simp [show (373248 * k + 188777) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 566332) = 559872 * k + 283166 := by
    unfold C
    simp [show (1119744 * k + 566332) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 283166) = 279936 * k + 141583 := by
    unfold C
    simp [show (559872 * k + 283166) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 141583) = 839808 * k + 424750 := by
    unfold C
    simp [show (279936 * k + 141583) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 424750) = 419904 * k + 212375 := by
    unfold C
    simp [show (839808 * k + 424750) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 212375) = 1259712 * k + 637126 := by
    unfold C
    simp [show (419904 * k + 212375) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 637126) = 629856 * k + 318563 := by
    unfold C
    simp [show (1259712 * k + 637126) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 318563) = 1889568 * k + 955690 := by
    unfold C
    simp [show (629856 * k + 318563) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 955690) = 944784 * k + 477845 := by
    unfold C
    simp [show (1889568 * k + 955690) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 477845) = 2834352 * k + 1433536 := by
    unfold C
    simp [show (944784 * k + 477845) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1433536) = 1417176 * k + 716768 := by
    unfold C
    simp [show (2834352 * k + 1433536) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 716768) = 708588 * k + 358384 := by
    unfold C
    simp [show (1417176 * k + 716768) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 358384) = 354294 * k + 179192 := by
    unfold C
    simp [show (708588 * k + 358384) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 179192) = 177147 * k + 89596 := by
    unfold C
    simp [show (354294 * k + 179192) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 132583) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 132583))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_132735 : ∀ k : Nat,
    iterate (262144 * k + 132735) 29 = 177147 * k + 89698 ∧
      177147 * k + 89698 < 262144 * k + 132735 := by
  intro k
  have h1 : C (262144 * k + 132735) = 786432 * k + 398206 := by
    unfold C
    simp [show (262144 * k + 132735) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 398206) = 393216 * k + 199103 := by
    unfold C
    simp [show (786432 * k + 398206) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 199103) = 1179648 * k + 597310 := by
    unfold C
    simp [show (393216 * k + 199103) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 597310) = 589824 * k + 298655 := by
    unfold C
    simp [show (1179648 * k + 597310) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 298655) = 1769472 * k + 895966 := by
    unfold C
    simp [show (589824 * k + 298655) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 895966) = 884736 * k + 447983 := by
    unfold C
    simp [show (1769472 * k + 895966) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 447983) = 2654208 * k + 1343950 := by
    unfold C
    simp [show (884736 * k + 447983) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1343950) = 1327104 * k + 671975 := by
    unfold C
    simp [show (2654208 * k + 1343950) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 671975) = 3981312 * k + 2015926 := by
    unfold C
    simp [show (1327104 * k + 671975) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2015926) = 1990656 * k + 1007963 := by
    unfold C
    simp [show (3981312 * k + 2015926) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1007963) = 5971968 * k + 3023890 := by
    unfold C
    simp [show (1990656 * k + 1007963) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3023890) = 2985984 * k + 1511945 := by
    unfold C
    simp [show (5971968 * k + 3023890) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1511945) = 8957952 * k + 4535836 := by
    unfold C
    simp [show (2985984 * k + 1511945) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 4535836) = 4478976 * k + 2267918 := by
    unfold C
    simp [show (8957952 * k + 4535836) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 2267918) = 2239488 * k + 1133959 := by
    unfold C
    simp [show (4478976 * k + 2267918) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1133959) = 6718464 * k + 3401878 := by
    unfold C
    simp [show (2239488 * k + 1133959) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3401878) = 3359232 * k + 1700939 := by
    unfold C
    simp [show (6718464 * k + 3401878) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1700939) = 10077696 * k + 5102818 := by
    unfold C
    simp [show (3359232 * k + 1700939) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 5102818) = 5038848 * k + 2551409 := by
    unfold C
    simp [show (10077696 * k + 5102818) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 2551409) = 15116544 * k + 7654228 := by
    unfold C
    simp [show (5038848 * k + 2551409) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 7654228) = 7558272 * k + 3827114 := by
    unfold C
    simp [show (15116544 * k + 7654228) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 3827114) = 3779136 * k + 1913557 := by
    unfold C
    simp [show (7558272 * k + 3827114) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1913557) = 11337408 * k + 5740672 := by
    unfold C
    simp [show (3779136 * k + 1913557) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 5740672) = 5668704 * k + 2870336 := by
    unfold C
    simp [show (11337408 * k + 5740672) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 2870336) = 2834352 * k + 1435168 := by
    unfold C
    simp [show (5668704 * k + 2870336) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1435168) = 1417176 * k + 717584 := by
    unfold C
    simp [show (2834352 * k + 1435168) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 717584) = 708588 * k + 358792 := by
    unfold C
    simp [show (1417176 * k + 717584) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 358792) = 354294 * k + 179396 := by
    unfold C
    simp [show (708588 * k + 358792) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 179396) = 177147 * k + 89698 := by
    unfold C
    simp [show (354294 * k + 179396) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 132735) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 132735))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_132935 : ∀ k : Nat,
    iterate (262144 * k + 132935) 29 = 177147 * k + 89834 ∧
      177147 * k + 89834 < 262144 * k + 132935 := by
  intro k
  have h1 : C (262144 * k + 132935) = 786432 * k + 398806 := by
    unfold C
    simp [show (262144 * k + 132935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 398806) = 393216 * k + 199403 := by
    unfold C
    simp [show (786432 * k + 398806) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 199403) = 1179648 * k + 598210 := by
    unfold C
    simp [show (393216 * k + 199403) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 598210) = 589824 * k + 299105 := by
    unfold C
    simp [show (1179648 * k + 598210) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 299105) = 1769472 * k + 897316 := by
    unfold C
    simp [show (589824 * k + 299105) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 897316) = 884736 * k + 448658 := by
    unfold C
    simp [show (1769472 * k + 897316) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 448658) = 442368 * k + 224329 := by
    unfold C
    simp [show (884736 * k + 448658) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 224329) = 1327104 * k + 672988 := by
    unfold C
    simp [show (442368 * k + 224329) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 672988) = 663552 * k + 336494 := by
    unfold C
    simp [show (1327104 * k + 672988) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 336494) = 331776 * k + 168247 := by
    unfold C
    simp [show (663552 * k + 336494) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 168247) = 995328 * k + 504742 := by
    unfold C
    simp [show (331776 * k + 168247) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 504742) = 497664 * k + 252371 := by
    unfold C
    simp [show (995328 * k + 504742) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 252371) = 1492992 * k + 757114 := by
    unfold C
    simp [show (497664 * k + 252371) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 757114) = 746496 * k + 378557 := by
    unfold C
    simp [show (1492992 * k + 757114) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 378557) = 2239488 * k + 1135672 := by
    unfold C
    simp [show (746496 * k + 378557) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1135672) = 1119744 * k + 567836 := by
    unfold C
    simp [show (2239488 * k + 1135672) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 567836) = 559872 * k + 283918 := by
    unfold C
    simp [show (1119744 * k + 567836) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 283918) = 279936 * k + 141959 := by
    unfold C
    simp [show (559872 * k + 283918) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 141959) = 839808 * k + 425878 := by
    unfold C
    simp [show (279936 * k + 141959) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 425878) = 419904 * k + 212939 := by
    unfold C
    simp [show (839808 * k + 425878) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 212939) = 1259712 * k + 638818 := by
    unfold C
    simp [show (419904 * k + 212939) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 638818) = 629856 * k + 319409 := by
    unfold C
    simp [show (1259712 * k + 638818) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 319409) = 1889568 * k + 958228 := by
    unfold C
    simp [show (629856 * k + 319409) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 958228) = 944784 * k + 479114 := by
    unfold C
    simp [show (1889568 * k + 958228) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 479114) = 472392 * k + 239557 := by
    unfold C
    simp [show (944784 * k + 479114) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 239557) = 1417176 * k + 718672 := by
    unfold C
    simp [show (472392 * k + 239557) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 718672) = 708588 * k + 359336 := by
    unfold C
    simp [show (1417176 * k + 718672) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 359336) = 354294 * k + 179668 := by
    unfold C
    simp [show (708588 * k + 359336) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 179668) = 177147 * k + 89834 := by
    unfold C
    simp [show (354294 * k + 179668) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 132935) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 132935))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_133023 : ∀ k : Nat,
    iterate (262144 * k + 133023) 29 = 177147 * k + 89893 ∧
      177147 * k + 89893 < 262144 * k + 133023 := by
  intro k
  have h1 : C (262144 * k + 133023) = 786432 * k + 399070 := by
    unfold C
    simp [show (262144 * k + 133023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 399070) = 393216 * k + 199535 := by
    unfold C
    simp [show (786432 * k + 399070) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 199535) = 1179648 * k + 598606 := by
    unfold C
    simp [show (393216 * k + 199535) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 598606) = 589824 * k + 299303 := by
    unfold C
    simp [show (1179648 * k + 598606) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 299303) = 1769472 * k + 897910 := by
    unfold C
    simp [show (589824 * k + 299303) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 897910) = 884736 * k + 448955 := by
    unfold C
    simp [show (1769472 * k + 897910) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 448955) = 2654208 * k + 1346866 := by
    unfold C
    simp [show (884736 * k + 448955) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1346866) = 1327104 * k + 673433 := by
    unfold C
    simp [show (2654208 * k + 1346866) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 673433) = 3981312 * k + 2020300 := by
    unfold C
    simp [show (1327104 * k + 673433) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2020300) = 1990656 * k + 1010150 := by
    unfold C
    simp [show (3981312 * k + 2020300) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1010150) = 995328 * k + 505075 := by
    unfold C
    simp [show (1990656 * k + 1010150) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 505075) = 2985984 * k + 1515226 := by
    unfold C
    simp [show (995328 * k + 505075) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1515226) = 1492992 * k + 757613 := by
    unfold C
    simp [show (2985984 * k + 1515226) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 757613) = 4478976 * k + 2272840 := by
    unfold C
    simp [show (1492992 * k + 757613) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2272840) = 2239488 * k + 1136420 := by
    unfold C
    simp [show (4478976 * k + 2272840) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1136420) = 1119744 * k + 568210 := by
    unfold C
    simp [show (2239488 * k + 1136420) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 568210) = 559872 * k + 284105 := by
    unfold C
    simp [show (1119744 * k + 568210) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 284105) = 1679616 * k + 852316 := by
    unfold C
    simp [show (559872 * k + 284105) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 852316) = 839808 * k + 426158 := by
    unfold C
    simp [show (1679616 * k + 852316) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 426158) = 419904 * k + 213079 := by
    unfold C
    simp [show (839808 * k + 426158) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 213079) = 1259712 * k + 639238 := by
    unfold C
    simp [show (419904 * k + 213079) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 639238) = 629856 * k + 319619 := by
    unfold C
    simp [show (1259712 * k + 639238) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 319619) = 1889568 * k + 958858 := by
    unfold C
    simp [show (629856 * k + 319619) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 958858) = 944784 * k + 479429 := by
    unfold C
    simp [show (1889568 * k + 958858) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 479429) = 2834352 * k + 1438288 := by
    unfold C
    simp [show (944784 * k + 479429) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1438288) = 1417176 * k + 719144 := by
    unfold C
    simp [show (2834352 * k + 1438288) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 719144) = 708588 * k + 359572 := by
    unfold C
    simp [show (1417176 * k + 719144) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 359572) = 354294 * k + 179786 := by
    unfold C
    simp [show (708588 * k + 359572) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 179786) = 177147 * k + 89893 := by
    unfold C
    simp [show (354294 * k + 179786) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 133023) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 133023))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_133535 : ∀ k : Nat,
    iterate (262144 * k + 133535) 29 = 177147 * k + 90239 ∧
      177147 * k + 90239 < 262144 * k + 133535 := by
  intro k
  have h1 : C (262144 * k + 133535) = 786432 * k + 400606 := by
    unfold C
    simp [show (262144 * k + 133535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 400606) = 393216 * k + 200303 := by
    unfold C
    simp [show (786432 * k + 400606) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 200303) = 1179648 * k + 600910 := by
    unfold C
    simp [show (393216 * k + 200303) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 600910) = 589824 * k + 300455 := by
    unfold C
    simp [show (1179648 * k + 600910) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 300455) = 1769472 * k + 901366 := by
    unfold C
    simp [show (589824 * k + 300455) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 901366) = 884736 * k + 450683 := by
    unfold C
    simp [show (1769472 * k + 901366) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 450683) = 2654208 * k + 1352050 := by
    unfold C
    simp [show (884736 * k + 450683) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1352050) = 1327104 * k + 676025 := by
    unfold C
    simp [show (2654208 * k + 1352050) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 676025) = 3981312 * k + 2028076 := by
    unfold C
    simp [show (1327104 * k + 676025) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2028076) = 1990656 * k + 1014038 := by
    unfold C
    simp [show (3981312 * k + 2028076) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1014038) = 995328 * k + 507019 := by
    unfold C
    simp [show (1990656 * k + 1014038) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 507019) = 2985984 * k + 1521058 := by
    unfold C
    simp [show (995328 * k + 507019) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1521058) = 1492992 * k + 760529 := by
    unfold C
    simp [show (2985984 * k + 1521058) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 760529) = 4478976 * k + 2281588 := by
    unfold C
    simp [show (1492992 * k + 760529) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2281588) = 2239488 * k + 1140794 := by
    unfold C
    simp [show (4478976 * k + 2281588) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1140794) = 1119744 * k + 570397 := by
    unfold C
    simp [show (2239488 * k + 1140794) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 570397) = 3359232 * k + 1711192 := by
    unfold C
    simp [show (1119744 * k + 570397) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1711192) = 1679616 * k + 855596 := by
    unfold C
    simp [show (3359232 * k + 1711192) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 855596) = 839808 * k + 427798 := by
    unfold C
    simp [show (1679616 * k + 855596) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 427798) = 419904 * k + 213899 := by
    unfold C
    simp [show (839808 * k + 427798) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 213899) = 1259712 * k + 641698 := by
    unfold C
    simp [show (419904 * k + 213899) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 641698) = 629856 * k + 320849 := by
    unfold C
    simp [show (1259712 * k + 641698) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 320849) = 1889568 * k + 962548 := by
    unfold C
    simp [show (629856 * k + 320849) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 962548) = 944784 * k + 481274 := by
    unfold C
    simp [show (1889568 * k + 962548) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 481274) = 472392 * k + 240637 := by
    unfold C
    simp [show (944784 * k + 481274) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 240637) = 1417176 * k + 721912 := by
    unfold C
    simp [show (472392 * k + 240637) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 721912) = 708588 * k + 360956 := by
    unfold C
    simp [show (1417176 * k + 721912) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 360956) = 354294 * k + 180478 := by
    unfold C
    simp [show (708588 * k + 360956) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 180478) = 177147 * k + 90239 := by
    unfold C
    simp [show (354294 * k + 180478) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 133535) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 133535))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_133583 : ∀ k : Nat,
    iterate (262144 * k + 133583) 29 = 177147 * k + 90272 ∧
      177147 * k + 90272 < 262144 * k + 133583 := by
  intro k
  have h1 : C (262144 * k + 133583) = 786432 * k + 400750 := by
    unfold C
    simp [show (262144 * k + 133583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 400750) = 393216 * k + 200375 := by
    unfold C
    simp [show (786432 * k + 400750) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 200375) = 1179648 * k + 601126 := by
    unfold C
    simp [show (393216 * k + 200375) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 601126) = 589824 * k + 300563 := by
    unfold C
    simp [show (1179648 * k + 601126) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 300563) = 1769472 * k + 901690 := by
    unfold C
    simp [show (589824 * k + 300563) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 901690) = 884736 * k + 450845 := by
    unfold C
    simp [show (1769472 * k + 901690) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 450845) = 2654208 * k + 1352536 := by
    unfold C
    simp [show (884736 * k + 450845) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1352536) = 1327104 * k + 676268 := by
    unfold C
    simp [show (2654208 * k + 1352536) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 676268) = 663552 * k + 338134 := by
    unfold C
    simp [show (1327104 * k + 676268) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 338134) = 331776 * k + 169067 := by
    unfold C
    simp [show (663552 * k + 338134) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 169067) = 995328 * k + 507202 := by
    unfold C
    simp [show (331776 * k + 169067) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 507202) = 497664 * k + 253601 := by
    unfold C
    simp [show (995328 * k + 507202) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 253601) = 1492992 * k + 760804 := by
    unfold C
    simp [show (497664 * k + 253601) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 760804) = 746496 * k + 380402 := by
    unfold C
    simp [show (1492992 * k + 760804) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 380402) = 373248 * k + 190201 := by
    unfold C
    simp [show (746496 * k + 380402) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 190201) = 1119744 * k + 570604 := by
    unfold C
    simp [show (373248 * k + 190201) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 570604) = 559872 * k + 285302 := by
    unfold C
    simp [show (1119744 * k + 570604) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 285302) = 279936 * k + 142651 := by
    unfold C
    simp [show (559872 * k + 285302) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 142651) = 839808 * k + 427954 := by
    unfold C
    simp [show (279936 * k + 142651) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 427954) = 419904 * k + 213977 := by
    unfold C
    simp [show (839808 * k + 427954) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 213977) = 1259712 * k + 641932 := by
    unfold C
    simp [show (419904 * k + 213977) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 641932) = 629856 * k + 320966 := by
    unfold C
    simp [show (1259712 * k + 641932) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 320966) = 314928 * k + 160483 := by
    unfold C
    simp [show (629856 * k + 320966) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 160483) = 944784 * k + 481450 := by
    unfold C
    simp [show (314928 * k + 160483) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 481450) = 472392 * k + 240725 := by
    unfold C
    simp [show (944784 * k + 481450) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 240725) = 1417176 * k + 722176 := by
    unfold C
    simp [show (472392 * k + 240725) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 722176) = 708588 * k + 361088 := by
    unfold C
    simp [show (1417176 * k + 722176) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 361088) = 354294 * k + 180544 := by
    unfold C
    simp [show (708588 * k + 361088) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 180544) = 177147 * k + 90272 := by
    unfold C
    simp [show (354294 * k + 180544) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 133583) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 133583))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_133615 : ∀ k : Nat,
    iterate (262144 * k + 133615) 29 = 177147 * k + 90293 ∧
      177147 * k + 90293 < 262144 * k + 133615 := by
  intro k
  have h1 : C (262144 * k + 133615) = 786432 * k + 400846 := by
    unfold C
    simp [show (262144 * k + 133615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 400846) = 393216 * k + 200423 := by
    unfold C
    simp [show (786432 * k + 400846) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 200423) = 1179648 * k + 601270 := by
    unfold C
    simp [show (393216 * k + 200423) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 601270) = 589824 * k + 300635 := by
    unfold C
    simp [show (1179648 * k + 601270) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 300635) = 1769472 * k + 901906 := by
    unfold C
    simp [show (589824 * k + 300635) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 901906) = 884736 * k + 450953 := by
    unfold C
    simp [show (1769472 * k + 901906) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 450953) = 2654208 * k + 1352860 := by
    unfold C
    simp [show (884736 * k + 450953) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1352860) = 1327104 * k + 676430 := by
    unfold C
    simp [show (2654208 * k + 1352860) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 676430) = 663552 * k + 338215 := by
    unfold C
    simp [show (1327104 * k + 676430) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 338215) = 1990656 * k + 1014646 := by
    unfold C
    simp [show (663552 * k + 338215) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1014646) = 995328 * k + 507323 := by
    unfold C
    simp [show (1990656 * k + 1014646) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 507323) = 2985984 * k + 1521970 := by
    unfold C
    simp [show (995328 * k + 507323) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1521970) = 1492992 * k + 760985 := by
    unfold C
    simp [show (2985984 * k + 1521970) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 760985) = 4478976 * k + 2282956 := by
    unfold C
    simp [show (1492992 * k + 760985) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2282956) = 2239488 * k + 1141478 := by
    unfold C
    simp [show (4478976 * k + 2282956) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1141478) = 1119744 * k + 570739 := by
    unfold C
    simp [show (2239488 * k + 1141478) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 570739) = 3359232 * k + 1712218 := by
    unfold C
    simp [show (1119744 * k + 570739) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1712218) = 1679616 * k + 856109 := by
    unfold C
    simp [show (3359232 * k + 1712218) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 856109) = 5038848 * k + 2568328 := by
    unfold C
    simp [show (1679616 * k + 856109) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2568328) = 2519424 * k + 1284164 := by
    unfold C
    simp [show (5038848 * k + 2568328) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1284164) = 1259712 * k + 642082 := by
    unfold C
    simp [show (2519424 * k + 1284164) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 642082) = 629856 * k + 321041 := by
    unfold C
    simp [show (1259712 * k + 642082) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 321041) = 1889568 * k + 963124 := by
    unfold C
    simp [show (629856 * k + 321041) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 963124) = 944784 * k + 481562 := by
    unfold C
    simp [show (1889568 * k + 963124) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 481562) = 472392 * k + 240781 := by
    unfold C
    simp [show (944784 * k + 481562) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 240781) = 1417176 * k + 722344 := by
    unfold C
    simp [show (472392 * k + 240781) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 722344) = 708588 * k + 361172 := by
    unfold C
    simp [show (1417176 * k + 722344) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 361172) = 354294 * k + 180586 := by
    unfold C
    simp [show (708588 * k + 361172) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 180586) = 177147 * k + 90293 := by
    unfold C
    simp [show (354294 * k + 180586) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 133615) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 133615))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_133951 : ∀ k : Nat,
    iterate (262144 * k + 133951) 29 = 177147 * k + 90520 ∧
      177147 * k + 90520 < 262144 * k + 133951 := by
  intro k
  have h1 : C (262144 * k + 133951) = 786432 * k + 401854 := by
    unfold C
    simp [show (262144 * k + 133951) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 401854) = 393216 * k + 200927 := by
    unfold C
    simp [show (786432 * k + 401854) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 200927) = 1179648 * k + 602782 := by
    unfold C
    simp [show (393216 * k + 200927) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 602782) = 589824 * k + 301391 := by
    unfold C
    simp [show (1179648 * k + 602782) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 301391) = 1769472 * k + 904174 := by
    unfold C
    simp [show (589824 * k + 301391) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 904174) = 884736 * k + 452087 := by
    unfold C
    simp [show (1769472 * k + 904174) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 452087) = 2654208 * k + 1356262 := by
    unfold C
    simp [show (884736 * k + 452087) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1356262) = 1327104 * k + 678131 := by
    unfold C
    simp [show (2654208 * k + 1356262) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 678131) = 3981312 * k + 2034394 := by
    unfold C
    simp [show (1327104 * k + 678131) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2034394) = 1990656 * k + 1017197 := by
    unfold C
    simp [show (3981312 * k + 2034394) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1017197) = 5971968 * k + 3051592 := by
    unfold C
    simp [show (1990656 * k + 1017197) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3051592) = 2985984 * k + 1525796 := by
    unfold C
    simp [show (5971968 * k + 3051592) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1525796) = 1492992 * k + 762898 := by
    unfold C
    simp [show (2985984 * k + 1525796) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 762898) = 746496 * k + 381449 := by
    unfold C
    simp [show (1492992 * k + 762898) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 381449) = 2239488 * k + 1144348 := by
    unfold C
    simp [show (746496 * k + 381449) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1144348) = 1119744 * k + 572174 := by
    unfold C
    simp [show (2239488 * k + 1144348) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 572174) = 559872 * k + 286087 := by
    unfold C
    simp [show (1119744 * k + 572174) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 286087) = 1679616 * k + 858262 := by
    unfold C
    simp [show (559872 * k + 286087) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 858262) = 839808 * k + 429131 := by
    unfold C
    simp [show (1679616 * k + 858262) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 429131) = 2519424 * k + 1287394 := by
    unfold C
    simp [show (839808 * k + 429131) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1287394) = 1259712 * k + 643697 := by
    unfold C
    simp [show (2519424 * k + 1287394) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 643697) = 3779136 * k + 1931092 := by
    unfold C
    simp [show (1259712 * k + 643697) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1931092) = 1889568 * k + 965546 := by
    unfold C
    simp [show (3779136 * k + 1931092) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 965546) = 944784 * k + 482773 := by
    unfold C
    simp [show (1889568 * k + 965546) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 482773) = 2834352 * k + 1448320 := by
    unfold C
    simp [show (944784 * k + 482773) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1448320) = 1417176 * k + 724160 := by
    unfold C
    simp [show (2834352 * k + 1448320) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 724160) = 708588 * k + 362080 := by
    unfold C
    simp [show (1417176 * k + 724160) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 362080) = 354294 * k + 181040 := by
    unfold C
    simp [show (708588 * k + 362080) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 181040) = 177147 * k + 90520 := by
    unfold C
    simp [show (354294 * k + 181040) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 133951) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 133951))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_133991 : ∀ k : Nat,
    iterate (262144 * k + 133991) 29 = 177147 * k + 90547 ∧
      177147 * k + 90547 < 262144 * k + 133991 := by
  intro k
  have h1 : C (262144 * k + 133991) = 786432 * k + 401974 := by
    unfold C
    simp [show (262144 * k + 133991) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 401974) = 393216 * k + 200987 := by
    unfold C
    simp [show (786432 * k + 401974) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 200987) = 1179648 * k + 602962 := by
    unfold C
    simp [show (393216 * k + 200987) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 602962) = 589824 * k + 301481 := by
    unfold C
    simp [show (1179648 * k + 602962) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 301481) = 1769472 * k + 904444 := by
    unfold C
    simp [show (589824 * k + 301481) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 904444) = 884736 * k + 452222 := by
    unfold C
    simp [show (1769472 * k + 904444) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 452222) = 442368 * k + 226111 := by
    unfold C
    simp [show (884736 * k + 452222) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 226111) = 1327104 * k + 678334 := by
    unfold C
    simp [show (442368 * k + 226111) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 678334) = 663552 * k + 339167 := by
    unfold C
    simp [show (1327104 * k + 678334) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 339167) = 1990656 * k + 1017502 := by
    unfold C
    simp [show (663552 * k + 339167) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1017502) = 995328 * k + 508751 := by
    unfold C
    simp [show (1990656 * k + 1017502) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 508751) = 2985984 * k + 1526254 := by
    unfold C
    simp [show (995328 * k + 508751) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1526254) = 1492992 * k + 763127 := by
    unfold C
    simp [show (2985984 * k + 1526254) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 763127) = 4478976 * k + 2289382 := by
    unfold C
    simp [show (1492992 * k + 763127) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2289382) = 2239488 * k + 1144691 := by
    unfold C
    simp [show (4478976 * k + 2289382) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1144691) = 6718464 * k + 3434074 := by
    unfold C
    simp [show (2239488 * k + 1144691) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3434074) = 3359232 * k + 1717037 := by
    unfold C
    simp [show (6718464 * k + 3434074) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1717037) = 10077696 * k + 5151112 := by
    unfold C
    simp [show (3359232 * k + 1717037) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 5151112) = 5038848 * k + 2575556 := by
    unfold C
    simp [show (10077696 * k + 5151112) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 2575556) = 2519424 * k + 1287778 := by
    unfold C
    simp [show (5038848 * k + 2575556) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1287778) = 1259712 * k + 643889 := by
    unfold C
    simp [show (2519424 * k + 1287778) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 643889) = 3779136 * k + 1931668 := by
    unfold C
    simp [show (1259712 * k + 643889) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1931668) = 1889568 * k + 965834 := by
    unfold C
    simp [show (3779136 * k + 1931668) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 965834) = 944784 * k + 482917 := by
    unfold C
    simp [show (1889568 * k + 965834) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 482917) = 2834352 * k + 1448752 := by
    unfold C
    simp [show (944784 * k + 482917) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1448752) = 1417176 * k + 724376 := by
    unfold C
    simp [show (2834352 * k + 1448752) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 724376) = 708588 * k + 362188 := by
    unfold C
    simp [show (1417176 * k + 724376) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 362188) = 354294 * k + 181094 := by
    unfold C
    simp [show (708588 * k + 362188) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 181094) = 177147 * k + 90547 := by
    unfold C
    simp [show (354294 * k + 181094) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 133991) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 133991))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_134271 : ∀ k : Nat,
    iterate (262144 * k + 134271) 29 = 177147 * k + 90736 ∧
      177147 * k + 90736 < 262144 * k + 134271 := by
  intro k
  have h1 : C (262144 * k + 134271) = 786432 * k + 402814 := by
    unfold C
    simp [show (262144 * k + 134271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 402814) = 393216 * k + 201407 := by
    unfold C
    simp [show (786432 * k + 402814) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 201407) = 1179648 * k + 604222 := by
    unfold C
    simp [show (393216 * k + 201407) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 604222) = 589824 * k + 302111 := by
    unfold C
    simp [show (1179648 * k + 604222) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 302111) = 1769472 * k + 906334 := by
    unfold C
    simp [show (589824 * k + 302111) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 906334) = 884736 * k + 453167 := by
    unfold C
    simp [show (1769472 * k + 906334) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 453167) = 2654208 * k + 1359502 := by
    unfold C
    simp [show (884736 * k + 453167) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1359502) = 1327104 * k + 679751 := by
    unfold C
    simp [show (2654208 * k + 1359502) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 679751) = 3981312 * k + 2039254 := by
    unfold C
    simp [show (1327104 * k + 679751) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2039254) = 1990656 * k + 1019627 := by
    unfold C
    simp [show (3981312 * k + 2039254) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1019627) = 5971968 * k + 3058882 := by
    unfold C
    simp [show (1990656 * k + 1019627) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3058882) = 2985984 * k + 1529441 := by
    unfold C
    simp [show (5971968 * k + 3058882) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1529441) = 8957952 * k + 4588324 := by
    unfold C
    simp [show (2985984 * k + 1529441) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 4588324) = 4478976 * k + 2294162 := by
    unfold C
    simp [show (8957952 * k + 4588324) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 2294162) = 2239488 * k + 1147081 := by
    unfold C
    simp [show (4478976 * k + 2294162) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1147081) = 6718464 * k + 3441244 := by
    unfold C
    simp [show (2239488 * k + 1147081) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3441244) = 3359232 * k + 1720622 := by
    unfold C
    simp [show (6718464 * k + 3441244) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1720622) = 1679616 * k + 860311 := by
    unfold C
    simp [show (3359232 * k + 1720622) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 860311) = 5038848 * k + 2580934 := by
    unfold C
    simp [show (1679616 * k + 860311) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2580934) = 2519424 * k + 1290467 := by
    unfold C
    simp [show (5038848 * k + 2580934) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1290467) = 7558272 * k + 3871402 := by
    unfold C
    simp [show (2519424 * k + 1290467) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 3871402) = 3779136 * k + 1935701 := by
    unfold C
    simp [show (7558272 * k + 3871402) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1935701) = 11337408 * k + 5807104 := by
    unfold C
    simp [show (3779136 * k + 1935701) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 5807104) = 5668704 * k + 2903552 := by
    unfold C
    simp [show (11337408 * k + 5807104) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 2903552) = 2834352 * k + 1451776 := by
    unfold C
    simp [show (5668704 * k + 2903552) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1451776) = 1417176 * k + 725888 := by
    unfold C
    simp [show (2834352 * k + 1451776) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 725888) = 708588 * k + 362944 := by
    unfold C
    simp [show (1417176 * k + 725888) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 362944) = 354294 * k + 181472 := by
    unfold C
    simp [show (708588 * k + 362944) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 181472) = 177147 * k + 90736 := by
    unfold C
    simp [show (354294 * k + 181472) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 134271) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 134271))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_134463 : ∀ k : Nat,
    iterate (262144 * k + 134463) 29 = 177147 * k + 90866 ∧
      177147 * k + 90866 < 262144 * k + 134463 := by
  intro k
  have h1 : C (262144 * k + 134463) = 786432 * k + 403390 := by
    unfold C
    simp [show (262144 * k + 134463) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 403390) = 393216 * k + 201695 := by
    unfold C
    simp [show (786432 * k + 403390) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 201695) = 1179648 * k + 605086 := by
    unfold C
    simp [show (393216 * k + 201695) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 605086) = 589824 * k + 302543 := by
    unfold C
    simp [show (1179648 * k + 605086) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 302543) = 1769472 * k + 907630 := by
    unfold C
    simp [show (589824 * k + 302543) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 907630) = 884736 * k + 453815 := by
    unfold C
    simp [show (1769472 * k + 907630) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 453815) = 2654208 * k + 1361446 := by
    unfold C
    simp [show (884736 * k + 453815) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1361446) = 1327104 * k + 680723 := by
    unfold C
    simp [show (2654208 * k + 1361446) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 680723) = 3981312 * k + 2042170 := by
    unfold C
    simp [show (1327104 * k + 680723) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2042170) = 1990656 * k + 1021085 := by
    unfold C
    simp [show (3981312 * k + 2042170) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1021085) = 5971968 * k + 3063256 := by
    unfold C
    simp [show (1990656 * k + 1021085) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3063256) = 2985984 * k + 1531628 := by
    unfold C
    simp [show (5971968 * k + 3063256) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1531628) = 1492992 * k + 765814 := by
    unfold C
    simp [show (2985984 * k + 1531628) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 765814) = 746496 * k + 382907 := by
    unfold C
    simp [show (1492992 * k + 765814) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 382907) = 2239488 * k + 1148722 := by
    unfold C
    simp [show (746496 * k + 382907) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1148722) = 1119744 * k + 574361 := by
    unfold C
    simp [show (2239488 * k + 1148722) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 574361) = 3359232 * k + 1723084 := by
    unfold C
    simp [show (1119744 * k + 574361) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1723084) = 1679616 * k + 861542 := by
    unfold C
    simp [show (3359232 * k + 1723084) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 861542) = 839808 * k + 430771 := by
    unfold C
    simp [show (1679616 * k + 861542) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 430771) = 2519424 * k + 1292314 := by
    unfold C
    simp [show (839808 * k + 430771) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1292314) = 1259712 * k + 646157 := by
    unfold C
    simp [show (2519424 * k + 1292314) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 646157) = 3779136 * k + 1938472 := by
    unfold C
    simp [show (1259712 * k + 646157) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1938472) = 1889568 * k + 969236 := by
    unfold C
    simp [show (3779136 * k + 1938472) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 969236) = 944784 * k + 484618 := by
    unfold C
    simp [show (1889568 * k + 969236) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 484618) = 472392 * k + 242309 := by
    unfold C
    simp [show (944784 * k + 484618) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 242309) = 1417176 * k + 726928 := by
    unfold C
    simp [show (472392 * k + 242309) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 726928) = 708588 * k + 363464 := by
    unfold C
    simp [show (1417176 * k + 726928) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 363464) = 354294 * k + 181732 := by
    unfold C
    simp [show (708588 * k + 363464) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 181732) = 177147 * k + 90866 := by
    unfold C
    simp [show (354294 * k + 181732) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 134463) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 134463))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_135195 : ∀ k : Nat,
    iterate (262144 * k + 135195) 29 = 177147 * k + 91361 ∧
      177147 * k + 91361 < 262144 * k + 135195 := by
  intro k
  have h1 : C (262144 * k + 135195) = 786432 * k + 405586 := by
    unfold C
    simp [show (262144 * k + 135195) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 405586) = 393216 * k + 202793 := by
    unfold C
    simp [show (786432 * k + 405586) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 202793) = 1179648 * k + 608380 := by
    unfold C
    simp [show (393216 * k + 202793) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 608380) = 589824 * k + 304190 := by
    unfold C
    simp [show (1179648 * k + 608380) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 304190) = 294912 * k + 152095 := by
    unfold C
    simp [show (589824 * k + 304190) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 152095) = 884736 * k + 456286 := by
    unfold C
    simp [show (294912 * k + 152095) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 456286) = 442368 * k + 228143 := by
    unfold C
    simp [show (884736 * k + 456286) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 228143) = 1327104 * k + 684430 := by
    unfold C
    simp [show (442368 * k + 228143) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 684430) = 663552 * k + 342215 := by
    unfold C
    simp [show (1327104 * k + 684430) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 342215) = 1990656 * k + 1026646 := by
    unfold C
    simp [show (663552 * k + 342215) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1026646) = 995328 * k + 513323 := by
    unfold C
    simp [show (1990656 * k + 1026646) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 513323) = 2985984 * k + 1539970 := by
    unfold C
    simp [show (995328 * k + 513323) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1539970) = 1492992 * k + 769985 := by
    unfold C
    simp [show (2985984 * k + 1539970) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 769985) = 4478976 * k + 2309956 := by
    unfold C
    simp [show (1492992 * k + 769985) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2309956) = 2239488 * k + 1154978 := by
    unfold C
    simp [show (4478976 * k + 2309956) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1154978) = 1119744 * k + 577489 := by
    unfold C
    simp [show (2239488 * k + 1154978) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 577489) = 3359232 * k + 1732468 := by
    unfold C
    simp [show (1119744 * k + 577489) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1732468) = 1679616 * k + 866234 := by
    unfold C
    simp [show (3359232 * k + 1732468) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 866234) = 839808 * k + 433117 := by
    unfold C
    simp [show (1679616 * k + 866234) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 433117) = 2519424 * k + 1299352 := by
    unfold C
    simp [show (839808 * k + 433117) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1299352) = 1259712 * k + 649676 := by
    unfold C
    simp [show (2519424 * k + 1299352) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 649676) = 629856 * k + 324838 := by
    unfold C
    simp [show (1259712 * k + 649676) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 324838) = 314928 * k + 162419 := by
    unfold C
    simp [show (629856 * k + 324838) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 162419) = 944784 * k + 487258 := by
    unfold C
    simp [show (314928 * k + 162419) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 487258) = 472392 * k + 243629 := by
    unfold C
    simp [show (944784 * k + 487258) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 243629) = 1417176 * k + 730888 := by
    unfold C
    simp [show (472392 * k + 243629) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 730888) = 708588 * k + 365444 := by
    unfold C
    simp [show (1417176 * k + 730888) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 365444) = 354294 * k + 182722 := by
    unfold C
    simp [show (708588 * k + 365444) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 182722) = 177147 * k + 91361 := by
    unfold C
    simp [show (354294 * k + 182722) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 135195) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 135195))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_135807 : ∀ k : Nat,
    iterate (262144 * k + 135807) 29 = 177147 * k + 91774 ∧
      177147 * k + 91774 < 262144 * k + 135807 := by
  intro k
  have h1 : C (262144 * k + 135807) = 786432 * k + 407422 := by
    unfold C
    simp [show (262144 * k + 135807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 407422) = 393216 * k + 203711 := by
    unfold C
    simp [show (786432 * k + 407422) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 203711) = 1179648 * k + 611134 := by
    unfold C
    simp [show (393216 * k + 203711) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 611134) = 589824 * k + 305567 := by
    unfold C
    simp [show (1179648 * k + 611134) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 305567) = 1769472 * k + 916702 := by
    unfold C
    simp [show (589824 * k + 305567) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 916702) = 884736 * k + 458351 := by
    unfold C
    simp [show (1769472 * k + 916702) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 458351) = 2654208 * k + 1375054 := by
    unfold C
    simp [show (884736 * k + 458351) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1375054) = 1327104 * k + 687527 := by
    unfold C
    simp [show (2654208 * k + 1375054) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 687527) = 3981312 * k + 2062582 := by
    unfold C
    simp [show (1327104 * k + 687527) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2062582) = 1990656 * k + 1031291 := by
    unfold C
    simp [show (3981312 * k + 2062582) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1031291) = 5971968 * k + 3093874 := by
    unfold C
    simp [show (1990656 * k + 1031291) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3093874) = 2985984 * k + 1546937 := by
    unfold C
    simp [show (5971968 * k + 3093874) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1546937) = 8957952 * k + 4640812 := by
    unfold C
    simp [show (2985984 * k + 1546937) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 4640812) = 4478976 * k + 2320406 := by
    unfold C
    simp [show (8957952 * k + 4640812) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 2320406) = 2239488 * k + 1160203 := by
    unfold C
    simp [show (4478976 * k + 2320406) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1160203) = 6718464 * k + 3480610 := by
    unfold C
    simp [show (2239488 * k + 1160203) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3480610) = 3359232 * k + 1740305 := by
    unfold C
    simp [show (6718464 * k + 3480610) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1740305) = 10077696 * k + 5220916 := by
    unfold C
    simp [show (3359232 * k + 1740305) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 5220916) = 5038848 * k + 2610458 := by
    unfold C
    simp [show (10077696 * k + 5220916) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 2610458) = 2519424 * k + 1305229 := by
    unfold C
    simp [show (5038848 * k + 2610458) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1305229) = 7558272 * k + 3915688 := by
    unfold C
    simp [show (2519424 * k + 1305229) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 3915688) = 3779136 * k + 1957844 := by
    unfold C
    simp [show (7558272 * k + 3915688) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1957844) = 1889568 * k + 978922 := by
    unfold C
    simp [show (3779136 * k + 1957844) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 978922) = 944784 * k + 489461 := by
    unfold C
    simp [show (1889568 * k + 978922) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 489461) = 2834352 * k + 1468384 := by
    unfold C
    simp [show (944784 * k + 489461) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1468384) = 1417176 * k + 734192 := by
    unfold C
    simp [show (2834352 * k + 1468384) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 734192) = 708588 * k + 367096 := by
    unfold C
    simp [show (1417176 * k + 734192) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 367096) = 354294 * k + 183548 := by
    unfold C
    simp [show (708588 * k + 367096) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 183548) = 177147 * k + 91774 := by
    unfold C
    simp [show (354294 * k + 183548) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 135807) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 135807))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_136039 : ∀ k : Nat,
    iterate (262144 * k + 136039) 29 = 177147 * k + 91931 ∧
      177147 * k + 91931 < 262144 * k + 136039 := by
  intro k
  have h1 : C (262144 * k + 136039) = 786432 * k + 408118 := by
    unfold C
    simp [show (262144 * k + 136039) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 408118) = 393216 * k + 204059 := by
    unfold C
    simp [show (786432 * k + 408118) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 204059) = 1179648 * k + 612178 := by
    unfold C
    simp [show (393216 * k + 204059) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 612178) = 589824 * k + 306089 := by
    unfold C
    simp [show (1179648 * k + 612178) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 306089) = 1769472 * k + 918268 := by
    unfold C
    simp [show (589824 * k + 306089) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 918268) = 884736 * k + 459134 := by
    unfold C
    simp [show (1769472 * k + 918268) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 459134) = 442368 * k + 229567 := by
    unfold C
    simp [show (884736 * k + 459134) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 229567) = 1327104 * k + 688702 := by
    unfold C
    simp [show (442368 * k + 229567) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 688702) = 663552 * k + 344351 := by
    unfold C
    simp [show (1327104 * k + 688702) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 344351) = 1990656 * k + 1033054 := by
    unfold C
    simp [show (663552 * k + 344351) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1033054) = 995328 * k + 516527 := by
    unfold C
    simp [show (1990656 * k + 1033054) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 516527) = 2985984 * k + 1549582 := by
    unfold C
    simp [show (995328 * k + 516527) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1549582) = 1492992 * k + 774791 := by
    unfold C
    simp [show (2985984 * k + 1549582) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 774791) = 4478976 * k + 2324374 := by
    unfold C
    simp [show (1492992 * k + 774791) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2324374) = 2239488 * k + 1162187 := by
    unfold C
    simp [show (4478976 * k + 2324374) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1162187) = 6718464 * k + 3486562 := by
    unfold C
    simp [show (2239488 * k + 1162187) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3486562) = 3359232 * k + 1743281 := by
    unfold C
    simp [show (6718464 * k + 3486562) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1743281) = 10077696 * k + 5229844 := by
    unfold C
    simp [show (3359232 * k + 1743281) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 5229844) = 5038848 * k + 2614922 := by
    unfold C
    simp [show (10077696 * k + 5229844) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 2614922) = 2519424 * k + 1307461 := by
    unfold C
    simp [show (5038848 * k + 2614922) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1307461) = 7558272 * k + 3922384 := by
    unfold C
    simp [show (2519424 * k + 1307461) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 3922384) = 3779136 * k + 1961192 := by
    unfold C
    simp [show (7558272 * k + 3922384) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1961192) = 1889568 * k + 980596 := by
    unfold C
    simp [show (3779136 * k + 1961192) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 980596) = 944784 * k + 490298 := by
    unfold C
    simp [show (1889568 * k + 980596) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 490298) = 472392 * k + 245149 := by
    unfold C
    simp [show (944784 * k + 490298) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 245149) = 1417176 * k + 735448 := by
    unfold C
    simp [show (472392 * k + 245149) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 735448) = 708588 * k + 367724 := by
    unfold C
    simp [show (1417176 * k + 735448) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 367724) = 354294 * k + 183862 := by
    unfold C
    simp [show (708588 * k + 367724) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 183862) = 177147 * k + 91931 := by
    unfold C
    simp [show (354294 * k + 183862) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 136039) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 136039))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_136295 : ∀ k : Nat,
    iterate (262144 * k + 136295) 29 = 177147 * k + 92104 ∧
      177147 * k + 92104 < 262144 * k + 136295 := by
  intro k
  have h1 : C (262144 * k + 136295) = 786432 * k + 408886 := by
    unfold C
    simp [show (262144 * k + 136295) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 408886) = 393216 * k + 204443 := by
    unfold C
    simp [show (786432 * k + 408886) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 204443) = 1179648 * k + 613330 := by
    unfold C
    simp [show (393216 * k + 204443) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 613330) = 589824 * k + 306665 := by
    unfold C
    simp [show (1179648 * k + 613330) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 306665) = 1769472 * k + 919996 := by
    unfold C
    simp [show (589824 * k + 306665) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 919996) = 884736 * k + 459998 := by
    unfold C
    simp [show (1769472 * k + 919996) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 459998) = 442368 * k + 229999 := by
    unfold C
    simp [show (884736 * k + 459998) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 229999) = 1327104 * k + 689998 := by
    unfold C
    simp [show (442368 * k + 229999) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 689998) = 663552 * k + 344999 := by
    unfold C
    simp [show (1327104 * k + 689998) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 344999) = 1990656 * k + 1034998 := by
    unfold C
    simp [show (663552 * k + 344999) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1034998) = 995328 * k + 517499 := by
    unfold C
    simp [show (1990656 * k + 1034998) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 517499) = 2985984 * k + 1552498 := by
    unfold C
    simp [show (995328 * k + 517499) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1552498) = 1492992 * k + 776249 := by
    unfold C
    simp [show (2985984 * k + 1552498) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 776249) = 4478976 * k + 2328748 := by
    unfold C
    simp [show (1492992 * k + 776249) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2328748) = 2239488 * k + 1164374 := by
    unfold C
    simp [show (4478976 * k + 2328748) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1164374) = 1119744 * k + 582187 := by
    unfold C
    simp [show (2239488 * k + 1164374) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 582187) = 3359232 * k + 1746562 := by
    unfold C
    simp [show (1119744 * k + 582187) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1746562) = 1679616 * k + 873281 := by
    unfold C
    simp [show (3359232 * k + 1746562) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 873281) = 5038848 * k + 2619844 := by
    unfold C
    simp [show (1679616 * k + 873281) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2619844) = 2519424 * k + 1309922 := by
    unfold C
    simp [show (5038848 * k + 2619844) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1309922) = 1259712 * k + 654961 := by
    unfold C
    simp [show (2519424 * k + 1309922) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 654961) = 3779136 * k + 1964884 := by
    unfold C
    simp [show (1259712 * k + 654961) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1964884) = 1889568 * k + 982442 := by
    unfold C
    simp [show (3779136 * k + 1964884) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 982442) = 944784 * k + 491221 := by
    unfold C
    simp [show (1889568 * k + 982442) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 491221) = 2834352 * k + 1473664 := by
    unfold C
    simp [show (944784 * k + 491221) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1473664) = 1417176 * k + 736832 := by
    unfold C
    simp [show (2834352 * k + 1473664) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 736832) = 708588 * k + 368416 := by
    unfold C
    simp [show (1417176 * k + 736832) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 368416) = 354294 * k + 184208 := by
    unfold C
    simp [show (708588 * k + 368416) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 184208) = 177147 * k + 92104 := by
    unfold C
    simp [show (354294 * k + 184208) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 136295) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 136295))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_136319 : ∀ k : Nat,
    iterate (262144 * k + 136319) 29 = 177147 * k + 92120 ∧
      177147 * k + 92120 < 262144 * k + 136319 := by
  intro k
  have h1 : C (262144 * k + 136319) = 786432 * k + 408958 := by
    unfold C
    simp [show (262144 * k + 136319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 408958) = 393216 * k + 204479 := by
    unfold C
    simp [show (786432 * k + 408958) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 204479) = 1179648 * k + 613438 := by
    unfold C
    simp [show (393216 * k + 204479) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 613438) = 589824 * k + 306719 := by
    unfold C
    simp [show (1179648 * k + 613438) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 306719) = 1769472 * k + 920158 := by
    unfold C
    simp [show (589824 * k + 306719) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 920158) = 884736 * k + 460079 := by
    unfold C
    simp [show (1769472 * k + 920158) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 460079) = 2654208 * k + 1380238 := by
    unfold C
    simp [show (884736 * k + 460079) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1380238) = 1327104 * k + 690119 := by
    unfold C
    simp [show (2654208 * k + 1380238) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 690119) = 3981312 * k + 2070358 := by
    unfold C
    simp [show (1327104 * k + 690119) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2070358) = 1990656 * k + 1035179 := by
    unfold C
    simp [show (3981312 * k + 2070358) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1035179) = 5971968 * k + 3105538 := by
    unfold C
    simp [show (1990656 * k + 1035179) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3105538) = 2985984 * k + 1552769 := by
    unfold C
    simp [show (5971968 * k + 3105538) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1552769) = 8957952 * k + 4658308 := by
    unfold C
    simp [show (2985984 * k + 1552769) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 4658308) = 4478976 * k + 2329154 := by
    unfold C
    simp [show (8957952 * k + 4658308) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 2329154) = 2239488 * k + 1164577 := by
    unfold C
    simp [show (4478976 * k + 2329154) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1164577) = 6718464 * k + 3493732 := by
    unfold C
    simp [show (2239488 * k + 1164577) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3493732) = 3359232 * k + 1746866 := by
    unfold C
    simp [show (6718464 * k + 3493732) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1746866) = 1679616 * k + 873433 := by
    unfold C
    simp [show (3359232 * k + 1746866) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 873433) = 5038848 * k + 2620300 := by
    unfold C
    simp [show (1679616 * k + 873433) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2620300) = 2519424 * k + 1310150 := by
    unfold C
    simp [show (5038848 * k + 2620300) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1310150) = 1259712 * k + 655075 := by
    unfold C
    simp [show (2519424 * k + 1310150) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 655075) = 3779136 * k + 1965226 := by
    unfold C
    simp [show (1259712 * k + 655075) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1965226) = 1889568 * k + 982613 := by
    unfold C
    simp [show (3779136 * k + 1965226) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 982613) = 5668704 * k + 2947840 := by
    unfold C
    simp [show (1889568 * k + 982613) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 2947840) = 2834352 * k + 1473920 := by
    unfold C
    simp [show (5668704 * k + 2947840) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1473920) = 1417176 * k + 736960 := by
    unfold C
    simp [show (2834352 * k + 1473920) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 736960) = 708588 * k + 368480 := by
    unfold C
    simp [show (1417176 * k + 736960) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 368480) = 354294 * k + 184240 := by
    unfold C
    simp [show (708588 * k + 368480) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 184240) = 177147 * k + 92120 := by
    unfold C
    simp [show (354294 * k + 184240) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 136319) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 136319))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard026
