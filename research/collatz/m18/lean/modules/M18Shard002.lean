import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard002

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_5287 : ∀ k : Nat,
    iterate (262144 * k + 5287) 29 = 177147 * k + 3574 ∧
      177147 * k + 3574 < 262144 * k + 5287 := by
  intro k
  have h1 : C (262144 * k + 5287) = 786432 * k + 15862 := by
    unfold C
    simp [show (262144 * k + 5287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 15862) = 393216 * k + 7931 := by
    unfold C
    simp [show (786432 * k + 15862) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 7931) = 1179648 * k + 23794 := by
    unfold C
    simp [show (393216 * k + 7931) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 23794) = 589824 * k + 11897 := by
    unfold C
    simp [show (1179648 * k + 23794) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 11897) = 1769472 * k + 35692 := by
    unfold C
    simp [show (589824 * k + 11897) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 35692) = 884736 * k + 17846 := by
    unfold C
    simp [show (1769472 * k + 35692) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 17846) = 442368 * k + 8923 := by
    unfold C
    simp [show (884736 * k + 17846) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 8923) = 1327104 * k + 26770 := by
    unfold C
    simp [show (442368 * k + 8923) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 26770) = 663552 * k + 13385 := by
    unfold C
    simp [show (1327104 * k + 26770) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 13385) = 1990656 * k + 40156 := by
    unfold C
    simp [show (663552 * k + 13385) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 40156) = 995328 * k + 20078 := by
    unfold C
    simp [show (1990656 * k + 40156) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 20078) = 497664 * k + 10039 := by
    unfold C
    simp [show (995328 * k + 20078) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 10039) = 1492992 * k + 30118 := by
    unfold C
    simp [show (497664 * k + 10039) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 30118) = 746496 * k + 15059 := by
    unfold C
    simp [show (1492992 * k + 30118) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 15059) = 2239488 * k + 45178 := by
    unfold C
    simp [show (746496 * k + 15059) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 45178) = 1119744 * k + 22589 := by
    unfold C
    simp [show (2239488 * k + 45178) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 22589) = 3359232 * k + 67768 := by
    unfold C
    simp [show (1119744 * k + 22589) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 67768) = 1679616 * k + 33884 := by
    unfold C
    simp [show (3359232 * k + 67768) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 33884) = 839808 * k + 16942 := by
    unfold C
    simp [show (1679616 * k + 33884) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 16942) = 419904 * k + 8471 := by
    unfold C
    simp [show (839808 * k + 16942) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 8471) = 1259712 * k + 25414 := by
    unfold C
    simp [show (419904 * k + 8471) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 25414) = 629856 * k + 12707 := by
    unfold C
    simp [show (1259712 * k + 25414) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 12707) = 1889568 * k + 38122 := by
    unfold C
    simp [show (629856 * k + 12707) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 38122) = 944784 * k + 19061 := by
    unfold C
    simp [show (1889568 * k + 38122) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 19061) = 2834352 * k + 57184 := by
    unfold C
    simp [show (944784 * k + 19061) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 57184) = 1417176 * k + 28592 := by
    unfold C
    simp [show (2834352 * k + 57184) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 28592) = 708588 * k + 14296 := by
    unfold C
    simp [show (1417176 * k + 28592) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 14296) = 354294 * k + 7148 := by
    unfold C
    simp [show (708588 * k + 14296) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 7148) = 177147 * k + 3574 := by
    unfold C
    simp [show (354294 * k + 7148) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 5287) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 5287))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_5839 : ∀ k : Nat,
    iterate (262144 * k + 5839) 29 = 177147 * k + 3947 ∧
      177147 * k + 3947 < 262144 * k + 5839 := by
  intro k
  have h1 : C (262144 * k + 5839) = 786432 * k + 17518 := by
    unfold C
    simp [show (262144 * k + 5839) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 17518) = 393216 * k + 8759 := by
    unfold C
    simp [show (786432 * k + 17518) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 8759) = 1179648 * k + 26278 := by
    unfold C
    simp [show (393216 * k + 8759) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 26278) = 589824 * k + 13139 := by
    unfold C
    simp [show (1179648 * k + 26278) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 13139) = 1769472 * k + 39418 := by
    unfold C
    simp [show (589824 * k + 13139) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 39418) = 884736 * k + 19709 := by
    unfold C
    simp [show (1769472 * k + 39418) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 19709) = 2654208 * k + 59128 := by
    unfold C
    simp [show (884736 * k + 19709) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 59128) = 1327104 * k + 29564 := by
    unfold C
    simp [show (2654208 * k + 59128) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 29564) = 663552 * k + 14782 := by
    unfold C
    simp [show (1327104 * k + 29564) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 14782) = 331776 * k + 7391 := by
    unfold C
    simp [show (663552 * k + 14782) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 7391) = 995328 * k + 22174 := by
    unfold C
    simp [show (331776 * k + 7391) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 22174) = 497664 * k + 11087 := by
    unfold C
    simp [show (995328 * k + 22174) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 11087) = 1492992 * k + 33262 := by
    unfold C
    simp [show (497664 * k + 11087) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 33262) = 746496 * k + 16631 := by
    unfold C
    simp [show (1492992 * k + 33262) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 16631) = 2239488 * k + 49894 := by
    unfold C
    simp [show (746496 * k + 16631) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 49894) = 1119744 * k + 24947 := by
    unfold C
    simp [show (2239488 * k + 49894) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 24947) = 3359232 * k + 74842 := by
    unfold C
    simp [show (1119744 * k + 24947) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 74842) = 1679616 * k + 37421 := by
    unfold C
    simp [show (3359232 * k + 74842) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 37421) = 5038848 * k + 112264 := by
    unfold C
    simp [show (1679616 * k + 37421) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 112264) = 2519424 * k + 56132 := by
    unfold C
    simp [show (5038848 * k + 112264) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 56132) = 1259712 * k + 28066 := by
    unfold C
    simp [show (2519424 * k + 56132) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 28066) = 629856 * k + 14033 := by
    unfold C
    simp [show (1259712 * k + 28066) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 14033) = 1889568 * k + 42100 := by
    unfold C
    simp [show (629856 * k + 14033) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 42100) = 944784 * k + 21050 := by
    unfold C
    simp [show (1889568 * k + 42100) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 21050) = 472392 * k + 10525 := by
    unfold C
    simp [show (944784 * k + 21050) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 10525) = 1417176 * k + 31576 := by
    unfold C
    simp [show (472392 * k + 10525) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 31576) = 708588 * k + 15788 := by
    unfold C
    simp [show (1417176 * k + 31576) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 15788) = 354294 * k + 7894 := by
    unfold C
    simp [show (708588 * k + 15788) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 7894) = 177147 * k + 3947 := by
    unfold C
    simp [show (354294 * k + 7894) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 5839) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 5839))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_5999 : ∀ k : Nat,
    iterate (262144 * k + 5999) 29 = 177147 * k + 4055 ∧
      177147 * k + 4055 < 262144 * k + 5999 := by
  intro k
  have h1 : C (262144 * k + 5999) = 786432 * k + 17998 := by
    unfold C
    simp [show (262144 * k + 5999) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 17998) = 393216 * k + 8999 := by
    unfold C
    simp [show (786432 * k + 17998) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 8999) = 1179648 * k + 26998 := by
    unfold C
    simp [show (393216 * k + 8999) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 26998) = 589824 * k + 13499 := by
    unfold C
    simp [show (1179648 * k + 26998) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 13499) = 1769472 * k + 40498 := by
    unfold C
    simp [show (589824 * k + 13499) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 40498) = 884736 * k + 20249 := by
    unfold C
    simp [show (1769472 * k + 40498) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 20249) = 2654208 * k + 60748 := by
    unfold C
    simp [show (884736 * k + 20249) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 60748) = 1327104 * k + 30374 := by
    unfold C
    simp [show (2654208 * k + 60748) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 30374) = 663552 * k + 15187 := by
    unfold C
    simp [show (1327104 * k + 30374) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 15187) = 1990656 * k + 45562 := by
    unfold C
    simp [show (663552 * k + 15187) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 45562) = 995328 * k + 22781 := by
    unfold C
    simp [show (1990656 * k + 45562) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 22781) = 2985984 * k + 68344 := by
    unfold C
    simp [show (995328 * k + 22781) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 68344) = 1492992 * k + 34172 := by
    unfold C
    simp [show (2985984 * k + 68344) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 34172) = 746496 * k + 17086 := by
    unfold C
    simp [show (1492992 * k + 34172) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 17086) = 373248 * k + 8543 := by
    unfold C
    simp [show (746496 * k + 17086) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 8543) = 1119744 * k + 25630 := by
    unfold C
    simp [show (373248 * k + 8543) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 25630) = 559872 * k + 12815 := by
    unfold C
    simp [show (1119744 * k + 25630) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 12815) = 1679616 * k + 38446 := by
    unfold C
    simp [show (559872 * k + 12815) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 38446) = 839808 * k + 19223 := by
    unfold C
    simp [show (1679616 * k + 38446) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 19223) = 2519424 * k + 57670 := by
    unfold C
    simp [show (839808 * k + 19223) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 57670) = 1259712 * k + 28835 := by
    unfold C
    simp [show (2519424 * k + 57670) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 28835) = 3779136 * k + 86506 := by
    unfold C
    simp [show (1259712 * k + 28835) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 86506) = 1889568 * k + 43253 := by
    unfold C
    simp [show (3779136 * k + 86506) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 43253) = 5668704 * k + 129760 := by
    unfold C
    simp [show (1889568 * k + 43253) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 129760) = 2834352 * k + 64880 := by
    unfold C
    simp [show (5668704 * k + 129760) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 64880) = 1417176 * k + 32440 := by
    unfold C
    simp [show (2834352 * k + 64880) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 32440) = 708588 * k + 16220 := by
    unfold C
    simp [show (1417176 * k + 32440) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 16220) = 354294 * k + 8110 := by
    unfold C
    simp [show (708588 * k + 16220) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 8110) = 177147 * k + 4055 := by
    unfold C
    simp [show (354294 * k + 8110) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 5999) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 5999))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_6055 : ∀ k : Nat,
    iterate (262144 * k + 6055) 29 = 177147 * k + 4093 ∧
      177147 * k + 4093 < 262144 * k + 6055 := by
  intro k
  have h1 : C (262144 * k + 6055) = 786432 * k + 18166 := by
    unfold C
    simp [show (262144 * k + 6055) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 18166) = 393216 * k + 9083 := by
    unfold C
    simp [show (786432 * k + 18166) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 9083) = 1179648 * k + 27250 := by
    unfold C
    simp [show (393216 * k + 9083) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 27250) = 589824 * k + 13625 := by
    unfold C
    simp [show (1179648 * k + 27250) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 13625) = 1769472 * k + 40876 := by
    unfold C
    simp [show (589824 * k + 13625) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 40876) = 884736 * k + 20438 := by
    unfold C
    simp [show (1769472 * k + 40876) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 20438) = 442368 * k + 10219 := by
    unfold C
    simp [show (884736 * k + 20438) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 10219) = 1327104 * k + 30658 := by
    unfold C
    simp [show (442368 * k + 10219) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 30658) = 663552 * k + 15329 := by
    unfold C
    simp [show (1327104 * k + 30658) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 15329) = 1990656 * k + 45988 := by
    unfold C
    simp [show (663552 * k + 15329) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 45988) = 995328 * k + 22994 := by
    unfold C
    simp [show (1990656 * k + 45988) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 22994) = 497664 * k + 11497 := by
    unfold C
    simp [show (995328 * k + 22994) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 11497) = 1492992 * k + 34492 := by
    unfold C
    simp [show (497664 * k + 11497) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 34492) = 746496 * k + 17246 := by
    unfold C
    simp [show (1492992 * k + 34492) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 17246) = 373248 * k + 8623 := by
    unfold C
    simp [show (746496 * k + 17246) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 8623) = 1119744 * k + 25870 := by
    unfold C
    simp [show (373248 * k + 8623) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 25870) = 559872 * k + 12935 := by
    unfold C
    simp [show (1119744 * k + 25870) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 12935) = 1679616 * k + 38806 := by
    unfold C
    simp [show (559872 * k + 12935) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 38806) = 839808 * k + 19403 := by
    unfold C
    simp [show (1679616 * k + 38806) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 19403) = 2519424 * k + 58210 := by
    unfold C
    simp [show (839808 * k + 19403) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 58210) = 1259712 * k + 29105 := by
    unfold C
    simp [show (2519424 * k + 58210) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 29105) = 3779136 * k + 87316 := by
    unfold C
    simp [show (1259712 * k + 29105) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 87316) = 1889568 * k + 43658 := by
    unfold C
    simp [show (3779136 * k + 87316) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 43658) = 944784 * k + 21829 := by
    unfold C
    simp [show (1889568 * k + 43658) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 21829) = 2834352 * k + 65488 := by
    unfold C
    simp [show (944784 * k + 21829) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 65488) = 1417176 * k + 32744 := by
    unfold C
    simp [show (2834352 * k + 65488) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 32744) = 708588 * k + 16372 := by
    unfold C
    simp [show (1417176 * k + 32744) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 16372) = 354294 * k + 8186 := by
    unfold C
    simp [show (708588 * k + 16372) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 8186) = 177147 * k + 4093 := by
    unfold C
    simp [show (354294 * k + 8186) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 6055) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 6055))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_6079 : ∀ k : Nat,
    iterate (262144 * k + 6079) 29 = 177147 * k + 4109 ∧
      177147 * k + 4109 < 262144 * k + 6079 := by
  intro k
  have h1 : C (262144 * k + 6079) = 786432 * k + 18238 := by
    unfold C
    simp [show (262144 * k + 6079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 18238) = 393216 * k + 9119 := by
    unfold C
    simp [show (786432 * k + 18238) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 9119) = 1179648 * k + 27358 := by
    unfold C
    simp [show (393216 * k + 9119) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 27358) = 589824 * k + 13679 := by
    unfold C
    simp [show (1179648 * k + 27358) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 13679) = 1769472 * k + 41038 := by
    unfold C
    simp [show (589824 * k + 13679) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 41038) = 884736 * k + 20519 := by
    unfold C
    simp [show (1769472 * k + 41038) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 20519) = 2654208 * k + 61558 := by
    unfold C
    simp [show (884736 * k + 20519) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 61558) = 1327104 * k + 30779 := by
    unfold C
    simp [show (2654208 * k + 61558) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 30779) = 3981312 * k + 92338 := by
    unfold C
    simp [show (1327104 * k + 30779) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 92338) = 1990656 * k + 46169 := by
    unfold C
    simp [show (3981312 * k + 92338) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 46169) = 5971968 * k + 138508 := by
    unfold C
    simp [show (1990656 * k + 46169) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 138508) = 2985984 * k + 69254 := by
    unfold C
    simp [show (5971968 * k + 138508) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 69254) = 1492992 * k + 34627 := by
    unfold C
    simp [show (2985984 * k + 69254) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 34627) = 4478976 * k + 103882 := by
    unfold C
    simp [show (1492992 * k + 34627) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 103882) = 2239488 * k + 51941 := by
    unfold C
    simp [show (4478976 * k + 103882) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 51941) = 6718464 * k + 155824 := by
    unfold C
    simp [show (2239488 * k + 51941) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 155824) = 3359232 * k + 77912 := by
    unfold C
    simp [show (6718464 * k + 155824) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 77912) = 1679616 * k + 38956 := by
    unfold C
    simp [show (3359232 * k + 77912) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 38956) = 839808 * k + 19478 := by
    unfold C
    simp [show (1679616 * k + 38956) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 19478) = 419904 * k + 9739 := by
    unfold C
    simp [show (839808 * k + 19478) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 9739) = 1259712 * k + 29218 := by
    unfold C
    simp [show (419904 * k + 9739) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 29218) = 629856 * k + 14609 := by
    unfold C
    simp [show (1259712 * k + 29218) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 14609) = 1889568 * k + 43828 := by
    unfold C
    simp [show (629856 * k + 14609) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 43828) = 944784 * k + 21914 := by
    unfold C
    simp [show (1889568 * k + 43828) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 21914) = 472392 * k + 10957 := by
    unfold C
    simp [show (944784 * k + 21914) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 10957) = 1417176 * k + 32872 := by
    unfold C
    simp [show (472392 * k + 10957) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 32872) = 708588 * k + 16436 := by
    unfold C
    simp [show (1417176 * k + 32872) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 16436) = 354294 * k + 8218 := by
    unfold C
    simp [show (708588 * k + 16436) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 8218) = 177147 * k + 4109 := by
    unfold C
    simp [show (354294 * k + 8218) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 6079) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 6079))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_6139 : ∀ k : Nat,
    iterate (262144 * k + 6139) 29 = 177147 * k + 4150 ∧
      177147 * k + 4150 < 262144 * k + 6139 := by
  intro k
  have h1 : C (262144 * k + 6139) = 786432 * k + 18418 := by
    unfold C
    simp [show (262144 * k + 6139) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 18418) = 393216 * k + 9209 := by
    unfold C
    simp [show (786432 * k + 18418) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 9209) = 1179648 * k + 27628 := by
    unfold C
    simp [show (393216 * k + 9209) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 27628) = 589824 * k + 13814 := by
    unfold C
    simp [show (1179648 * k + 27628) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 13814) = 294912 * k + 6907 := by
    unfold C
    simp [show (589824 * k + 13814) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 6907) = 884736 * k + 20722 := by
    unfold C
    simp [show (294912 * k + 6907) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 20722) = 442368 * k + 10361 := by
    unfold C
    simp [show (884736 * k + 20722) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 10361) = 1327104 * k + 31084 := by
    unfold C
    simp [show (442368 * k + 10361) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 31084) = 663552 * k + 15542 := by
    unfold C
    simp [show (1327104 * k + 31084) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 15542) = 331776 * k + 7771 := by
    unfold C
    simp [show (663552 * k + 15542) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 7771) = 995328 * k + 23314 := by
    unfold C
    simp [show (331776 * k + 7771) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 23314) = 497664 * k + 11657 := by
    unfold C
    simp [show (995328 * k + 23314) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 11657) = 1492992 * k + 34972 := by
    unfold C
    simp [show (497664 * k + 11657) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 34972) = 746496 * k + 17486 := by
    unfold C
    simp [show (1492992 * k + 34972) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 17486) = 373248 * k + 8743 := by
    unfold C
    simp [show (746496 * k + 17486) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 8743) = 1119744 * k + 26230 := by
    unfold C
    simp [show (373248 * k + 8743) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 26230) = 559872 * k + 13115 := by
    unfold C
    simp [show (1119744 * k + 26230) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 13115) = 1679616 * k + 39346 := by
    unfold C
    simp [show (559872 * k + 13115) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 39346) = 839808 * k + 19673 := by
    unfold C
    simp [show (1679616 * k + 39346) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 19673) = 2519424 * k + 59020 := by
    unfold C
    simp [show (839808 * k + 19673) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 59020) = 1259712 * k + 29510 := by
    unfold C
    simp [show (2519424 * k + 59020) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 29510) = 629856 * k + 14755 := by
    unfold C
    simp [show (1259712 * k + 29510) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 14755) = 1889568 * k + 44266 := by
    unfold C
    simp [show (629856 * k + 14755) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 44266) = 944784 * k + 22133 := by
    unfold C
    simp [show (1889568 * k + 44266) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 22133) = 2834352 * k + 66400 := by
    unfold C
    simp [show (944784 * k + 22133) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 66400) = 1417176 * k + 33200 := by
    unfold C
    simp [show (2834352 * k + 66400) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 33200) = 708588 * k + 16600 := by
    unfold C
    simp [show (1417176 * k + 33200) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 16600) = 354294 * k + 8300 := by
    unfold C
    simp [show (708588 * k + 16600) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 8300) = 177147 * k + 4150 := by
    unfold C
    simp [show (354294 * k + 8300) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 6139) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 6139))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_6367 : ∀ k : Nat,
    iterate (262144 * k + 6367) 29 = 177147 * k + 4304 ∧
      177147 * k + 4304 < 262144 * k + 6367 := by
  intro k
  have h1 : C (262144 * k + 6367) = 786432 * k + 19102 := by
    unfold C
    simp [show (262144 * k + 6367) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 19102) = 393216 * k + 9551 := by
    unfold C
    simp [show (786432 * k + 19102) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 9551) = 1179648 * k + 28654 := by
    unfold C
    simp [show (393216 * k + 9551) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 28654) = 589824 * k + 14327 := by
    unfold C
    simp [show (1179648 * k + 28654) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 14327) = 1769472 * k + 42982 := by
    unfold C
    simp [show (589824 * k + 14327) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 42982) = 884736 * k + 21491 := by
    unfold C
    simp [show (1769472 * k + 42982) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 21491) = 2654208 * k + 64474 := by
    unfold C
    simp [show (884736 * k + 21491) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 64474) = 1327104 * k + 32237 := by
    unfold C
    simp [show (2654208 * k + 64474) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 32237) = 3981312 * k + 96712 := by
    unfold C
    simp [show (1327104 * k + 32237) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 96712) = 1990656 * k + 48356 := by
    unfold C
    simp [show (3981312 * k + 96712) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 48356) = 995328 * k + 24178 := by
    unfold C
    simp [show (1990656 * k + 48356) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 24178) = 497664 * k + 12089 := by
    unfold C
    simp [show (995328 * k + 24178) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 12089) = 1492992 * k + 36268 := by
    unfold C
    simp [show (497664 * k + 12089) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 36268) = 746496 * k + 18134 := by
    unfold C
    simp [show (1492992 * k + 36268) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 18134) = 373248 * k + 9067 := by
    unfold C
    simp [show (746496 * k + 18134) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 9067) = 1119744 * k + 27202 := by
    unfold C
    simp [show (373248 * k + 9067) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 27202) = 559872 * k + 13601 := by
    unfold C
    simp [show (1119744 * k + 27202) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 13601) = 1679616 * k + 40804 := by
    unfold C
    simp [show (559872 * k + 13601) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 40804) = 839808 * k + 20402 := by
    unfold C
    simp [show (1679616 * k + 40804) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 20402) = 419904 * k + 10201 := by
    unfold C
    simp [show (839808 * k + 20402) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 10201) = 1259712 * k + 30604 := by
    unfold C
    simp [show (419904 * k + 10201) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 30604) = 629856 * k + 15302 := by
    unfold C
    simp [show (1259712 * k + 30604) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 15302) = 314928 * k + 7651 := by
    unfold C
    simp [show (629856 * k + 15302) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 7651) = 944784 * k + 22954 := by
    unfold C
    simp [show (314928 * k + 7651) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 22954) = 472392 * k + 11477 := by
    unfold C
    simp [show (944784 * k + 22954) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 11477) = 1417176 * k + 34432 := by
    unfold C
    simp [show (472392 * k + 11477) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 34432) = 708588 * k + 17216 := by
    unfold C
    simp [show (1417176 * k + 34432) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 17216) = 354294 * k + 8608 := by
    unfold C
    simp [show (708588 * k + 17216) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 8608) = 177147 * k + 4304 := by
    unfold C
    simp [show (354294 * k + 8608) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 6367) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 6367))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_6399 : ∀ k : Nat,
    iterate (262144 * k + 6399) 29 = 177147 * k + 4325 ∧
      177147 * k + 4325 < 262144 * k + 6399 := by
  intro k
  have h1 : C (262144 * k + 6399) = 786432 * k + 19198 := by
    unfold C
    simp [show (262144 * k + 6399) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 19198) = 393216 * k + 9599 := by
    unfold C
    simp [show (786432 * k + 19198) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 9599) = 1179648 * k + 28798 := by
    unfold C
    simp [show (393216 * k + 9599) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 28798) = 589824 * k + 14399 := by
    unfold C
    simp [show (1179648 * k + 28798) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 14399) = 1769472 * k + 43198 := by
    unfold C
    simp [show (589824 * k + 14399) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 43198) = 884736 * k + 21599 := by
    unfold C
    simp [show (1769472 * k + 43198) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 21599) = 2654208 * k + 64798 := by
    unfold C
    simp [show (884736 * k + 21599) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 64798) = 1327104 * k + 32399 := by
    unfold C
    simp [show (2654208 * k + 64798) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 32399) = 3981312 * k + 97198 := by
    unfold C
    simp [show (1327104 * k + 32399) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 97198) = 1990656 * k + 48599 := by
    unfold C
    simp [show (3981312 * k + 97198) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 48599) = 5971968 * k + 145798 := by
    unfold C
    simp [show (1990656 * k + 48599) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 145798) = 2985984 * k + 72899 := by
    unfold C
    simp [show (5971968 * k + 145798) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 72899) = 8957952 * k + 218698 := by
    unfold C
    simp [show (2985984 * k + 72899) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 218698) = 4478976 * k + 109349 := by
    unfold C
    simp [show (8957952 * k + 218698) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 109349) = 13436928 * k + 328048 := by
    unfold C
    simp [show (4478976 * k + 109349) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 328048) = 6718464 * k + 164024 := by
    unfold C
    simp [show (13436928 * k + 328048) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 164024) = 3359232 * k + 82012 := by
    unfold C
    simp [show (6718464 * k + 164024) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 82012) = 1679616 * k + 41006 := by
    unfold C
    simp [show (3359232 * k + 82012) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 41006) = 839808 * k + 20503 := by
    unfold C
    simp [show (1679616 * k + 41006) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 20503) = 2519424 * k + 61510 := by
    unfold C
    simp [show (839808 * k + 20503) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 61510) = 1259712 * k + 30755 := by
    unfold C
    simp [show (2519424 * k + 61510) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 30755) = 3779136 * k + 92266 := by
    unfold C
    simp [show (1259712 * k + 30755) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 92266) = 1889568 * k + 46133 := by
    unfold C
    simp [show (3779136 * k + 92266) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 46133) = 5668704 * k + 138400 := by
    unfold C
    simp [show (1889568 * k + 46133) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 138400) = 2834352 * k + 69200 := by
    unfold C
    simp [show (5668704 * k + 138400) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 69200) = 1417176 * k + 34600 := by
    unfold C
    simp [show (2834352 * k + 69200) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 34600) = 708588 * k + 17300 := by
    unfold C
    simp [show (1417176 * k + 34600) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 17300) = 354294 * k + 8650 := by
    unfold C
    simp [show (708588 * k + 17300) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 8650) = 177147 * k + 4325 := by
    unfold C
    simp [show (354294 * k + 8650) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 6399) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 6399))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_6527 : ∀ k : Nat,
    iterate (262144 * k + 6527) 29 = 177147 * k + 4412 ∧
      177147 * k + 4412 < 262144 * k + 6527 := by
  intro k
  have h1 : C (262144 * k + 6527) = 786432 * k + 19582 := by
    unfold C
    simp [show (262144 * k + 6527) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 19582) = 393216 * k + 9791 := by
    unfold C
    simp [show (786432 * k + 19582) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 9791) = 1179648 * k + 29374 := by
    unfold C
    simp [show (393216 * k + 9791) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 29374) = 589824 * k + 14687 := by
    unfold C
    simp [show (1179648 * k + 29374) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 14687) = 1769472 * k + 44062 := by
    unfold C
    simp [show (589824 * k + 14687) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 44062) = 884736 * k + 22031 := by
    unfold C
    simp [show (1769472 * k + 44062) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 22031) = 2654208 * k + 66094 := by
    unfold C
    simp [show (884736 * k + 22031) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 66094) = 1327104 * k + 33047 := by
    unfold C
    simp [show (2654208 * k + 66094) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 33047) = 3981312 * k + 99142 := by
    unfold C
    simp [show (1327104 * k + 33047) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 99142) = 1990656 * k + 49571 := by
    unfold C
    simp [show (3981312 * k + 99142) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 49571) = 5971968 * k + 148714 := by
    unfold C
    simp [show (1990656 * k + 49571) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 148714) = 2985984 * k + 74357 := by
    unfold C
    simp [show (5971968 * k + 148714) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 74357) = 8957952 * k + 223072 := by
    unfold C
    simp [show (2985984 * k + 74357) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 223072) = 4478976 * k + 111536 := by
    unfold C
    simp [show (8957952 * k + 223072) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 111536) = 2239488 * k + 55768 := by
    unfold C
    simp [show (4478976 * k + 111536) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 55768) = 1119744 * k + 27884 := by
    unfold C
    simp [show (2239488 * k + 55768) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 27884) = 559872 * k + 13942 := by
    unfold C
    simp [show (1119744 * k + 27884) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 13942) = 279936 * k + 6971 := by
    unfold C
    simp [show (559872 * k + 13942) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 6971) = 839808 * k + 20914 := by
    unfold C
    simp [show (279936 * k + 6971) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 20914) = 419904 * k + 10457 := by
    unfold C
    simp [show (839808 * k + 20914) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 10457) = 1259712 * k + 31372 := by
    unfold C
    simp [show (419904 * k + 10457) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 31372) = 629856 * k + 15686 := by
    unfold C
    simp [show (1259712 * k + 31372) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 15686) = 314928 * k + 7843 := by
    unfold C
    simp [show (629856 * k + 15686) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 7843) = 944784 * k + 23530 := by
    unfold C
    simp [show (314928 * k + 7843) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 23530) = 472392 * k + 11765 := by
    unfold C
    simp [show (944784 * k + 23530) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 11765) = 1417176 * k + 35296 := by
    unfold C
    simp [show (472392 * k + 11765) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 35296) = 708588 * k + 17648 := by
    unfold C
    simp [show (1417176 * k + 35296) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 17648) = 354294 * k + 8824 := by
    unfold C
    simp [show (708588 * k + 17648) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 8824) = 177147 * k + 4412 := by
    unfold C
    simp [show (354294 * k + 8824) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 6527) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 6527))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_6767 : ∀ k : Nat,
    iterate (262144 * k + 6767) 29 = 177147 * k + 4574 ∧
      177147 * k + 4574 < 262144 * k + 6767 := by
  intro k
  have h1 : C (262144 * k + 6767) = 786432 * k + 20302 := by
    unfold C
    simp [show (262144 * k + 6767) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 20302) = 393216 * k + 10151 := by
    unfold C
    simp [show (786432 * k + 20302) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 10151) = 1179648 * k + 30454 := by
    unfold C
    simp [show (393216 * k + 10151) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 30454) = 589824 * k + 15227 := by
    unfold C
    simp [show (1179648 * k + 30454) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 15227) = 1769472 * k + 45682 := by
    unfold C
    simp [show (589824 * k + 15227) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 45682) = 884736 * k + 22841 := by
    unfold C
    simp [show (1769472 * k + 45682) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 22841) = 2654208 * k + 68524 := by
    unfold C
    simp [show (884736 * k + 22841) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 68524) = 1327104 * k + 34262 := by
    unfold C
    simp [show (2654208 * k + 68524) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 34262) = 663552 * k + 17131 := by
    unfold C
    simp [show (1327104 * k + 34262) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 17131) = 1990656 * k + 51394 := by
    unfold C
    simp [show (663552 * k + 17131) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 51394) = 995328 * k + 25697 := by
    unfold C
    simp [show (1990656 * k + 51394) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 25697) = 2985984 * k + 77092 := by
    unfold C
    simp [show (995328 * k + 25697) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 77092) = 1492992 * k + 38546 := by
    unfold C
    simp [show (2985984 * k + 77092) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 38546) = 746496 * k + 19273 := by
    unfold C
    simp [show (1492992 * k + 38546) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 19273) = 2239488 * k + 57820 := by
    unfold C
    simp [show (746496 * k + 19273) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 57820) = 1119744 * k + 28910 := by
    unfold C
    simp [show (2239488 * k + 57820) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 28910) = 559872 * k + 14455 := by
    unfold C
    simp [show (1119744 * k + 28910) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 14455) = 1679616 * k + 43366 := by
    unfold C
    simp [show (559872 * k + 14455) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 43366) = 839808 * k + 21683 := by
    unfold C
    simp [show (1679616 * k + 43366) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 21683) = 2519424 * k + 65050 := by
    unfold C
    simp [show (839808 * k + 21683) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 65050) = 1259712 * k + 32525 := by
    unfold C
    simp [show (2519424 * k + 65050) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 32525) = 3779136 * k + 97576 := by
    unfold C
    simp [show (1259712 * k + 32525) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 97576) = 1889568 * k + 48788 := by
    unfold C
    simp [show (3779136 * k + 97576) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 48788) = 944784 * k + 24394 := by
    unfold C
    simp [show (1889568 * k + 48788) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 24394) = 472392 * k + 12197 := by
    unfold C
    simp [show (944784 * k + 24394) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 12197) = 1417176 * k + 36592 := by
    unfold C
    simp [show (472392 * k + 12197) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 36592) = 708588 * k + 18296 := by
    unfold C
    simp [show (1417176 * k + 36592) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 18296) = 354294 * k + 9148 := by
    unfold C
    simp [show (708588 * k + 18296) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 9148) = 177147 * k + 4574 := by
    unfold C
    simp [show (354294 * k + 9148) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 6767) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 6767))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_6847 : ∀ k : Nat,
    iterate (262144 * k + 6847) 29 = 177147 * k + 4628 ∧
      177147 * k + 4628 < 262144 * k + 6847 := by
  intro k
  have h1 : C (262144 * k + 6847) = 786432 * k + 20542 := by
    unfold C
    simp [show (262144 * k + 6847) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 20542) = 393216 * k + 10271 := by
    unfold C
    simp [show (786432 * k + 20542) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 10271) = 1179648 * k + 30814 := by
    unfold C
    simp [show (393216 * k + 10271) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 30814) = 589824 * k + 15407 := by
    unfold C
    simp [show (1179648 * k + 30814) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 15407) = 1769472 * k + 46222 := by
    unfold C
    simp [show (589824 * k + 15407) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 46222) = 884736 * k + 23111 := by
    unfold C
    simp [show (1769472 * k + 46222) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 23111) = 2654208 * k + 69334 := by
    unfold C
    simp [show (884736 * k + 23111) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 69334) = 1327104 * k + 34667 := by
    unfold C
    simp [show (2654208 * k + 69334) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 34667) = 3981312 * k + 104002 := by
    unfold C
    simp [show (1327104 * k + 34667) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 104002) = 1990656 * k + 52001 := by
    unfold C
    simp [show (3981312 * k + 104002) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 52001) = 5971968 * k + 156004 := by
    unfold C
    simp [show (1990656 * k + 52001) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 156004) = 2985984 * k + 78002 := by
    unfold C
    simp [show (5971968 * k + 156004) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 78002) = 1492992 * k + 39001 := by
    unfold C
    simp [show (2985984 * k + 78002) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 39001) = 4478976 * k + 117004 := by
    unfold C
    simp [show (1492992 * k + 39001) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 117004) = 2239488 * k + 58502 := by
    unfold C
    simp [show (4478976 * k + 117004) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 58502) = 1119744 * k + 29251 := by
    unfold C
    simp [show (2239488 * k + 58502) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 29251) = 3359232 * k + 87754 := by
    unfold C
    simp [show (1119744 * k + 29251) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 87754) = 1679616 * k + 43877 := by
    unfold C
    simp [show (3359232 * k + 87754) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 43877) = 5038848 * k + 131632 := by
    unfold C
    simp [show (1679616 * k + 43877) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 131632) = 2519424 * k + 65816 := by
    unfold C
    simp [show (5038848 * k + 131632) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 65816) = 1259712 * k + 32908 := by
    unfold C
    simp [show (2519424 * k + 65816) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 32908) = 629856 * k + 16454 := by
    unfold C
    simp [show (1259712 * k + 32908) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 16454) = 314928 * k + 8227 := by
    unfold C
    simp [show (629856 * k + 16454) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 8227) = 944784 * k + 24682 := by
    unfold C
    simp [show (314928 * k + 8227) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 24682) = 472392 * k + 12341 := by
    unfold C
    simp [show (944784 * k + 24682) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 12341) = 1417176 * k + 37024 := by
    unfold C
    simp [show (472392 * k + 12341) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 37024) = 708588 * k + 18512 := by
    unfold C
    simp [show (1417176 * k + 37024) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 18512) = 354294 * k + 9256 := by
    unfold C
    simp [show (708588 * k + 18512) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 9256) = 177147 * k + 4628 := by
    unfold C
    simp [show (354294 * k + 9256) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 6847) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 6847))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_7419 : ∀ k : Nat,
    iterate (262144 * k + 7419) 29 = 177147 * k + 5015 ∧
      177147 * k + 5015 < 262144 * k + 7419 := by
  intro k
  have h1 : C (262144 * k + 7419) = 786432 * k + 22258 := by
    unfold C
    simp [show (262144 * k + 7419) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 22258) = 393216 * k + 11129 := by
    unfold C
    simp [show (786432 * k + 22258) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 11129) = 1179648 * k + 33388 := by
    unfold C
    simp [show (393216 * k + 11129) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 33388) = 589824 * k + 16694 := by
    unfold C
    simp [show (1179648 * k + 33388) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 16694) = 294912 * k + 8347 := by
    unfold C
    simp [show (589824 * k + 16694) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 8347) = 884736 * k + 25042 := by
    unfold C
    simp [show (294912 * k + 8347) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 25042) = 442368 * k + 12521 := by
    unfold C
    simp [show (884736 * k + 25042) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 12521) = 1327104 * k + 37564 := by
    unfold C
    simp [show (442368 * k + 12521) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 37564) = 663552 * k + 18782 := by
    unfold C
    simp [show (1327104 * k + 37564) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 18782) = 331776 * k + 9391 := by
    unfold C
    simp [show (663552 * k + 18782) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 9391) = 995328 * k + 28174 := by
    unfold C
    simp [show (331776 * k + 9391) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 28174) = 497664 * k + 14087 := by
    unfold C
    simp [show (995328 * k + 28174) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 14087) = 1492992 * k + 42262 := by
    unfold C
    simp [show (497664 * k + 14087) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 42262) = 746496 * k + 21131 := by
    unfold C
    simp [show (1492992 * k + 42262) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 21131) = 2239488 * k + 63394 := by
    unfold C
    simp [show (746496 * k + 21131) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 63394) = 1119744 * k + 31697 := by
    unfold C
    simp [show (2239488 * k + 63394) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 31697) = 3359232 * k + 95092 := by
    unfold C
    simp [show (1119744 * k + 31697) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 95092) = 1679616 * k + 47546 := by
    unfold C
    simp [show (3359232 * k + 95092) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 47546) = 839808 * k + 23773 := by
    unfold C
    simp [show (1679616 * k + 47546) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 23773) = 2519424 * k + 71320 := by
    unfold C
    simp [show (839808 * k + 23773) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 71320) = 1259712 * k + 35660 := by
    unfold C
    simp [show (2519424 * k + 71320) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 35660) = 629856 * k + 17830 := by
    unfold C
    simp [show (1259712 * k + 35660) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 17830) = 314928 * k + 8915 := by
    unfold C
    simp [show (629856 * k + 17830) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 8915) = 944784 * k + 26746 := by
    unfold C
    simp [show (314928 * k + 8915) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 26746) = 472392 * k + 13373 := by
    unfold C
    simp [show (944784 * k + 26746) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 13373) = 1417176 * k + 40120 := by
    unfold C
    simp [show (472392 * k + 13373) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 40120) = 708588 * k + 20060 := by
    unfold C
    simp [show (1417176 * k + 40120) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 20060) = 354294 * k + 10030 := by
    unfold C
    simp [show (708588 * k + 20060) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 10030) = 177147 * k + 5015 := by
    unfold C
    simp [show (354294 * k + 10030) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 7419) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 7419))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_8519 : ∀ k : Nat,
    iterate (262144 * k + 8519) 29 = 177147 * k + 5758 ∧
      177147 * k + 5758 < 262144 * k + 8519 := by
  intro k
  have h1 : C (262144 * k + 8519) = 786432 * k + 25558 := by
    unfold C
    simp [show (262144 * k + 8519) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 25558) = 393216 * k + 12779 := by
    unfold C
    simp [show (786432 * k + 25558) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 12779) = 1179648 * k + 38338 := by
    unfold C
    simp [show (393216 * k + 12779) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 38338) = 589824 * k + 19169 := by
    unfold C
    simp [show (1179648 * k + 38338) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 19169) = 1769472 * k + 57508 := by
    unfold C
    simp [show (589824 * k + 19169) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 57508) = 884736 * k + 28754 := by
    unfold C
    simp [show (1769472 * k + 57508) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 28754) = 442368 * k + 14377 := by
    unfold C
    simp [show (884736 * k + 28754) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 14377) = 1327104 * k + 43132 := by
    unfold C
    simp [show (442368 * k + 14377) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 43132) = 663552 * k + 21566 := by
    unfold C
    simp [show (1327104 * k + 43132) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 21566) = 331776 * k + 10783 := by
    unfold C
    simp [show (663552 * k + 21566) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 10783) = 995328 * k + 32350 := by
    unfold C
    simp [show (331776 * k + 10783) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 32350) = 497664 * k + 16175 := by
    unfold C
    simp [show (995328 * k + 32350) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 16175) = 1492992 * k + 48526 := by
    unfold C
    simp [show (497664 * k + 16175) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 48526) = 746496 * k + 24263 := by
    unfold C
    simp [show (1492992 * k + 48526) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 24263) = 2239488 * k + 72790 := by
    unfold C
    simp [show (746496 * k + 24263) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 72790) = 1119744 * k + 36395 := by
    unfold C
    simp [show (2239488 * k + 72790) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 36395) = 3359232 * k + 109186 := by
    unfold C
    simp [show (1119744 * k + 36395) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 109186) = 1679616 * k + 54593 := by
    unfold C
    simp [show (3359232 * k + 109186) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 54593) = 5038848 * k + 163780 := by
    unfold C
    simp [show (1679616 * k + 54593) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 163780) = 2519424 * k + 81890 := by
    unfold C
    simp [show (5038848 * k + 163780) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 81890) = 1259712 * k + 40945 := by
    unfold C
    simp [show (2519424 * k + 81890) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 40945) = 3779136 * k + 122836 := by
    unfold C
    simp [show (1259712 * k + 40945) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 122836) = 1889568 * k + 61418 := by
    unfold C
    simp [show (3779136 * k + 122836) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 61418) = 944784 * k + 30709 := by
    unfold C
    simp [show (1889568 * k + 61418) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 30709) = 2834352 * k + 92128 := by
    unfold C
    simp [show (944784 * k + 30709) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 92128) = 1417176 * k + 46064 := by
    unfold C
    simp [show (2834352 * k + 92128) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 46064) = 708588 * k + 23032 := by
    unfold C
    simp [show (1417176 * k + 46064) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 23032) = 354294 * k + 11516 := by
    unfold C
    simp [show (708588 * k + 23032) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 11516) = 177147 * k + 5758 := by
    unfold C
    simp [show (354294 * k + 11516) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 8519) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 8519))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_8603 : ∀ k : Nat,
    iterate (262144 * k + 8603) 29 = 177147 * k + 5815 ∧
      177147 * k + 5815 < 262144 * k + 8603 := by
  intro k
  have h1 : C (262144 * k + 8603) = 786432 * k + 25810 := by
    unfold C
    simp [show (262144 * k + 8603) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 25810) = 393216 * k + 12905 := by
    unfold C
    simp [show (786432 * k + 25810) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 12905) = 1179648 * k + 38716 := by
    unfold C
    simp [show (393216 * k + 12905) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 38716) = 589824 * k + 19358 := by
    unfold C
    simp [show (1179648 * k + 38716) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 19358) = 294912 * k + 9679 := by
    unfold C
    simp [show (589824 * k + 19358) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 9679) = 884736 * k + 29038 := by
    unfold C
    simp [show (294912 * k + 9679) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 29038) = 442368 * k + 14519 := by
    unfold C
    simp [show (884736 * k + 29038) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 14519) = 1327104 * k + 43558 := by
    unfold C
    simp [show (442368 * k + 14519) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 43558) = 663552 * k + 21779 := by
    unfold C
    simp [show (1327104 * k + 43558) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 21779) = 1990656 * k + 65338 := by
    unfold C
    simp [show (663552 * k + 21779) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 65338) = 995328 * k + 32669 := by
    unfold C
    simp [show (1990656 * k + 65338) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 32669) = 2985984 * k + 98008 := by
    unfold C
    simp [show (995328 * k + 32669) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 98008) = 1492992 * k + 49004 := by
    unfold C
    simp [show (2985984 * k + 98008) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 49004) = 746496 * k + 24502 := by
    unfold C
    simp [show (1492992 * k + 49004) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 24502) = 373248 * k + 12251 := by
    unfold C
    simp [show (746496 * k + 24502) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 12251) = 1119744 * k + 36754 := by
    unfold C
    simp [show (373248 * k + 12251) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 36754) = 559872 * k + 18377 := by
    unfold C
    simp [show (1119744 * k + 36754) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 18377) = 1679616 * k + 55132 := by
    unfold C
    simp [show (559872 * k + 18377) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 55132) = 839808 * k + 27566 := by
    unfold C
    simp [show (1679616 * k + 55132) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 27566) = 419904 * k + 13783 := by
    unfold C
    simp [show (839808 * k + 27566) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 13783) = 1259712 * k + 41350 := by
    unfold C
    simp [show (419904 * k + 13783) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 41350) = 629856 * k + 20675 := by
    unfold C
    simp [show (1259712 * k + 41350) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 20675) = 1889568 * k + 62026 := by
    unfold C
    simp [show (629856 * k + 20675) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 62026) = 944784 * k + 31013 := by
    unfold C
    simp [show (1889568 * k + 62026) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 31013) = 2834352 * k + 93040 := by
    unfold C
    simp [show (944784 * k + 31013) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 93040) = 1417176 * k + 46520 := by
    unfold C
    simp [show (2834352 * k + 93040) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 46520) = 708588 * k + 23260 := by
    unfold C
    simp [show (1417176 * k + 46520) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 23260) = 354294 * k + 11630 := by
    unfold C
    simp [show (708588 * k + 23260) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 11630) = 177147 * k + 5815 := by
    unfold C
    simp [show (354294 * k + 11630) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 8603) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 8603))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_8955 : ∀ k : Nat,
    iterate (262144 * k + 8955) 29 = 177147 * k + 6053 ∧
      177147 * k + 6053 < 262144 * k + 8955 := by
  intro k
  have h1 : C (262144 * k + 8955) = 786432 * k + 26866 := by
    unfold C
    simp [show (262144 * k + 8955) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 26866) = 393216 * k + 13433 := by
    unfold C
    simp [show (786432 * k + 26866) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 13433) = 1179648 * k + 40300 := by
    unfold C
    simp [show (393216 * k + 13433) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 40300) = 589824 * k + 20150 := by
    unfold C
    simp [show (1179648 * k + 40300) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 20150) = 294912 * k + 10075 := by
    unfold C
    simp [show (589824 * k + 20150) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 10075) = 884736 * k + 30226 := by
    unfold C
    simp [show (294912 * k + 10075) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 30226) = 442368 * k + 15113 := by
    unfold C
    simp [show (884736 * k + 30226) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 15113) = 1327104 * k + 45340 := by
    unfold C
    simp [show (442368 * k + 15113) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 45340) = 663552 * k + 22670 := by
    unfold C
    simp [show (1327104 * k + 45340) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 22670) = 331776 * k + 11335 := by
    unfold C
    simp [show (663552 * k + 22670) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 11335) = 995328 * k + 34006 := by
    unfold C
    simp [show (331776 * k + 11335) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 34006) = 497664 * k + 17003 := by
    unfold C
    simp [show (995328 * k + 34006) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 17003) = 1492992 * k + 51010 := by
    unfold C
    simp [show (497664 * k + 17003) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 51010) = 746496 * k + 25505 := by
    unfold C
    simp [show (1492992 * k + 51010) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 25505) = 2239488 * k + 76516 := by
    unfold C
    simp [show (746496 * k + 25505) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 76516) = 1119744 * k + 38258 := by
    unfold C
    simp [show (2239488 * k + 76516) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 38258) = 559872 * k + 19129 := by
    unfold C
    simp [show (1119744 * k + 38258) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 19129) = 1679616 * k + 57388 := by
    unfold C
    simp [show (559872 * k + 19129) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 57388) = 839808 * k + 28694 := by
    unfold C
    simp [show (1679616 * k + 57388) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 28694) = 419904 * k + 14347 := by
    unfold C
    simp [show (839808 * k + 28694) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 14347) = 1259712 * k + 43042 := by
    unfold C
    simp [show (419904 * k + 14347) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 43042) = 629856 * k + 21521 := by
    unfold C
    simp [show (1259712 * k + 43042) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 21521) = 1889568 * k + 64564 := by
    unfold C
    simp [show (629856 * k + 21521) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 64564) = 944784 * k + 32282 := by
    unfold C
    simp [show (1889568 * k + 64564) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 32282) = 472392 * k + 16141 := by
    unfold C
    simp [show (944784 * k + 32282) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 16141) = 1417176 * k + 48424 := by
    unfold C
    simp [show (472392 * k + 16141) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 48424) = 708588 * k + 24212 := by
    unfold C
    simp [show (1417176 * k + 48424) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 24212) = 354294 * k + 12106 := by
    unfold C
    simp [show (708588 * k + 24212) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 12106) = 177147 * k + 6053 := by
    unfold C
    simp [show (354294 * k + 12106) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 8955) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 8955))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_9471 : ∀ k : Nat,
    iterate (262144 * k + 9471) 29 = 177147 * k + 6401 ∧
      177147 * k + 6401 < 262144 * k + 9471 := by
  intro k
  have h1 : C (262144 * k + 9471) = 786432 * k + 28414 := by
    unfold C
    simp [show (262144 * k + 9471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 28414) = 393216 * k + 14207 := by
    unfold C
    simp [show (786432 * k + 28414) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 14207) = 1179648 * k + 42622 := by
    unfold C
    simp [show (393216 * k + 14207) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 42622) = 589824 * k + 21311 := by
    unfold C
    simp [show (1179648 * k + 42622) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 21311) = 1769472 * k + 63934 := by
    unfold C
    simp [show (589824 * k + 21311) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 63934) = 884736 * k + 31967 := by
    unfold C
    simp [show (1769472 * k + 63934) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 31967) = 2654208 * k + 95902 := by
    unfold C
    simp [show (884736 * k + 31967) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 95902) = 1327104 * k + 47951 := by
    unfold C
    simp [show (2654208 * k + 95902) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 47951) = 3981312 * k + 143854 := by
    unfold C
    simp [show (1327104 * k + 47951) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 143854) = 1990656 * k + 71927 := by
    unfold C
    simp [show (3981312 * k + 143854) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 71927) = 5971968 * k + 215782 := by
    unfold C
    simp [show (1990656 * k + 71927) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 215782) = 2985984 * k + 107891 := by
    unfold C
    simp [show (5971968 * k + 215782) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 107891) = 8957952 * k + 323674 := by
    unfold C
    simp [show (2985984 * k + 107891) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 323674) = 4478976 * k + 161837 := by
    unfold C
    simp [show (8957952 * k + 323674) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 161837) = 13436928 * k + 485512 := by
    unfold C
    simp [show (4478976 * k + 161837) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 485512) = 6718464 * k + 242756 := by
    unfold C
    simp [show (13436928 * k + 485512) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 242756) = 3359232 * k + 121378 := by
    unfold C
    simp [show (6718464 * k + 242756) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 121378) = 1679616 * k + 60689 := by
    unfold C
    simp [show (3359232 * k + 121378) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 60689) = 5038848 * k + 182068 := by
    unfold C
    simp [show (1679616 * k + 60689) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 182068) = 2519424 * k + 91034 := by
    unfold C
    simp [show (5038848 * k + 182068) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 91034) = 1259712 * k + 45517 := by
    unfold C
    simp [show (2519424 * k + 91034) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 45517) = 3779136 * k + 136552 := by
    unfold C
    simp [show (1259712 * k + 45517) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 136552) = 1889568 * k + 68276 := by
    unfold C
    simp [show (3779136 * k + 136552) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 68276) = 944784 * k + 34138 := by
    unfold C
    simp [show (1889568 * k + 68276) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 34138) = 472392 * k + 17069 := by
    unfold C
    simp [show (944784 * k + 34138) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 17069) = 1417176 * k + 51208 := by
    unfold C
    simp [show (472392 * k + 17069) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 51208) = 708588 * k + 25604 := by
    unfold C
    simp [show (1417176 * k + 51208) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 25604) = 354294 * k + 12802 := by
    unfold C
    simp [show (708588 * k + 25604) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 12802) = 177147 * k + 6401 := by
    unfold C
    simp [show (354294 * k + 12802) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 9471) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 9471))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_9883 : ∀ k : Nat,
    iterate (262144 * k + 9883) 29 = 177147 * k + 6680 ∧
      177147 * k + 6680 < 262144 * k + 9883 := by
  intro k
  have h1 : C (262144 * k + 9883) = 786432 * k + 29650 := by
    unfold C
    simp [show (262144 * k + 9883) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 29650) = 393216 * k + 14825 := by
    unfold C
    simp [show (786432 * k + 29650) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 14825) = 1179648 * k + 44476 := by
    unfold C
    simp [show (393216 * k + 14825) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 44476) = 589824 * k + 22238 := by
    unfold C
    simp [show (1179648 * k + 44476) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 22238) = 294912 * k + 11119 := by
    unfold C
    simp [show (589824 * k + 22238) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 11119) = 884736 * k + 33358 := by
    unfold C
    simp [show (294912 * k + 11119) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 33358) = 442368 * k + 16679 := by
    unfold C
    simp [show (884736 * k + 33358) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 16679) = 1327104 * k + 50038 := by
    unfold C
    simp [show (442368 * k + 16679) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 50038) = 663552 * k + 25019 := by
    unfold C
    simp [show (1327104 * k + 50038) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 25019) = 1990656 * k + 75058 := by
    unfold C
    simp [show (663552 * k + 25019) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 75058) = 995328 * k + 37529 := by
    unfold C
    simp [show (1990656 * k + 75058) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 37529) = 2985984 * k + 112588 := by
    unfold C
    simp [show (995328 * k + 37529) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 112588) = 1492992 * k + 56294 := by
    unfold C
    simp [show (2985984 * k + 112588) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 56294) = 746496 * k + 28147 := by
    unfold C
    simp [show (1492992 * k + 56294) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 28147) = 2239488 * k + 84442 := by
    unfold C
    simp [show (746496 * k + 28147) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 84442) = 1119744 * k + 42221 := by
    unfold C
    simp [show (2239488 * k + 84442) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 42221) = 3359232 * k + 126664 := by
    unfold C
    simp [show (1119744 * k + 42221) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 126664) = 1679616 * k + 63332 := by
    unfold C
    simp [show (3359232 * k + 126664) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 63332) = 839808 * k + 31666 := by
    unfold C
    simp [show (1679616 * k + 63332) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 31666) = 419904 * k + 15833 := by
    unfold C
    simp [show (839808 * k + 31666) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 15833) = 1259712 * k + 47500 := by
    unfold C
    simp [show (419904 * k + 15833) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 47500) = 629856 * k + 23750 := by
    unfold C
    simp [show (1259712 * k + 47500) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 23750) = 314928 * k + 11875 := by
    unfold C
    simp [show (629856 * k + 23750) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 11875) = 944784 * k + 35626 := by
    unfold C
    simp [show (314928 * k + 11875) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 35626) = 472392 * k + 17813 := by
    unfold C
    simp [show (944784 * k + 35626) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 17813) = 1417176 * k + 53440 := by
    unfold C
    simp [show (472392 * k + 17813) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 53440) = 708588 * k + 26720 := by
    unfold C
    simp [show (1417176 * k + 53440) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 26720) = 354294 * k + 13360 := by
    unfold C
    simp [show (708588 * k + 26720) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 13360) = 177147 * k + 6680 := by
    unfold C
    simp [show (354294 * k + 13360) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 9883) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 9883))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_10095 : ∀ k : Nat,
    iterate (262144 * k + 10095) 29 = 177147 * k + 6823 ∧
      177147 * k + 6823 < 262144 * k + 10095 := by
  intro k
  have h1 : C (262144 * k + 10095) = 786432 * k + 30286 := by
    unfold C
    simp [show (262144 * k + 10095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 30286) = 393216 * k + 15143 := by
    unfold C
    simp [show (786432 * k + 30286) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 15143) = 1179648 * k + 45430 := by
    unfold C
    simp [show (393216 * k + 15143) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 45430) = 589824 * k + 22715 := by
    unfold C
    simp [show (1179648 * k + 45430) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 22715) = 1769472 * k + 68146 := by
    unfold C
    simp [show (589824 * k + 22715) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 68146) = 884736 * k + 34073 := by
    unfold C
    simp [show (1769472 * k + 68146) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 34073) = 2654208 * k + 102220 := by
    unfold C
    simp [show (884736 * k + 34073) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 102220) = 1327104 * k + 51110 := by
    unfold C
    simp [show (2654208 * k + 102220) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 51110) = 663552 * k + 25555 := by
    unfold C
    simp [show (1327104 * k + 51110) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 25555) = 1990656 * k + 76666 := by
    unfold C
    simp [show (663552 * k + 25555) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 76666) = 995328 * k + 38333 := by
    unfold C
    simp [show (1990656 * k + 76666) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 38333) = 2985984 * k + 115000 := by
    unfold C
    simp [show (995328 * k + 38333) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 115000) = 1492992 * k + 57500 := by
    unfold C
    simp [show (2985984 * k + 115000) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 57500) = 746496 * k + 28750 := by
    unfold C
    simp [show (1492992 * k + 57500) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 28750) = 373248 * k + 14375 := by
    unfold C
    simp [show (746496 * k + 28750) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 14375) = 1119744 * k + 43126 := by
    unfold C
    simp [show (373248 * k + 14375) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 43126) = 559872 * k + 21563 := by
    unfold C
    simp [show (1119744 * k + 43126) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 21563) = 1679616 * k + 64690 := by
    unfold C
    simp [show (559872 * k + 21563) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 64690) = 839808 * k + 32345 := by
    unfold C
    simp [show (1679616 * k + 64690) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 32345) = 2519424 * k + 97036 := by
    unfold C
    simp [show (839808 * k + 32345) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 97036) = 1259712 * k + 48518 := by
    unfold C
    simp [show (2519424 * k + 97036) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 48518) = 629856 * k + 24259 := by
    unfold C
    simp [show (1259712 * k + 48518) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 24259) = 1889568 * k + 72778 := by
    unfold C
    simp [show (629856 * k + 24259) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 72778) = 944784 * k + 36389 := by
    unfold C
    simp [show (1889568 * k + 72778) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 36389) = 2834352 * k + 109168 := by
    unfold C
    simp [show (944784 * k + 36389) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 109168) = 1417176 * k + 54584 := by
    unfold C
    simp [show (2834352 * k + 109168) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 54584) = 708588 * k + 27292 := by
    unfold C
    simp [show (1417176 * k + 54584) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 27292) = 354294 * k + 13646 := by
    unfold C
    simp [show (708588 * k + 27292) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 13646) = 177147 * k + 6823 := by
    unfold C
    simp [show (354294 * k + 13646) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 10095) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 10095))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_10399 : ∀ k : Nat,
    iterate (262144 * k + 10399) 29 = 177147 * k + 7028 ∧
      177147 * k + 7028 < 262144 * k + 10399 := by
  intro k
  have h1 : C (262144 * k + 10399) = 786432 * k + 31198 := by
    unfold C
    simp [show (262144 * k + 10399) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 31198) = 393216 * k + 15599 := by
    unfold C
    simp [show (786432 * k + 31198) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 15599) = 1179648 * k + 46798 := by
    unfold C
    simp [show (393216 * k + 15599) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 46798) = 589824 * k + 23399 := by
    unfold C
    simp [show (1179648 * k + 46798) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 23399) = 1769472 * k + 70198 := by
    unfold C
    simp [show (589824 * k + 23399) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 70198) = 884736 * k + 35099 := by
    unfold C
    simp [show (1769472 * k + 70198) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 35099) = 2654208 * k + 105298 := by
    unfold C
    simp [show (884736 * k + 35099) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 105298) = 1327104 * k + 52649 := by
    unfold C
    simp [show (2654208 * k + 105298) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 52649) = 3981312 * k + 157948 := by
    unfold C
    simp [show (1327104 * k + 52649) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 157948) = 1990656 * k + 78974 := by
    unfold C
    simp [show (3981312 * k + 157948) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 78974) = 995328 * k + 39487 := by
    unfold C
    simp [show (1990656 * k + 78974) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 39487) = 2985984 * k + 118462 := by
    unfold C
    simp [show (995328 * k + 39487) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 118462) = 1492992 * k + 59231 := by
    unfold C
    simp [show (2985984 * k + 118462) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 59231) = 4478976 * k + 177694 := by
    unfold C
    simp [show (1492992 * k + 59231) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 177694) = 2239488 * k + 88847 := by
    unfold C
    simp [show (4478976 * k + 177694) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 88847) = 6718464 * k + 266542 := by
    unfold C
    simp [show (2239488 * k + 88847) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 266542) = 3359232 * k + 133271 := by
    unfold C
    simp [show (6718464 * k + 266542) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 133271) = 10077696 * k + 399814 := by
    unfold C
    simp [show (3359232 * k + 133271) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 399814) = 5038848 * k + 199907 := by
    unfold C
    simp [show (10077696 * k + 399814) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 199907) = 15116544 * k + 599722 := by
    unfold C
    simp [show (5038848 * k + 199907) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 599722) = 7558272 * k + 299861 := by
    unfold C
    simp [show (15116544 * k + 599722) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 299861) = 22674816 * k + 899584 := by
    unfold C
    simp [show (7558272 * k + 299861) % 2 ≠ 0 by omega]
    omega
  have h23 : C (22674816 * k + 899584) = 11337408 * k + 449792 := by
    unfold C
    simp [show (22674816 * k + 899584) % 2 = 0 by omega]
    omega
  have h24 : C (11337408 * k + 449792) = 5668704 * k + 224896 := by
    unfold C
    simp [show (11337408 * k + 449792) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 224896) = 2834352 * k + 112448 := by
    unfold C
    simp [show (5668704 * k + 224896) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 112448) = 1417176 * k + 56224 := by
    unfold C
    simp [show (2834352 * k + 112448) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 56224) = 708588 * k + 28112 := by
    unfold C
    simp [show (1417176 * k + 56224) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 28112) = 354294 * k + 14056 := by
    unfold C
    simp [show (708588 * k + 28112) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 14056) = 177147 * k + 7028 := by
    unfold C
    simp [show (354294 * k + 14056) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 10399) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 10399))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_10447 : ∀ k : Nat,
    iterate (262144 * k + 10447) 29 = 177147 * k + 7061 ∧
      177147 * k + 7061 < 262144 * k + 10447 := by
  intro k
  have h1 : C (262144 * k + 10447) = 786432 * k + 31342 := by
    unfold C
    simp [show (262144 * k + 10447) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 31342) = 393216 * k + 15671 := by
    unfold C
    simp [show (786432 * k + 31342) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 15671) = 1179648 * k + 47014 := by
    unfold C
    simp [show (393216 * k + 15671) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 47014) = 589824 * k + 23507 := by
    unfold C
    simp [show (1179648 * k + 47014) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 23507) = 1769472 * k + 70522 := by
    unfold C
    simp [show (589824 * k + 23507) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 70522) = 884736 * k + 35261 := by
    unfold C
    simp [show (1769472 * k + 70522) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 35261) = 2654208 * k + 105784 := by
    unfold C
    simp [show (884736 * k + 35261) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 105784) = 1327104 * k + 52892 := by
    unfold C
    simp [show (2654208 * k + 105784) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 52892) = 663552 * k + 26446 := by
    unfold C
    simp [show (1327104 * k + 52892) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 26446) = 331776 * k + 13223 := by
    unfold C
    simp [show (663552 * k + 26446) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 13223) = 995328 * k + 39670 := by
    unfold C
    simp [show (331776 * k + 13223) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 39670) = 497664 * k + 19835 := by
    unfold C
    simp [show (995328 * k + 39670) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 19835) = 1492992 * k + 59506 := by
    unfold C
    simp [show (497664 * k + 19835) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 59506) = 746496 * k + 29753 := by
    unfold C
    simp [show (1492992 * k + 59506) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 29753) = 2239488 * k + 89260 := by
    unfold C
    simp [show (746496 * k + 29753) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 89260) = 1119744 * k + 44630 := by
    unfold C
    simp [show (2239488 * k + 89260) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 44630) = 559872 * k + 22315 := by
    unfold C
    simp [show (1119744 * k + 44630) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 22315) = 1679616 * k + 66946 := by
    unfold C
    simp [show (559872 * k + 22315) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 66946) = 839808 * k + 33473 := by
    unfold C
    simp [show (1679616 * k + 66946) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 33473) = 2519424 * k + 100420 := by
    unfold C
    simp [show (839808 * k + 33473) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 100420) = 1259712 * k + 50210 := by
    unfold C
    simp [show (2519424 * k + 100420) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 50210) = 629856 * k + 25105 := by
    unfold C
    simp [show (1259712 * k + 50210) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 25105) = 1889568 * k + 75316 := by
    unfold C
    simp [show (629856 * k + 25105) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 75316) = 944784 * k + 37658 := by
    unfold C
    simp [show (1889568 * k + 75316) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 37658) = 472392 * k + 18829 := by
    unfold C
    simp [show (944784 * k + 37658) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 18829) = 1417176 * k + 56488 := by
    unfold C
    simp [show (472392 * k + 18829) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 56488) = 708588 * k + 28244 := by
    unfold C
    simp [show (1417176 * k + 56488) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 28244) = 354294 * k + 14122 := by
    unfold C
    simp [show (708588 * k + 28244) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 14122) = 177147 * k + 7061 := by
    unfold C
    simp [show (354294 * k + 14122) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 10447) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 10447))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard002
