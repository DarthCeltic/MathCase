import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard042

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_221595 : ∀ k : Nat,
    iterate (262144 * k + 221595) 29 = 177147 * k + 149747 ∧
      177147 * k + 149747 < 262144 * k + 221595 := by
  intro k
  have h1 : C (262144 * k + 221595) = 786432 * k + 664786 := by
    unfold C
    simp [show (262144 * k + 221595) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 664786) = 393216 * k + 332393 := by
    unfold C
    simp [show (786432 * k + 664786) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 332393) = 1179648 * k + 997180 := by
    unfold C
    simp [show (393216 * k + 332393) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 997180) = 589824 * k + 498590 := by
    unfold C
    simp [show (1179648 * k + 997180) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 498590) = 294912 * k + 249295 := by
    unfold C
    simp [show (589824 * k + 498590) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 249295) = 884736 * k + 747886 := by
    unfold C
    simp [show (294912 * k + 249295) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 747886) = 442368 * k + 373943 := by
    unfold C
    simp [show (884736 * k + 747886) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 373943) = 1327104 * k + 1121830 := by
    unfold C
    simp [show (442368 * k + 373943) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1121830) = 663552 * k + 560915 := by
    unfold C
    simp [show (1327104 * k + 1121830) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 560915) = 1990656 * k + 1682746 := by
    unfold C
    simp [show (663552 * k + 560915) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1682746) = 995328 * k + 841373 := by
    unfold C
    simp [show (1990656 * k + 1682746) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 841373) = 2985984 * k + 2524120 := by
    unfold C
    simp [show (995328 * k + 841373) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2524120) = 1492992 * k + 1262060 := by
    unfold C
    simp [show (2985984 * k + 2524120) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1262060) = 746496 * k + 631030 := by
    unfold C
    simp [show (1492992 * k + 1262060) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 631030) = 373248 * k + 315515 := by
    unfold C
    simp [show (746496 * k + 631030) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 315515) = 1119744 * k + 946546 := by
    unfold C
    simp [show (373248 * k + 315515) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 946546) = 559872 * k + 473273 := by
    unfold C
    simp [show (1119744 * k + 946546) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 473273) = 1679616 * k + 1419820 := by
    unfold C
    simp [show (559872 * k + 473273) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1419820) = 839808 * k + 709910 := by
    unfold C
    simp [show (1679616 * k + 1419820) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 709910) = 419904 * k + 354955 := by
    unfold C
    simp [show (839808 * k + 709910) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 354955) = 1259712 * k + 1064866 := by
    unfold C
    simp [show (419904 * k + 354955) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1064866) = 629856 * k + 532433 := by
    unfold C
    simp [show (1259712 * k + 1064866) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 532433) = 1889568 * k + 1597300 := by
    unfold C
    simp [show (629856 * k + 532433) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1597300) = 944784 * k + 798650 := by
    unfold C
    simp [show (1889568 * k + 1597300) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 798650) = 472392 * k + 399325 := by
    unfold C
    simp [show (944784 * k + 798650) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 399325) = 1417176 * k + 1197976 := by
    unfold C
    simp [show (472392 * k + 399325) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1197976) = 708588 * k + 598988 := by
    unfold C
    simp [show (1417176 * k + 1197976) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 598988) = 354294 * k + 299494 := by
    unfold C
    simp [show (708588 * k + 598988) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 299494) = 177147 * k + 149747 := by
    unfold C
    simp [show (354294 * k + 299494) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 221595) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 221595))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_222043 : ∀ k : Nat,
    iterate (262144 * k + 222043) 29 = 177147 * k + 150050 ∧
      177147 * k + 150050 < 262144 * k + 222043 := by
  intro k
  have h1 : C (262144 * k + 222043) = 786432 * k + 666130 := by
    unfold C
    simp [show (262144 * k + 222043) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 666130) = 393216 * k + 333065 := by
    unfold C
    simp [show (786432 * k + 666130) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 333065) = 1179648 * k + 999196 := by
    unfold C
    simp [show (393216 * k + 333065) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 999196) = 589824 * k + 499598 := by
    unfold C
    simp [show (1179648 * k + 999196) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 499598) = 294912 * k + 249799 := by
    unfold C
    simp [show (589824 * k + 499598) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 249799) = 884736 * k + 749398 := by
    unfold C
    simp [show (294912 * k + 249799) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 749398) = 442368 * k + 374699 := by
    unfold C
    simp [show (884736 * k + 749398) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 374699) = 1327104 * k + 1124098 := by
    unfold C
    simp [show (442368 * k + 374699) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1124098) = 663552 * k + 562049 := by
    unfold C
    simp [show (1327104 * k + 1124098) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 562049) = 1990656 * k + 1686148 := by
    unfold C
    simp [show (663552 * k + 562049) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1686148) = 995328 * k + 843074 := by
    unfold C
    simp [show (1990656 * k + 1686148) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 843074) = 497664 * k + 421537 := by
    unfold C
    simp [show (995328 * k + 843074) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 421537) = 1492992 * k + 1264612 := by
    unfold C
    simp [show (497664 * k + 421537) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1264612) = 746496 * k + 632306 := by
    unfold C
    simp [show (1492992 * k + 1264612) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 632306) = 373248 * k + 316153 := by
    unfold C
    simp [show (746496 * k + 632306) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 316153) = 1119744 * k + 948460 := by
    unfold C
    simp [show (373248 * k + 316153) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 948460) = 559872 * k + 474230 := by
    unfold C
    simp [show (1119744 * k + 948460) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 474230) = 279936 * k + 237115 := by
    unfold C
    simp [show (559872 * k + 474230) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 237115) = 839808 * k + 711346 := by
    unfold C
    simp [show (279936 * k + 237115) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 711346) = 419904 * k + 355673 := by
    unfold C
    simp [show (839808 * k + 711346) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 355673) = 1259712 * k + 1067020 := by
    unfold C
    simp [show (419904 * k + 355673) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1067020) = 629856 * k + 533510 := by
    unfold C
    simp [show (1259712 * k + 1067020) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 533510) = 314928 * k + 266755 := by
    unfold C
    simp [show (629856 * k + 533510) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 266755) = 944784 * k + 800266 := by
    unfold C
    simp [show (314928 * k + 266755) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 800266) = 472392 * k + 400133 := by
    unfold C
    simp [show (944784 * k + 800266) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 400133) = 1417176 * k + 1200400 := by
    unfold C
    simp [show (472392 * k + 400133) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1200400) = 708588 * k + 600200 := by
    unfold C
    simp [show (1417176 * k + 1200400) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 600200) = 354294 * k + 300100 := by
    unfold C
    simp [show (708588 * k + 600200) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 300100) = 177147 * k + 150050 := by
    unfold C
    simp [show (354294 * k + 300100) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 222043) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 222043))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_222363 : ∀ k : Nat,
    iterate (262144 * k + 222363) 29 = 177147 * k + 150266 ∧
      177147 * k + 150266 < 262144 * k + 222363 := by
  intro k
  have h1 : C (262144 * k + 222363) = 786432 * k + 667090 := by
    unfold C
    simp [show (262144 * k + 222363) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 667090) = 393216 * k + 333545 := by
    unfold C
    simp [show (786432 * k + 667090) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 333545) = 1179648 * k + 1000636 := by
    unfold C
    simp [show (393216 * k + 333545) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1000636) = 589824 * k + 500318 := by
    unfold C
    simp [show (1179648 * k + 1000636) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 500318) = 294912 * k + 250159 := by
    unfold C
    simp [show (589824 * k + 500318) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 250159) = 884736 * k + 750478 := by
    unfold C
    simp [show (294912 * k + 250159) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 750478) = 442368 * k + 375239 := by
    unfold C
    simp [show (884736 * k + 750478) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 375239) = 1327104 * k + 1125718 := by
    unfold C
    simp [show (442368 * k + 375239) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1125718) = 663552 * k + 562859 := by
    unfold C
    simp [show (1327104 * k + 1125718) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 562859) = 1990656 * k + 1688578 := by
    unfold C
    simp [show (663552 * k + 562859) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1688578) = 995328 * k + 844289 := by
    unfold C
    simp [show (1990656 * k + 1688578) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 844289) = 2985984 * k + 2532868 := by
    unfold C
    simp [show (995328 * k + 844289) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2532868) = 1492992 * k + 1266434 := by
    unfold C
    simp [show (2985984 * k + 2532868) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1266434) = 746496 * k + 633217 := by
    unfold C
    simp [show (1492992 * k + 1266434) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 633217) = 2239488 * k + 1899652 := by
    unfold C
    simp [show (746496 * k + 633217) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1899652) = 1119744 * k + 949826 := by
    unfold C
    simp [show (2239488 * k + 1899652) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 949826) = 559872 * k + 474913 := by
    unfold C
    simp [show (1119744 * k + 949826) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 474913) = 1679616 * k + 1424740 := by
    unfold C
    simp [show (559872 * k + 474913) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1424740) = 839808 * k + 712370 := by
    unfold C
    simp [show (1679616 * k + 1424740) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 712370) = 419904 * k + 356185 := by
    unfold C
    simp [show (839808 * k + 712370) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 356185) = 1259712 * k + 1068556 := by
    unfold C
    simp [show (419904 * k + 356185) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1068556) = 629856 * k + 534278 := by
    unfold C
    simp [show (1259712 * k + 1068556) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 534278) = 314928 * k + 267139 := by
    unfold C
    simp [show (629856 * k + 534278) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 267139) = 944784 * k + 801418 := by
    unfold C
    simp [show (314928 * k + 267139) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 801418) = 472392 * k + 400709 := by
    unfold C
    simp [show (944784 * k + 801418) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 400709) = 1417176 * k + 1202128 := by
    unfold C
    simp [show (472392 * k + 400709) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1202128) = 708588 * k + 601064 := by
    unfold C
    simp [show (1417176 * k + 1202128) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 601064) = 354294 * k + 300532 := by
    unfold C
    simp [show (708588 * k + 601064) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 300532) = 177147 * k + 150266 := by
    unfold C
    simp [show (354294 * k + 300532) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 222363) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 222363))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_222491 : ∀ k : Nat,
    iterate (262144 * k + 222491) 29 = 177147 * k + 150352 ∧
      177147 * k + 150352 < 262144 * k + 222491 := by
  intro k
  have h1 : C (262144 * k + 222491) = 786432 * k + 667474 := by
    unfold C
    simp [show (262144 * k + 222491) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 667474) = 393216 * k + 333737 := by
    unfold C
    simp [show (786432 * k + 667474) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 333737) = 1179648 * k + 1001212 := by
    unfold C
    simp [show (393216 * k + 333737) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1001212) = 589824 * k + 500606 := by
    unfold C
    simp [show (1179648 * k + 1001212) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 500606) = 294912 * k + 250303 := by
    unfold C
    simp [show (589824 * k + 500606) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 250303) = 884736 * k + 750910 := by
    unfold C
    simp [show (294912 * k + 250303) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 750910) = 442368 * k + 375455 := by
    unfold C
    simp [show (884736 * k + 750910) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 375455) = 1327104 * k + 1126366 := by
    unfold C
    simp [show (442368 * k + 375455) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1126366) = 663552 * k + 563183 := by
    unfold C
    simp [show (1327104 * k + 1126366) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 563183) = 1990656 * k + 1689550 := by
    unfold C
    simp [show (663552 * k + 563183) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1689550) = 995328 * k + 844775 := by
    unfold C
    simp [show (1990656 * k + 1689550) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 844775) = 2985984 * k + 2534326 := by
    unfold C
    simp [show (995328 * k + 844775) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2534326) = 1492992 * k + 1267163 := by
    unfold C
    simp [show (2985984 * k + 2534326) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1267163) = 4478976 * k + 3801490 := by
    unfold C
    simp [show (1492992 * k + 1267163) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3801490) = 2239488 * k + 1900745 := by
    unfold C
    simp [show (4478976 * k + 3801490) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1900745) = 6718464 * k + 5702236 := by
    unfold C
    simp [show (2239488 * k + 1900745) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 5702236) = 3359232 * k + 2851118 := by
    unfold C
    simp [show (6718464 * k + 5702236) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2851118) = 1679616 * k + 1425559 := by
    unfold C
    simp [show (3359232 * k + 2851118) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1425559) = 5038848 * k + 4276678 := by
    unfold C
    simp [show (1679616 * k + 1425559) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4276678) = 2519424 * k + 2138339 := by
    unfold C
    simp [show (5038848 * k + 4276678) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2138339) = 7558272 * k + 6415018 := by
    unfold C
    simp [show (2519424 * k + 2138339) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 6415018) = 3779136 * k + 3207509 := by
    unfold C
    simp [show (7558272 * k + 6415018) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3207509) = 11337408 * k + 9622528 := by
    unfold C
    simp [show (3779136 * k + 3207509) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 9622528) = 5668704 * k + 4811264 := by
    unfold C
    simp [show (11337408 * k + 9622528) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 4811264) = 2834352 * k + 2405632 := by
    unfold C
    simp [show (5668704 * k + 4811264) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2405632) = 1417176 * k + 1202816 := by
    unfold C
    simp [show (2834352 * k + 2405632) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1202816) = 708588 * k + 601408 := by
    unfold C
    simp [show (1417176 * k + 1202816) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 601408) = 354294 * k + 300704 := by
    unfold C
    simp [show (708588 * k + 601408) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 300704) = 177147 * k + 150352 := by
    unfold C
    simp [show (354294 * k + 300704) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 222491) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 222491))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_222535 : ∀ k : Nat,
    iterate (262144 * k + 222535) 29 = 177147 * k + 150382 ∧
      177147 * k + 150382 < 262144 * k + 222535 := by
  intro k
  have h1 : C (262144 * k + 222535) = 786432 * k + 667606 := by
    unfold C
    simp [show (262144 * k + 222535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 667606) = 393216 * k + 333803 := by
    unfold C
    simp [show (786432 * k + 667606) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 333803) = 1179648 * k + 1001410 := by
    unfold C
    simp [show (393216 * k + 333803) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1001410) = 589824 * k + 500705 := by
    unfold C
    simp [show (1179648 * k + 1001410) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 500705) = 1769472 * k + 1502116 := by
    unfold C
    simp [show (589824 * k + 500705) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1502116) = 884736 * k + 751058 := by
    unfold C
    simp [show (1769472 * k + 1502116) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 751058) = 442368 * k + 375529 := by
    unfold C
    simp [show (884736 * k + 751058) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 375529) = 1327104 * k + 1126588 := by
    unfold C
    simp [show (442368 * k + 375529) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1126588) = 663552 * k + 563294 := by
    unfold C
    simp [show (1327104 * k + 1126588) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 563294) = 331776 * k + 281647 := by
    unfold C
    simp [show (663552 * k + 563294) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 281647) = 995328 * k + 844942 := by
    unfold C
    simp [show (331776 * k + 281647) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 844942) = 497664 * k + 422471 := by
    unfold C
    simp [show (995328 * k + 844942) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 422471) = 1492992 * k + 1267414 := by
    unfold C
    simp [show (497664 * k + 422471) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1267414) = 746496 * k + 633707 := by
    unfold C
    simp [show (1492992 * k + 1267414) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 633707) = 2239488 * k + 1901122 := by
    unfold C
    simp [show (746496 * k + 633707) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1901122) = 1119744 * k + 950561 := by
    unfold C
    simp [show (2239488 * k + 1901122) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 950561) = 3359232 * k + 2851684 := by
    unfold C
    simp [show (1119744 * k + 950561) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2851684) = 1679616 * k + 1425842 := by
    unfold C
    simp [show (3359232 * k + 2851684) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1425842) = 839808 * k + 712921 := by
    unfold C
    simp [show (1679616 * k + 1425842) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 712921) = 2519424 * k + 2138764 := by
    unfold C
    simp [show (839808 * k + 712921) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2138764) = 1259712 * k + 1069382 := by
    unfold C
    simp [show (2519424 * k + 2138764) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1069382) = 629856 * k + 534691 := by
    unfold C
    simp [show (1259712 * k + 1069382) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 534691) = 1889568 * k + 1604074 := by
    unfold C
    simp [show (629856 * k + 534691) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1604074) = 944784 * k + 802037 := by
    unfold C
    simp [show (1889568 * k + 1604074) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 802037) = 2834352 * k + 2406112 := by
    unfold C
    simp [show (944784 * k + 802037) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2406112) = 1417176 * k + 1203056 := by
    unfold C
    simp [show (2834352 * k + 2406112) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1203056) = 708588 * k + 601528 := by
    unfold C
    simp [show (1417176 * k + 1203056) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 601528) = 354294 * k + 300764 := by
    unfold C
    simp [show (708588 * k + 601528) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 300764) = 177147 * k + 150382 := by
    unfold C
    simp [show (354294 * k + 300764) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 222535) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 222535))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_222879 : ∀ k : Nat,
    iterate (262144 * k + 222879) 29 = 177147 * k + 150614 ∧
      177147 * k + 150614 < 262144 * k + 222879 := by
  intro k
  have h1 : C (262144 * k + 222879) = 786432 * k + 668638 := by
    unfold C
    simp [show (262144 * k + 222879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 668638) = 393216 * k + 334319 := by
    unfold C
    simp [show (786432 * k + 668638) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 334319) = 1179648 * k + 1002958 := by
    unfold C
    simp [show (393216 * k + 334319) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1002958) = 589824 * k + 501479 := by
    unfold C
    simp [show (1179648 * k + 1002958) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 501479) = 1769472 * k + 1504438 := by
    unfold C
    simp [show (589824 * k + 501479) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1504438) = 884736 * k + 752219 := by
    unfold C
    simp [show (1769472 * k + 1504438) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 752219) = 2654208 * k + 2256658 := by
    unfold C
    simp [show (884736 * k + 752219) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2256658) = 1327104 * k + 1128329 := by
    unfold C
    simp [show (2654208 * k + 2256658) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1128329) = 3981312 * k + 3384988 := by
    unfold C
    simp [show (1327104 * k + 1128329) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3384988) = 1990656 * k + 1692494 := by
    unfold C
    simp [show (3981312 * k + 3384988) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1692494) = 995328 * k + 846247 := by
    unfold C
    simp [show (1990656 * k + 1692494) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 846247) = 2985984 * k + 2538742 := by
    unfold C
    simp [show (995328 * k + 846247) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2538742) = 1492992 * k + 1269371 := by
    unfold C
    simp [show (2985984 * k + 2538742) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1269371) = 4478976 * k + 3808114 := by
    unfold C
    simp [show (1492992 * k + 1269371) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3808114) = 2239488 * k + 1904057 := by
    unfold C
    simp [show (4478976 * k + 3808114) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1904057) = 6718464 * k + 5712172 := by
    unfold C
    simp [show (2239488 * k + 1904057) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 5712172) = 3359232 * k + 2856086 := by
    unfold C
    simp [show (6718464 * k + 5712172) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2856086) = 1679616 * k + 1428043 := by
    unfold C
    simp [show (3359232 * k + 2856086) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1428043) = 5038848 * k + 4284130 := by
    unfold C
    simp [show (1679616 * k + 1428043) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4284130) = 2519424 * k + 2142065 := by
    unfold C
    simp [show (5038848 * k + 4284130) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2142065) = 7558272 * k + 6426196 := by
    unfold C
    simp [show (2519424 * k + 2142065) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 6426196) = 3779136 * k + 3213098 := by
    unfold C
    simp [show (7558272 * k + 6426196) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3213098) = 1889568 * k + 1606549 := by
    unfold C
    simp [show (3779136 * k + 3213098) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1606549) = 5668704 * k + 4819648 := by
    unfold C
    simp [show (1889568 * k + 1606549) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 4819648) = 2834352 * k + 2409824 := by
    unfold C
    simp [show (5668704 * k + 4819648) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2409824) = 1417176 * k + 1204912 := by
    unfold C
    simp [show (2834352 * k + 2409824) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1204912) = 708588 * k + 602456 := by
    unfold C
    simp [show (1417176 * k + 1204912) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 602456) = 354294 * k + 301228 := by
    unfold C
    simp [show (708588 * k + 602456) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 301228) = 177147 * k + 150614 := by
    unfold C
    simp [show (354294 * k + 301228) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 222879) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 222879))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_223087 : ∀ k : Nat,
    iterate (262144 * k + 223087) 29 = 177147 * k + 150755 ∧
      177147 * k + 150755 < 262144 * k + 223087 := by
  intro k
  have h1 : C (262144 * k + 223087) = 786432 * k + 669262 := by
    unfold C
    simp [show (262144 * k + 223087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 669262) = 393216 * k + 334631 := by
    unfold C
    simp [show (786432 * k + 669262) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 334631) = 1179648 * k + 1003894 := by
    unfold C
    simp [show (393216 * k + 334631) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1003894) = 589824 * k + 501947 := by
    unfold C
    simp [show (1179648 * k + 1003894) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 501947) = 1769472 * k + 1505842 := by
    unfold C
    simp [show (589824 * k + 501947) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1505842) = 884736 * k + 752921 := by
    unfold C
    simp [show (1769472 * k + 1505842) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 752921) = 2654208 * k + 2258764 := by
    unfold C
    simp [show (884736 * k + 752921) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2258764) = 1327104 * k + 1129382 := by
    unfold C
    simp [show (2654208 * k + 2258764) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1129382) = 663552 * k + 564691 := by
    unfold C
    simp [show (1327104 * k + 1129382) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 564691) = 1990656 * k + 1694074 := by
    unfold C
    simp [show (663552 * k + 564691) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1694074) = 995328 * k + 847037 := by
    unfold C
    simp [show (1990656 * k + 1694074) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 847037) = 2985984 * k + 2541112 := by
    unfold C
    simp [show (995328 * k + 847037) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2541112) = 1492992 * k + 1270556 := by
    unfold C
    simp [show (2985984 * k + 2541112) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1270556) = 746496 * k + 635278 := by
    unfold C
    simp [show (1492992 * k + 1270556) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 635278) = 373248 * k + 317639 := by
    unfold C
    simp [show (746496 * k + 635278) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 317639) = 1119744 * k + 952918 := by
    unfold C
    simp [show (373248 * k + 317639) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 952918) = 559872 * k + 476459 := by
    unfold C
    simp [show (1119744 * k + 952918) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 476459) = 1679616 * k + 1429378 := by
    unfold C
    simp [show (559872 * k + 476459) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1429378) = 839808 * k + 714689 := by
    unfold C
    simp [show (1679616 * k + 1429378) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 714689) = 2519424 * k + 2144068 := by
    unfold C
    simp [show (839808 * k + 714689) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2144068) = 1259712 * k + 1072034 := by
    unfold C
    simp [show (2519424 * k + 2144068) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1072034) = 629856 * k + 536017 := by
    unfold C
    simp [show (1259712 * k + 1072034) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 536017) = 1889568 * k + 1608052 := by
    unfold C
    simp [show (629856 * k + 536017) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1608052) = 944784 * k + 804026 := by
    unfold C
    simp [show (1889568 * k + 1608052) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 804026) = 472392 * k + 402013 := by
    unfold C
    simp [show (944784 * k + 804026) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 402013) = 1417176 * k + 1206040 := by
    unfold C
    simp [show (472392 * k + 402013) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1206040) = 708588 * k + 603020 := by
    unfold C
    simp [show (1417176 * k + 1206040) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 603020) = 354294 * k + 301510 := by
    unfold C
    simp [show (708588 * k + 603020) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 301510) = 177147 * k + 150755 := by
    unfold C
    simp [show (354294 * k + 301510) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 223087) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 223087))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_223487 : ∀ k : Nat,
    iterate (262144 * k + 223487) 29 = 177147 * k + 151025 ∧
      177147 * k + 151025 < 262144 * k + 223487 := by
  intro k
  have h1 : C (262144 * k + 223487) = 786432 * k + 670462 := by
    unfold C
    simp [show (262144 * k + 223487) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 670462) = 393216 * k + 335231 := by
    unfold C
    simp [show (786432 * k + 670462) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 335231) = 1179648 * k + 1005694 := by
    unfold C
    simp [show (393216 * k + 335231) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1005694) = 589824 * k + 502847 := by
    unfold C
    simp [show (1179648 * k + 1005694) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 502847) = 1769472 * k + 1508542 := by
    unfold C
    simp [show (589824 * k + 502847) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1508542) = 884736 * k + 754271 := by
    unfold C
    simp [show (1769472 * k + 1508542) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 754271) = 2654208 * k + 2262814 := by
    unfold C
    simp [show (884736 * k + 754271) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2262814) = 1327104 * k + 1131407 := by
    unfold C
    simp [show (2654208 * k + 2262814) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1131407) = 3981312 * k + 3394222 := by
    unfold C
    simp [show (1327104 * k + 1131407) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3394222) = 1990656 * k + 1697111 := by
    unfold C
    simp [show (3981312 * k + 3394222) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1697111) = 5971968 * k + 5091334 := by
    unfold C
    simp [show (1990656 * k + 1697111) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5091334) = 2985984 * k + 2545667 := by
    unfold C
    simp [show (5971968 * k + 5091334) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2545667) = 8957952 * k + 7637002 := by
    unfold C
    simp [show (2985984 * k + 2545667) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 7637002) = 4478976 * k + 3818501 := by
    unfold C
    simp [show (8957952 * k + 7637002) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 3818501) = 13436928 * k + 11455504 := by
    unfold C
    simp [show (4478976 * k + 3818501) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 11455504) = 6718464 * k + 5727752 := by
    unfold C
    simp [show (13436928 * k + 11455504) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 5727752) = 3359232 * k + 2863876 := by
    unfold C
    simp [show (6718464 * k + 5727752) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2863876) = 1679616 * k + 1431938 := by
    unfold C
    simp [show (3359232 * k + 2863876) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1431938) = 839808 * k + 715969 := by
    unfold C
    simp [show (1679616 * k + 1431938) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 715969) = 2519424 * k + 2147908 := by
    unfold C
    simp [show (839808 * k + 715969) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2147908) = 1259712 * k + 1073954 := by
    unfold C
    simp [show (2519424 * k + 2147908) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1073954) = 629856 * k + 536977 := by
    unfold C
    simp [show (1259712 * k + 1073954) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 536977) = 1889568 * k + 1610932 := by
    unfold C
    simp [show (629856 * k + 536977) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1610932) = 944784 * k + 805466 := by
    unfold C
    simp [show (1889568 * k + 1610932) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 805466) = 472392 * k + 402733 := by
    unfold C
    simp [show (944784 * k + 805466) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 402733) = 1417176 * k + 1208200 := by
    unfold C
    simp [show (472392 * k + 402733) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1208200) = 708588 * k + 604100 := by
    unfold C
    simp [show (1417176 * k + 1208200) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 604100) = 354294 * k + 302050 := by
    unfold C
    simp [show (708588 * k + 604100) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 302050) = 177147 * k + 151025 := by
    unfold C
    simp [show (354294 * k + 302050) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 223487) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 223487))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_223855 : ∀ k : Nat,
    iterate (262144 * k + 223855) 29 = 177147 * k + 151274 ∧
      177147 * k + 151274 < 262144 * k + 223855 := by
  intro k
  have h1 : C (262144 * k + 223855) = 786432 * k + 671566 := by
    unfold C
    simp [show (262144 * k + 223855) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 671566) = 393216 * k + 335783 := by
    unfold C
    simp [show (786432 * k + 671566) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 335783) = 1179648 * k + 1007350 := by
    unfold C
    simp [show (393216 * k + 335783) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1007350) = 589824 * k + 503675 := by
    unfold C
    simp [show (1179648 * k + 1007350) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 503675) = 1769472 * k + 1511026 := by
    unfold C
    simp [show (589824 * k + 503675) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1511026) = 884736 * k + 755513 := by
    unfold C
    simp [show (1769472 * k + 1511026) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 755513) = 2654208 * k + 2266540 := by
    unfold C
    simp [show (884736 * k + 755513) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2266540) = 1327104 * k + 1133270 := by
    unfold C
    simp [show (2654208 * k + 2266540) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1133270) = 663552 * k + 566635 := by
    unfold C
    simp [show (1327104 * k + 1133270) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 566635) = 1990656 * k + 1699906 := by
    unfold C
    simp [show (663552 * k + 566635) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1699906) = 995328 * k + 849953 := by
    unfold C
    simp [show (1990656 * k + 1699906) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 849953) = 2985984 * k + 2549860 := by
    unfold C
    simp [show (995328 * k + 849953) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2549860) = 1492992 * k + 1274930 := by
    unfold C
    simp [show (2985984 * k + 2549860) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1274930) = 746496 * k + 637465 := by
    unfold C
    simp [show (1492992 * k + 1274930) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 637465) = 2239488 * k + 1912396 := by
    unfold C
    simp [show (746496 * k + 637465) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1912396) = 1119744 * k + 956198 := by
    unfold C
    simp [show (2239488 * k + 1912396) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 956198) = 559872 * k + 478099 := by
    unfold C
    simp [show (1119744 * k + 956198) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 478099) = 1679616 * k + 1434298 := by
    unfold C
    simp [show (559872 * k + 478099) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1434298) = 839808 * k + 717149 := by
    unfold C
    simp [show (1679616 * k + 1434298) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 717149) = 2519424 * k + 2151448 := by
    unfold C
    simp [show (839808 * k + 717149) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2151448) = 1259712 * k + 1075724 := by
    unfold C
    simp [show (2519424 * k + 2151448) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1075724) = 629856 * k + 537862 := by
    unfold C
    simp [show (1259712 * k + 1075724) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 537862) = 314928 * k + 268931 := by
    unfold C
    simp [show (629856 * k + 537862) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 268931) = 944784 * k + 806794 := by
    unfold C
    simp [show (314928 * k + 268931) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 806794) = 472392 * k + 403397 := by
    unfold C
    simp [show (944784 * k + 806794) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 403397) = 1417176 * k + 1210192 := by
    unfold C
    simp [show (472392 * k + 403397) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1210192) = 708588 * k + 605096 := by
    unfold C
    simp [show (1417176 * k + 1210192) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 605096) = 354294 * k + 302548 := by
    unfold C
    simp [show (708588 * k + 605096) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 302548) = 177147 * k + 151274 := by
    unfold C
    simp [show (354294 * k + 302548) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 223855) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 223855))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_224027 : ∀ k : Nat,
    iterate (262144 * k + 224027) 29 = 177147 * k + 151390 ∧
      177147 * k + 151390 < 262144 * k + 224027 := by
  intro k
  have h1 : C (262144 * k + 224027) = 786432 * k + 672082 := by
    unfold C
    simp [show (262144 * k + 224027) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 672082) = 393216 * k + 336041 := by
    unfold C
    simp [show (786432 * k + 672082) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 336041) = 1179648 * k + 1008124 := by
    unfold C
    simp [show (393216 * k + 336041) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1008124) = 589824 * k + 504062 := by
    unfold C
    simp [show (1179648 * k + 1008124) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 504062) = 294912 * k + 252031 := by
    unfold C
    simp [show (589824 * k + 504062) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 252031) = 884736 * k + 756094 := by
    unfold C
    simp [show (294912 * k + 252031) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 756094) = 442368 * k + 378047 := by
    unfold C
    simp [show (884736 * k + 756094) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 378047) = 1327104 * k + 1134142 := by
    unfold C
    simp [show (442368 * k + 378047) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1134142) = 663552 * k + 567071 := by
    unfold C
    simp [show (1327104 * k + 1134142) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 567071) = 1990656 * k + 1701214 := by
    unfold C
    simp [show (663552 * k + 567071) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1701214) = 995328 * k + 850607 := by
    unfold C
    simp [show (1990656 * k + 1701214) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 850607) = 2985984 * k + 2551822 := by
    unfold C
    simp [show (995328 * k + 850607) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2551822) = 1492992 * k + 1275911 := by
    unfold C
    simp [show (2985984 * k + 2551822) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1275911) = 4478976 * k + 3827734 := by
    unfold C
    simp [show (1492992 * k + 1275911) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3827734) = 2239488 * k + 1913867 := by
    unfold C
    simp [show (4478976 * k + 3827734) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1913867) = 6718464 * k + 5741602 := by
    unfold C
    simp [show (2239488 * k + 1913867) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 5741602) = 3359232 * k + 2870801 := by
    unfold C
    simp [show (6718464 * k + 5741602) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2870801) = 10077696 * k + 8612404 := by
    unfold C
    simp [show (3359232 * k + 2870801) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 8612404) = 5038848 * k + 4306202 := by
    unfold C
    simp [show (10077696 * k + 8612404) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 4306202) = 2519424 * k + 2153101 := by
    unfold C
    simp [show (5038848 * k + 4306202) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2153101) = 7558272 * k + 6459304 := by
    unfold C
    simp [show (2519424 * k + 2153101) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 6459304) = 3779136 * k + 3229652 := by
    unfold C
    simp [show (7558272 * k + 6459304) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3229652) = 1889568 * k + 1614826 := by
    unfold C
    simp [show (3779136 * k + 3229652) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1614826) = 944784 * k + 807413 := by
    unfold C
    simp [show (1889568 * k + 1614826) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 807413) = 2834352 * k + 2422240 := by
    unfold C
    simp [show (944784 * k + 807413) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2422240) = 1417176 * k + 1211120 := by
    unfold C
    simp [show (2834352 * k + 2422240) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1211120) = 708588 * k + 605560 := by
    unfold C
    simp [show (1417176 * k + 1211120) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 605560) = 354294 * k + 302780 := by
    unfold C
    simp [show (708588 * k + 605560) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 302780) = 177147 * k + 151390 := by
    unfold C
    simp [show (354294 * k + 302780) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 224027) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 224027))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_224539 : ∀ k : Nat,
    iterate (262144 * k + 224539) 29 = 177147 * k + 151736 ∧
      177147 * k + 151736 < 262144 * k + 224539 := by
  intro k
  have h1 : C (262144 * k + 224539) = 786432 * k + 673618 := by
    unfold C
    simp [show (262144 * k + 224539) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 673618) = 393216 * k + 336809 := by
    unfold C
    simp [show (786432 * k + 673618) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 336809) = 1179648 * k + 1010428 := by
    unfold C
    simp [show (393216 * k + 336809) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1010428) = 589824 * k + 505214 := by
    unfold C
    simp [show (1179648 * k + 1010428) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 505214) = 294912 * k + 252607 := by
    unfold C
    simp [show (589824 * k + 505214) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 252607) = 884736 * k + 757822 := by
    unfold C
    simp [show (294912 * k + 252607) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 757822) = 442368 * k + 378911 := by
    unfold C
    simp [show (884736 * k + 757822) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 378911) = 1327104 * k + 1136734 := by
    unfold C
    simp [show (442368 * k + 378911) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1136734) = 663552 * k + 568367 := by
    unfold C
    simp [show (1327104 * k + 1136734) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 568367) = 1990656 * k + 1705102 := by
    unfold C
    simp [show (663552 * k + 568367) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1705102) = 995328 * k + 852551 := by
    unfold C
    simp [show (1990656 * k + 1705102) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 852551) = 2985984 * k + 2557654 := by
    unfold C
    simp [show (995328 * k + 852551) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2557654) = 1492992 * k + 1278827 := by
    unfold C
    simp [show (2985984 * k + 2557654) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1278827) = 4478976 * k + 3836482 := by
    unfold C
    simp [show (1492992 * k + 1278827) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3836482) = 2239488 * k + 1918241 := by
    unfold C
    simp [show (4478976 * k + 3836482) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1918241) = 6718464 * k + 5754724 := by
    unfold C
    simp [show (2239488 * k + 1918241) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 5754724) = 3359232 * k + 2877362 := by
    unfold C
    simp [show (6718464 * k + 5754724) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2877362) = 1679616 * k + 1438681 := by
    unfold C
    simp [show (3359232 * k + 2877362) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1438681) = 5038848 * k + 4316044 := by
    unfold C
    simp [show (1679616 * k + 1438681) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4316044) = 2519424 * k + 2158022 := by
    unfold C
    simp [show (5038848 * k + 4316044) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2158022) = 1259712 * k + 1079011 := by
    unfold C
    simp [show (2519424 * k + 2158022) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1079011) = 3779136 * k + 3237034 := by
    unfold C
    simp [show (1259712 * k + 1079011) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3237034) = 1889568 * k + 1618517 := by
    unfold C
    simp [show (3779136 * k + 3237034) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1618517) = 5668704 * k + 4855552 := by
    unfold C
    simp [show (1889568 * k + 1618517) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 4855552) = 2834352 * k + 2427776 := by
    unfold C
    simp [show (5668704 * k + 4855552) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2427776) = 1417176 * k + 1213888 := by
    unfold C
    simp [show (2834352 * k + 2427776) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1213888) = 708588 * k + 606944 := by
    unfold C
    simp [show (1417176 * k + 1213888) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 606944) = 354294 * k + 303472 := by
    unfold C
    simp [show (708588 * k + 606944) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 303472) = 177147 * k + 151736 := by
    unfold C
    simp [show (354294 * k + 303472) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 224539) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 224539))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_224719 : ∀ k : Nat,
    iterate (262144 * k + 224719) 29 = 177147 * k + 151858 ∧
      177147 * k + 151858 < 262144 * k + 224719 := by
  intro k
  have h1 : C (262144 * k + 224719) = 786432 * k + 674158 := by
    unfold C
    simp [show (262144 * k + 224719) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 674158) = 393216 * k + 337079 := by
    unfold C
    simp [show (786432 * k + 674158) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 337079) = 1179648 * k + 1011238 := by
    unfold C
    simp [show (393216 * k + 337079) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1011238) = 589824 * k + 505619 := by
    unfold C
    simp [show (1179648 * k + 1011238) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 505619) = 1769472 * k + 1516858 := by
    unfold C
    simp [show (589824 * k + 505619) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1516858) = 884736 * k + 758429 := by
    unfold C
    simp [show (1769472 * k + 1516858) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 758429) = 2654208 * k + 2275288 := by
    unfold C
    simp [show (884736 * k + 758429) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2275288) = 1327104 * k + 1137644 := by
    unfold C
    simp [show (2654208 * k + 2275288) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1137644) = 663552 * k + 568822 := by
    unfold C
    simp [show (1327104 * k + 1137644) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 568822) = 331776 * k + 284411 := by
    unfold C
    simp [show (663552 * k + 568822) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 284411) = 995328 * k + 853234 := by
    unfold C
    simp [show (331776 * k + 284411) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 853234) = 497664 * k + 426617 := by
    unfold C
    simp [show (995328 * k + 853234) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 426617) = 1492992 * k + 1279852 := by
    unfold C
    simp [show (497664 * k + 426617) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1279852) = 746496 * k + 639926 := by
    unfold C
    simp [show (1492992 * k + 1279852) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 639926) = 373248 * k + 319963 := by
    unfold C
    simp [show (746496 * k + 639926) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 319963) = 1119744 * k + 959890 := by
    unfold C
    simp [show (373248 * k + 319963) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 959890) = 559872 * k + 479945 := by
    unfold C
    simp [show (1119744 * k + 959890) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 479945) = 1679616 * k + 1439836 := by
    unfold C
    simp [show (559872 * k + 479945) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1439836) = 839808 * k + 719918 := by
    unfold C
    simp [show (1679616 * k + 1439836) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 719918) = 419904 * k + 359959 := by
    unfold C
    simp [show (839808 * k + 719918) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 359959) = 1259712 * k + 1079878 := by
    unfold C
    simp [show (419904 * k + 359959) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1079878) = 629856 * k + 539939 := by
    unfold C
    simp [show (1259712 * k + 1079878) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 539939) = 1889568 * k + 1619818 := by
    unfold C
    simp [show (629856 * k + 539939) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1619818) = 944784 * k + 809909 := by
    unfold C
    simp [show (1889568 * k + 1619818) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 809909) = 2834352 * k + 2429728 := by
    unfold C
    simp [show (944784 * k + 809909) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2429728) = 1417176 * k + 1214864 := by
    unfold C
    simp [show (2834352 * k + 2429728) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1214864) = 708588 * k + 607432 := by
    unfold C
    simp [show (1417176 * k + 1214864) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 607432) = 354294 * k + 303716 := by
    unfold C
    simp [show (708588 * k + 607432) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 303716) = 177147 * k + 151858 := by
    unfold C
    simp [show (354294 * k + 303716) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 224719) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 224719))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_224879 : ∀ k : Nat,
    iterate (262144 * k + 224879) 29 = 177147 * k + 151966 ∧
      177147 * k + 151966 < 262144 * k + 224879 := by
  intro k
  have h1 : C (262144 * k + 224879) = 786432 * k + 674638 := by
    unfold C
    simp [show (262144 * k + 224879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 674638) = 393216 * k + 337319 := by
    unfold C
    simp [show (786432 * k + 674638) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 337319) = 1179648 * k + 1011958 := by
    unfold C
    simp [show (393216 * k + 337319) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1011958) = 589824 * k + 505979 := by
    unfold C
    simp [show (1179648 * k + 1011958) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 505979) = 1769472 * k + 1517938 := by
    unfold C
    simp [show (589824 * k + 505979) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1517938) = 884736 * k + 758969 := by
    unfold C
    simp [show (1769472 * k + 1517938) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 758969) = 2654208 * k + 2276908 := by
    unfold C
    simp [show (884736 * k + 758969) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2276908) = 1327104 * k + 1138454 := by
    unfold C
    simp [show (2654208 * k + 2276908) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1138454) = 663552 * k + 569227 := by
    unfold C
    simp [show (1327104 * k + 1138454) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 569227) = 1990656 * k + 1707682 := by
    unfold C
    simp [show (663552 * k + 569227) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1707682) = 995328 * k + 853841 := by
    unfold C
    simp [show (1990656 * k + 1707682) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 853841) = 2985984 * k + 2561524 := by
    unfold C
    simp [show (995328 * k + 853841) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2561524) = 1492992 * k + 1280762 := by
    unfold C
    simp [show (2985984 * k + 2561524) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1280762) = 746496 * k + 640381 := by
    unfold C
    simp [show (1492992 * k + 1280762) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 640381) = 2239488 * k + 1921144 := by
    unfold C
    simp [show (746496 * k + 640381) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1921144) = 1119744 * k + 960572 := by
    unfold C
    simp [show (2239488 * k + 1921144) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 960572) = 559872 * k + 480286 := by
    unfold C
    simp [show (1119744 * k + 960572) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 480286) = 279936 * k + 240143 := by
    unfold C
    simp [show (559872 * k + 480286) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 240143) = 839808 * k + 720430 := by
    unfold C
    simp [show (279936 * k + 240143) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 720430) = 419904 * k + 360215 := by
    unfold C
    simp [show (839808 * k + 720430) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 360215) = 1259712 * k + 1080646 := by
    unfold C
    simp [show (419904 * k + 360215) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1080646) = 629856 * k + 540323 := by
    unfold C
    simp [show (1259712 * k + 1080646) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 540323) = 1889568 * k + 1620970 := by
    unfold C
    simp [show (629856 * k + 540323) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1620970) = 944784 * k + 810485 := by
    unfold C
    simp [show (1889568 * k + 1620970) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 810485) = 2834352 * k + 2431456 := by
    unfold C
    simp [show (944784 * k + 810485) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2431456) = 1417176 * k + 1215728 := by
    unfold C
    simp [show (2834352 * k + 2431456) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1215728) = 708588 * k + 607864 := by
    unfold C
    simp [show (1417176 * k + 1215728) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 607864) = 354294 * k + 303932 := by
    unfold C
    simp [show (708588 * k + 607864) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 303932) = 177147 * k + 151966 := by
    unfold C
    simp [show (354294 * k + 303932) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 224879) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 224879))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_224999 : ∀ k : Nat,
    iterate (262144 * k + 224999) 29 = 177147 * k + 152047 ∧
      177147 * k + 152047 < 262144 * k + 224999 := by
  intro k
  have h1 : C (262144 * k + 224999) = 786432 * k + 674998 := by
    unfold C
    simp [show (262144 * k + 224999) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 674998) = 393216 * k + 337499 := by
    unfold C
    simp [show (786432 * k + 674998) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 337499) = 1179648 * k + 1012498 := by
    unfold C
    simp [show (393216 * k + 337499) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1012498) = 589824 * k + 506249 := by
    unfold C
    simp [show (1179648 * k + 1012498) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 506249) = 1769472 * k + 1518748 := by
    unfold C
    simp [show (589824 * k + 506249) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1518748) = 884736 * k + 759374 := by
    unfold C
    simp [show (1769472 * k + 1518748) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 759374) = 442368 * k + 379687 := by
    unfold C
    simp [show (884736 * k + 759374) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 379687) = 1327104 * k + 1139062 := by
    unfold C
    simp [show (442368 * k + 379687) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1139062) = 663552 * k + 569531 := by
    unfold C
    simp [show (1327104 * k + 1139062) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 569531) = 1990656 * k + 1708594 := by
    unfold C
    simp [show (663552 * k + 569531) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1708594) = 995328 * k + 854297 := by
    unfold C
    simp [show (1990656 * k + 1708594) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 854297) = 2985984 * k + 2562892 := by
    unfold C
    simp [show (995328 * k + 854297) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2562892) = 1492992 * k + 1281446 := by
    unfold C
    simp [show (2985984 * k + 2562892) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1281446) = 746496 * k + 640723 := by
    unfold C
    simp [show (1492992 * k + 1281446) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 640723) = 2239488 * k + 1922170 := by
    unfold C
    simp [show (746496 * k + 640723) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1922170) = 1119744 * k + 961085 := by
    unfold C
    simp [show (2239488 * k + 1922170) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 961085) = 3359232 * k + 2883256 := by
    unfold C
    simp [show (1119744 * k + 961085) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2883256) = 1679616 * k + 1441628 := by
    unfold C
    simp [show (3359232 * k + 2883256) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1441628) = 839808 * k + 720814 := by
    unfold C
    simp [show (1679616 * k + 1441628) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 720814) = 419904 * k + 360407 := by
    unfold C
    simp [show (839808 * k + 720814) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 360407) = 1259712 * k + 1081222 := by
    unfold C
    simp [show (419904 * k + 360407) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1081222) = 629856 * k + 540611 := by
    unfold C
    simp [show (1259712 * k + 1081222) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 540611) = 1889568 * k + 1621834 := by
    unfold C
    simp [show (629856 * k + 540611) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1621834) = 944784 * k + 810917 := by
    unfold C
    simp [show (1889568 * k + 1621834) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 810917) = 2834352 * k + 2432752 := by
    unfold C
    simp [show (944784 * k + 810917) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2432752) = 1417176 * k + 1216376 := by
    unfold C
    simp [show (2834352 * k + 2432752) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1216376) = 708588 * k + 608188 := by
    unfold C
    simp [show (1417176 * k + 1216376) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 608188) = 354294 * k + 304094 := by
    unfold C
    simp [show (708588 * k + 608188) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 304094) = 177147 * k + 152047 := by
    unfold C
    simp [show (354294 * k + 304094) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 224999) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 224999))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_225191 : ∀ k : Nat,
    iterate (262144 * k + 225191) 29 = 177147 * k + 152177 ∧
      177147 * k + 152177 < 262144 * k + 225191 := by
  intro k
  have h1 : C (262144 * k + 225191) = 786432 * k + 675574 := by
    unfold C
    simp [show (262144 * k + 225191) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 675574) = 393216 * k + 337787 := by
    unfold C
    simp [show (786432 * k + 675574) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 337787) = 1179648 * k + 1013362 := by
    unfold C
    simp [show (393216 * k + 337787) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1013362) = 589824 * k + 506681 := by
    unfold C
    simp [show (1179648 * k + 1013362) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 506681) = 1769472 * k + 1520044 := by
    unfold C
    simp [show (589824 * k + 506681) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1520044) = 884736 * k + 760022 := by
    unfold C
    simp [show (1769472 * k + 1520044) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 760022) = 442368 * k + 380011 := by
    unfold C
    simp [show (884736 * k + 760022) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 380011) = 1327104 * k + 1140034 := by
    unfold C
    simp [show (442368 * k + 380011) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1140034) = 663552 * k + 570017 := by
    unfold C
    simp [show (1327104 * k + 1140034) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 570017) = 1990656 * k + 1710052 := by
    unfold C
    simp [show (663552 * k + 570017) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1710052) = 995328 * k + 855026 := by
    unfold C
    simp [show (1990656 * k + 1710052) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 855026) = 497664 * k + 427513 := by
    unfold C
    simp [show (995328 * k + 855026) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 427513) = 1492992 * k + 1282540 := by
    unfold C
    simp [show (497664 * k + 427513) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1282540) = 746496 * k + 641270 := by
    unfold C
    simp [show (1492992 * k + 1282540) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 641270) = 373248 * k + 320635 := by
    unfold C
    simp [show (746496 * k + 641270) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 320635) = 1119744 * k + 961906 := by
    unfold C
    simp [show (373248 * k + 320635) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 961906) = 559872 * k + 480953 := by
    unfold C
    simp [show (1119744 * k + 961906) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 480953) = 1679616 * k + 1442860 := by
    unfold C
    simp [show (559872 * k + 480953) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1442860) = 839808 * k + 721430 := by
    unfold C
    simp [show (1679616 * k + 1442860) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 721430) = 419904 * k + 360715 := by
    unfold C
    simp [show (839808 * k + 721430) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 360715) = 1259712 * k + 1082146 := by
    unfold C
    simp [show (419904 * k + 360715) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1082146) = 629856 * k + 541073 := by
    unfold C
    simp [show (1259712 * k + 1082146) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 541073) = 1889568 * k + 1623220 := by
    unfold C
    simp [show (629856 * k + 541073) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1623220) = 944784 * k + 811610 := by
    unfold C
    simp [show (1889568 * k + 1623220) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 811610) = 472392 * k + 405805 := by
    unfold C
    simp [show (944784 * k + 811610) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 405805) = 1417176 * k + 1217416 := by
    unfold C
    simp [show (472392 * k + 405805) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1217416) = 708588 * k + 608708 := by
    unfold C
    simp [show (1417176 * k + 1217416) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 608708) = 354294 * k + 304354 := by
    unfold C
    simp [show (708588 * k + 608708) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 304354) = 177147 * k + 152177 := by
    unfold C
    simp [show (354294 * k + 304354) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 225191) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 225191))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_225351 : ∀ k : Nat,
    iterate (262144 * k + 225351) 29 = 177147 * k + 152285 ∧
      177147 * k + 152285 < 262144 * k + 225351 := by
  intro k
  have h1 : C (262144 * k + 225351) = 786432 * k + 676054 := by
    unfold C
    simp [show (262144 * k + 225351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 676054) = 393216 * k + 338027 := by
    unfold C
    simp [show (786432 * k + 676054) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 338027) = 1179648 * k + 1014082 := by
    unfold C
    simp [show (393216 * k + 338027) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1014082) = 589824 * k + 507041 := by
    unfold C
    simp [show (1179648 * k + 1014082) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 507041) = 1769472 * k + 1521124 := by
    unfold C
    simp [show (589824 * k + 507041) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1521124) = 884736 * k + 760562 := by
    unfold C
    simp [show (1769472 * k + 1521124) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 760562) = 442368 * k + 380281 := by
    unfold C
    simp [show (884736 * k + 760562) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 380281) = 1327104 * k + 1140844 := by
    unfold C
    simp [show (442368 * k + 380281) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1140844) = 663552 * k + 570422 := by
    unfold C
    simp [show (1327104 * k + 1140844) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 570422) = 331776 * k + 285211 := by
    unfold C
    simp [show (663552 * k + 570422) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 285211) = 995328 * k + 855634 := by
    unfold C
    simp [show (331776 * k + 285211) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 855634) = 497664 * k + 427817 := by
    unfold C
    simp [show (995328 * k + 855634) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 427817) = 1492992 * k + 1283452 := by
    unfold C
    simp [show (497664 * k + 427817) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1283452) = 746496 * k + 641726 := by
    unfold C
    simp [show (1492992 * k + 1283452) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 641726) = 373248 * k + 320863 := by
    unfold C
    simp [show (746496 * k + 641726) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 320863) = 1119744 * k + 962590 := by
    unfold C
    simp [show (373248 * k + 320863) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 962590) = 559872 * k + 481295 := by
    unfold C
    simp [show (1119744 * k + 962590) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 481295) = 1679616 * k + 1443886 := by
    unfold C
    simp [show (559872 * k + 481295) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1443886) = 839808 * k + 721943 := by
    unfold C
    simp [show (1679616 * k + 1443886) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 721943) = 2519424 * k + 2165830 := by
    unfold C
    simp [show (839808 * k + 721943) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2165830) = 1259712 * k + 1082915 := by
    unfold C
    simp [show (2519424 * k + 2165830) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1082915) = 3779136 * k + 3248746 := by
    unfold C
    simp [show (1259712 * k + 1082915) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3248746) = 1889568 * k + 1624373 := by
    unfold C
    simp [show (3779136 * k + 3248746) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1624373) = 5668704 * k + 4873120 := by
    unfold C
    simp [show (1889568 * k + 1624373) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 4873120) = 2834352 * k + 2436560 := by
    unfold C
    simp [show (5668704 * k + 4873120) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2436560) = 1417176 * k + 1218280 := by
    unfold C
    simp [show (2834352 * k + 2436560) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1218280) = 708588 * k + 609140 := by
    unfold C
    simp [show (1417176 * k + 1218280) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 609140) = 354294 * k + 304570 := by
    unfold C
    simp [show (708588 * k + 609140) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 304570) = 177147 * k + 152285 := by
    unfold C
    simp [show (354294 * k + 304570) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 225351) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 225351))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_225471 : ∀ k : Nat,
    iterate (262144 * k + 225471) 29 = 177147 * k + 152366 ∧
      177147 * k + 152366 < 262144 * k + 225471 := by
  intro k
  have h1 : C (262144 * k + 225471) = 786432 * k + 676414 := by
    unfold C
    simp [show (262144 * k + 225471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 676414) = 393216 * k + 338207 := by
    unfold C
    simp [show (786432 * k + 676414) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 338207) = 1179648 * k + 1014622 := by
    unfold C
    simp [show (393216 * k + 338207) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1014622) = 589824 * k + 507311 := by
    unfold C
    simp [show (1179648 * k + 1014622) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 507311) = 1769472 * k + 1521934 := by
    unfold C
    simp [show (589824 * k + 507311) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1521934) = 884736 * k + 760967 := by
    unfold C
    simp [show (1769472 * k + 1521934) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 760967) = 2654208 * k + 2282902 := by
    unfold C
    simp [show (884736 * k + 760967) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2282902) = 1327104 * k + 1141451 := by
    unfold C
    simp [show (2654208 * k + 2282902) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1141451) = 3981312 * k + 3424354 := by
    unfold C
    simp [show (1327104 * k + 1141451) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3424354) = 1990656 * k + 1712177 := by
    unfold C
    simp [show (3981312 * k + 3424354) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1712177) = 5971968 * k + 5136532 := by
    unfold C
    simp [show (1990656 * k + 1712177) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5136532) = 2985984 * k + 2568266 := by
    unfold C
    simp [show (5971968 * k + 5136532) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2568266) = 1492992 * k + 1284133 := by
    unfold C
    simp [show (2985984 * k + 2568266) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1284133) = 4478976 * k + 3852400 := by
    unfold C
    simp [show (1492992 * k + 1284133) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3852400) = 2239488 * k + 1926200 := by
    unfold C
    simp [show (4478976 * k + 3852400) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1926200) = 1119744 * k + 963100 := by
    unfold C
    simp [show (2239488 * k + 1926200) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 963100) = 559872 * k + 481550 := by
    unfold C
    simp [show (1119744 * k + 963100) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 481550) = 279936 * k + 240775 := by
    unfold C
    simp [show (559872 * k + 481550) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 240775) = 839808 * k + 722326 := by
    unfold C
    simp [show (279936 * k + 240775) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 722326) = 419904 * k + 361163 := by
    unfold C
    simp [show (839808 * k + 722326) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 361163) = 1259712 * k + 1083490 := by
    unfold C
    simp [show (419904 * k + 361163) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1083490) = 629856 * k + 541745 := by
    unfold C
    simp [show (1259712 * k + 1083490) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 541745) = 1889568 * k + 1625236 := by
    unfold C
    simp [show (629856 * k + 541745) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1625236) = 944784 * k + 812618 := by
    unfold C
    simp [show (1889568 * k + 1625236) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 812618) = 472392 * k + 406309 := by
    unfold C
    simp [show (944784 * k + 812618) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 406309) = 1417176 * k + 1218928 := by
    unfold C
    simp [show (472392 * k + 406309) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1218928) = 708588 * k + 609464 := by
    unfold C
    simp [show (1417176 * k + 1218928) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 609464) = 354294 * k + 304732 := by
    unfold C
    simp [show (708588 * k + 609464) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 304732) = 177147 * k + 152366 := by
    unfold C
    simp [show (354294 * k + 304732) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 225471) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 225471))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_225767 : ∀ k : Nat,
    iterate (262144 * k + 225767) 29 = 177147 * k + 152566 ∧
      177147 * k + 152566 < 262144 * k + 225767 := by
  intro k
  have h1 : C (262144 * k + 225767) = 786432 * k + 677302 := by
    unfold C
    simp [show (262144 * k + 225767) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 677302) = 393216 * k + 338651 := by
    unfold C
    simp [show (786432 * k + 677302) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 338651) = 1179648 * k + 1015954 := by
    unfold C
    simp [show (393216 * k + 338651) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1015954) = 589824 * k + 507977 := by
    unfold C
    simp [show (1179648 * k + 1015954) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 507977) = 1769472 * k + 1523932 := by
    unfold C
    simp [show (589824 * k + 507977) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1523932) = 884736 * k + 761966 := by
    unfold C
    simp [show (1769472 * k + 1523932) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 761966) = 442368 * k + 380983 := by
    unfold C
    simp [show (884736 * k + 761966) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 380983) = 1327104 * k + 1142950 := by
    unfold C
    simp [show (442368 * k + 380983) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1142950) = 663552 * k + 571475 := by
    unfold C
    simp [show (1327104 * k + 1142950) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 571475) = 1990656 * k + 1714426 := by
    unfold C
    simp [show (663552 * k + 571475) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1714426) = 995328 * k + 857213 := by
    unfold C
    simp [show (1990656 * k + 1714426) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 857213) = 2985984 * k + 2571640 := by
    unfold C
    simp [show (995328 * k + 857213) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2571640) = 1492992 * k + 1285820 := by
    unfold C
    simp [show (2985984 * k + 2571640) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1285820) = 746496 * k + 642910 := by
    unfold C
    simp [show (1492992 * k + 1285820) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 642910) = 373248 * k + 321455 := by
    unfold C
    simp [show (746496 * k + 642910) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 321455) = 1119744 * k + 964366 := by
    unfold C
    simp [show (373248 * k + 321455) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 964366) = 559872 * k + 482183 := by
    unfold C
    simp [show (1119744 * k + 964366) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 482183) = 1679616 * k + 1446550 := by
    unfold C
    simp [show (559872 * k + 482183) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1446550) = 839808 * k + 723275 := by
    unfold C
    simp [show (1679616 * k + 1446550) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 723275) = 2519424 * k + 2169826 := by
    unfold C
    simp [show (839808 * k + 723275) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2169826) = 1259712 * k + 1084913 := by
    unfold C
    simp [show (2519424 * k + 2169826) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1084913) = 3779136 * k + 3254740 := by
    unfold C
    simp [show (1259712 * k + 1084913) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3254740) = 1889568 * k + 1627370 := by
    unfold C
    simp [show (3779136 * k + 3254740) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1627370) = 944784 * k + 813685 := by
    unfold C
    simp [show (1889568 * k + 1627370) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 813685) = 2834352 * k + 2441056 := by
    unfold C
    simp [show (944784 * k + 813685) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2441056) = 1417176 * k + 1220528 := by
    unfold C
    simp [show (2834352 * k + 2441056) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1220528) = 708588 * k + 610264 := by
    unfold C
    simp [show (1417176 * k + 1220528) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 610264) = 354294 * k + 305132 := by
    unfold C
    simp [show (708588 * k + 610264) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 305132) = 177147 * k + 152566 := by
    unfold C
    simp [show (354294 * k + 305132) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 225767) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 225767))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_225951 : ∀ k : Nat,
    iterate (262144 * k + 225951) 29 = 177147 * k + 152690 ∧
      177147 * k + 152690 < 262144 * k + 225951 := by
  intro k
  have h1 : C (262144 * k + 225951) = 786432 * k + 677854 := by
    unfold C
    simp [show (262144 * k + 225951) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 677854) = 393216 * k + 338927 := by
    unfold C
    simp [show (786432 * k + 677854) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 338927) = 1179648 * k + 1016782 := by
    unfold C
    simp [show (393216 * k + 338927) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1016782) = 589824 * k + 508391 := by
    unfold C
    simp [show (1179648 * k + 1016782) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 508391) = 1769472 * k + 1525174 := by
    unfold C
    simp [show (589824 * k + 508391) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1525174) = 884736 * k + 762587 := by
    unfold C
    simp [show (1769472 * k + 1525174) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 762587) = 2654208 * k + 2287762 := by
    unfold C
    simp [show (884736 * k + 762587) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2287762) = 1327104 * k + 1143881 := by
    unfold C
    simp [show (2654208 * k + 2287762) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1143881) = 3981312 * k + 3431644 := by
    unfold C
    simp [show (1327104 * k + 1143881) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3431644) = 1990656 * k + 1715822 := by
    unfold C
    simp [show (3981312 * k + 3431644) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1715822) = 995328 * k + 857911 := by
    unfold C
    simp [show (1990656 * k + 1715822) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 857911) = 2985984 * k + 2573734 := by
    unfold C
    simp [show (995328 * k + 857911) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2573734) = 1492992 * k + 1286867 := by
    unfold C
    simp [show (2985984 * k + 2573734) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1286867) = 4478976 * k + 3860602 := by
    unfold C
    simp [show (1492992 * k + 1286867) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3860602) = 2239488 * k + 1930301 := by
    unfold C
    simp [show (4478976 * k + 3860602) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1930301) = 6718464 * k + 5790904 := by
    unfold C
    simp [show (2239488 * k + 1930301) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 5790904) = 3359232 * k + 2895452 := by
    unfold C
    simp [show (6718464 * k + 5790904) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2895452) = 1679616 * k + 1447726 := by
    unfold C
    simp [show (3359232 * k + 2895452) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1447726) = 839808 * k + 723863 := by
    unfold C
    simp [show (1679616 * k + 1447726) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 723863) = 2519424 * k + 2171590 := by
    unfold C
    simp [show (839808 * k + 723863) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2171590) = 1259712 * k + 1085795 := by
    unfold C
    simp [show (2519424 * k + 2171590) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1085795) = 3779136 * k + 3257386 := by
    unfold C
    simp [show (1259712 * k + 1085795) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3257386) = 1889568 * k + 1628693 := by
    unfold C
    simp [show (3779136 * k + 3257386) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1628693) = 5668704 * k + 4886080 := by
    unfold C
    simp [show (1889568 * k + 1628693) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 4886080) = 2834352 * k + 2443040 := by
    unfold C
    simp [show (5668704 * k + 4886080) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2443040) = 1417176 * k + 1221520 := by
    unfold C
    simp [show (2834352 * k + 2443040) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1221520) = 708588 * k + 610760 := by
    unfold C
    simp [show (1417176 * k + 1221520) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 610760) = 354294 * k + 305380 := by
    unfold C
    simp [show (708588 * k + 610760) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 305380) = 177147 * k + 152690 := by
    unfold C
    simp [show (354294 * k + 305380) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 225951) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 225951))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_225959 : ∀ k : Nat,
    iterate (262144 * k + 225959) 29 = 177147 * k + 152696 ∧
      177147 * k + 152696 < 262144 * k + 225959 := by
  intro k
  have h1 : C (262144 * k + 225959) = 786432 * k + 677878 := by
    unfold C
    simp [show (262144 * k + 225959) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 677878) = 393216 * k + 338939 := by
    unfold C
    simp [show (786432 * k + 677878) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 338939) = 1179648 * k + 1016818 := by
    unfold C
    simp [show (393216 * k + 338939) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1016818) = 589824 * k + 508409 := by
    unfold C
    simp [show (1179648 * k + 1016818) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 508409) = 1769472 * k + 1525228 := by
    unfold C
    simp [show (589824 * k + 508409) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1525228) = 884736 * k + 762614 := by
    unfold C
    simp [show (1769472 * k + 1525228) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 762614) = 442368 * k + 381307 := by
    unfold C
    simp [show (884736 * k + 762614) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 381307) = 1327104 * k + 1143922 := by
    unfold C
    simp [show (442368 * k + 381307) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1143922) = 663552 * k + 571961 := by
    unfold C
    simp [show (1327104 * k + 1143922) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 571961) = 1990656 * k + 1715884 := by
    unfold C
    simp [show (663552 * k + 571961) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1715884) = 995328 * k + 857942 := by
    unfold C
    simp [show (1990656 * k + 1715884) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 857942) = 497664 * k + 428971 := by
    unfold C
    simp [show (995328 * k + 857942) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 428971) = 1492992 * k + 1286914 := by
    unfold C
    simp [show (497664 * k + 428971) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1286914) = 746496 * k + 643457 := by
    unfold C
    simp [show (1492992 * k + 1286914) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 643457) = 2239488 * k + 1930372 := by
    unfold C
    simp [show (746496 * k + 643457) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1930372) = 1119744 * k + 965186 := by
    unfold C
    simp [show (2239488 * k + 1930372) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 965186) = 559872 * k + 482593 := by
    unfold C
    simp [show (1119744 * k + 965186) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 482593) = 1679616 * k + 1447780 := by
    unfold C
    simp [show (559872 * k + 482593) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1447780) = 839808 * k + 723890 := by
    unfold C
    simp [show (1679616 * k + 1447780) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 723890) = 419904 * k + 361945 := by
    unfold C
    simp [show (839808 * k + 723890) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 361945) = 1259712 * k + 1085836 := by
    unfold C
    simp [show (419904 * k + 361945) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1085836) = 629856 * k + 542918 := by
    unfold C
    simp [show (1259712 * k + 1085836) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 542918) = 314928 * k + 271459 := by
    unfold C
    simp [show (629856 * k + 542918) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 271459) = 944784 * k + 814378 := by
    unfold C
    simp [show (314928 * k + 271459) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 814378) = 472392 * k + 407189 := by
    unfold C
    simp [show (944784 * k + 814378) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 407189) = 1417176 * k + 1221568 := by
    unfold C
    simp [show (472392 * k + 407189) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1221568) = 708588 * k + 610784 := by
    unfold C
    simp [show (1417176 * k + 1221568) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 610784) = 354294 * k + 305392 := by
    unfold C
    simp [show (708588 * k + 610784) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 305392) = 177147 * k + 152696 := by
    unfold C
    simp [show (354294 * k + 305392) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 225959) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 225959))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard042
