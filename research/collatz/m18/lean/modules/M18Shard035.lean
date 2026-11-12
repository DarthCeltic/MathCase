import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard035

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_180975 : ∀ k : Nat,
    iterate (262144 * k + 180975) 29 = 177147 * k + 122297 ∧
      177147 * k + 122297 < 262144 * k + 180975 := by
  intro k
  have h1 : C (262144 * k + 180975) = 786432 * k + 542926 := by
    unfold C
    simp [show (262144 * k + 180975) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 542926) = 393216 * k + 271463 := by
    unfold C
    simp [show (786432 * k + 542926) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 271463) = 1179648 * k + 814390 := by
    unfold C
    simp [show (393216 * k + 271463) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 814390) = 589824 * k + 407195 := by
    unfold C
    simp [show (1179648 * k + 814390) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 407195) = 1769472 * k + 1221586 := by
    unfold C
    simp [show (589824 * k + 407195) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1221586) = 884736 * k + 610793 := by
    unfold C
    simp [show (1769472 * k + 1221586) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 610793) = 2654208 * k + 1832380 := by
    unfold C
    simp [show (884736 * k + 610793) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1832380) = 1327104 * k + 916190 := by
    unfold C
    simp [show (2654208 * k + 1832380) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 916190) = 663552 * k + 458095 := by
    unfold C
    simp [show (1327104 * k + 916190) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 458095) = 1990656 * k + 1374286 := by
    unfold C
    simp [show (663552 * k + 458095) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1374286) = 995328 * k + 687143 := by
    unfold C
    simp [show (1990656 * k + 1374286) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 687143) = 2985984 * k + 2061430 := by
    unfold C
    simp [show (995328 * k + 687143) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2061430) = 1492992 * k + 1030715 := by
    unfold C
    simp [show (2985984 * k + 2061430) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1030715) = 4478976 * k + 3092146 := by
    unfold C
    simp [show (1492992 * k + 1030715) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3092146) = 2239488 * k + 1546073 := by
    unfold C
    simp [show (4478976 * k + 3092146) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1546073) = 6718464 * k + 4638220 := by
    unfold C
    simp [show (2239488 * k + 1546073) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4638220) = 3359232 * k + 2319110 := by
    unfold C
    simp [show (6718464 * k + 4638220) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2319110) = 1679616 * k + 1159555 := by
    unfold C
    simp [show (3359232 * k + 2319110) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1159555) = 5038848 * k + 3478666 := by
    unfold C
    simp [show (1679616 * k + 1159555) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3478666) = 2519424 * k + 1739333 := by
    unfold C
    simp [show (5038848 * k + 3478666) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1739333) = 7558272 * k + 5218000 := by
    unfold C
    simp [show (2519424 * k + 1739333) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 5218000) = 3779136 * k + 2609000 := by
    unfold C
    simp [show (7558272 * k + 5218000) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2609000) = 1889568 * k + 1304500 := by
    unfold C
    simp [show (3779136 * k + 2609000) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1304500) = 944784 * k + 652250 := by
    unfold C
    simp [show (1889568 * k + 1304500) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 652250) = 472392 * k + 326125 := by
    unfold C
    simp [show (944784 * k + 652250) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 326125) = 1417176 * k + 978376 := by
    unfold C
    simp [show (472392 * k + 326125) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 978376) = 708588 * k + 489188 := by
    unfold C
    simp [show (1417176 * k + 978376) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 489188) = 354294 * k + 244594 := by
    unfold C
    simp [show (708588 * k + 489188) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 244594) = 177147 * k + 122297 := by
    unfold C
    simp [show (354294 * k + 244594) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 180975) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 180975))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_181063 : ∀ k : Nat,
    iterate (262144 * k + 181063) 29 = 177147 * k + 122357 ∧
      177147 * k + 122357 < 262144 * k + 181063 := by
  intro k
  have h1 : C (262144 * k + 181063) = 786432 * k + 543190 := by
    unfold C
    simp [show (262144 * k + 181063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 543190) = 393216 * k + 271595 := by
    unfold C
    simp [show (786432 * k + 543190) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 271595) = 1179648 * k + 814786 := by
    unfold C
    simp [show (393216 * k + 271595) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 814786) = 589824 * k + 407393 := by
    unfold C
    simp [show (1179648 * k + 814786) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 407393) = 1769472 * k + 1222180 := by
    unfold C
    simp [show (589824 * k + 407393) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1222180) = 884736 * k + 611090 := by
    unfold C
    simp [show (1769472 * k + 1222180) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 611090) = 442368 * k + 305545 := by
    unfold C
    simp [show (884736 * k + 611090) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 305545) = 1327104 * k + 916636 := by
    unfold C
    simp [show (442368 * k + 305545) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 916636) = 663552 * k + 458318 := by
    unfold C
    simp [show (1327104 * k + 916636) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 458318) = 331776 * k + 229159 := by
    unfold C
    simp [show (663552 * k + 458318) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 229159) = 995328 * k + 687478 := by
    unfold C
    simp [show (331776 * k + 229159) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 687478) = 497664 * k + 343739 := by
    unfold C
    simp [show (995328 * k + 687478) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 343739) = 1492992 * k + 1031218 := by
    unfold C
    simp [show (497664 * k + 343739) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1031218) = 746496 * k + 515609 := by
    unfold C
    simp [show (1492992 * k + 1031218) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 515609) = 2239488 * k + 1546828 := by
    unfold C
    simp [show (746496 * k + 515609) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1546828) = 1119744 * k + 773414 := by
    unfold C
    simp [show (2239488 * k + 1546828) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 773414) = 559872 * k + 386707 := by
    unfold C
    simp [show (1119744 * k + 773414) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 386707) = 1679616 * k + 1160122 := by
    unfold C
    simp [show (559872 * k + 386707) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1160122) = 839808 * k + 580061 := by
    unfold C
    simp [show (1679616 * k + 1160122) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 580061) = 2519424 * k + 1740184 := by
    unfold C
    simp [show (839808 * k + 580061) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1740184) = 1259712 * k + 870092 := by
    unfold C
    simp [show (2519424 * k + 1740184) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 870092) = 629856 * k + 435046 := by
    unfold C
    simp [show (1259712 * k + 870092) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 435046) = 314928 * k + 217523 := by
    unfold C
    simp [show (629856 * k + 435046) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 217523) = 944784 * k + 652570 := by
    unfold C
    simp [show (314928 * k + 217523) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 652570) = 472392 * k + 326285 := by
    unfold C
    simp [show (944784 * k + 652570) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 326285) = 1417176 * k + 978856 := by
    unfold C
    simp [show (472392 * k + 326285) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 978856) = 708588 * k + 489428 := by
    unfold C
    simp [show (1417176 * k + 978856) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 489428) = 354294 * k + 244714 := by
    unfold C
    simp [show (708588 * k + 489428) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 244714) = 177147 * k + 122357 := by
    unfold C
    simp [show (354294 * k + 244714) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 181063) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 181063))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_182087 : ∀ k : Nat,
    iterate (262144 * k + 182087) 29 = 177147 * k + 123049 ∧
      177147 * k + 123049 < 262144 * k + 182087 := by
  intro k
  have h1 : C (262144 * k + 182087) = 786432 * k + 546262 := by
    unfold C
    simp [show (262144 * k + 182087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 546262) = 393216 * k + 273131 := by
    unfold C
    simp [show (786432 * k + 546262) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 273131) = 1179648 * k + 819394 := by
    unfold C
    simp [show (393216 * k + 273131) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 819394) = 589824 * k + 409697 := by
    unfold C
    simp [show (1179648 * k + 819394) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 409697) = 1769472 * k + 1229092 := by
    unfold C
    simp [show (589824 * k + 409697) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1229092) = 884736 * k + 614546 := by
    unfold C
    simp [show (1769472 * k + 1229092) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 614546) = 442368 * k + 307273 := by
    unfold C
    simp [show (884736 * k + 614546) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 307273) = 1327104 * k + 921820 := by
    unfold C
    simp [show (442368 * k + 307273) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 921820) = 663552 * k + 460910 := by
    unfold C
    simp [show (1327104 * k + 921820) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 460910) = 331776 * k + 230455 := by
    unfold C
    simp [show (663552 * k + 460910) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 230455) = 995328 * k + 691366 := by
    unfold C
    simp [show (331776 * k + 230455) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 691366) = 497664 * k + 345683 := by
    unfold C
    simp [show (995328 * k + 691366) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 345683) = 1492992 * k + 1037050 := by
    unfold C
    simp [show (497664 * k + 345683) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1037050) = 746496 * k + 518525 := by
    unfold C
    simp [show (1492992 * k + 1037050) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 518525) = 2239488 * k + 1555576 := by
    unfold C
    simp [show (746496 * k + 518525) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1555576) = 1119744 * k + 777788 := by
    unfold C
    simp [show (2239488 * k + 1555576) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 777788) = 559872 * k + 388894 := by
    unfold C
    simp [show (1119744 * k + 777788) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 388894) = 279936 * k + 194447 := by
    unfold C
    simp [show (559872 * k + 388894) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 194447) = 839808 * k + 583342 := by
    unfold C
    simp [show (279936 * k + 194447) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 583342) = 419904 * k + 291671 := by
    unfold C
    simp [show (839808 * k + 583342) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 291671) = 1259712 * k + 875014 := by
    unfold C
    simp [show (419904 * k + 291671) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 875014) = 629856 * k + 437507 := by
    unfold C
    simp [show (1259712 * k + 875014) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 437507) = 1889568 * k + 1312522 := by
    unfold C
    simp [show (629856 * k + 437507) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1312522) = 944784 * k + 656261 := by
    unfold C
    simp [show (1889568 * k + 1312522) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 656261) = 2834352 * k + 1968784 := by
    unfold C
    simp [show (944784 * k + 656261) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1968784) = 1417176 * k + 984392 := by
    unfold C
    simp [show (2834352 * k + 1968784) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 984392) = 708588 * k + 492196 := by
    unfold C
    simp [show (1417176 * k + 984392) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 492196) = 354294 * k + 246098 := by
    unfold C
    simp [show (708588 * k + 492196) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 246098) = 177147 * k + 123049 := by
    unfold C
    simp [show (354294 * k + 246098) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 182087) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 182087))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_182119 : ∀ k : Nat,
    iterate (262144 * k + 182119) 29 = 177147 * k + 123070 ∧
      177147 * k + 123070 < 262144 * k + 182119 := by
  intro k
  have h1 : C (262144 * k + 182119) = 786432 * k + 546358 := by
    unfold C
    simp [show (262144 * k + 182119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 546358) = 393216 * k + 273179 := by
    unfold C
    simp [show (786432 * k + 546358) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 273179) = 1179648 * k + 819538 := by
    unfold C
    simp [show (393216 * k + 273179) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 819538) = 589824 * k + 409769 := by
    unfold C
    simp [show (1179648 * k + 819538) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 409769) = 1769472 * k + 1229308 := by
    unfold C
    simp [show (589824 * k + 409769) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1229308) = 884736 * k + 614654 := by
    unfold C
    simp [show (1769472 * k + 1229308) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 614654) = 442368 * k + 307327 := by
    unfold C
    simp [show (884736 * k + 614654) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 307327) = 1327104 * k + 921982 := by
    unfold C
    simp [show (442368 * k + 307327) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 921982) = 663552 * k + 460991 := by
    unfold C
    simp [show (1327104 * k + 921982) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 460991) = 1990656 * k + 1382974 := by
    unfold C
    simp [show (663552 * k + 460991) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1382974) = 995328 * k + 691487 := by
    unfold C
    simp [show (1990656 * k + 1382974) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 691487) = 2985984 * k + 2074462 := by
    unfold C
    simp [show (995328 * k + 691487) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2074462) = 1492992 * k + 1037231 := by
    unfold C
    simp [show (2985984 * k + 2074462) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1037231) = 4478976 * k + 3111694 := by
    unfold C
    simp [show (1492992 * k + 1037231) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3111694) = 2239488 * k + 1555847 := by
    unfold C
    simp [show (4478976 * k + 3111694) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1555847) = 6718464 * k + 4667542 := by
    unfold C
    simp [show (2239488 * k + 1555847) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4667542) = 3359232 * k + 2333771 := by
    unfold C
    simp [show (6718464 * k + 4667542) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2333771) = 10077696 * k + 7001314 := by
    unfold C
    simp [show (3359232 * k + 2333771) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 7001314) = 5038848 * k + 3500657 := by
    unfold C
    simp [show (10077696 * k + 7001314) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 3500657) = 15116544 * k + 10501972 := by
    unfold C
    simp [show (5038848 * k + 3500657) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 10501972) = 7558272 * k + 5250986 := by
    unfold C
    simp [show (15116544 * k + 10501972) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 5250986) = 3779136 * k + 2625493 := by
    unfold C
    simp [show (7558272 * k + 5250986) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2625493) = 11337408 * k + 7876480 := by
    unfold C
    simp [show (3779136 * k + 2625493) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 7876480) = 5668704 * k + 3938240 := by
    unfold C
    simp [show (11337408 * k + 7876480) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 3938240) = 2834352 * k + 1969120 := by
    unfold C
    simp [show (5668704 * k + 3938240) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1969120) = 1417176 * k + 984560 := by
    unfold C
    simp [show (2834352 * k + 1969120) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 984560) = 708588 * k + 492280 := by
    unfold C
    simp [show (1417176 * k + 984560) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 492280) = 354294 * k + 246140 := by
    unfold C
    simp [show (708588 * k + 492280) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 246140) = 177147 * k + 123070 := by
    unfold C
    simp [show (354294 * k + 246140) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 182119) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 182119))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_182687 : ∀ k : Nat,
    iterate (262144 * k + 182687) 29 = 177147 * k + 123454 ∧
      177147 * k + 123454 < 262144 * k + 182687 := by
  intro k
  have h1 : C (262144 * k + 182687) = 786432 * k + 548062 := by
    unfold C
    simp [show (262144 * k + 182687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 548062) = 393216 * k + 274031 := by
    unfold C
    simp [show (786432 * k + 548062) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 274031) = 1179648 * k + 822094 := by
    unfold C
    simp [show (393216 * k + 274031) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 822094) = 589824 * k + 411047 := by
    unfold C
    simp [show (1179648 * k + 822094) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 411047) = 1769472 * k + 1233142 := by
    unfold C
    simp [show (589824 * k + 411047) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1233142) = 884736 * k + 616571 := by
    unfold C
    simp [show (1769472 * k + 1233142) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 616571) = 2654208 * k + 1849714 := by
    unfold C
    simp [show (884736 * k + 616571) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1849714) = 1327104 * k + 924857 := by
    unfold C
    simp [show (2654208 * k + 1849714) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 924857) = 3981312 * k + 2774572 := by
    unfold C
    simp [show (1327104 * k + 924857) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2774572) = 1990656 * k + 1387286 := by
    unfold C
    simp [show (3981312 * k + 2774572) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1387286) = 995328 * k + 693643 := by
    unfold C
    simp [show (1990656 * k + 1387286) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 693643) = 2985984 * k + 2080930 := by
    unfold C
    simp [show (995328 * k + 693643) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2080930) = 1492992 * k + 1040465 := by
    unfold C
    simp [show (2985984 * k + 2080930) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1040465) = 4478976 * k + 3121396 := by
    unfold C
    simp [show (1492992 * k + 1040465) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3121396) = 2239488 * k + 1560698 := by
    unfold C
    simp [show (4478976 * k + 3121396) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1560698) = 1119744 * k + 780349 := by
    unfold C
    simp [show (2239488 * k + 1560698) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 780349) = 3359232 * k + 2341048 := by
    unfold C
    simp [show (1119744 * k + 780349) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2341048) = 1679616 * k + 1170524 := by
    unfold C
    simp [show (3359232 * k + 2341048) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1170524) = 839808 * k + 585262 := by
    unfold C
    simp [show (1679616 * k + 1170524) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 585262) = 419904 * k + 292631 := by
    unfold C
    simp [show (839808 * k + 585262) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 292631) = 1259712 * k + 877894 := by
    unfold C
    simp [show (419904 * k + 292631) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 877894) = 629856 * k + 438947 := by
    unfold C
    simp [show (1259712 * k + 877894) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 438947) = 1889568 * k + 1316842 := by
    unfold C
    simp [show (629856 * k + 438947) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1316842) = 944784 * k + 658421 := by
    unfold C
    simp [show (1889568 * k + 1316842) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 658421) = 2834352 * k + 1975264 := by
    unfold C
    simp [show (944784 * k + 658421) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1975264) = 1417176 * k + 987632 := by
    unfold C
    simp [show (2834352 * k + 1975264) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 987632) = 708588 * k + 493816 := by
    unfold C
    simp [show (1417176 * k + 987632) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 493816) = 354294 * k + 246908 := by
    unfold C
    simp [show (708588 * k + 493816) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 246908) = 177147 * k + 123454 := by
    unfold C
    simp [show (354294 * k + 246908) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 182687) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 182687))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_182759 : ∀ k : Nat,
    iterate (262144 * k + 182759) 29 = 177147 * k + 123503 ∧
      177147 * k + 123503 < 262144 * k + 182759 := by
  intro k
  have h1 : C (262144 * k + 182759) = 786432 * k + 548278 := by
    unfold C
    simp [show (262144 * k + 182759) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 548278) = 393216 * k + 274139 := by
    unfold C
    simp [show (786432 * k + 548278) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 274139) = 1179648 * k + 822418 := by
    unfold C
    simp [show (393216 * k + 274139) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 822418) = 589824 * k + 411209 := by
    unfold C
    simp [show (1179648 * k + 822418) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 411209) = 1769472 * k + 1233628 := by
    unfold C
    simp [show (589824 * k + 411209) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1233628) = 884736 * k + 616814 := by
    unfold C
    simp [show (1769472 * k + 1233628) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 616814) = 442368 * k + 308407 := by
    unfold C
    simp [show (884736 * k + 616814) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 308407) = 1327104 * k + 925222 := by
    unfold C
    simp [show (442368 * k + 308407) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 925222) = 663552 * k + 462611 := by
    unfold C
    simp [show (1327104 * k + 925222) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 462611) = 1990656 * k + 1387834 := by
    unfold C
    simp [show (663552 * k + 462611) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1387834) = 995328 * k + 693917 := by
    unfold C
    simp [show (1990656 * k + 1387834) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 693917) = 2985984 * k + 2081752 := by
    unfold C
    simp [show (995328 * k + 693917) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2081752) = 1492992 * k + 1040876 := by
    unfold C
    simp [show (2985984 * k + 2081752) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1040876) = 746496 * k + 520438 := by
    unfold C
    simp [show (1492992 * k + 1040876) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 520438) = 373248 * k + 260219 := by
    unfold C
    simp [show (746496 * k + 520438) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 260219) = 1119744 * k + 780658 := by
    unfold C
    simp [show (373248 * k + 260219) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 780658) = 559872 * k + 390329 := by
    unfold C
    simp [show (1119744 * k + 780658) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 390329) = 1679616 * k + 1170988 := by
    unfold C
    simp [show (559872 * k + 390329) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1170988) = 839808 * k + 585494 := by
    unfold C
    simp [show (1679616 * k + 1170988) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 585494) = 419904 * k + 292747 := by
    unfold C
    simp [show (839808 * k + 585494) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 292747) = 1259712 * k + 878242 := by
    unfold C
    simp [show (419904 * k + 292747) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 878242) = 629856 * k + 439121 := by
    unfold C
    simp [show (1259712 * k + 878242) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 439121) = 1889568 * k + 1317364 := by
    unfold C
    simp [show (629856 * k + 439121) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1317364) = 944784 * k + 658682 := by
    unfold C
    simp [show (1889568 * k + 1317364) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 658682) = 472392 * k + 329341 := by
    unfold C
    simp [show (944784 * k + 658682) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 329341) = 1417176 * k + 988024 := by
    unfold C
    simp [show (472392 * k + 329341) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 988024) = 708588 * k + 494012 := by
    unfold C
    simp [show (1417176 * k + 988024) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 494012) = 354294 * k + 247006 := by
    unfold C
    simp [show (708588 * k + 494012) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 247006) = 177147 * k + 123503 := by
    unfold C
    simp [show (354294 * k + 247006) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 182759) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 182759))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_182767 : ∀ k : Nat,
    iterate (262144 * k + 182767) 29 = 177147 * k + 123508 ∧
      177147 * k + 123508 < 262144 * k + 182767 := by
  intro k
  have h1 : C (262144 * k + 182767) = 786432 * k + 548302 := by
    unfold C
    simp [show (262144 * k + 182767) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 548302) = 393216 * k + 274151 := by
    unfold C
    simp [show (786432 * k + 548302) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 274151) = 1179648 * k + 822454 := by
    unfold C
    simp [show (393216 * k + 274151) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 822454) = 589824 * k + 411227 := by
    unfold C
    simp [show (1179648 * k + 822454) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 411227) = 1769472 * k + 1233682 := by
    unfold C
    simp [show (589824 * k + 411227) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1233682) = 884736 * k + 616841 := by
    unfold C
    simp [show (1769472 * k + 1233682) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 616841) = 2654208 * k + 1850524 := by
    unfold C
    simp [show (884736 * k + 616841) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1850524) = 1327104 * k + 925262 := by
    unfold C
    simp [show (2654208 * k + 1850524) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 925262) = 663552 * k + 462631 := by
    unfold C
    simp [show (1327104 * k + 925262) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 462631) = 1990656 * k + 1387894 := by
    unfold C
    simp [show (663552 * k + 462631) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1387894) = 995328 * k + 693947 := by
    unfold C
    simp [show (1990656 * k + 1387894) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 693947) = 2985984 * k + 2081842 := by
    unfold C
    simp [show (995328 * k + 693947) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2081842) = 1492992 * k + 1040921 := by
    unfold C
    simp [show (2985984 * k + 2081842) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1040921) = 4478976 * k + 3122764 := by
    unfold C
    simp [show (1492992 * k + 1040921) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3122764) = 2239488 * k + 1561382 := by
    unfold C
    simp [show (4478976 * k + 3122764) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1561382) = 1119744 * k + 780691 := by
    unfold C
    simp [show (2239488 * k + 1561382) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 780691) = 3359232 * k + 2342074 := by
    unfold C
    simp [show (1119744 * k + 780691) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2342074) = 1679616 * k + 1171037 := by
    unfold C
    simp [show (3359232 * k + 2342074) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1171037) = 5038848 * k + 3513112 := by
    unfold C
    simp [show (1679616 * k + 1171037) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3513112) = 2519424 * k + 1756556 := by
    unfold C
    simp [show (5038848 * k + 3513112) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1756556) = 1259712 * k + 878278 := by
    unfold C
    simp [show (2519424 * k + 1756556) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 878278) = 629856 * k + 439139 := by
    unfold C
    simp [show (1259712 * k + 878278) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 439139) = 1889568 * k + 1317418 := by
    unfold C
    simp [show (629856 * k + 439139) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1317418) = 944784 * k + 658709 := by
    unfold C
    simp [show (1889568 * k + 1317418) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 658709) = 2834352 * k + 1976128 := by
    unfold C
    simp [show (944784 * k + 658709) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1976128) = 1417176 * k + 988064 := by
    unfold C
    simp [show (2834352 * k + 1976128) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 988064) = 708588 * k + 494032 := by
    unfold C
    simp [show (1417176 * k + 988064) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 494032) = 354294 * k + 247016 := by
    unfold C
    simp [show (708588 * k + 494032) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 247016) = 177147 * k + 123508 := by
    unfold C
    simp [show (354294 * k + 247016) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 182767) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 182767))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_183207 : ∀ k : Nat,
    iterate (262144 * k + 183207) 29 = 177147 * k + 123806 ∧
      177147 * k + 123806 < 262144 * k + 183207 := by
  intro k
  have h1 : C (262144 * k + 183207) = 786432 * k + 549622 := by
    unfold C
    simp [show (262144 * k + 183207) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 549622) = 393216 * k + 274811 := by
    unfold C
    simp [show (786432 * k + 549622) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 274811) = 1179648 * k + 824434 := by
    unfold C
    simp [show (393216 * k + 274811) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 824434) = 589824 * k + 412217 := by
    unfold C
    simp [show (1179648 * k + 824434) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 412217) = 1769472 * k + 1236652 := by
    unfold C
    simp [show (589824 * k + 412217) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1236652) = 884736 * k + 618326 := by
    unfold C
    simp [show (1769472 * k + 1236652) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 618326) = 442368 * k + 309163 := by
    unfold C
    simp [show (884736 * k + 618326) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 309163) = 1327104 * k + 927490 := by
    unfold C
    simp [show (442368 * k + 309163) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 927490) = 663552 * k + 463745 := by
    unfold C
    simp [show (1327104 * k + 927490) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 463745) = 1990656 * k + 1391236 := by
    unfold C
    simp [show (663552 * k + 463745) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1391236) = 995328 * k + 695618 := by
    unfold C
    simp [show (1990656 * k + 1391236) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 695618) = 497664 * k + 347809 := by
    unfold C
    simp [show (995328 * k + 695618) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 347809) = 1492992 * k + 1043428 := by
    unfold C
    simp [show (497664 * k + 347809) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1043428) = 746496 * k + 521714 := by
    unfold C
    simp [show (1492992 * k + 1043428) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 521714) = 373248 * k + 260857 := by
    unfold C
    simp [show (746496 * k + 521714) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 260857) = 1119744 * k + 782572 := by
    unfold C
    simp [show (373248 * k + 260857) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 782572) = 559872 * k + 391286 := by
    unfold C
    simp [show (1119744 * k + 782572) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 391286) = 279936 * k + 195643 := by
    unfold C
    simp [show (559872 * k + 391286) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 195643) = 839808 * k + 586930 := by
    unfold C
    simp [show (279936 * k + 195643) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 586930) = 419904 * k + 293465 := by
    unfold C
    simp [show (839808 * k + 586930) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 293465) = 1259712 * k + 880396 := by
    unfold C
    simp [show (419904 * k + 293465) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 880396) = 629856 * k + 440198 := by
    unfold C
    simp [show (1259712 * k + 880396) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 440198) = 314928 * k + 220099 := by
    unfold C
    simp [show (629856 * k + 440198) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 220099) = 944784 * k + 660298 := by
    unfold C
    simp [show (314928 * k + 220099) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 660298) = 472392 * k + 330149 := by
    unfold C
    simp [show (944784 * k + 660298) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 330149) = 1417176 * k + 990448 := by
    unfold C
    simp [show (472392 * k + 330149) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 990448) = 708588 * k + 495224 := by
    unfold C
    simp [show (1417176 * k + 990448) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 495224) = 354294 * k + 247612 := by
    unfold C
    simp [show (708588 * k + 495224) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 247612) = 177147 * k + 123806 := by
    unfold C
    simp [show (354294 * k + 247612) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 183207) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 183207))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_183279 : ∀ k : Nat,
    iterate (262144 * k + 183279) 29 = 177147 * k + 123854 ∧
      177147 * k + 123854 < 262144 * k + 183279 := by
  intro k
  have h1 : C (262144 * k + 183279) = 786432 * k + 549838 := by
    unfold C
    simp [show (262144 * k + 183279) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 549838) = 393216 * k + 274919 := by
    unfold C
    simp [show (786432 * k + 549838) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 274919) = 1179648 * k + 824758 := by
    unfold C
    simp [show (393216 * k + 274919) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 824758) = 589824 * k + 412379 := by
    unfold C
    simp [show (1179648 * k + 824758) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 412379) = 1769472 * k + 1237138 := by
    unfold C
    simp [show (589824 * k + 412379) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1237138) = 884736 * k + 618569 := by
    unfold C
    simp [show (1769472 * k + 1237138) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 618569) = 2654208 * k + 1855708 := by
    unfold C
    simp [show (884736 * k + 618569) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1855708) = 1327104 * k + 927854 := by
    unfold C
    simp [show (2654208 * k + 1855708) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 927854) = 663552 * k + 463927 := by
    unfold C
    simp [show (1327104 * k + 927854) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 463927) = 1990656 * k + 1391782 := by
    unfold C
    simp [show (663552 * k + 463927) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1391782) = 995328 * k + 695891 := by
    unfold C
    simp [show (1990656 * k + 1391782) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 695891) = 2985984 * k + 2087674 := by
    unfold C
    simp [show (995328 * k + 695891) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2087674) = 1492992 * k + 1043837 := by
    unfold C
    simp [show (2985984 * k + 2087674) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1043837) = 4478976 * k + 3131512 := by
    unfold C
    simp [show (1492992 * k + 1043837) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3131512) = 2239488 * k + 1565756 := by
    unfold C
    simp [show (4478976 * k + 3131512) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1565756) = 1119744 * k + 782878 := by
    unfold C
    simp [show (2239488 * k + 1565756) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 782878) = 559872 * k + 391439 := by
    unfold C
    simp [show (1119744 * k + 782878) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 391439) = 1679616 * k + 1174318 := by
    unfold C
    simp [show (559872 * k + 391439) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1174318) = 839808 * k + 587159 := by
    unfold C
    simp [show (1679616 * k + 1174318) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 587159) = 2519424 * k + 1761478 := by
    unfold C
    simp [show (839808 * k + 587159) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1761478) = 1259712 * k + 880739 := by
    unfold C
    simp [show (2519424 * k + 1761478) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 880739) = 3779136 * k + 2642218 := by
    unfold C
    simp [show (1259712 * k + 880739) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2642218) = 1889568 * k + 1321109 := by
    unfold C
    simp [show (3779136 * k + 2642218) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1321109) = 5668704 * k + 3963328 := by
    unfold C
    simp [show (1889568 * k + 1321109) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 3963328) = 2834352 * k + 1981664 := by
    unfold C
    simp [show (5668704 * k + 3963328) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1981664) = 1417176 * k + 990832 := by
    unfold C
    simp [show (2834352 * k + 1981664) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 990832) = 708588 * k + 495416 := by
    unfold C
    simp [show (1417176 * k + 990832) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 495416) = 354294 * k + 247708 := by
    unfold C
    simp [show (708588 * k + 495416) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 247708) = 177147 * k + 123854 := by
    unfold C
    simp [show (354294 * k + 247708) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 183279) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 183279))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_183527 : ∀ k : Nat,
    iterate (262144 * k + 183527) 29 = 177147 * k + 124022 ∧
      177147 * k + 124022 < 262144 * k + 183527 := by
  intro k
  have h1 : C (262144 * k + 183527) = 786432 * k + 550582 := by
    unfold C
    simp [show (262144 * k + 183527) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 550582) = 393216 * k + 275291 := by
    unfold C
    simp [show (786432 * k + 550582) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 275291) = 1179648 * k + 825874 := by
    unfold C
    simp [show (393216 * k + 275291) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 825874) = 589824 * k + 412937 := by
    unfold C
    simp [show (1179648 * k + 825874) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 412937) = 1769472 * k + 1238812 := by
    unfold C
    simp [show (589824 * k + 412937) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1238812) = 884736 * k + 619406 := by
    unfold C
    simp [show (1769472 * k + 1238812) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 619406) = 442368 * k + 309703 := by
    unfold C
    simp [show (884736 * k + 619406) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 309703) = 1327104 * k + 929110 := by
    unfold C
    simp [show (442368 * k + 309703) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 929110) = 663552 * k + 464555 := by
    unfold C
    simp [show (1327104 * k + 929110) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 464555) = 1990656 * k + 1393666 := by
    unfold C
    simp [show (663552 * k + 464555) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1393666) = 995328 * k + 696833 := by
    unfold C
    simp [show (1990656 * k + 1393666) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 696833) = 2985984 * k + 2090500 := by
    unfold C
    simp [show (995328 * k + 696833) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2090500) = 1492992 * k + 1045250 := by
    unfold C
    simp [show (2985984 * k + 2090500) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1045250) = 746496 * k + 522625 := by
    unfold C
    simp [show (1492992 * k + 1045250) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 522625) = 2239488 * k + 1567876 := by
    unfold C
    simp [show (746496 * k + 522625) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1567876) = 1119744 * k + 783938 := by
    unfold C
    simp [show (2239488 * k + 1567876) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 783938) = 559872 * k + 391969 := by
    unfold C
    simp [show (1119744 * k + 783938) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 391969) = 1679616 * k + 1175908 := by
    unfold C
    simp [show (559872 * k + 391969) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1175908) = 839808 * k + 587954 := by
    unfold C
    simp [show (1679616 * k + 1175908) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 587954) = 419904 * k + 293977 := by
    unfold C
    simp [show (839808 * k + 587954) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 293977) = 1259712 * k + 881932 := by
    unfold C
    simp [show (419904 * k + 293977) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 881932) = 629856 * k + 440966 := by
    unfold C
    simp [show (1259712 * k + 881932) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 440966) = 314928 * k + 220483 := by
    unfold C
    simp [show (629856 * k + 440966) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 220483) = 944784 * k + 661450 := by
    unfold C
    simp [show (314928 * k + 220483) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 661450) = 472392 * k + 330725 := by
    unfold C
    simp [show (944784 * k + 661450) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 330725) = 1417176 * k + 992176 := by
    unfold C
    simp [show (472392 * k + 330725) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 992176) = 708588 * k + 496088 := by
    unfold C
    simp [show (1417176 * k + 992176) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 496088) = 354294 * k + 248044 := by
    unfold C
    simp [show (708588 * k + 496088) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 248044) = 177147 * k + 124022 := by
    unfold C
    simp [show (354294 * k + 248044) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 183527) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 183527))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_183615 : ∀ k : Nat,
    iterate (262144 * k + 183615) 29 = 177147 * k + 124081 ∧
      177147 * k + 124081 < 262144 * k + 183615 := by
  intro k
  have h1 : C (262144 * k + 183615) = 786432 * k + 550846 := by
    unfold C
    simp [show (262144 * k + 183615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 550846) = 393216 * k + 275423 := by
    unfold C
    simp [show (786432 * k + 550846) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 275423) = 1179648 * k + 826270 := by
    unfold C
    simp [show (393216 * k + 275423) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 826270) = 589824 * k + 413135 := by
    unfold C
    simp [show (1179648 * k + 826270) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 413135) = 1769472 * k + 1239406 := by
    unfold C
    simp [show (589824 * k + 413135) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1239406) = 884736 * k + 619703 := by
    unfold C
    simp [show (1769472 * k + 1239406) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 619703) = 2654208 * k + 1859110 := by
    unfold C
    simp [show (884736 * k + 619703) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1859110) = 1327104 * k + 929555 := by
    unfold C
    simp [show (2654208 * k + 1859110) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 929555) = 3981312 * k + 2788666 := by
    unfold C
    simp [show (1327104 * k + 929555) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2788666) = 1990656 * k + 1394333 := by
    unfold C
    simp [show (3981312 * k + 2788666) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1394333) = 5971968 * k + 4183000 := by
    unfold C
    simp [show (1990656 * k + 1394333) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4183000) = 2985984 * k + 2091500 := by
    unfold C
    simp [show (5971968 * k + 4183000) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2091500) = 1492992 * k + 1045750 := by
    unfold C
    simp [show (2985984 * k + 2091500) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1045750) = 746496 * k + 522875 := by
    unfold C
    simp [show (1492992 * k + 1045750) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 522875) = 2239488 * k + 1568626 := by
    unfold C
    simp [show (746496 * k + 522875) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1568626) = 1119744 * k + 784313 := by
    unfold C
    simp [show (2239488 * k + 1568626) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 784313) = 3359232 * k + 2352940 := by
    unfold C
    simp [show (1119744 * k + 784313) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2352940) = 1679616 * k + 1176470 := by
    unfold C
    simp [show (3359232 * k + 2352940) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1176470) = 839808 * k + 588235 := by
    unfold C
    simp [show (1679616 * k + 1176470) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 588235) = 2519424 * k + 1764706 := by
    unfold C
    simp [show (839808 * k + 588235) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1764706) = 1259712 * k + 882353 := by
    unfold C
    simp [show (2519424 * k + 1764706) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 882353) = 3779136 * k + 2647060 := by
    unfold C
    simp [show (1259712 * k + 882353) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2647060) = 1889568 * k + 1323530 := by
    unfold C
    simp [show (3779136 * k + 2647060) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1323530) = 944784 * k + 661765 := by
    unfold C
    simp [show (1889568 * k + 1323530) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 661765) = 2834352 * k + 1985296 := by
    unfold C
    simp [show (944784 * k + 661765) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1985296) = 1417176 * k + 992648 := by
    unfold C
    simp [show (2834352 * k + 1985296) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 992648) = 708588 * k + 496324 := by
    unfold C
    simp [show (1417176 * k + 992648) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 496324) = 354294 * k + 248162 := by
    unfold C
    simp [show (708588 * k + 496324) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 248162) = 177147 * k + 124081 := by
    unfold C
    simp [show (354294 * k + 248162) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 183615) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 183615))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_183655 : ∀ k : Nat,
    iterate (262144 * k + 183655) 29 = 177147 * k + 124108 ∧
      177147 * k + 124108 < 262144 * k + 183655 := by
  intro k
  have h1 : C (262144 * k + 183655) = 786432 * k + 550966 := by
    unfold C
    simp [show (262144 * k + 183655) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 550966) = 393216 * k + 275483 := by
    unfold C
    simp [show (786432 * k + 550966) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 275483) = 1179648 * k + 826450 := by
    unfold C
    simp [show (393216 * k + 275483) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 826450) = 589824 * k + 413225 := by
    unfold C
    simp [show (1179648 * k + 826450) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 413225) = 1769472 * k + 1239676 := by
    unfold C
    simp [show (589824 * k + 413225) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1239676) = 884736 * k + 619838 := by
    unfold C
    simp [show (1769472 * k + 1239676) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 619838) = 442368 * k + 309919 := by
    unfold C
    simp [show (884736 * k + 619838) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 309919) = 1327104 * k + 929758 := by
    unfold C
    simp [show (442368 * k + 309919) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 929758) = 663552 * k + 464879 := by
    unfold C
    simp [show (1327104 * k + 929758) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 464879) = 1990656 * k + 1394638 := by
    unfold C
    simp [show (663552 * k + 464879) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1394638) = 995328 * k + 697319 := by
    unfold C
    simp [show (1990656 * k + 1394638) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 697319) = 2985984 * k + 2091958 := by
    unfold C
    simp [show (995328 * k + 697319) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2091958) = 1492992 * k + 1045979 := by
    unfold C
    simp [show (2985984 * k + 2091958) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1045979) = 4478976 * k + 3137938 := by
    unfold C
    simp [show (1492992 * k + 1045979) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3137938) = 2239488 * k + 1568969 := by
    unfold C
    simp [show (4478976 * k + 3137938) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1568969) = 6718464 * k + 4706908 := by
    unfold C
    simp [show (2239488 * k + 1568969) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4706908) = 3359232 * k + 2353454 := by
    unfold C
    simp [show (6718464 * k + 4706908) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2353454) = 1679616 * k + 1176727 := by
    unfold C
    simp [show (3359232 * k + 2353454) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1176727) = 5038848 * k + 3530182 := by
    unfold C
    simp [show (1679616 * k + 1176727) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3530182) = 2519424 * k + 1765091 := by
    unfold C
    simp [show (5038848 * k + 3530182) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1765091) = 7558272 * k + 5295274 := by
    unfold C
    simp [show (2519424 * k + 1765091) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 5295274) = 3779136 * k + 2647637 := by
    unfold C
    simp [show (7558272 * k + 5295274) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2647637) = 11337408 * k + 7942912 := by
    unfold C
    simp [show (3779136 * k + 2647637) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 7942912) = 5668704 * k + 3971456 := by
    unfold C
    simp [show (11337408 * k + 7942912) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 3971456) = 2834352 * k + 1985728 := by
    unfold C
    simp [show (5668704 * k + 3971456) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1985728) = 1417176 * k + 992864 := by
    unfold C
    simp [show (2834352 * k + 1985728) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 992864) = 708588 * k + 496432 := by
    unfold C
    simp [show (1417176 * k + 992864) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 496432) = 354294 * k + 248216 := by
    unfold C
    simp [show (708588 * k + 496432) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 248216) = 177147 * k + 124108 := by
    unfold C
    simp [show (354294 * k + 248216) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 183655) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 183655))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_183967 : ∀ k : Nat,
    iterate (262144 * k + 183967) 29 = 177147 * k + 124319 ∧
      177147 * k + 124319 < 262144 * k + 183967 := by
  intro k
  have h1 : C (262144 * k + 183967) = 786432 * k + 551902 := by
    unfold C
    simp [show (262144 * k + 183967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 551902) = 393216 * k + 275951 := by
    unfold C
    simp [show (786432 * k + 551902) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 275951) = 1179648 * k + 827854 := by
    unfold C
    simp [show (393216 * k + 275951) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 827854) = 589824 * k + 413927 := by
    unfold C
    simp [show (1179648 * k + 827854) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 413927) = 1769472 * k + 1241782 := by
    unfold C
    simp [show (589824 * k + 413927) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1241782) = 884736 * k + 620891 := by
    unfold C
    simp [show (1769472 * k + 1241782) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 620891) = 2654208 * k + 1862674 := by
    unfold C
    simp [show (884736 * k + 620891) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1862674) = 1327104 * k + 931337 := by
    unfold C
    simp [show (2654208 * k + 1862674) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 931337) = 3981312 * k + 2794012 := by
    unfold C
    simp [show (1327104 * k + 931337) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2794012) = 1990656 * k + 1397006 := by
    unfold C
    simp [show (3981312 * k + 2794012) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1397006) = 995328 * k + 698503 := by
    unfold C
    simp [show (1990656 * k + 1397006) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 698503) = 2985984 * k + 2095510 := by
    unfold C
    simp [show (995328 * k + 698503) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2095510) = 1492992 * k + 1047755 := by
    unfold C
    simp [show (2985984 * k + 2095510) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1047755) = 4478976 * k + 3143266 := by
    unfold C
    simp [show (1492992 * k + 1047755) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3143266) = 2239488 * k + 1571633 := by
    unfold C
    simp [show (4478976 * k + 3143266) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1571633) = 6718464 * k + 4714900 := by
    unfold C
    simp [show (2239488 * k + 1571633) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4714900) = 3359232 * k + 2357450 := by
    unfold C
    simp [show (6718464 * k + 4714900) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2357450) = 1679616 * k + 1178725 := by
    unfold C
    simp [show (3359232 * k + 2357450) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1178725) = 5038848 * k + 3536176 := by
    unfold C
    simp [show (1679616 * k + 1178725) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3536176) = 2519424 * k + 1768088 := by
    unfold C
    simp [show (5038848 * k + 3536176) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1768088) = 1259712 * k + 884044 := by
    unfold C
    simp [show (2519424 * k + 1768088) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 884044) = 629856 * k + 442022 := by
    unfold C
    simp [show (1259712 * k + 884044) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 442022) = 314928 * k + 221011 := by
    unfold C
    simp [show (629856 * k + 442022) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 221011) = 944784 * k + 663034 := by
    unfold C
    simp [show (314928 * k + 221011) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 663034) = 472392 * k + 331517 := by
    unfold C
    simp [show (944784 * k + 663034) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 331517) = 1417176 * k + 994552 := by
    unfold C
    simp [show (472392 * k + 331517) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 994552) = 708588 * k + 497276 := by
    unfold C
    simp [show (1417176 * k + 994552) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 497276) = 354294 * k + 248638 := by
    unfold C
    simp [show (708588 * k + 497276) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 248638) = 177147 * k + 124319 := by
    unfold C
    simp [show (354294 * k + 248638) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 183967) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 183967))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_184047 : ∀ k : Nat,
    iterate (262144 * k + 184047) 29 = 177147 * k + 124373 ∧
      177147 * k + 124373 < 262144 * k + 184047 := by
  intro k
  have h1 : C (262144 * k + 184047) = 786432 * k + 552142 := by
    unfold C
    simp [show (262144 * k + 184047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 552142) = 393216 * k + 276071 := by
    unfold C
    simp [show (786432 * k + 552142) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 276071) = 1179648 * k + 828214 := by
    unfold C
    simp [show (393216 * k + 276071) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 828214) = 589824 * k + 414107 := by
    unfold C
    simp [show (1179648 * k + 828214) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 414107) = 1769472 * k + 1242322 := by
    unfold C
    simp [show (589824 * k + 414107) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1242322) = 884736 * k + 621161 := by
    unfold C
    simp [show (1769472 * k + 1242322) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 621161) = 2654208 * k + 1863484 := by
    unfold C
    simp [show (884736 * k + 621161) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1863484) = 1327104 * k + 931742 := by
    unfold C
    simp [show (2654208 * k + 1863484) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 931742) = 663552 * k + 465871 := by
    unfold C
    simp [show (1327104 * k + 931742) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 465871) = 1990656 * k + 1397614 := by
    unfold C
    simp [show (663552 * k + 465871) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1397614) = 995328 * k + 698807 := by
    unfold C
    simp [show (1990656 * k + 1397614) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 698807) = 2985984 * k + 2096422 := by
    unfold C
    simp [show (995328 * k + 698807) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2096422) = 1492992 * k + 1048211 := by
    unfold C
    simp [show (2985984 * k + 2096422) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1048211) = 4478976 * k + 3144634 := by
    unfold C
    simp [show (1492992 * k + 1048211) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3144634) = 2239488 * k + 1572317 := by
    unfold C
    simp [show (4478976 * k + 3144634) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1572317) = 6718464 * k + 4716952 := by
    unfold C
    simp [show (2239488 * k + 1572317) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4716952) = 3359232 * k + 2358476 := by
    unfold C
    simp [show (6718464 * k + 4716952) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2358476) = 1679616 * k + 1179238 := by
    unfold C
    simp [show (3359232 * k + 2358476) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1179238) = 839808 * k + 589619 := by
    unfold C
    simp [show (1679616 * k + 1179238) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 589619) = 2519424 * k + 1768858 := by
    unfold C
    simp [show (839808 * k + 589619) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1768858) = 1259712 * k + 884429 := by
    unfold C
    simp [show (2519424 * k + 1768858) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 884429) = 3779136 * k + 2653288 := by
    unfold C
    simp [show (1259712 * k + 884429) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2653288) = 1889568 * k + 1326644 := by
    unfold C
    simp [show (3779136 * k + 2653288) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1326644) = 944784 * k + 663322 := by
    unfold C
    simp [show (1889568 * k + 1326644) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 663322) = 472392 * k + 331661 := by
    unfold C
    simp [show (944784 * k + 663322) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 331661) = 1417176 * k + 994984 := by
    unfold C
    simp [show (472392 * k + 331661) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 994984) = 708588 * k + 497492 := by
    unfold C
    simp [show (1417176 * k + 994984) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 497492) = 354294 * k + 248746 := by
    unfold C
    simp [show (708588 * k + 497492) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 248746) = 177147 * k + 124373 := by
    unfold C
    simp [show (354294 * k + 248746) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 184047) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 184047))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_185191 : ∀ k : Nat,
    iterate (262144 * k + 185191) 29 = 177147 * k + 125146 ∧
      177147 * k + 125146 < 262144 * k + 185191 := by
  intro k
  have h1 : C (262144 * k + 185191) = 786432 * k + 555574 := by
    unfold C
    simp [show (262144 * k + 185191) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 555574) = 393216 * k + 277787 := by
    unfold C
    simp [show (786432 * k + 555574) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 277787) = 1179648 * k + 833362 := by
    unfold C
    simp [show (393216 * k + 277787) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 833362) = 589824 * k + 416681 := by
    unfold C
    simp [show (1179648 * k + 833362) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 416681) = 1769472 * k + 1250044 := by
    unfold C
    simp [show (589824 * k + 416681) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1250044) = 884736 * k + 625022 := by
    unfold C
    simp [show (1769472 * k + 1250044) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 625022) = 442368 * k + 312511 := by
    unfold C
    simp [show (884736 * k + 625022) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 312511) = 1327104 * k + 937534 := by
    unfold C
    simp [show (442368 * k + 312511) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 937534) = 663552 * k + 468767 := by
    unfold C
    simp [show (1327104 * k + 937534) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 468767) = 1990656 * k + 1406302 := by
    unfold C
    simp [show (663552 * k + 468767) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1406302) = 995328 * k + 703151 := by
    unfold C
    simp [show (1990656 * k + 1406302) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 703151) = 2985984 * k + 2109454 := by
    unfold C
    simp [show (995328 * k + 703151) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2109454) = 1492992 * k + 1054727 := by
    unfold C
    simp [show (2985984 * k + 2109454) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1054727) = 4478976 * k + 3164182 := by
    unfold C
    simp [show (1492992 * k + 1054727) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3164182) = 2239488 * k + 1582091 := by
    unfold C
    simp [show (4478976 * k + 3164182) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1582091) = 6718464 * k + 4746274 := by
    unfold C
    simp [show (2239488 * k + 1582091) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4746274) = 3359232 * k + 2373137 := by
    unfold C
    simp [show (6718464 * k + 4746274) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2373137) = 10077696 * k + 7119412 := by
    unfold C
    simp [show (3359232 * k + 2373137) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 7119412) = 5038848 * k + 3559706 := by
    unfold C
    simp [show (10077696 * k + 7119412) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 3559706) = 2519424 * k + 1779853 := by
    unfold C
    simp [show (5038848 * k + 3559706) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1779853) = 7558272 * k + 5339560 := by
    unfold C
    simp [show (2519424 * k + 1779853) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 5339560) = 3779136 * k + 2669780 := by
    unfold C
    simp [show (7558272 * k + 5339560) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2669780) = 1889568 * k + 1334890 := by
    unfold C
    simp [show (3779136 * k + 2669780) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1334890) = 944784 * k + 667445 := by
    unfold C
    simp [show (1889568 * k + 1334890) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 667445) = 2834352 * k + 2002336 := by
    unfold C
    simp [show (944784 * k + 667445) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2002336) = 1417176 * k + 1001168 := by
    unfold C
    simp [show (2834352 * k + 2002336) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1001168) = 708588 * k + 500584 := by
    unfold C
    simp [show (1417176 * k + 1001168) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 500584) = 354294 * k + 250292 := by
    unfold C
    simp [show (708588 * k + 500584) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 250292) = 177147 * k + 125146 := by
    unfold C
    simp [show (354294 * k + 250292) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 185191) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 185191))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_185703 : ∀ k : Nat,
    iterate (262144 * k + 185703) 29 = 177147 * k + 125492 ∧
      177147 * k + 125492 < 262144 * k + 185703 := by
  intro k
  have h1 : C (262144 * k + 185703) = 786432 * k + 557110 := by
    unfold C
    simp [show (262144 * k + 185703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 557110) = 393216 * k + 278555 := by
    unfold C
    simp [show (786432 * k + 557110) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 278555) = 1179648 * k + 835666 := by
    unfold C
    simp [show (393216 * k + 278555) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 835666) = 589824 * k + 417833 := by
    unfold C
    simp [show (1179648 * k + 835666) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 417833) = 1769472 * k + 1253500 := by
    unfold C
    simp [show (589824 * k + 417833) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1253500) = 884736 * k + 626750 := by
    unfold C
    simp [show (1769472 * k + 1253500) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 626750) = 442368 * k + 313375 := by
    unfold C
    simp [show (884736 * k + 626750) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 313375) = 1327104 * k + 940126 := by
    unfold C
    simp [show (442368 * k + 313375) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 940126) = 663552 * k + 470063 := by
    unfold C
    simp [show (1327104 * k + 940126) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 470063) = 1990656 * k + 1410190 := by
    unfold C
    simp [show (663552 * k + 470063) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1410190) = 995328 * k + 705095 := by
    unfold C
    simp [show (1990656 * k + 1410190) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 705095) = 2985984 * k + 2115286 := by
    unfold C
    simp [show (995328 * k + 705095) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2115286) = 1492992 * k + 1057643 := by
    unfold C
    simp [show (2985984 * k + 2115286) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1057643) = 4478976 * k + 3172930 := by
    unfold C
    simp [show (1492992 * k + 1057643) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3172930) = 2239488 * k + 1586465 := by
    unfold C
    simp [show (4478976 * k + 3172930) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1586465) = 6718464 * k + 4759396 := by
    unfold C
    simp [show (2239488 * k + 1586465) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4759396) = 3359232 * k + 2379698 := by
    unfold C
    simp [show (6718464 * k + 4759396) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2379698) = 1679616 * k + 1189849 := by
    unfold C
    simp [show (3359232 * k + 2379698) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1189849) = 5038848 * k + 3569548 := by
    unfold C
    simp [show (1679616 * k + 1189849) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3569548) = 2519424 * k + 1784774 := by
    unfold C
    simp [show (5038848 * k + 3569548) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1784774) = 1259712 * k + 892387 := by
    unfold C
    simp [show (2519424 * k + 1784774) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 892387) = 3779136 * k + 2677162 := by
    unfold C
    simp [show (1259712 * k + 892387) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2677162) = 1889568 * k + 1338581 := by
    unfold C
    simp [show (3779136 * k + 2677162) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1338581) = 5668704 * k + 4015744 := by
    unfold C
    simp [show (1889568 * k + 1338581) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 4015744) = 2834352 * k + 2007872 := by
    unfold C
    simp [show (5668704 * k + 4015744) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2007872) = 1417176 * k + 1003936 := by
    unfold C
    simp [show (2834352 * k + 2007872) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1003936) = 708588 * k + 501968 := by
    unfold C
    simp [show (1417176 * k + 1003936) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 501968) = 354294 * k + 250984 := by
    unfold C
    simp [show (708588 * k + 501968) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 250984) = 177147 * k + 125492 := by
    unfold C
    simp [show (354294 * k + 250984) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 185703) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 185703))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_185883 : ∀ k : Nat,
    iterate (262144 * k + 185883) 29 = 177147 * k + 125614 ∧
      177147 * k + 125614 < 262144 * k + 185883 := by
  intro k
  have h1 : C (262144 * k + 185883) = 786432 * k + 557650 := by
    unfold C
    simp [show (262144 * k + 185883) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 557650) = 393216 * k + 278825 := by
    unfold C
    simp [show (786432 * k + 557650) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 278825) = 1179648 * k + 836476 := by
    unfold C
    simp [show (393216 * k + 278825) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 836476) = 589824 * k + 418238 := by
    unfold C
    simp [show (1179648 * k + 836476) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 418238) = 294912 * k + 209119 := by
    unfold C
    simp [show (589824 * k + 418238) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 209119) = 884736 * k + 627358 := by
    unfold C
    simp [show (294912 * k + 209119) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 627358) = 442368 * k + 313679 := by
    unfold C
    simp [show (884736 * k + 627358) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 313679) = 1327104 * k + 941038 := by
    unfold C
    simp [show (442368 * k + 313679) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 941038) = 663552 * k + 470519 := by
    unfold C
    simp [show (1327104 * k + 941038) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 470519) = 1990656 * k + 1411558 := by
    unfold C
    simp [show (663552 * k + 470519) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1411558) = 995328 * k + 705779 := by
    unfold C
    simp [show (1990656 * k + 1411558) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 705779) = 2985984 * k + 2117338 := by
    unfold C
    simp [show (995328 * k + 705779) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2117338) = 1492992 * k + 1058669 := by
    unfold C
    simp [show (2985984 * k + 2117338) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1058669) = 4478976 * k + 3176008 := by
    unfold C
    simp [show (1492992 * k + 1058669) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3176008) = 2239488 * k + 1588004 := by
    unfold C
    simp [show (4478976 * k + 3176008) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1588004) = 1119744 * k + 794002 := by
    unfold C
    simp [show (2239488 * k + 1588004) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 794002) = 559872 * k + 397001 := by
    unfold C
    simp [show (1119744 * k + 794002) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 397001) = 1679616 * k + 1191004 := by
    unfold C
    simp [show (559872 * k + 397001) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1191004) = 839808 * k + 595502 := by
    unfold C
    simp [show (1679616 * k + 1191004) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 595502) = 419904 * k + 297751 := by
    unfold C
    simp [show (839808 * k + 595502) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 297751) = 1259712 * k + 893254 := by
    unfold C
    simp [show (419904 * k + 297751) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 893254) = 629856 * k + 446627 := by
    unfold C
    simp [show (1259712 * k + 893254) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 446627) = 1889568 * k + 1339882 := by
    unfold C
    simp [show (629856 * k + 446627) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1339882) = 944784 * k + 669941 := by
    unfold C
    simp [show (1889568 * k + 1339882) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 669941) = 2834352 * k + 2009824 := by
    unfold C
    simp [show (944784 * k + 669941) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2009824) = 1417176 * k + 1004912 := by
    unfold C
    simp [show (2834352 * k + 2009824) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1004912) = 708588 * k + 502456 := by
    unfold C
    simp [show (1417176 * k + 1004912) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 502456) = 354294 * k + 251228 := by
    unfold C
    simp [show (708588 * k + 502456) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 251228) = 177147 * k + 125614 := by
    unfold C
    simp [show (354294 * k + 251228) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 185883) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 185883))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_185983 : ∀ k : Nat,
    iterate (262144 * k + 185983) 29 = 177147 * k + 125681 ∧
      177147 * k + 125681 < 262144 * k + 185983 := by
  intro k
  have h1 : C (262144 * k + 185983) = 786432 * k + 557950 := by
    unfold C
    simp [show (262144 * k + 185983) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 557950) = 393216 * k + 278975 := by
    unfold C
    simp [show (786432 * k + 557950) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 278975) = 1179648 * k + 836926 := by
    unfold C
    simp [show (393216 * k + 278975) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 836926) = 589824 * k + 418463 := by
    unfold C
    simp [show (1179648 * k + 836926) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 418463) = 1769472 * k + 1255390 := by
    unfold C
    simp [show (589824 * k + 418463) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1255390) = 884736 * k + 627695 := by
    unfold C
    simp [show (1769472 * k + 1255390) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 627695) = 2654208 * k + 1883086 := by
    unfold C
    simp [show (884736 * k + 627695) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1883086) = 1327104 * k + 941543 := by
    unfold C
    simp [show (2654208 * k + 1883086) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 941543) = 3981312 * k + 2824630 := by
    unfold C
    simp [show (1327104 * k + 941543) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2824630) = 1990656 * k + 1412315 := by
    unfold C
    simp [show (3981312 * k + 2824630) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1412315) = 5971968 * k + 4236946 := by
    unfold C
    simp [show (1990656 * k + 1412315) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4236946) = 2985984 * k + 2118473 := by
    unfold C
    simp [show (5971968 * k + 4236946) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2118473) = 8957952 * k + 6355420 := by
    unfold C
    simp [show (2985984 * k + 2118473) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 6355420) = 4478976 * k + 3177710 := by
    unfold C
    simp [show (8957952 * k + 6355420) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 3177710) = 2239488 * k + 1588855 := by
    unfold C
    simp [show (4478976 * k + 3177710) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1588855) = 6718464 * k + 4766566 := by
    unfold C
    simp [show (2239488 * k + 1588855) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4766566) = 3359232 * k + 2383283 := by
    unfold C
    simp [show (6718464 * k + 4766566) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2383283) = 10077696 * k + 7149850 := by
    unfold C
    simp [show (3359232 * k + 2383283) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 7149850) = 5038848 * k + 3574925 := by
    unfold C
    simp [show (10077696 * k + 7149850) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 3574925) = 15116544 * k + 10724776 := by
    unfold C
    simp [show (5038848 * k + 3574925) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 10724776) = 7558272 * k + 5362388 := by
    unfold C
    simp [show (15116544 * k + 10724776) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 5362388) = 3779136 * k + 2681194 := by
    unfold C
    simp [show (7558272 * k + 5362388) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2681194) = 1889568 * k + 1340597 := by
    unfold C
    simp [show (3779136 * k + 2681194) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1340597) = 5668704 * k + 4021792 := by
    unfold C
    simp [show (1889568 * k + 1340597) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 4021792) = 2834352 * k + 2010896 := by
    unfold C
    simp [show (5668704 * k + 4021792) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2010896) = 1417176 * k + 1005448 := by
    unfold C
    simp [show (2834352 * k + 2010896) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1005448) = 708588 * k + 502724 := by
    unfold C
    simp [show (1417176 * k + 1005448) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 502724) = 354294 * k + 251362 := by
    unfold C
    simp [show (708588 * k + 502724) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 251362) = 177147 * k + 125681 := by
    unfold C
    simp [show (354294 * k + 251362) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 185983) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 185983))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_186395 : ∀ k : Nat,
    iterate (262144 * k + 186395) 29 = 177147 * k + 125960 ∧
      177147 * k + 125960 < 262144 * k + 186395 := by
  intro k
  have h1 : C (262144 * k + 186395) = 786432 * k + 559186 := by
    unfold C
    simp [show (262144 * k + 186395) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 559186) = 393216 * k + 279593 := by
    unfold C
    simp [show (786432 * k + 559186) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 279593) = 1179648 * k + 838780 := by
    unfold C
    simp [show (393216 * k + 279593) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 838780) = 589824 * k + 419390 := by
    unfold C
    simp [show (1179648 * k + 838780) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 419390) = 294912 * k + 209695 := by
    unfold C
    simp [show (589824 * k + 419390) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 209695) = 884736 * k + 629086 := by
    unfold C
    simp [show (294912 * k + 209695) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 629086) = 442368 * k + 314543 := by
    unfold C
    simp [show (884736 * k + 629086) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 314543) = 1327104 * k + 943630 := by
    unfold C
    simp [show (442368 * k + 314543) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 943630) = 663552 * k + 471815 := by
    unfold C
    simp [show (1327104 * k + 943630) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 471815) = 1990656 * k + 1415446 := by
    unfold C
    simp [show (663552 * k + 471815) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1415446) = 995328 * k + 707723 := by
    unfold C
    simp [show (1990656 * k + 1415446) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 707723) = 2985984 * k + 2123170 := by
    unfold C
    simp [show (995328 * k + 707723) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2123170) = 1492992 * k + 1061585 := by
    unfold C
    simp [show (2985984 * k + 2123170) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1061585) = 4478976 * k + 3184756 := by
    unfold C
    simp [show (1492992 * k + 1061585) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3184756) = 2239488 * k + 1592378 := by
    unfold C
    simp [show (4478976 * k + 3184756) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1592378) = 1119744 * k + 796189 := by
    unfold C
    simp [show (2239488 * k + 1592378) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 796189) = 3359232 * k + 2388568 := by
    unfold C
    simp [show (1119744 * k + 796189) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2388568) = 1679616 * k + 1194284 := by
    unfold C
    simp [show (3359232 * k + 2388568) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1194284) = 839808 * k + 597142 := by
    unfold C
    simp [show (1679616 * k + 1194284) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 597142) = 419904 * k + 298571 := by
    unfold C
    simp [show (839808 * k + 597142) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 298571) = 1259712 * k + 895714 := by
    unfold C
    simp [show (419904 * k + 298571) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 895714) = 629856 * k + 447857 := by
    unfold C
    simp [show (1259712 * k + 895714) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 447857) = 1889568 * k + 1343572 := by
    unfold C
    simp [show (629856 * k + 447857) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1343572) = 944784 * k + 671786 := by
    unfold C
    simp [show (1889568 * k + 1343572) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 671786) = 472392 * k + 335893 := by
    unfold C
    simp [show (944784 * k + 671786) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 335893) = 1417176 * k + 1007680 := by
    unfold C
    simp [show (472392 * k + 335893) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1007680) = 708588 * k + 503840 := by
    unfold C
    simp [show (1417176 * k + 1007680) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 503840) = 354294 * k + 251920 := by
    unfold C
    simp [show (708588 * k + 503840) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 251920) = 177147 * k + 125960 := by
    unfold C
    simp [show (354294 * k + 251920) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 186395) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 186395))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_187375 : ∀ k : Nat,
    iterate (262144 * k + 187375) 29 = 177147 * k + 126622 ∧
      177147 * k + 126622 < 262144 * k + 187375 := by
  intro k
  have h1 : C (262144 * k + 187375) = 786432 * k + 562126 := by
    unfold C
    simp [show (262144 * k + 187375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 562126) = 393216 * k + 281063 := by
    unfold C
    simp [show (786432 * k + 562126) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 281063) = 1179648 * k + 843190 := by
    unfold C
    simp [show (393216 * k + 281063) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 843190) = 589824 * k + 421595 := by
    unfold C
    simp [show (1179648 * k + 843190) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 421595) = 1769472 * k + 1264786 := by
    unfold C
    simp [show (589824 * k + 421595) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1264786) = 884736 * k + 632393 := by
    unfold C
    simp [show (1769472 * k + 1264786) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 632393) = 2654208 * k + 1897180 := by
    unfold C
    simp [show (884736 * k + 632393) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1897180) = 1327104 * k + 948590 := by
    unfold C
    simp [show (2654208 * k + 1897180) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 948590) = 663552 * k + 474295 := by
    unfold C
    simp [show (1327104 * k + 948590) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 474295) = 1990656 * k + 1422886 := by
    unfold C
    simp [show (663552 * k + 474295) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1422886) = 995328 * k + 711443 := by
    unfold C
    simp [show (1990656 * k + 1422886) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 711443) = 2985984 * k + 2134330 := by
    unfold C
    simp [show (995328 * k + 711443) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2134330) = 1492992 * k + 1067165 := by
    unfold C
    simp [show (2985984 * k + 2134330) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1067165) = 4478976 * k + 3201496 := by
    unfold C
    simp [show (1492992 * k + 1067165) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3201496) = 2239488 * k + 1600748 := by
    unfold C
    simp [show (4478976 * k + 3201496) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1600748) = 1119744 * k + 800374 := by
    unfold C
    simp [show (2239488 * k + 1600748) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 800374) = 559872 * k + 400187 := by
    unfold C
    simp [show (1119744 * k + 800374) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 400187) = 1679616 * k + 1200562 := by
    unfold C
    simp [show (559872 * k + 400187) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1200562) = 839808 * k + 600281 := by
    unfold C
    simp [show (1679616 * k + 1200562) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 600281) = 2519424 * k + 1800844 := by
    unfold C
    simp [show (839808 * k + 600281) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1800844) = 1259712 * k + 900422 := by
    unfold C
    simp [show (2519424 * k + 1800844) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 900422) = 629856 * k + 450211 := by
    unfold C
    simp [show (1259712 * k + 900422) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 450211) = 1889568 * k + 1350634 := by
    unfold C
    simp [show (629856 * k + 450211) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1350634) = 944784 * k + 675317 := by
    unfold C
    simp [show (1889568 * k + 1350634) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 675317) = 2834352 * k + 2025952 := by
    unfold C
    simp [show (944784 * k + 675317) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2025952) = 1417176 * k + 1012976 := by
    unfold C
    simp [show (2834352 * k + 2025952) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1012976) = 708588 * k + 506488 := by
    unfold C
    simp [show (1417176 * k + 1012976) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 506488) = 354294 * k + 253244 := by
    unfold C
    simp [show (708588 * k + 506488) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 253244) = 177147 * k + 126622 := by
    unfold C
    simp [show (354294 * k + 253244) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 187375) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 187375))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard035
