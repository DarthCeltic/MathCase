import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard043

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_225999 : ∀ k : Nat,
    iterate (262144 * k + 225999) 29 = 177147 * k + 152723 ∧
      177147 * k + 152723 < 262144 * k + 225999 := by
  intro k
  have h1 : C (262144 * k + 225999) = 786432 * k + 677998 := by
    unfold C
    simp [show (262144 * k + 225999) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 677998) = 393216 * k + 338999 := by
    unfold C
    simp [show (786432 * k + 677998) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 338999) = 1179648 * k + 1016998 := by
    unfold C
    simp [show (393216 * k + 338999) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1016998) = 589824 * k + 508499 := by
    unfold C
    simp [show (1179648 * k + 1016998) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 508499) = 1769472 * k + 1525498 := by
    unfold C
    simp [show (589824 * k + 508499) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1525498) = 884736 * k + 762749 := by
    unfold C
    simp [show (1769472 * k + 1525498) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 762749) = 2654208 * k + 2288248 := by
    unfold C
    simp [show (884736 * k + 762749) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2288248) = 1327104 * k + 1144124 := by
    unfold C
    simp [show (2654208 * k + 2288248) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1144124) = 663552 * k + 572062 := by
    unfold C
    simp [show (1327104 * k + 1144124) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 572062) = 331776 * k + 286031 := by
    unfold C
    simp [show (663552 * k + 572062) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 286031) = 995328 * k + 858094 := by
    unfold C
    simp [show (331776 * k + 286031) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 858094) = 497664 * k + 429047 := by
    unfold C
    simp [show (995328 * k + 858094) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 429047) = 1492992 * k + 1287142 := by
    unfold C
    simp [show (497664 * k + 429047) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1287142) = 746496 * k + 643571 := by
    unfold C
    simp [show (1492992 * k + 1287142) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 643571) = 2239488 * k + 1930714 := by
    unfold C
    simp [show (746496 * k + 643571) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1930714) = 1119744 * k + 965357 := by
    unfold C
    simp [show (2239488 * k + 1930714) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 965357) = 3359232 * k + 2896072 := by
    unfold C
    simp [show (1119744 * k + 965357) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2896072) = 1679616 * k + 1448036 := by
    unfold C
    simp [show (3359232 * k + 2896072) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1448036) = 839808 * k + 724018 := by
    unfold C
    simp [show (1679616 * k + 1448036) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 724018) = 419904 * k + 362009 := by
    unfold C
    simp [show (839808 * k + 724018) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 362009) = 1259712 * k + 1086028 := by
    unfold C
    simp [show (419904 * k + 362009) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1086028) = 629856 * k + 543014 := by
    unfold C
    simp [show (1259712 * k + 1086028) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 543014) = 314928 * k + 271507 := by
    unfold C
    simp [show (629856 * k + 543014) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 271507) = 944784 * k + 814522 := by
    unfold C
    simp [show (314928 * k + 271507) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 814522) = 472392 * k + 407261 := by
    unfold C
    simp [show (944784 * k + 814522) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 407261) = 1417176 * k + 1221784 := by
    unfold C
    simp [show (472392 * k + 407261) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1221784) = 708588 * k + 610892 := by
    unfold C
    simp [show (1417176 * k + 1221784) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 610892) = 354294 * k + 305446 := by
    unfold C
    simp [show (708588 * k + 610892) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 305446) = 177147 * k + 152723 := by
    unfold C
    simp [show (354294 * k + 305446) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 225999) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 225999))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_226079 : ∀ k : Nat,
    iterate (262144 * k + 226079) 29 = 177147 * k + 152777 ∧
      177147 * k + 152777 < 262144 * k + 226079 := by
  intro k
  have h1 : C (262144 * k + 226079) = 786432 * k + 678238 := by
    unfold C
    simp [show (262144 * k + 226079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 678238) = 393216 * k + 339119 := by
    unfold C
    simp [show (786432 * k + 678238) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 339119) = 1179648 * k + 1017358 := by
    unfold C
    simp [show (393216 * k + 339119) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1017358) = 589824 * k + 508679 := by
    unfold C
    simp [show (1179648 * k + 1017358) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 508679) = 1769472 * k + 1526038 := by
    unfold C
    simp [show (589824 * k + 508679) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1526038) = 884736 * k + 763019 := by
    unfold C
    simp [show (1769472 * k + 1526038) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 763019) = 2654208 * k + 2289058 := by
    unfold C
    simp [show (884736 * k + 763019) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2289058) = 1327104 * k + 1144529 := by
    unfold C
    simp [show (2654208 * k + 2289058) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1144529) = 3981312 * k + 3433588 := by
    unfold C
    simp [show (1327104 * k + 1144529) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3433588) = 1990656 * k + 1716794 := by
    unfold C
    simp [show (3981312 * k + 3433588) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1716794) = 995328 * k + 858397 := by
    unfold C
    simp [show (1990656 * k + 1716794) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 858397) = 2985984 * k + 2575192 := by
    unfold C
    simp [show (995328 * k + 858397) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2575192) = 1492992 * k + 1287596 := by
    unfold C
    simp [show (2985984 * k + 2575192) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1287596) = 746496 * k + 643798 := by
    unfold C
    simp [show (1492992 * k + 1287596) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 643798) = 373248 * k + 321899 := by
    unfold C
    simp [show (746496 * k + 643798) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 321899) = 1119744 * k + 965698 := by
    unfold C
    simp [show (373248 * k + 321899) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 965698) = 559872 * k + 482849 := by
    unfold C
    simp [show (1119744 * k + 965698) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 482849) = 1679616 * k + 1448548 := by
    unfold C
    simp [show (559872 * k + 482849) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1448548) = 839808 * k + 724274 := by
    unfold C
    simp [show (1679616 * k + 1448548) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 724274) = 419904 * k + 362137 := by
    unfold C
    simp [show (839808 * k + 724274) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 362137) = 1259712 * k + 1086412 := by
    unfold C
    simp [show (419904 * k + 362137) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1086412) = 629856 * k + 543206 := by
    unfold C
    simp [show (1259712 * k + 1086412) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 543206) = 314928 * k + 271603 := by
    unfold C
    simp [show (629856 * k + 543206) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 271603) = 944784 * k + 814810 := by
    unfold C
    simp [show (314928 * k + 271603) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 814810) = 472392 * k + 407405 := by
    unfold C
    simp [show (944784 * k + 814810) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 407405) = 1417176 * k + 1222216 := by
    unfold C
    simp [show (472392 * k + 407405) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1222216) = 708588 * k + 611108 := by
    unfold C
    simp [show (1417176 * k + 1222216) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 611108) = 354294 * k + 305554 := by
    unfold C
    simp [show (708588 * k + 611108) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 305554) = 177147 * k + 152777 := by
    unfold C
    simp [show (354294 * k + 305554) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 226079) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 226079))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_226119 : ∀ k : Nat,
    iterate (262144 * k + 226119) 29 = 177147 * k + 152804 ∧
      177147 * k + 152804 < 262144 * k + 226119 := by
  intro k
  have h1 : C (262144 * k + 226119) = 786432 * k + 678358 := by
    unfold C
    simp [show (262144 * k + 226119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 678358) = 393216 * k + 339179 := by
    unfold C
    simp [show (786432 * k + 678358) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 339179) = 1179648 * k + 1017538 := by
    unfold C
    simp [show (393216 * k + 339179) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1017538) = 589824 * k + 508769 := by
    unfold C
    simp [show (1179648 * k + 1017538) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 508769) = 1769472 * k + 1526308 := by
    unfold C
    simp [show (589824 * k + 508769) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1526308) = 884736 * k + 763154 := by
    unfold C
    simp [show (1769472 * k + 1526308) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 763154) = 442368 * k + 381577 := by
    unfold C
    simp [show (884736 * k + 763154) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 381577) = 1327104 * k + 1144732 := by
    unfold C
    simp [show (442368 * k + 381577) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1144732) = 663552 * k + 572366 := by
    unfold C
    simp [show (1327104 * k + 1144732) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 572366) = 331776 * k + 286183 := by
    unfold C
    simp [show (663552 * k + 572366) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 286183) = 995328 * k + 858550 := by
    unfold C
    simp [show (331776 * k + 286183) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 858550) = 497664 * k + 429275 := by
    unfold C
    simp [show (995328 * k + 858550) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 429275) = 1492992 * k + 1287826 := by
    unfold C
    simp [show (497664 * k + 429275) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1287826) = 746496 * k + 643913 := by
    unfold C
    simp [show (1492992 * k + 1287826) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 643913) = 2239488 * k + 1931740 := by
    unfold C
    simp [show (746496 * k + 643913) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1931740) = 1119744 * k + 965870 := by
    unfold C
    simp [show (2239488 * k + 1931740) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 965870) = 559872 * k + 482935 := by
    unfold C
    simp [show (1119744 * k + 965870) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 482935) = 1679616 * k + 1448806 := by
    unfold C
    simp [show (559872 * k + 482935) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1448806) = 839808 * k + 724403 := by
    unfold C
    simp [show (1679616 * k + 1448806) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 724403) = 2519424 * k + 2173210 := by
    unfold C
    simp [show (839808 * k + 724403) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2173210) = 1259712 * k + 1086605 := by
    unfold C
    simp [show (2519424 * k + 2173210) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1086605) = 3779136 * k + 3259816 := by
    unfold C
    simp [show (1259712 * k + 1086605) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3259816) = 1889568 * k + 1629908 := by
    unfold C
    simp [show (3779136 * k + 3259816) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1629908) = 944784 * k + 814954 := by
    unfold C
    simp [show (1889568 * k + 1629908) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 814954) = 472392 * k + 407477 := by
    unfold C
    simp [show (944784 * k + 814954) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 407477) = 1417176 * k + 1222432 := by
    unfold C
    simp [show (472392 * k + 407477) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1222432) = 708588 * k + 611216 := by
    unfold C
    simp [show (1417176 * k + 1222432) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 611216) = 354294 * k + 305608 := by
    unfold C
    simp [show (708588 * k + 611216) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 305608) = 177147 * k + 152804 := by
    unfold C
    simp [show (354294 * k + 305608) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 226119) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 226119))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_226331 : ∀ k : Nat,
    iterate (262144 * k + 226331) 29 = 177147 * k + 152947 ∧
      177147 * k + 152947 < 262144 * k + 226331 := by
  intro k
  have h1 : C (262144 * k + 226331) = 786432 * k + 678994 := by
    unfold C
    simp [show (262144 * k + 226331) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 678994) = 393216 * k + 339497 := by
    unfold C
    simp [show (786432 * k + 678994) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 339497) = 1179648 * k + 1018492 := by
    unfold C
    simp [show (393216 * k + 339497) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1018492) = 589824 * k + 509246 := by
    unfold C
    simp [show (1179648 * k + 1018492) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 509246) = 294912 * k + 254623 := by
    unfold C
    simp [show (589824 * k + 509246) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 254623) = 884736 * k + 763870 := by
    unfold C
    simp [show (294912 * k + 254623) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 763870) = 442368 * k + 381935 := by
    unfold C
    simp [show (884736 * k + 763870) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 381935) = 1327104 * k + 1145806 := by
    unfold C
    simp [show (442368 * k + 381935) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1145806) = 663552 * k + 572903 := by
    unfold C
    simp [show (1327104 * k + 1145806) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 572903) = 1990656 * k + 1718710 := by
    unfold C
    simp [show (663552 * k + 572903) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1718710) = 995328 * k + 859355 := by
    unfold C
    simp [show (1990656 * k + 1718710) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 859355) = 2985984 * k + 2578066 := by
    unfold C
    simp [show (995328 * k + 859355) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2578066) = 1492992 * k + 1289033 := by
    unfold C
    simp [show (2985984 * k + 2578066) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1289033) = 4478976 * k + 3867100 := by
    unfold C
    simp [show (1492992 * k + 1289033) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3867100) = 2239488 * k + 1933550 := by
    unfold C
    simp [show (4478976 * k + 3867100) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1933550) = 1119744 * k + 966775 := by
    unfold C
    simp [show (2239488 * k + 1933550) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 966775) = 3359232 * k + 2900326 := by
    unfold C
    simp [show (1119744 * k + 966775) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2900326) = 1679616 * k + 1450163 := by
    unfold C
    simp [show (3359232 * k + 2900326) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1450163) = 5038848 * k + 4350490 := by
    unfold C
    simp [show (1679616 * k + 1450163) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4350490) = 2519424 * k + 2175245 := by
    unfold C
    simp [show (5038848 * k + 4350490) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2175245) = 7558272 * k + 6525736 := by
    unfold C
    simp [show (2519424 * k + 2175245) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 6525736) = 3779136 * k + 3262868 := by
    unfold C
    simp [show (7558272 * k + 6525736) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3262868) = 1889568 * k + 1631434 := by
    unfold C
    simp [show (3779136 * k + 3262868) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1631434) = 944784 * k + 815717 := by
    unfold C
    simp [show (1889568 * k + 1631434) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 815717) = 2834352 * k + 2447152 := by
    unfold C
    simp [show (944784 * k + 815717) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2447152) = 1417176 * k + 1223576 := by
    unfold C
    simp [show (2834352 * k + 2447152) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1223576) = 708588 * k + 611788 := by
    unfold C
    simp [show (1417176 * k + 1223576) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 611788) = 354294 * k + 305894 := by
    unfold C
    simp [show (708588 * k + 611788) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 305894) = 177147 * k + 152947 := by
    unfold C
    simp [show (354294 * k + 305894) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 226331) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 226331))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_226559 : ∀ k : Nat,
    iterate (262144 * k + 226559) 29 = 177147 * k + 153101 ∧
      177147 * k + 153101 < 262144 * k + 226559 := by
  intro k
  have h1 : C (262144 * k + 226559) = 786432 * k + 679678 := by
    unfold C
    simp [show (262144 * k + 226559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 679678) = 393216 * k + 339839 := by
    unfold C
    simp [show (786432 * k + 679678) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 339839) = 1179648 * k + 1019518 := by
    unfold C
    simp [show (393216 * k + 339839) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1019518) = 589824 * k + 509759 := by
    unfold C
    simp [show (1179648 * k + 1019518) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 509759) = 1769472 * k + 1529278 := by
    unfold C
    simp [show (589824 * k + 509759) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1529278) = 884736 * k + 764639 := by
    unfold C
    simp [show (1769472 * k + 1529278) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 764639) = 2654208 * k + 2293918 := by
    unfold C
    simp [show (884736 * k + 764639) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2293918) = 1327104 * k + 1146959 := by
    unfold C
    simp [show (2654208 * k + 2293918) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1146959) = 3981312 * k + 3440878 := by
    unfold C
    simp [show (1327104 * k + 1146959) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3440878) = 1990656 * k + 1720439 := by
    unfold C
    simp [show (3981312 * k + 3440878) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1720439) = 5971968 * k + 5161318 := by
    unfold C
    simp [show (1990656 * k + 1720439) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5161318) = 2985984 * k + 2580659 := by
    unfold C
    simp [show (5971968 * k + 5161318) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2580659) = 8957952 * k + 7741978 := by
    unfold C
    simp [show (2985984 * k + 2580659) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 7741978) = 4478976 * k + 3870989 := by
    unfold C
    simp [show (8957952 * k + 7741978) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 3870989) = 13436928 * k + 11612968 := by
    unfold C
    simp [show (4478976 * k + 3870989) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 11612968) = 6718464 * k + 5806484 := by
    unfold C
    simp [show (13436928 * k + 11612968) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 5806484) = 3359232 * k + 2903242 := by
    unfold C
    simp [show (6718464 * k + 5806484) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2903242) = 1679616 * k + 1451621 := by
    unfold C
    simp [show (3359232 * k + 2903242) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1451621) = 5038848 * k + 4354864 := by
    unfold C
    simp [show (1679616 * k + 1451621) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4354864) = 2519424 * k + 2177432 := by
    unfold C
    simp [show (5038848 * k + 4354864) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2177432) = 1259712 * k + 1088716 := by
    unfold C
    simp [show (2519424 * k + 2177432) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1088716) = 629856 * k + 544358 := by
    unfold C
    simp [show (1259712 * k + 1088716) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 544358) = 314928 * k + 272179 := by
    unfold C
    simp [show (629856 * k + 544358) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 272179) = 944784 * k + 816538 := by
    unfold C
    simp [show (314928 * k + 272179) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 816538) = 472392 * k + 408269 := by
    unfold C
    simp [show (944784 * k + 816538) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 408269) = 1417176 * k + 1224808 := by
    unfold C
    simp [show (472392 * k + 408269) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1224808) = 708588 * k + 612404 := by
    unfold C
    simp [show (1417176 * k + 1224808) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 612404) = 354294 * k + 306202 := by
    unfold C
    simp [show (708588 * k + 612404) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 306202) = 177147 * k + 153101 := by
    unfold C
    simp [show (354294 * k + 306202) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 226559) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 226559))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_227567 : ∀ k : Nat,
    iterate (262144 * k + 227567) 29 = 177147 * k + 153782 ∧
      177147 * k + 153782 < 262144 * k + 227567 := by
  intro k
  have h1 : C (262144 * k + 227567) = 786432 * k + 682702 := by
    unfold C
    simp [show (262144 * k + 227567) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 682702) = 393216 * k + 341351 := by
    unfold C
    simp [show (786432 * k + 682702) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 341351) = 1179648 * k + 1024054 := by
    unfold C
    simp [show (393216 * k + 341351) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1024054) = 589824 * k + 512027 := by
    unfold C
    simp [show (1179648 * k + 1024054) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 512027) = 1769472 * k + 1536082 := by
    unfold C
    simp [show (589824 * k + 512027) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1536082) = 884736 * k + 768041 := by
    unfold C
    simp [show (1769472 * k + 1536082) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 768041) = 2654208 * k + 2304124 := by
    unfold C
    simp [show (884736 * k + 768041) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2304124) = 1327104 * k + 1152062 := by
    unfold C
    simp [show (2654208 * k + 2304124) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1152062) = 663552 * k + 576031 := by
    unfold C
    simp [show (1327104 * k + 1152062) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 576031) = 1990656 * k + 1728094 := by
    unfold C
    simp [show (663552 * k + 576031) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1728094) = 995328 * k + 864047 := by
    unfold C
    simp [show (1990656 * k + 1728094) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 864047) = 2985984 * k + 2592142 := by
    unfold C
    simp [show (995328 * k + 864047) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2592142) = 1492992 * k + 1296071 := by
    unfold C
    simp [show (2985984 * k + 2592142) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1296071) = 4478976 * k + 3888214 := by
    unfold C
    simp [show (1492992 * k + 1296071) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3888214) = 2239488 * k + 1944107 := by
    unfold C
    simp [show (4478976 * k + 3888214) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1944107) = 6718464 * k + 5832322 := by
    unfold C
    simp [show (2239488 * k + 1944107) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 5832322) = 3359232 * k + 2916161 := by
    unfold C
    simp [show (6718464 * k + 5832322) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2916161) = 10077696 * k + 8748484 := by
    unfold C
    simp [show (3359232 * k + 2916161) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 8748484) = 5038848 * k + 4374242 := by
    unfold C
    simp [show (10077696 * k + 8748484) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 4374242) = 2519424 * k + 2187121 := by
    unfold C
    simp [show (5038848 * k + 4374242) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2187121) = 7558272 * k + 6561364 := by
    unfold C
    simp [show (2519424 * k + 2187121) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 6561364) = 3779136 * k + 3280682 := by
    unfold C
    simp [show (7558272 * k + 6561364) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3280682) = 1889568 * k + 1640341 := by
    unfold C
    simp [show (3779136 * k + 3280682) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1640341) = 5668704 * k + 4921024 := by
    unfold C
    simp [show (1889568 * k + 1640341) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 4921024) = 2834352 * k + 2460512 := by
    unfold C
    simp [show (5668704 * k + 4921024) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2460512) = 1417176 * k + 1230256 := by
    unfold C
    simp [show (2834352 * k + 2460512) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1230256) = 708588 * k + 615128 := by
    unfold C
    simp [show (1417176 * k + 1230256) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 615128) = 354294 * k + 307564 := by
    unfold C
    simp [show (708588 * k + 615128) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 307564) = 177147 * k + 153782 := by
    unfold C
    simp [show (354294 * k + 307564) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 227567) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 227567))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_228347 : ∀ k : Nat,
    iterate (262144 * k + 228347) 29 = 177147 * k + 154310 ∧
      177147 * k + 154310 < 262144 * k + 228347 := by
  intro k
  have h1 : C (262144 * k + 228347) = 786432 * k + 685042 := by
    unfold C
    simp [show (262144 * k + 228347) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 685042) = 393216 * k + 342521 := by
    unfold C
    simp [show (786432 * k + 685042) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 342521) = 1179648 * k + 1027564 := by
    unfold C
    simp [show (393216 * k + 342521) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1027564) = 589824 * k + 513782 := by
    unfold C
    simp [show (1179648 * k + 1027564) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 513782) = 294912 * k + 256891 := by
    unfold C
    simp [show (589824 * k + 513782) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 256891) = 884736 * k + 770674 := by
    unfold C
    simp [show (294912 * k + 256891) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 770674) = 442368 * k + 385337 := by
    unfold C
    simp [show (884736 * k + 770674) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 385337) = 1327104 * k + 1156012 := by
    unfold C
    simp [show (442368 * k + 385337) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1156012) = 663552 * k + 578006 := by
    unfold C
    simp [show (1327104 * k + 1156012) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 578006) = 331776 * k + 289003 := by
    unfold C
    simp [show (663552 * k + 578006) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 289003) = 995328 * k + 867010 := by
    unfold C
    simp [show (331776 * k + 289003) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 867010) = 497664 * k + 433505 := by
    unfold C
    simp [show (995328 * k + 867010) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 433505) = 1492992 * k + 1300516 := by
    unfold C
    simp [show (497664 * k + 433505) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1300516) = 746496 * k + 650258 := by
    unfold C
    simp [show (1492992 * k + 1300516) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 650258) = 373248 * k + 325129 := by
    unfold C
    simp [show (746496 * k + 650258) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 325129) = 1119744 * k + 975388 := by
    unfold C
    simp [show (373248 * k + 325129) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 975388) = 559872 * k + 487694 := by
    unfold C
    simp [show (1119744 * k + 975388) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 487694) = 279936 * k + 243847 := by
    unfold C
    simp [show (559872 * k + 487694) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 243847) = 839808 * k + 731542 := by
    unfold C
    simp [show (279936 * k + 243847) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 731542) = 419904 * k + 365771 := by
    unfold C
    simp [show (839808 * k + 731542) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 365771) = 1259712 * k + 1097314 := by
    unfold C
    simp [show (419904 * k + 365771) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1097314) = 629856 * k + 548657 := by
    unfold C
    simp [show (1259712 * k + 1097314) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 548657) = 1889568 * k + 1645972 := by
    unfold C
    simp [show (629856 * k + 548657) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1645972) = 944784 * k + 822986 := by
    unfold C
    simp [show (1889568 * k + 1645972) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 822986) = 472392 * k + 411493 := by
    unfold C
    simp [show (944784 * k + 822986) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 411493) = 1417176 * k + 1234480 := by
    unfold C
    simp [show (472392 * k + 411493) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1234480) = 708588 * k + 617240 := by
    unfold C
    simp [show (1417176 * k + 1234480) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 617240) = 354294 * k + 308620 := by
    unfold C
    simp [show (708588 * k + 617240) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 308620) = 177147 * k + 154310 := by
    unfold C
    simp [show (354294 * k + 308620) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 228347) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 228347))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_228591 : ∀ k : Nat,
    iterate (262144 * k + 228591) 29 = 177147 * k + 154474 ∧
      177147 * k + 154474 < 262144 * k + 228591 := by
  intro k
  have h1 : C (262144 * k + 228591) = 786432 * k + 685774 := by
    unfold C
    simp [show (262144 * k + 228591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 685774) = 393216 * k + 342887 := by
    unfold C
    simp [show (786432 * k + 685774) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 342887) = 1179648 * k + 1028662 := by
    unfold C
    simp [show (393216 * k + 342887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1028662) = 589824 * k + 514331 := by
    unfold C
    simp [show (1179648 * k + 1028662) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 514331) = 1769472 * k + 1542994 := by
    unfold C
    simp [show (589824 * k + 514331) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1542994) = 884736 * k + 771497 := by
    unfold C
    simp [show (1769472 * k + 1542994) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 771497) = 2654208 * k + 2314492 := by
    unfold C
    simp [show (884736 * k + 771497) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2314492) = 1327104 * k + 1157246 := by
    unfold C
    simp [show (2654208 * k + 2314492) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1157246) = 663552 * k + 578623 := by
    unfold C
    simp [show (1327104 * k + 1157246) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 578623) = 1990656 * k + 1735870 := by
    unfold C
    simp [show (663552 * k + 578623) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1735870) = 995328 * k + 867935 := by
    unfold C
    simp [show (1990656 * k + 1735870) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 867935) = 2985984 * k + 2603806 := by
    unfold C
    simp [show (995328 * k + 867935) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2603806) = 1492992 * k + 1301903 := by
    unfold C
    simp [show (2985984 * k + 2603806) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1301903) = 4478976 * k + 3905710 := by
    unfold C
    simp [show (1492992 * k + 1301903) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3905710) = 2239488 * k + 1952855 := by
    unfold C
    simp [show (4478976 * k + 3905710) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1952855) = 6718464 * k + 5858566 := by
    unfold C
    simp [show (2239488 * k + 1952855) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 5858566) = 3359232 * k + 2929283 := by
    unfold C
    simp [show (6718464 * k + 5858566) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2929283) = 10077696 * k + 8787850 := by
    unfold C
    simp [show (3359232 * k + 2929283) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 8787850) = 5038848 * k + 4393925 := by
    unfold C
    simp [show (10077696 * k + 8787850) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 4393925) = 15116544 * k + 13181776 := by
    unfold C
    simp [show (5038848 * k + 4393925) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 13181776) = 7558272 * k + 6590888 := by
    unfold C
    simp [show (15116544 * k + 13181776) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 6590888) = 3779136 * k + 3295444 := by
    unfold C
    simp [show (7558272 * k + 6590888) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3295444) = 1889568 * k + 1647722 := by
    unfold C
    simp [show (3779136 * k + 3295444) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1647722) = 944784 * k + 823861 := by
    unfold C
    simp [show (1889568 * k + 1647722) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 823861) = 2834352 * k + 2471584 := by
    unfold C
    simp [show (944784 * k + 823861) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2471584) = 1417176 * k + 1235792 := by
    unfold C
    simp [show (2834352 * k + 2471584) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1235792) = 708588 * k + 617896 := by
    unfold C
    simp [show (1417176 * k + 1235792) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 617896) = 354294 * k + 308948 := by
    unfold C
    simp [show (708588 * k + 617896) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 308948) = 177147 * k + 154474 := by
    unfold C
    simp [show (354294 * k + 308948) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 228591) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 228591))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_228635 : ∀ k : Nat,
    iterate (262144 * k + 228635) 29 = 177147 * k + 154504 ∧
      177147 * k + 154504 < 262144 * k + 228635 := by
  intro k
  have h1 : C (262144 * k + 228635) = 786432 * k + 685906 := by
    unfold C
    simp [show (262144 * k + 228635) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 685906) = 393216 * k + 342953 := by
    unfold C
    simp [show (786432 * k + 685906) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 342953) = 1179648 * k + 1028860 := by
    unfold C
    simp [show (393216 * k + 342953) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1028860) = 589824 * k + 514430 := by
    unfold C
    simp [show (1179648 * k + 1028860) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 514430) = 294912 * k + 257215 := by
    unfold C
    simp [show (589824 * k + 514430) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 257215) = 884736 * k + 771646 := by
    unfold C
    simp [show (294912 * k + 257215) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 771646) = 442368 * k + 385823 := by
    unfold C
    simp [show (884736 * k + 771646) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 385823) = 1327104 * k + 1157470 := by
    unfold C
    simp [show (442368 * k + 385823) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1157470) = 663552 * k + 578735 := by
    unfold C
    simp [show (1327104 * k + 1157470) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 578735) = 1990656 * k + 1736206 := by
    unfold C
    simp [show (663552 * k + 578735) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1736206) = 995328 * k + 868103 := by
    unfold C
    simp [show (1990656 * k + 1736206) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 868103) = 2985984 * k + 2604310 := by
    unfold C
    simp [show (995328 * k + 868103) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2604310) = 1492992 * k + 1302155 := by
    unfold C
    simp [show (2985984 * k + 2604310) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1302155) = 4478976 * k + 3906466 := by
    unfold C
    simp [show (1492992 * k + 1302155) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3906466) = 2239488 * k + 1953233 := by
    unfold C
    simp [show (4478976 * k + 3906466) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1953233) = 6718464 * k + 5859700 := by
    unfold C
    simp [show (2239488 * k + 1953233) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 5859700) = 3359232 * k + 2929850 := by
    unfold C
    simp [show (6718464 * k + 5859700) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2929850) = 1679616 * k + 1464925 := by
    unfold C
    simp [show (3359232 * k + 2929850) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1464925) = 5038848 * k + 4394776 := by
    unfold C
    simp [show (1679616 * k + 1464925) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4394776) = 2519424 * k + 2197388 := by
    unfold C
    simp [show (5038848 * k + 4394776) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2197388) = 1259712 * k + 1098694 := by
    unfold C
    simp [show (2519424 * k + 2197388) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1098694) = 629856 * k + 549347 := by
    unfold C
    simp [show (1259712 * k + 1098694) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 549347) = 1889568 * k + 1648042 := by
    unfold C
    simp [show (629856 * k + 549347) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1648042) = 944784 * k + 824021 := by
    unfold C
    simp [show (1889568 * k + 1648042) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 824021) = 2834352 * k + 2472064 := by
    unfold C
    simp [show (944784 * k + 824021) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2472064) = 1417176 * k + 1236032 := by
    unfold C
    simp [show (2834352 * k + 2472064) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1236032) = 708588 * k + 618016 := by
    unfold C
    simp [show (1417176 * k + 1236032) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 618016) = 354294 * k + 309008 := by
    unfold C
    simp [show (708588 * k + 618016) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 309008) = 177147 * k + 154504 := by
    unfold C
    simp [show (354294 * k + 309008) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 228635) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 228635))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_229023 : ∀ k : Nat,
    iterate (262144 * k + 229023) 29 = 177147 * k + 154766 ∧
      177147 * k + 154766 < 262144 * k + 229023 := by
  intro k
  have h1 : C (262144 * k + 229023) = 786432 * k + 687070 := by
    unfold C
    simp [show (262144 * k + 229023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 687070) = 393216 * k + 343535 := by
    unfold C
    simp [show (786432 * k + 687070) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 343535) = 1179648 * k + 1030606 := by
    unfold C
    simp [show (393216 * k + 343535) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1030606) = 589824 * k + 515303 := by
    unfold C
    simp [show (1179648 * k + 1030606) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 515303) = 1769472 * k + 1545910 := by
    unfold C
    simp [show (589824 * k + 515303) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1545910) = 884736 * k + 772955 := by
    unfold C
    simp [show (1769472 * k + 1545910) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 772955) = 2654208 * k + 2318866 := by
    unfold C
    simp [show (884736 * k + 772955) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2318866) = 1327104 * k + 1159433 := by
    unfold C
    simp [show (2654208 * k + 2318866) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1159433) = 3981312 * k + 3478300 := by
    unfold C
    simp [show (1327104 * k + 1159433) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3478300) = 1990656 * k + 1739150 := by
    unfold C
    simp [show (3981312 * k + 3478300) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1739150) = 995328 * k + 869575 := by
    unfold C
    simp [show (1990656 * k + 1739150) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 869575) = 2985984 * k + 2608726 := by
    unfold C
    simp [show (995328 * k + 869575) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2608726) = 1492992 * k + 1304363 := by
    unfold C
    simp [show (2985984 * k + 2608726) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1304363) = 4478976 * k + 3913090 := by
    unfold C
    simp [show (1492992 * k + 1304363) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3913090) = 2239488 * k + 1956545 := by
    unfold C
    simp [show (4478976 * k + 3913090) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1956545) = 6718464 * k + 5869636 := by
    unfold C
    simp [show (2239488 * k + 1956545) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 5869636) = 3359232 * k + 2934818 := by
    unfold C
    simp [show (6718464 * k + 5869636) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2934818) = 1679616 * k + 1467409 := by
    unfold C
    simp [show (3359232 * k + 2934818) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1467409) = 5038848 * k + 4402228 := by
    unfold C
    simp [show (1679616 * k + 1467409) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4402228) = 2519424 * k + 2201114 := by
    unfold C
    simp [show (5038848 * k + 4402228) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2201114) = 1259712 * k + 1100557 := by
    unfold C
    simp [show (2519424 * k + 2201114) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1100557) = 3779136 * k + 3301672 := by
    unfold C
    simp [show (1259712 * k + 1100557) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3301672) = 1889568 * k + 1650836 := by
    unfold C
    simp [show (3779136 * k + 3301672) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1650836) = 944784 * k + 825418 := by
    unfold C
    simp [show (1889568 * k + 1650836) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 825418) = 472392 * k + 412709 := by
    unfold C
    simp [show (944784 * k + 825418) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 412709) = 1417176 * k + 1238128 := by
    unfold C
    simp [show (472392 * k + 412709) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1238128) = 708588 * k + 619064 := by
    unfold C
    simp [show (1417176 * k + 1238128) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 619064) = 354294 * k + 309532 := by
    unfold C
    simp [show (708588 * k + 619064) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 309532) = 177147 * k + 154766 := by
    unfold C
    simp [show (354294 * k + 309532) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 229023) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 229023))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_229115 : ∀ k : Nat,
    iterate (262144 * k + 229115) 29 = 177147 * k + 154829 ∧
      177147 * k + 154829 < 262144 * k + 229115 := by
  intro k
  have h1 : C (262144 * k + 229115) = 786432 * k + 687346 := by
    unfold C
    simp [show (262144 * k + 229115) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 687346) = 393216 * k + 343673 := by
    unfold C
    simp [show (786432 * k + 687346) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 343673) = 1179648 * k + 1031020 := by
    unfold C
    simp [show (393216 * k + 343673) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1031020) = 589824 * k + 515510 := by
    unfold C
    simp [show (1179648 * k + 1031020) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 515510) = 294912 * k + 257755 := by
    unfold C
    simp [show (589824 * k + 515510) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 257755) = 884736 * k + 773266 := by
    unfold C
    simp [show (294912 * k + 257755) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 773266) = 442368 * k + 386633 := by
    unfold C
    simp [show (884736 * k + 773266) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 386633) = 1327104 * k + 1159900 := by
    unfold C
    simp [show (442368 * k + 386633) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1159900) = 663552 * k + 579950 := by
    unfold C
    simp [show (1327104 * k + 1159900) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 579950) = 331776 * k + 289975 := by
    unfold C
    simp [show (663552 * k + 579950) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 289975) = 995328 * k + 869926 := by
    unfold C
    simp [show (331776 * k + 289975) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 869926) = 497664 * k + 434963 := by
    unfold C
    simp [show (995328 * k + 869926) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 434963) = 1492992 * k + 1304890 := by
    unfold C
    simp [show (497664 * k + 434963) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1304890) = 746496 * k + 652445 := by
    unfold C
    simp [show (1492992 * k + 1304890) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 652445) = 2239488 * k + 1957336 := by
    unfold C
    simp [show (746496 * k + 652445) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1957336) = 1119744 * k + 978668 := by
    unfold C
    simp [show (2239488 * k + 1957336) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 978668) = 559872 * k + 489334 := by
    unfold C
    simp [show (1119744 * k + 978668) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 489334) = 279936 * k + 244667 := by
    unfold C
    simp [show (559872 * k + 489334) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 244667) = 839808 * k + 734002 := by
    unfold C
    simp [show (279936 * k + 244667) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 734002) = 419904 * k + 367001 := by
    unfold C
    simp [show (839808 * k + 734002) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 367001) = 1259712 * k + 1101004 := by
    unfold C
    simp [show (419904 * k + 367001) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1101004) = 629856 * k + 550502 := by
    unfold C
    simp [show (1259712 * k + 1101004) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 550502) = 314928 * k + 275251 := by
    unfold C
    simp [show (629856 * k + 550502) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 275251) = 944784 * k + 825754 := by
    unfold C
    simp [show (314928 * k + 275251) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 825754) = 472392 * k + 412877 := by
    unfold C
    simp [show (944784 * k + 825754) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 412877) = 1417176 * k + 1238632 := by
    unfold C
    simp [show (472392 * k + 412877) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1238632) = 708588 * k + 619316 := by
    unfold C
    simp [show (1417176 * k + 1238632) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 619316) = 354294 * k + 309658 := by
    unfold C
    simp [show (708588 * k + 619316) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 309658) = 177147 * k + 154829 := by
    unfold C
    simp [show (354294 * k + 309658) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 229115) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 229115))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_229403 : ∀ k : Nat,
    iterate (262144 * k + 229403) 29 = 177147 * k + 155023 ∧
      177147 * k + 155023 < 262144 * k + 229403 := by
  intro k
  have h1 : C (262144 * k + 229403) = 786432 * k + 688210 := by
    unfold C
    simp [show (262144 * k + 229403) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 688210) = 393216 * k + 344105 := by
    unfold C
    simp [show (786432 * k + 688210) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 344105) = 1179648 * k + 1032316 := by
    unfold C
    simp [show (393216 * k + 344105) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1032316) = 589824 * k + 516158 := by
    unfold C
    simp [show (1179648 * k + 1032316) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 516158) = 294912 * k + 258079 := by
    unfold C
    simp [show (589824 * k + 516158) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 258079) = 884736 * k + 774238 := by
    unfold C
    simp [show (294912 * k + 258079) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 774238) = 442368 * k + 387119 := by
    unfold C
    simp [show (884736 * k + 774238) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 387119) = 1327104 * k + 1161358 := by
    unfold C
    simp [show (442368 * k + 387119) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1161358) = 663552 * k + 580679 := by
    unfold C
    simp [show (1327104 * k + 1161358) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 580679) = 1990656 * k + 1742038 := by
    unfold C
    simp [show (663552 * k + 580679) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1742038) = 995328 * k + 871019 := by
    unfold C
    simp [show (1990656 * k + 1742038) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 871019) = 2985984 * k + 2613058 := by
    unfold C
    simp [show (995328 * k + 871019) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2613058) = 1492992 * k + 1306529 := by
    unfold C
    simp [show (2985984 * k + 2613058) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1306529) = 4478976 * k + 3919588 := by
    unfold C
    simp [show (1492992 * k + 1306529) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3919588) = 2239488 * k + 1959794 := by
    unfold C
    simp [show (4478976 * k + 3919588) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1959794) = 1119744 * k + 979897 := by
    unfold C
    simp [show (2239488 * k + 1959794) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 979897) = 3359232 * k + 2939692 := by
    unfold C
    simp [show (1119744 * k + 979897) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2939692) = 1679616 * k + 1469846 := by
    unfold C
    simp [show (3359232 * k + 2939692) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1469846) = 839808 * k + 734923 := by
    unfold C
    simp [show (1679616 * k + 1469846) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 734923) = 2519424 * k + 2204770 := by
    unfold C
    simp [show (839808 * k + 734923) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2204770) = 1259712 * k + 1102385 := by
    unfold C
    simp [show (2519424 * k + 2204770) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1102385) = 3779136 * k + 3307156 := by
    unfold C
    simp [show (1259712 * k + 1102385) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3307156) = 1889568 * k + 1653578 := by
    unfold C
    simp [show (3779136 * k + 3307156) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1653578) = 944784 * k + 826789 := by
    unfold C
    simp [show (1889568 * k + 1653578) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 826789) = 2834352 * k + 2480368 := by
    unfold C
    simp [show (944784 * k + 826789) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2480368) = 1417176 * k + 1240184 := by
    unfold C
    simp [show (2834352 * k + 2480368) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1240184) = 708588 * k + 620092 := by
    unfold C
    simp [show (1417176 * k + 1240184) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 620092) = 354294 * k + 310046 := by
    unfold C
    simp [show (708588 * k + 620092) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 310046) = 177147 * k + 155023 := by
    unfold C
    simp [show (354294 * k + 310046) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 229403) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 229403))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_229447 : ∀ k : Nat,
    iterate (262144 * k + 229447) 29 = 177147 * k + 155053 ∧
      177147 * k + 155053 < 262144 * k + 229447 := by
  intro k
  have h1 : C (262144 * k + 229447) = 786432 * k + 688342 := by
    unfold C
    simp [show (262144 * k + 229447) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 688342) = 393216 * k + 344171 := by
    unfold C
    simp [show (786432 * k + 688342) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 344171) = 1179648 * k + 1032514 := by
    unfold C
    simp [show (393216 * k + 344171) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1032514) = 589824 * k + 516257 := by
    unfold C
    simp [show (1179648 * k + 1032514) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 516257) = 1769472 * k + 1548772 := by
    unfold C
    simp [show (589824 * k + 516257) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1548772) = 884736 * k + 774386 := by
    unfold C
    simp [show (1769472 * k + 1548772) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 774386) = 442368 * k + 387193 := by
    unfold C
    simp [show (884736 * k + 774386) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 387193) = 1327104 * k + 1161580 := by
    unfold C
    simp [show (442368 * k + 387193) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1161580) = 663552 * k + 580790 := by
    unfold C
    simp [show (1327104 * k + 1161580) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 580790) = 331776 * k + 290395 := by
    unfold C
    simp [show (663552 * k + 580790) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 290395) = 995328 * k + 871186 := by
    unfold C
    simp [show (331776 * k + 290395) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 871186) = 497664 * k + 435593 := by
    unfold C
    simp [show (995328 * k + 871186) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 435593) = 1492992 * k + 1306780 := by
    unfold C
    simp [show (497664 * k + 435593) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1306780) = 746496 * k + 653390 := by
    unfold C
    simp [show (1492992 * k + 1306780) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 653390) = 373248 * k + 326695 := by
    unfold C
    simp [show (746496 * k + 653390) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 326695) = 1119744 * k + 980086 := by
    unfold C
    simp [show (373248 * k + 326695) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 980086) = 559872 * k + 490043 := by
    unfold C
    simp [show (1119744 * k + 980086) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 490043) = 1679616 * k + 1470130 := by
    unfold C
    simp [show (559872 * k + 490043) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1470130) = 839808 * k + 735065 := by
    unfold C
    simp [show (1679616 * k + 1470130) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 735065) = 2519424 * k + 2205196 := by
    unfold C
    simp [show (839808 * k + 735065) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2205196) = 1259712 * k + 1102598 := by
    unfold C
    simp [show (2519424 * k + 2205196) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1102598) = 629856 * k + 551299 := by
    unfold C
    simp [show (1259712 * k + 1102598) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 551299) = 1889568 * k + 1653898 := by
    unfold C
    simp [show (629856 * k + 551299) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1653898) = 944784 * k + 826949 := by
    unfold C
    simp [show (1889568 * k + 1653898) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 826949) = 2834352 * k + 2480848 := by
    unfold C
    simp [show (944784 * k + 826949) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2480848) = 1417176 * k + 1240424 := by
    unfold C
    simp [show (2834352 * k + 2480848) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1240424) = 708588 * k + 620212 := by
    unfold C
    simp [show (1417176 * k + 1240424) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 620212) = 354294 * k + 310106 := by
    unfold C
    simp [show (708588 * k + 620212) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 310106) = 177147 * k + 155053 := by
    unfold C
    simp [show (354294 * k + 310106) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 229447) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 229447))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_229871 : ∀ k : Nat,
    iterate (262144 * k + 229871) 29 = 177147 * k + 155339 ∧
      177147 * k + 155339 < 262144 * k + 229871 := by
  intro k
  have h1 : C (262144 * k + 229871) = 786432 * k + 689614 := by
    unfold C
    simp [show (262144 * k + 229871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 689614) = 393216 * k + 344807 := by
    unfold C
    simp [show (786432 * k + 689614) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 344807) = 1179648 * k + 1034422 := by
    unfold C
    simp [show (393216 * k + 344807) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1034422) = 589824 * k + 517211 := by
    unfold C
    simp [show (1179648 * k + 1034422) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 517211) = 1769472 * k + 1551634 := by
    unfold C
    simp [show (589824 * k + 517211) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1551634) = 884736 * k + 775817 := by
    unfold C
    simp [show (1769472 * k + 1551634) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 775817) = 2654208 * k + 2327452 := by
    unfold C
    simp [show (884736 * k + 775817) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2327452) = 1327104 * k + 1163726 := by
    unfold C
    simp [show (2654208 * k + 2327452) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1163726) = 663552 * k + 581863 := by
    unfold C
    simp [show (1327104 * k + 1163726) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 581863) = 1990656 * k + 1745590 := by
    unfold C
    simp [show (663552 * k + 581863) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1745590) = 995328 * k + 872795 := by
    unfold C
    simp [show (1990656 * k + 1745590) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 872795) = 2985984 * k + 2618386 := by
    unfold C
    simp [show (995328 * k + 872795) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2618386) = 1492992 * k + 1309193 := by
    unfold C
    simp [show (2985984 * k + 2618386) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1309193) = 4478976 * k + 3927580 := by
    unfold C
    simp [show (1492992 * k + 1309193) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3927580) = 2239488 * k + 1963790 := by
    unfold C
    simp [show (4478976 * k + 3927580) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1963790) = 1119744 * k + 981895 := by
    unfold C
    simp [show (2239488 * k + 1963790) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 981895) = 3359232 * k + 2945686 := by
    unfold C
    simp [show (1119744 * k + 981895) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2945686) = 1679616 * k + 1472843 := by
    unfold C
    simp [show (3359232 * k + 2945686) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1472843) = 5038848 * k + 4418530 := by
    unfold C
    simp [show (1679616 * k + 1472843) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4418530) = 2519424 * k + 2209265 := by
    unfold C
    simp [show (5038848 * k + 4418530) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2209265) = 7558272 * k + 6627796 := by
    unfold C
    simp [show (2519424 * k + 2209265) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 6627796) = 3779136 * k + 3313898 := by
    unfold C
    simp [show (7558272 * k + 6627796) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3313898) = 1889568 * k + 1656949 := by
    unfold C
    simp [show (3779136 * k + 3313898) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1656949) = 5668704 * k + 4970848 := by
    unfold C
    simp [show (1889568 * k + 1656949) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 4970848) = 2834352 * k + 2485424 := by
    unfold C
    simp [show (5668704 * k + 4970848) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2485424) = 1417176 * k + 1242712 := by
    unfold C
    simp [show (2834352 * k + 2485424) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1242712) = 708588 * k + 621356 := by
    unfold C
    simp [show (1417176 * k + 1242712) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 621356) = 354294 * k + 310678 := by
    unfold C
    simp [show (708588 * k + 621356) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 310678) = 177147 * k + 155339 := by
    unfold C
    simp [show (354294 * k + 310678) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 229871) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 229871))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_230047 : ∀ k : Nat,
    iterate (262144 * k + 230047) 29 = 177147 * k + 155458 ∧
      177147 * k + 155458 < 262144 * k + 230047 := by
  intro k
  have h1 : C (262144 * k + 230047) = 786432 * k + 690142 := by
    unfold C
    simp [show (262144 * k + 230047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 690142) = 393216 * k + 345071 := by
    unfold C
    simp [show (786432 * k + 690142) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 345071) = 1179648 * k + 1035214 := by
    unfold C
    simp [show (393216 * k + 345071) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1035214) = 589824 * k + 517607 := by
    unfold C
    simp [show (1179648 * k + 1035214) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 517607) = 1769472 * k + 1552822 := by
    unfold C
    simp [show (589824 * k + 517607) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1552822) = 884736 * k + 776411 := by
    unfold C
    simp [show (1769472 * k + 1552822) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 776411) = 2654208 * k + 2329234 := by
    unfold C
    simp [show (884736 * k + 776411) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2329234) = 1327104 * k + 1164617 := by
    unfold C
    simp [show (2654208 * k + 2329234) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1164617) = 3981312 * k + 3493852 := by
    unfold C
    simp [show (1327104 * k + 1164617) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3493852) = 1990656 * k + 1746926 := by
    unfold C
    simp [show (3981312 * k + 3493852) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1746926) = 995328 * k + 873463 := by
    unfold C
    simp [show (1990656 * k + 1746926) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 873463) = 2985984 * k + 2620390 := by
    unfold C
    simp [show (995328 * k + 873463) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2620390) = 1492992 * k + 1310195 := by
    unfold C
    simp [show (2985984 * k + 2620390) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1310195) = 4478976 * k + 3930586 := by
    unfold C
    simp [show (1492992 * k + 1310195) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3930586) = 2239488 * k + 1965293 := by
    unfold C
    simp [show (4478976 * k + 3930586) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1965293) = 6718464 * k + 5895880 := by
    unfold C
    simp [show (2239488 * k + 1965293) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 5895880) = 3359232 * k + 2947940 := by
    unfold C
    simp [show (6718464 * k + 5895880) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2947940) = 1679616 * k + 1473970 := by
    unfold C
    simp [show (3359232 * k + 2947940) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1473970) = 839808 * k + 736985 := by
    unfold C
    simp [show (1679616 * k + 1473970) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 736985) = 2519424 * k + 2210956 := by
    unfold C
    simp [show (839808 * k + 736985) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2210956) = 1259712 * k + 1105478 := by
    unfold C
    simp [show (2519424 * k + 2210956) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1105478) = 629856 * k + 552739 := by
    unfold C
    simp [show (1259712 * k + 1105478) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 552739) = 1889568 * k + 1658218 := by
    unfold C
    simp [show (629856 * k + 552739) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1658218) = 944784 * k + 829109 := by
    unfold C
    simp [show (1889568 * k + 1658218) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 829109) = 2834352 * k + 2487328 := by
    unfold C
    simp [show (944784 * k + 829109) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2487328) = 1417176 * k + 1243664 := by
    unfold C
    simp [show (2834352 * k + 2487328) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1243664) = 708588 * k + 621832 := by
    unfold C
    simp [show (1417176 * k + 1243664) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 621832) = 354294 * k + 310916 := by
    unfold C
    simp [show (708588 * k + 621832) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 310916) = 177147 * k + 155458 := by
    unfold C
    simp [show (354294 * k + 310916) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 230047) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 230047))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_230127 : ∀ k : Nat,
    iterate (262144 * k + 230127) 29 = 177147 * k + 155512 ∧
      177147 * k + 155512 < 262144 * k + 230127 := by
  intro k
  have h1 : C (262144 * k + 230127) = 786432 * k + 690382 := by
    unfold C
    simp [show (262144 * k + 230127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 690382) = 393216 * k + 345191 := by
    unfold C
    simp [show (786432 * k + 690382) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 345191) = 1179648 * k + 1035574 := by
    unfold C
    simp [show (393216 * k + 345191) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1035574) = 589824 * k + 517787 := by
    unfold C
    simp [show (1179648 * k + 1035574) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 517787) = 1769472 * k + 1553362 := by
    unfold C
    simp [show (589824 * k + 517787) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1553362) = 884736 * k + 776681 := by
    unfold C
    simp [show (1769472 * k + 1553362) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 776681) = 2654208 * k + 2330044 := by
    unfold C
    simp [show (884736 * k + 776681) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2330044) = 1327104 * k + 1165022 := by
    unfold C
    simp [show (2654208 * k + 2330044) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1165022) = 663552 * k + 582511 := by
    unfold C
    simp [show (1327104 * k + 1165022) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 582511) = 1990656 * k + 1747534 := by
    unfold C
    simp [show (663552 * k + 582511) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1747534) = 995328 * k + 873767 := by
    unfold C
    simp [show (1990656 * k + 1747534) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 873767) = 2985984 * k + 2621302 := by
    unfold C
    simp [show (995328 * k + 873767) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2621302) = 1492992 * k + 1310651 := by
    unfold C
    simp [show (2985984 * k + 2621302) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1310651) = 4478976 * k + 3931954 := by
    unfold C
    simp [show (1492992 * k + 1310651) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3931954) = 2239488 * k + 1965977 := by
    unfold C
    simp [show (4478976 * k + 3931954) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1965977) = 6718464 * k + 5897932 := by
    unfold C
    simp [show (2239488 * k + 1965977) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 5897932) = 3359232 * k + 2948966 := by
    unfold C
    simp [show (6718464 * k + 5897932) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2948966) = 1679616 * k + 1474483 := by
    unfold C
    simp [show (3359232 * k + 2948966) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1474483) = 5038848 * k + 4423450 := by
    unfold C
    simp [show (1679616 * k + 1474483) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4423450) = 2519424 * k + 2211725 := by
    unfold C
    simp [show (5038848 * k + 4423450) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2211725) = 7558272 * k + 6635176 := by
    unfold C
    simp [show (2519424 * k + 2211725) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 6635176) = 3779136 * k + 3317588 := by
    unfold C
    simp [show (7558272 * k + 6635176) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3317588) = 1889568 * k + 1658794 := by
    unfold C
    simp [show (3779136 * k + 3317588) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1658794) = 944784 * k + 829397 := by
    unfold C
    simp [show (1889568 * k + 1658794) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 829397) = 2834352 * k + 2488192 := by
    unfold C
    simp [show (944784 * k + 829397) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2488192) = 1417176 * k + 1244096 := by
    unfold C
    simp [show (2834352 * k + 2488192) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1244096) = 708588 * k + 622048 := by
    unfold C
    simp [show (1417176 * k + 1244096) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 622048) = 354294 * k + 311024 := by
    unfold C
    simp [show (708588 * k + 622048) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 311024) = 177147 * k + 155512 := by
    unfold C
    simp [show (354294 * k + 311024) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 230127) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 230127))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_230559 : ∀ k : Nat,
    iterate (262144 * k + 230559) 29 = 177147 * k + 155804 ∧
      177147 * k + 155804 < 262144 * k + 230559 := by
  intro k
  have h1 : C (262144 * k + 230559) = 786432 * k + 691678 := by
    unfold C
    simp [show (262144 * k + 230559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 691678) = 393216 * k + 345839 := by
    unfold C
    simp [show (786432 * k + 691678) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 345839) = 1179648 * k + 1037518 := by
    unfold C
    simp [show (393216 * k + 345839) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1037518) = 589824 * k + 518759 := by
    unfold C
    simp [show (1179648 * k + 1037518) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 518759) = 1769472 * k + 1556278 := by
    unfold C
    simp [show (589824 * k + 518759) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1556278) = 884736 * k + 778139 := by
    unfold C
    simp [show (1769472 * k + 1556278) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 778139) = 2654208 * k + 2334418 := by
    unfold C
    simp [show (884736 * k + 778139) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2334418) = 1327104 * k + 1167209 := by
    unfold C
    simp [show (2654208 * k + 2334418) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1167209) = 3981312 * k + 3501628 := by
    unfold C
    simp [show (1327104 * k + 1167209) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3501628) = 1990656 * k + 1750814 := by
    unfold C
    simp [show (3981312 * k + 3501628) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1750814) = 995328 * k + 875407 := by
    unfold C
    simp [show (1990656 * k + 1750814) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 875407) = 2985984 * k + 2626222 := by
    unfold C
    simp [show (995328 * k + 875407) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2626222) = 1492992 * k + 1313111 := by
    unfold C
    simp [show (2985984 * k + 2626222) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1313111) = 4478976 * k + 3939334 := by
    unfold C
    simp [show (1492992 * k + 1313111) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3939334) = 2239488 * k + 1969667 := by
    unfold C
    simp [show (4478976 * k + 3939334) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1969667) = 6718464 * k + 5909002 := by
    unfold C
    simp [show (2239488 * k + 1969667) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 5909002) = 3359232 * k + 2954501 := by
    unfold C
    simp [show (6718464 * k + 5909002) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2954501) = 10077696 * k + 8863504 := by
    unfold C
    simp [show (3359232 * k + 2954501) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 8863504) = 5038848 * k + 4431752 := by
    unfold C
    simp [show (10077696 * k + 8863504) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 4431752) = 2519424 * k + 2215876 := by
    unfold C
    simp [show (5038848 * k + 4431752) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2215876) = 1259712 * k + 1107938 := by
    unfold C
    simp [show (2519424 * k + 2215876) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1107938) = 629856 * k + 553969 := by
    unfold C
    simp [show (1259712 * k + 1107938) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 553969) = 1889568 * k + 1661908 := by
    unfold C
    simp [show (629856 * k + 553969) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1661908) = 944784 * k + 830954 := by
    unfold C
    simp [show (1889568 * k + 1661908) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 830954) = 472392 * k + 415477 := by
    unfold C
    simp [show (944784 * k + 830954) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 415477) = 1417176 * k + 1246432 := by
    unfold C
    simp [show (472392 * k + 415477) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1246432) = 708588 * k + 623216 := by
    unfold C
    simp [show (1417176 * k + 1246432) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 623216) = 354294 * k + 311608 := by
    unfold C
    simp [show (708588 * k + 623216) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 311608) = 177147 * k + 155804 := by
    unfold C
    simp [show (354294 * k + 311608) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 230559) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 230559))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_230727 : ∀ k : Nat,
    iterate (262144 * k + 230727) 29 = 177147 * k + 155918 ∧
      177147 * k + 155918 < 262144 * k + 230727 := by
  intro k
  have h1 : C (262144 * k + 230727) = 786432 * k + 692182 := by
    unfold C
    simp [show (262144 * k + 230727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 692182) = 393216 * k + 346091 := by
    unfold C
    simp [show (786432 * k + 692182) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 346091) = 1179648 * k + 1038274 := by
    unfold C
    simp [show (393216 * k + 346091) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1038274) = 589824 * k + 519137 := by
    unfold C
    simp [show (1179648 * k + 1038274) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 519137) = 1769472 * k + 1557412 := by
    unfold C
    simp [show (589824 * k + 519137) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1557412) = 884736 * k + 778706 := by
    unfold C
    simp [show (1769472 * k + 1557412) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 778706) = 442368 * k + 389353 := by
    unfold C
    simp [show (884736 * k + 778706) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 389353) = 1327104 * k + 1168060 := by
    unfold C
    simp [show (442368 * k + 389353) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1168060) = 663552 * k + 584030 := by
    unfold C
    simp [show (1327104 * k + 1168060) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 584030) = 331776 * k + 292015 := by
    unfold C
    simp [show (663552 * k + 584030) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 292015) = 995328 * k + 876046 := by
    unfold C
    simp [show (331776 * k + 292015) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 876046) = 497664 * k + 438023 := by
    unfold C
    simp [show (995328 * k + 876046) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 438023) = 1492992 * k + 1314070 := by
    unfold C
    simp [show (497664 * k + 438023) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1314070) = 746496 * k + 657035 := by
    unfold C
    simp [show (1492992 * k + 1314070) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 657035) = 2239488 * k + 1971106 := by
    unfold C
    simp [show (746496 * k + 657035) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1971106) = 1119744 * k + 985553 := by
    unfold C
    simp [show (2239488 * k + 1971106) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 985553) = 3359232 * k + 2956660 := by
    unfold C
    simp [show (1119744 * k + 985553) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2956660) = 1679616 * k + 1478330 := by
    unfold C
    simp [show (3359232 * k + 2956660) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1478330) = 839808 * k + 739165 := by
    unfold C
    simp [show (1679616 * k + 1478330) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 739165) = 2519424 * k + 2217496 := by
    unfold C
    simp [show (839808 * k + 739165) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2217496) = 1259712 * k + 1108748 := by
    unfold C
    simp [show (2519424 * k + 2217496) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1108748) = 629856 * k + 554374 := by
    unfold C
    simp [show (1259712 * k + 1108748) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 554374) = 314928 * k + 277187 := by
    unfold C
    simp [show (629856 * k + 554374) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 277187) = 944784 * k + 831562 := by
    unfold C
    simp [show (314928 * k + 277187) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 831562) = 472392 * k + 415781 := by
    unfold C
    simp [show (944784 * k + 831562) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 415781) = 1417176 * k + 1247344 := by
    unfold C
    simp [show (472392 * k + 415781) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1247344) = 708588 * k + 623672 := by
    unfold C
    simp [show (1417176 * k + 1247344) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 623672) = 354294 * k + 311836 := by
    unfold C
    simp [show (708588 * k + 623672) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 311836) = 177147 * k + 155918 := by
    unfold C
    simp [show (354294 * k + 311836) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 230727) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 230727))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_231911 : ∀ k : Nat,
    iterate (262144 * k + 231911) 29 = 177147 * k + 156718 ∧
      177147 * k + 156718 < 262144 * k + 231911 := by
  intro k
  have h1 : C (262144 * k + 231911) = 786432 * k + 695734 := by
    unfold C
    simp [show (262144 * k + 231911) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 695734) = 393216 * k + 347867 := by
    unfold C
    simp [show (786432 * k + 695734) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 347867) = 1179648 * k + 1043602 := by
    unfold C
    simp [show (393216 * k + 347867) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1043602) = 589824 * k + 521801 := by
    unfold C
    simp [show (1179648 * k + 1043602) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 521801) = 1769472 * k + 1565404 := by
    unfold C
    simp [show (589824 * k + 521801) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1565404) = 884736 * k + 782702 := by
    unfold C
    simp [show (1769472 * k + 1565404) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 782702) = 442368 * k + 391351 := by
    unfold C
    simp [show (884736 * k + 782702) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 391351) = 1327104 * k + 1174054 := by
    unfold C
    simp [show (442368 * k + 391351) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1174054) = 663552 * k + 587027 := by
    unfold C
    simp [show (1327104 * k + 1174054) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 587027) = 1990656 * k + 1761082 := by
    unfold C
    simp [show (663552 * k + 587027) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1761082) = 995328 * k + 880541 := by
    unfold C
    simp [show (1990656 * k + 1761082) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 880541) = 2985984 * k + 2641624 := by
    unfold C
    simp [show (995328 * k + 880541) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2641624) = 1492992 * k + 1320812 := by
    unfold C
    simp [show (2985984 * k + 2641624) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1320812) = 746496 * k + 660406 := by
    unfold C
    simp [show (1492992 * k + 1320812) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 660406) = 373248 * k + 330203 := by
    unfold C
    simp [show (746496 * k + 660406) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 330203) = 1119744 * k + 990610 := by
    unfold C
    simp [show (373248 * k + 330203) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 990610) = 559872 * k + 495305 := by
    unfold C
    simp [show (1119744 * k + 990610) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 495305) = 1679616 * k + 1485916 := by
    unfold C
    simp [show (559872 * k + 495305) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1485916) = 839808 * k + 742958 := by
    unfold C
    simp [show (1679616 * k + 1485916) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 742958) = 419904 * k + 371479 := by
    unfold C
    simp [show (839808 * k + 742958) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 371479) = 1259712 * k + 1114438 := by
    unfold C
    simp [show (419904 * k + 371479) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1114438) = 629856 * k + 557219 := by
    unfold C
    simp [show (1259712 * k + 1114438) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 557219) = 1889568 * k + 1671658 := by
    unfold C
    simp [show (629856 * k + 557219) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1671658) = 944784 * k + 835829 := by
    unfold C
    simp [show (1889568 * k + 1671658) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 835829) = 2834352 * k + 2507488 := by
    unfold C
    simp [show (944784 * k + 835829) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2507488) = 1417176 * k + 1253744 := by
    unfold C
    simp [show (2834352 * k + 2507488) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1253744) = 708588 * k + 626872 := by
    unfold C
    simp [show (1417176 * k + 1253744) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 626872) = 354294 * k + 313436 := by
    unfold C
    simp [show (708588 * k + 626872) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 313436) = 177147 * k + 156718 := by
    unfold C
    simp [show (354294 * k + 313436) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 231911) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 231911))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_232263 : ∀ k : Nat,
    iterate (262144 * k + 232263) 29 = 177147 * k + 156956 ∧
      177147 * k + 156956 < 262144 * k + 232263 := by
  intro k
  have h1 : C (262144 * k + 232263) = 786432 * k + 696790 := by
    unfold C
    simp [show (262144 * k + 232263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 696790) = 393216 * k + 348395 := by
    unfold C
    simp [show (786432 * k + 696790) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 348395) = 1179648 * k + 1045186 := by
    unfold C
    simp [show (393216 * k + 348395) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1045186) = 589824 * k + 522593 := by
    unfold C
    simp [show (1179648 * k + 1045186) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 522593) = 1769472 * k + 1567780 := by
    unfold C
    simp [show (589824 * k + 522593) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1567780) = 884736 * k + 783890 := by
    unfold C
    simp [show (1769472 * k + 1567780) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 783890) = 442368 * k + 391945 := by
    unfold C
    simp [show (884736 * k + 783890) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 391945) = 1327104 * k + 1175836 := by
    unfold C
    simp [show (442368 * k + 391945) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1175836) = 663552 * k + 587918 := by
    unfold C
    simp [show (1327104 * k + 1175836) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 587918) = 331776 * k + 293959 := by
    unfold C
    simp [show (663552 * k + 587918) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 293959) = 995328 * k + 881878 := by
    unfold C
    simp [show (331776 * k + 293959) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 881878) = 497664 * k + 440939 := by
    unfold C
    simp [show (995328 * k + 881878) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 440939) = 1492992 * k + 1322818 := by
    unfold C
    simp [show (497664 * k + 440939) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1322818) = 746496 * k + 661409 := by
    unfold C
    simp [show (1492992 * k + 1322818) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 661409) = 2239488 * k + 1984228 := by
    unfold C
    simp [show (746496 * k + 661409) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1984228) = 1119744 * k + 992114 := by
    unfold C
    simp [show (2239488 * k + 1984228) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 992114) = 559872 * k + 496057 := by
    unfold C
    simp [show (1119744 * k + 992114) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 496057) = 1679616 * k + 1488172 := by
    unfold C
    simp [show (559872 * k + 496057) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1488172) = 839808 * k + 744086 := by
    unfold C
    simp [show (1679616 * k + 1488172) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 744086) = 419904 * k + 372043 := by
    unfold C
    simp [show (839808 * k + 744086) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 372043) = 1259712 * k + 1116130 := by
    unfold C
    simp [show (419904 * k + 372043) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1116130) = 629856 * k + 558065 := by
    unfold C
    simp [show (1259712 * k + 1116130) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 558065) = 1889568 * k + 1674196 := by
    unfold C
    simp [show (629856 * k + 558065) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1674196) = 944784 * k + 837098 := by
    unfold C
    simp [show (1889568 * k + 1674196) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 837098) = 472392 * k + 418549 := by
    unfold C
    simp [show (944784 * k + 837098) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 418549) = 1417176 * k + 1255648 := by
    unfold C
    simp [show (472392 * k + 418549) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1255648) = 708588 * k + 627824 := by
    unfold C
    simp [show (1417176 * k + 1255648) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 627824) = 354294 * k + 313912 := by
    unfold C
    simp [show (708588 * k + 627824) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 313912) = 177147 * k + 156956 := by
    unfold C
    simp [show (354294 * k + 313912) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 232263) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 232263))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard043
