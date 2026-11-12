import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard004

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_14331 : ∀ k : Nat,
    iterate (262144 * k + 14331) 29 = 177147 * k + 9686 ∧
      177147 * k + 9686 < 262144 * k + 14331 := by
  intro k
  have h1 : C (262144 * k + 14331) = 786432 * k + 42994 := by
    unfold C
    simp [show (262144 * k + 14331) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 42994) = 393216 * k + 21497 := by
    unfold C
    simp [show (786432 * k + 42994) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 21497) = 1179648 * k + 64492 := by
    unfold C
    simp [show (393216 * k + 21497) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 64492) = 589824 * k + 32246 := by
    unfold C
    simp [show (1179648 * k + 64492) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 32246) = 294912 * k + 16123 := by
    unfold C
    simp [show (589824 * k + 32246) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 16123) = 884736 * k + 48370 := by
    unfold C
    simp [show (294912 * k + 16123) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 48370) = 442368 * k + 24185 := by
    unfold C
    simp [show (884736 * k + 48370) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 24185) = 1327104 * k + 72556 := by
    unfold C
    simp [show (442368 * k + 24185) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 72556) = 663552 * k + 36278 := by
    unfold C
    simp [show (1327104 * k + 72556) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 36278) = 331776 * k + 18139 := by
    unfold C
    simp [show (663552 * k + 36278) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 18139) = 995328 * k + 54418 := by
    unfold C
    simp [show (331776 * k + 18139) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 54418) = 497664 * k + 27209 := by
    unfold C
    simp [show (995328 * k + 54418) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 27209) = 1492992 * k + 81628 := by
    unfold C
    simp [show (497664 * k + 27209) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 81628) = 746496 * k + 40814 := by
    unfold C
    simp [show (1492992 * k + 81628) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 40814) = 373248 * k + 20407 := by
    unfold C
    simp [show (746496 * k + 40814) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 20407) = 1119744 * k + 61222 := by
    unfold C
    simp [show (373248 * k + 20407) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 61222) = 559872 * k + 30611 := by
    unfold C
    simp [show (1119744 * k + 61222) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 30611) = 1679616 * k + 91834 := by
    unfold C
    simp [show (559872 * k + 30611) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 91834) = 839808 * k + 45917 := by
    unfold C
    simp [show (1679616 * k + 91834) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 45917) = 2519424 * k + 137752 := by
    unfold C
    simp [show (839808 * k + 45917) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 137752) = 1259712 * k + 68876 := by
    unfold C
    simp [show (2519424 * k + 137752) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 68876) = 629856 * k + 34438 := by
    unfold C
    simp [show (1259712 * k + 68876) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 34438) = 314928 * k + 17219 := by
    unfold C
    simp [show (629856 * k + 34438) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 17219) = 944784 * k + 51658 := by
    unfold C
    simp [show (314928 * k + 17219) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 51658) = 472392 * k + 25829 := by
    unfold C
    simp [show (944784 * k + 51658) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 25829) = 1417176 * k + 77488 := by
    unfold C
    simp [show (472392 * k + 25829) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 77488) = 708588 * k + 38744 := by
    unfold C
    simp [show (1417176 * k + 77488) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 38744) = 354294 * k + 19372 := by
    unfold C
    simp [show (708588 * k + 38744) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 19372) = 177147 * k + 9686 := by
    unfold C
    simp [show (354294 * k + 19372) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 14331) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 14331))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_15355 : ∀ k : Nat,
    iterate (262144 * k + 15355) 29 = 177147 * k + 10378 ∧
      177147 * k + 10378 < 262144 * k + 15355 := by
  intro k
  have h1 : C (262144 * k + 15355) = 786432 * k + 46066 := by
    unfold C
    simp [show (262144 * k + 15355) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 46066) = 393216 * k + 23033 := by
    unfold C
    simp [show (786432 * k + 46066) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 23033) = 1179648 * k + 69100 := by
    unfold C
    simp [show (393216 * k + 23033) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 69100) = 589824 * k + 34550 := by
    unfold C
    simp [show (1179648 * k + 69100) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 34550) = 294912 * k + 17275 := by
    unfold C
    simp [show (589824 * k + 34550) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 17275) = 884736 * k + 51826 := by
    unfold C
    simp [show (294912 * k + 17275) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 51826) = 442368 * k + 25913 := by
    unfold C
    simp [show (884736 * k + 51826) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 25913) = 1327104 * k + 77740 := by
    unfold C
    simp [show (442368 * k + 25913) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 77740) = 663552 * k + 38870 := by
    unfold C
    simp [show (1327104 * k + 77740) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 38870) = 331776 * k + 19435 := by
    unfold C
    simp [show (663552 * k + 38870) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 19435) = 995328 * k + 58306 := by
    unfold C
    simp [show (331776 * k + 19435) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 58306) = 497664 * k + 29153 := by
    unfold C
    simp [show (995328 * k + 58306) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 29153) = 1492992 * k + 87460 := by
    unfold C
    simp [show (497664 * k + 29153) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 87460) = 746496 * k + 43730 := by
    unfold C
    simp [show (1492992 * k + 87460) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 43730) = 373248 * k + 21865 := by
    unfold C
    simp [show (746496 * k + 43730) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 21865) = 1119744 * k + 65596 := by
    unfold C
    simp [show (373248 * k + 21865) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 65596) = 559872 * k + 32798 := by
    unfold C
    simp [show (1119744 * k + 65596) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 32798) = 279936 * k + 16399 := by
    unfold C
    simp [show (559872 * k + 32798) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 16399) = 839808 * k + 49198 := by
    unfold C
    simp [show (279936 * k + 16399) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 49198) = 419904 * k + 24599 := by
    unfold C
    simp [show (839808 * k + 49198) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 24599) = 1259712 * k + 73798 := by
    unfold C
    simp [show (419904 * k + 24599) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 73798) = 629856 * k + 36899 := by
    unfold C
    simp [show (1259712 * k + 73798) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 36899) = 1889568 * k + 110698 := by
    unfold C
    simp [show (629856 * k + 36899) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 110698) = 944784 * k + 55349 := by
    unfold C
    simp [show (1889568 * k + 110698) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 55349) = 2834352 * k + 166048 := by
    unfold C
    simp [show (944784 * k + 55349) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 166048) = 1417176 * k + 83024 := by
    unfold C
    simp [show (2834352 * k + 166048) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 83024) = 708588 * k + 41512 := by
    unfold C
    simp [show (1417176 * k + 83024) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 41512) = 354294 * k + 20756 := by
    unfold C
    simp [show (708588 * k + 41512) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 20756) = 177147 * k + 10378 := by
    unfold C
    simp [show (354294 * k + 20756) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 15355) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 15355))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_15775 : ∀ k : Nat,
    iterate (262144 * k + 15775) 29 = 177147 * k + 10661 ∧
      177147 * k + 10661 < 262144 * k + 15775 := by
  intro k
  have h1 : C (262144 * k + 15775) = 786432 * k + 47326 := by
    unfold C
    simp [show (262144 * k + 15775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 47326) = 393216 * k + 23663 := by
    unfold C
    simp [show (786432 * k + 47326) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 23663) = 1179648 * k + 70990 := by
    unfold C
    simp [show (393216 * k + 23663) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 70990) = 589824 * k + 35495 := by
    unfold C
    simp [show (1179648 * k + 70990) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 35495) = 1769472 * k + 106486 := by
    unfold C
    simp [show (589824 * k + 35495) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 106486) = 884736 * k + 53243 := by
    unfold C
    simp [show (1769472 * k + 106486) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 53243) = 2654208 * k + 159730 := by
    unfold C
    simp [show (884736 * k + 53243) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 159730) = 1327104 * k + 79865 := by
    unfold C
    simp [show (2654208 * k + 159730) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 79865) = 3981312 * k + 239596 := by
    unfold C
    simp [show (1327104 * k + 79865) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 239596) = 1990656 * k + 119798 := by
    unfold C
    simp [show (3981312 * k + 239596) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 119798) = 995328 * k + 59899 := by
    unfold C
    simp [show (1990656 * k + 119798) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 59899) = 2985984 * k + 179698 := by
    unfold C
    simp [show (995328 * k + 59899) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 179698) = 1492992 * k + 89849 := by
    unfold C
    simp [show (2985984 * k + 179698) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 89849) = 4478976 * k + 269548 := by
    unfold C
    simp [show (1492992 * k + 89849) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 269548) = 2239488 * k + 134774 := by
    unfold C
    simp [show (4478976 * k + 269548) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 134774) = 1119744 * k + 67387 := by
    unfold C
    simp [show (2239488 * k + 134774) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 67387) = 3359232 * k + 202162 := by
    unfold C
    simp [show (1119744 * k + 67387) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 202162) = 1679616 * k + 101081 := by
    unfold C
    simp [show (3359232 * k + 202162) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 101081) = 5038848 * k + 303244 := by
    unfold C
    simp [show (1679616 * k + 101081) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 303244) = 2519424 * k + 151622 := by
    unfold C
    simp [show (5038848 * k + 303244) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 151622) = 1259712 * k + 75811 := by
    unfold C
    simp [show (2519424 * k + 151622) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 75811) = 3779136 * k + 227434 := by
    unfold C
    simp [show (1259712 * k + 75811) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 227434) = 1889568 * k + 113717 := by
    unfold C
    simp [show (3779136 * k + 227434) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 113717) = 5668704 * k + 341152 := by
    unfold C
    simp [show (1889568 * k + 113717) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 341152) = 2834352 * k + 170576 := by
    unfold C
    simp [show (5668704 * k + 341152) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 170576) = 1417176 * k + 85288 := by
    unfold C
    simp [show (2834352 * k + 170576) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 85288) = 708588 * k + 42644 := by
    unfold C
    simp [show (1417176 * k + 85288) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 42644) = 354294 * k + 21322 := by
    unfold C
    simp [show (708588 * k + 42644) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 21322) = 177147 * k + 10661 := by
    unfold C
    simp [show (354294 * k + 21322) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 15775) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 15775))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_16031 : ∀ k : Nat,
    iterate (262144 * k + 16031) 29 = 177147 * k + 10834 ∧
      177147 * k + 10834 < 262144 * k + 16031 := by
  intro k
  have h1 : C (262144 * k + 16031) = 786432 * k + 48094 := by
    unfold C
    simp [show (262144 * k + 16031) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 48094) = 393216 * k + 24047 := by
    unfold C
    simp [show (786432 * k + 48094) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 24047) = 1179648 * k + 72142 := by
    unfold C
    simp [show (393216 * k + 24047) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 72142) = 589824 * k + 36071 := by
    unfold C
    simp [show (1179648 * k + 72142) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 36071) = 1769472 * k + 108214 := by
    unfold C
    simp [show (589824 * k + 36071) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 108214) = 884736 * k + 54107 := by
    unfold C
    simp [show (1769472 * k + 108214) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 54107) = 2654208 * k + 162322 := by
    unfold C
    simp [show (884736 * k + 54107) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 162322) = 1327104 * k + 81161 := by
    unfold C
    simp [show (2654208 * k + 162322) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 81161) = 3981312 * k + 243484 := by
    unfold C
    simp [show (1327104 * k + 81161) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 243484) = 1990656 * k + 121742 := by
    unfold C
    simp [show (3981312 * k + 243484) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 121742) = 995328 * k + 60871 := by
    unfold C
    simp [show (1990656 * k + 121742) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 60871) = 2985984 * k + 182614 := by
    unfold C
    simp [show (995328 * k + 60871) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 182614) = 1492992 * k + 91307 := by
    unfold C
    simp [show (2985984 * k + 182614) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 91307) = 4478976 * k + 273922 := by
    unfold C
    simp [show (1492992 * k + 91307) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 273922) = 2239488 * k + 136961 := by
    unfold C
    simp [show (4478976 * k + 273922) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 136961) = 6718464 * k + 410884 := by
    unfold C
    simp [show (2239488 * k + 136961) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 410884) = 3359232 * k + 205442 := by
    unfold C
    simp [show (6718464 * k + 410884) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 205442) = 1679616 * k + 102721 := by
    unfold C
    simp [show (3359232 * k + 205442) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 102721) = 5038848 * k + 308164 := by
    unfold C
    simp [show (1679616 * k + 102721) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 308164) = 2519424 * k + 154082 := by
    unfold C
    simp [show (5038848 * k + 308164) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 154082) = 1259712 * k + 77041 := by
    unfold C
    simp [show (2519424 * k + 154082) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 77041) = 3779136 * k + 231124 := by
    unfold C
    simp [show (1259712 * k + 77041) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 231124) = 1889568 * k + 115562 := by
    unfold C
    simp [show (3779136 * k + 231124) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 115562) = 944784 * k + 57781 := by
    unfold C
    simp [show (1889568 * k + 115562) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 57781) = 2834352 * k + 173344 := by
    unfold C
    simp [show (944784 * k + 57781) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 173344) = 1417176 * k + 86672 := by
    unfold C
    simp [show (2834352 * k + 173344) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 86672) = 708588 * k + 43336 := by
    unfold C
    simp [show (1417176 * k + 86672) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 43336) = 354294 * k + 21668 := by
    unfold C
    simp [show (708588 * k + 43336) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 21668) = 177147 * k + 10834 := by
    unfold C
    simp [show (354294 * k + 21668) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 16031) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 16031))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_16543 : ∀ k : Nat,
    iterate (262144 * k + 16543) 29 = 177147 * k + 11180 ∧
      177147 * k + 11180 < 262144 * k + 16543 := by
  intro k
  have h1 : C (262144 * k + 16543) = 786432 * k + 49630 := by
    unfold C
    simp [show (262144 * k + 16543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 49630) = 393216 * k + 24815 := by
    unfold C
    simp [show (786432 * k + 49630) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 24815) = 1179648 * k + 74446 := by
    unfold C
    simp [show (393216 * k + 24815) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 74446) = 589824 * k + 37223 := by
    unfold C
    simp [show (1179648 * k + 74446) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 37223) = 1769472 * k + 111670 := by
    unfold C
    simp [show (589824 * k + 37223) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 111670) = 884736 * k + 55835 := by
    unfold C
    simp [show (1769472 * k + 111670) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 55835) = 2654208 * k + 167506 := by
    unfold C
    simp [show (884736 * k + 55835) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 167506) = 1327104 * k + 83753 := by
    unfold C
    simp [show (2654208 * k + 167506) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 83753) = 3981312 * k + 251260 := by
    unfold C
    simp [show (1327104 * k + 83753) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 251260) = 1990656 * k + 125630 := by
    unfold C
    simp [show (3981312 * k + 251260) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 125630) = 995328 * k + 62815 := by
    unfold C
    simp [show (1990656 * k + 125630) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 62815) = 2985984 * k + 188446 := by
    unfold C
    simp [show (995328 * k + 62815) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 188446) = 1492992 * k + 94223 := by
    unfold C
    simp [show (2985984 * k + 188446) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 94223) = 4478976 * k + 282670 := by
    unfold C
    simp [show (1492992 * k + 94223) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 282670) = 2239488 * k + 141335 := by
    unfold C
    simp [show (4478976 * k + 282670) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 141335) = 6718464 * k + 424006 := by
    unfold C
    simp [show (2239488 * k + 141335) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 424006) = 3359232 * k + 212003 := by
    unfold C
    simp [show (6718464 * k + 424006) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 212003) = 10077696 * k + 636010 := by
    unfold C
    simp [show (3359232 * k + 212003) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 636010) = 5038848 * k + 318005 := by
    unfold C
    simp [show (10077696 * k + 636010) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 318005) = 15116544 * k + 954016 := by
    unfold C
    simp [show (5038848 * k + 318005) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 954016) = 7558272 * k + 477008 := by
    unfold C
    simp [show (15116544 * k + 954016) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 477008) = 3779136 * k + 238504 := by
    unfold C
    simp [show (7558272 * k + 477008) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 238504) = 1889568 * k + 119252 := by
    unfold C
    simp [show (3779136 * k + 238504) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 119252) = 944784 * k + 59626 := by
    unfold C
    simp [show (1889568 * k + 119252) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 59626) = 472392 * k + 29813 := by
    unfold C
    simp [show (944784 * k + 59626) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 29813) = 1417176 * k + 89440 := by
    unfold C
    simp [show (472392 * k + 29813) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 89440) = 708588 * k + 44720 := by
    unfold C
    simp [show (1417176 * k + 89440) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 44720) = 354294 * k + 22360 := by
    unfold C
    simp [show (708588 * k + 44720) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 22360) = 177147 * k + 11180 := by
    unfold C
    simp [show (354294 * k + 22360) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 16543) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 16543))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_16667 : ∀ k : Nat,
    iterate (262144 * k + 16667) 29 = 177147 * k + 11264 ∧
      177147 * k + 11264 < 262144 * k + 16667 := by
  intro k
  have h1 : C (262144 * k + 16667) = 786432 * k + 50002 := by
    unfold C
    simp [show (262144 * k + 16667) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 50002) = 393216 * k + 25001 := by
    unfold C
    simp [show (786432 * k + 50002) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 25001) = 1179648 * k + 75004 := by
    unfold C
    simp [show (393216 * k + 25001) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 75004) = 589824 * k + 37502 := by
    unfold C
    simp [show (1179648 * k + 75004) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 37502) = 294912 * k + 18751 := by
    unfold C
    simp [show (589824 * k + 37502) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 18751) = 884736 * k + 56254 := by
    unfold C
    simp [show (294912 * k + 18751) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 56254) = 442368 * k + 28127 := by
    unfold C
    simp [show (884736 * k + 56254) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 28127) = 1327104 * k + 84382 := by
    unfold C
    simp [show (442368 * k + 28127) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 84382) = 663552 * k + 42191 := by
    unfold C
    simp [show (1327104 * k + 84382) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 42191) = 1990656 * k + 126574 := by
    unfold C
    simp [show (663552 * k + 42191) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 126574) = 995328 * k + 63287 := by
    unfold C
    simp [show (1990656 * k + 126574) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 63287) = 2985984 * k + 189862 := by
    unfold C
    simp [show (995328 * k + 63287) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 189862) = 1492992 * k + 94931 := by
    unfold C
    simp [show (2985984 * k + 189862) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 94931) = 4478976 * k + 284794 := by
    unfold C
    simp [show (1492992 * k + 94931) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 284794) = 2239488 * k + 142397 := by
    unfold C
    simp [show (4478976 * k + 284794) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 142397) = 6718464 * k + 427192 := by
    unfold C
    simp [show (2239488 * k + 142397) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 427192) = 3359232 * k + 213596 := by
    unfold C
    simp [show (6718464 * k + 427192) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 213596) = 1679616 * k + 106798 := by
    unfold C
    simp [show (3359232 * k + 213596) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 106798) = 839808 * k + 53399 := by
    unfold C
    simp [show (1679616 * k + 106798) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 53399) = 2519424 * k + 160198 := by
    unfold C
    simp [show (839808 * k + 53399) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 160198) = 1259712 * k + 80099 := by
    unfold C
    simp [show (2519424 * k + 160198) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 80099) = 3779136 * k + 240298 := by
    unfold C
    simp [show (1259712 * k + 80099) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 240298) = 1889568 * k + 120149 := by
    unfold C
    simp [show (3779136 * k + 240298) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 120149) = 5668704 * k + 360448 := by
    unfold C
    simp [show (1889568 * k + 120149) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 360448) = 2834352 * k + 180224 := by
    unfold C
    simp [show (5668704 * k + 360448) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 180224) = 1417176 * k + 90112 := by
    unfold C
    simp [show (2834352 * k + 180224) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 90112) = 708588 * k + 45056 := by
    unfold C
    simp [show (1417176 * k + 90112) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 45056) = 354294 * k + 22528 := by
    unfold C
    simp [show (708588 * k + 45056) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 22528) = 177147 * k + 11264 := by
    unfold C
    simp [show (354294 * k + 22528) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 16667) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 16667))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_16795 : ∀ k : Nat,
    iterate (262144 * k + 16795) 29 = 177147 * k + 11351 ∧
      177147 * k + 11351 < 262144 * k + 16795 := by
  intro k
  have h1 : C (262144 * k + 16795) = 786432 * k + 50386 := by
    unfold C
    simp [show (262144 * k + 16795) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 50386) = 393216 * k + 25193 := by
    unfold C
    simp [show (786432 * k + 50386) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 25193) = 1179648 * k + 75580 := by
    unfold C
    simp [show (393216 * k + 25193) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 75580) = 589824 * k + 37790 := by
    unfold C
    simp [show (1179648 * k + 75580) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 37790) = 294912 * k + 18895 := by
    unfold C
    simp [show (589824 * k + 37790) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 18895) = 884736 * k + 56686 := by
    unfold C
    simp [show (294912 * k + 18895) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 56686) = 442368 * k + 28343 := by
    unfold C
    simp [show (884736 * k + 56686) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 28343) = 1327104 * k + 85030 := by
    unfold C
    simp [show (442368 * k + 28343) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 85030) = 663552 * k + 42515 := by
    unfold C
    simp [show (1327104 * k + 85030) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 42515) = 1990656 * k + 127546 := by
    unfold C
    simp [show (663552 * k + 42515) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 127546) = 995328 * k + 63773 := by
    unfold C
    simp [show (1990656 * k + 127546) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 63773) = 2985984 * k + 191320 := by
    unfold C
    simp [show (995328 * k + 63773) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 191320) = 1492992 * k + 95660 := by
    unfold C
    simp [show (2985984 * k + 191320) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 95660) = 746496 * k + 47830 := by
    unfold C
    simp [show (1492992 * k + 95660) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 47830) = 373248 * k + 23915 := by
    unfold C
    simp [show (746496 * k + 47830) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 23915) = 1119744 * k + 71746 := by
    unfold C
    simp [show (373248 * k + 23915) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 71746) = 559872 * k + 35873 := by
    unfold C
    simp [show (1119744 * k + 71746) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 35873) = 1679616 * k + 107620 := by
    unfold C
    simp [show (559872 * k + 35873) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 107620) = 839808 * k + 53810 := by
    unfold C
    simp [show (1679616 * k + 107620) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 53810) = 419904 * k + 26905 := by
    unfold C
    simp [show (839808 * k + 53810) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 26905) = 1259712 * k + 80716 := by
    unfold C
    simp [show (419904 * k + 26905) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 80716) = 629856 * k + 40358 := by
    unfold C
    simp [show (1259712 * k + 80716) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 40358) = 314928 * k + 20179 := by
    unfold C
    simp [show (629856 * k + 40358) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 20179) = 944784 * k + 60538 := by
    unfold C
    simp [show (314928 * k + 20179) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 60538) = 472392 * k + 30269 := by
    unfold C
    simp [show (944784 * k + 60538) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 30269) = 1417176 * k + 90808 := by
    unfold C
    simp [show (472392 * k + 30269) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 90808) = 708588 * k + 45404 := by
    unfold C
    simp [show (1417176 * k + 90808) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 45404) = 354294 * k + 22702 := by
    unfold C
    simp [show (708588 * k + 45404) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 22702) = 177147 * k + 11351 := by
    unfold C
    simp [show (354294 * k + 22702) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 16795) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 16795))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_17567 : ∀ k : Nat,
    iterate (262144 * k + 17567) 29 = 177147 * k + 11872 ∧
      177147 * k + 11872 < 262144 * k + 17567 := by
  intro k
  have h1 : C (262144 * k + 17567) = 786432 * k + 52702 := by
    unfold C
    simp [show (262144 * k + 17567) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 52702) = 393216 * k + 26351 := by
    unfold C
    simp [show (786432 * k + 52702) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 26351) = 1179648 * k + 79054 := by
    unfold C
    simp [show (393216 * k + 26351) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 79054) = 589824 * k + 39527 := by
    unfold C
    simp [show (1179648 * k + 79054) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 39527) = 1769472 * k + 118582 := by
    unfold C
    simp [show (589824 * k + 39527) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 118582) = 884736 * k + 59291 := by
    unfold C
    simp [show (1769472 * k + 118582) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 59291) = 2654208 * k + 177874 := by
    unfold C
    simp [show (884736 * k + 59291) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 177874) = 1327104 * k + 88937 := by
    unfold C
    simp [show (2654208 * k + 177874) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 88937) = 3981312 * k + 266812 := by
    unfold C
    simp [show (1327104 * k + 88937) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 266812) = 1990656 * k + 133406 := by
    unfold C
    simp [show (3981312 * k + 266812) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 133406) = 995328 * k + 66703 := by
    unfold C
    simp [show (1990656 * k + 133406) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 66703) = 2985984 * k + 200110 := by
    unfold C
    simp [show (995328 * k + 66703) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 200110) = 1492992 * k + 100055 := by
    unfold C
    simp [show (2985984 * k + 200110) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 100055) = 4478976 * k + 300166 := by
    unfold C
    simp [show (1492992 * k + 100055) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 300166) = 2239488 * k + 150083 := by
    unfold C
    simp [show (4478976 * k + 300166) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 150083) = 6718464 * k + 450250 := by
    unfold C
    simp [show (2239488 * k + 150083) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 450250) = 3359232 * k + 225125 := by
    unfold C
    simp [show (6718464 * k + 450250) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 225125) = 10077696 * k + 675376 := by
    unfold C
    simp [show (3359232 * k + 225125) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 675376) = 5038848 * k + 337688 := by
    unfold C
    simp [show (10077696 * k + 675376) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 337688) = 2519424 * k + 168844 := by
    unfold C
    simp [show (5038848 * k + 337688) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 168844) = 1259712 * k + 84422 := by
    unfold C
    simp [show (2519424 * k + 168844) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 84422) = 629856 * k + 42211 := by
    unfold C
    simp [show (1259712 * k + 84422) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 42211) = 1889568 * k + 126634 := by
    unfold C
    simp [show (629856 * k + 42211) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 126634) = 944784 * k + 63317 := by
    unfold C
    simp [show (1889568 * k + 126634) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 63317) = 2834352 * k + 189952 := by
    unfold C
    simp [show (944784 * k + 63317) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 189952) = 1417176 * k + 94976 := by
    unfold C
    simp [show (2834352 * k + 189952) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 94976) = 708588 * k + 47488 := by
    unfold C
    simp [show (1417176 * k + 94976) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 47488) = 354294 * k + 23744 := by
    unfold C
    simp [show (708588 * k + 47488) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 23744) = 177147 * k + 11872 := by
    unfold C
    simp [show (354294 * k + 23744) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 17567) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 17567))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_17639 : ∀ k : Nat,
    iterate (262144 * k + 17639) 29 = 177147 * k + 11921 ∧
      177147 * k + 11921 < 262144 * k + 17639 := by
  intro k
  have h1 : C (262144 * k + 17639) = 786432 * k + 52918 := by
    unfold C
    simp [show (262144 * k + 17639) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 52918) = 393216 * k + 26459 := by
    unfold C
    simp [show (786432 * k + 52918) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 26459) = 1179648 * k + 79378 := by
    unfold C
    simp [show (393216 * k + 26459) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 79378) = 589824 * k + 39689 := by
    unfold C
    simp [show (1179648 * k + 79378) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 39689) = 1769472 * k + 119068 := by
    unfold C
    simp [show (589824 * k + 39689) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 119068) = 884736 * k + 59534 := by
    unfold C
    simp [show (1769472 * k + 119068) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 59534) = 442368 * k + 29767 := by
    unfold C
    simp [show (884736 * k + 59534) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 29767) = 1327104 * k + 89302 := by
    unfold C
    simp [show (442368 * k + 29767) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 89302) = 663552 * k + 44651 := by
    unfold C
    simp [show (1327104 * k + 89302) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 44651) = 1990656 * k + 133954 := by
    unfold C
    simp [show (663552 * k + 44651) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 133954) = 995328 * k + 66977 := by
    unfold C
    simp [show (1990656 * k + 133954) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 66977) = 2985984 * k + 200932 := by
    unfold C
    simp [show (995328 * k + 66977) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 200932) = 1492992 * k + 100466 := by
    unfold C
    simp [show (2985984 * k + 200932) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 100466) = 746496 * k + 50233 := by
    unfold C
    simp [show (1492992 * k + 100466) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 50233) = 2239488 * k + 150700 := by
    unfold C
    simp [show (746496 * k + 50233) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 150700) = 1119744 * k + 75350 := by
    unfold C
    simp [show (2239488 * k + 150700) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 75350) = 559872 * k + 37675 := by
    unfold C
    simp [show (1119744 * k + 75350) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 37675) = 1679616 * k + 113026 := by
    unfold C
    simp [show (559872 * k + 37675) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 113026) = 839808 * k + 56513 := by
    unfold C
    simp [show (1679616 * k + 113026) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 56513) = 2519424 * k + 169540 := by
    unfold C
    simp [show (839808 * k + 56513) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 169540) = 1259712 * k + 84770 := by
    unfold C
    simp [show (2519424 * k + 169540) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 84770) = 629856 * k + 42385 := by
    unfold C
    simp [show (1259712 * k + 84770) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 42385) = 1889568 * k + 127156 := by
    unfold C
    simp [show (629856 * k + 42385) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 127156) = 944784 * k + 63578 := by
    unfold C
    simp [show (1889568 * k + 127156) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 63578) = 472392 * k + 31789 := by
    unfold C
    simp [show (944784 * k + 63578) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 31789) = 1417176 * k + 95368 := by
    unfold C
    simp [show (472392 * k + 31789) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 95368) = 708588 * k + 47684 := by
    unfold C
    simp [show (1417176 * k + 95368) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 47684) = 354294 * k + 23842 := by
    unfold C
    simp [show (708588 * k + 47684) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 23842) = 177147 * k + 11921 := by
    unfold C
    simp [show (354294 * k + 23842) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 17639) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 17639))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_18079 : ∀ k : Nat,
    iterate (262144 * k + 18079) 29 = 177147 * k + 12218 ∧
      177147 * k + 12218 < 262144 * k + 18079 := by
  intro k
  have h1 : C (262144 * k + 18079) = 786432 * k + 54238 := by
    unfold C
    simp [show (262144 * k + 18079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 54238) = 393216 * k + 27119 := by
    unfold C
    simp [show (786432 * k + 54238) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 27119) = 1179648 * k + 81358 := by
    unfold C
    simp [show (393216 * k + 27119) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 81358) = 589824 * k + 40679 := by
    unfold C
    simp [show (1179648 * k + 81358) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 40679) = 1769472 * k + 122038 := by
    unfold C
    simp [show (589824 * k + 40679) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 122038) = 884736 * k + 61019 := by
    unfold C
    simp [show (1769472 * k + 122038) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 61019) = 2654208 * k + 183058 := by
    unfold C
    simp [show (884736 * k + 61019) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 183058) = 1327104 * k + 91529 := by
    unfold C
    simp [show (2654208 * k + 183058) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 91529) = 3981312 * k + 274588 := by
    unfold C
    simp [show (1327104 * k + 91529) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 274588) = 1990656 * k + 137294 := by
    unfold C
    simp [show (3981312 * k + 274588) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 137294) = 995328 * k + 68647 := by
    unfold C
    simp [show (1990656 * k + 137294) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 68647) = 2985984 * k + 205942 := by
    unfold C
    simp [show (995328 * k + 68647) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 205942) = 1492992 * k + 102971 := by
    unfold C
    simp [show (2985984 * k + 205942) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 102971) = 4478976 * k + 308914 := by
    unfold C
    simp [show (1492992 * k + 102971) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 308914) = 2239488 * k + 154457 := by
    unfold C
    simp [show (4478976 * k + 308914) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 154457) = 6718464 * k + 463372 := by
    unfold C
    simp [show (2239488 * k + 154457) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 463372) = 3359232 * k + 231686 := by
    unfold C
    simp [show (6718464 * k + 463372) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 231686) = 1679616 * k + 115843 := by
    unfold C
    simp [show (3359232 * k + 231686) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 115843) = 5038848 * k + 347530 := by
    unfold C
    simp [show (1679616 * k + 115843) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 347530) = 2519424 * k + 173765 := by
    unfold C
    simp [show (5038848 * k + 347530) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 173765) = 7558272 * k + 521296 := by
    unfold C
    simp [show (2519424 * k + 173765) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 521296) = 3779136 * k + 260648 := by
    unfold C
    simp [show (7558272 * k + 521296) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 260648) = 1889568 * k + 130324 := by
    unfold C
    simp [show (3779136 * k + 260648) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 130324) = 944784 * k + 65162 := by
    unfold C
    simp [show (1889568 * k + 130324) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 65162) = 472392 * k + 32581 := by
    unfold C
    simp [show (944784 * k + 65162) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 32581) = 1417176 * k + 97744 := by
    unfold C
    simp [show (472392 * k + 32581) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 97744) = 708588 * k + 48872 := by
    unfold C
    simp [show (1417176 * k + 97744) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 48872) = 354294 * k + 24436 := by
    unfold C
    simp [show (708588 * k + 48872) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 24436) = 177147 * k + 12218 := by
    unfold C
    simp [show (354294 * k + 24436) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 18079) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 18079))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_18287 : ∀ k : Nat,
    iterate (262144 * k + 18287) 29 = 177147 * k + 12359 ∧
      177147 * k + 12359 < 262144 * k + 18287 := by
  intro k
  have h1 : C (262144 * k + 18287) = 786432 * k + 54862 := by
    unfold C
    simp [show (262144 * k + 18287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 54862) = 393216 * k + 27431 := by
    unfold C
    simp [show (786432 * k + 54862) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 27431) = 1179648 * k + 82294 := by
    unfold C
    simp [show (393216 * k + 27431) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 82294) = 589824 * k + 41147 := by
    unfold C
    simp [show (1179648 * k + 82294) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 41147) = 1769472 * k + 123442 := by
    unfold C
    simp [show (589824 * k + 41147) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 123442) = 884736 * k + 61721 := by
    unfold C
    simp [show (1769472 * k + 123442) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 61721) = 2654208 * k + 185164 := by
    unfold C
    simp [show (884736 * k + 61721) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 185164) = 1327104 * k + 92582 := by
    unfold C
    simp [show (2654208 * k + 185164) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 92582) = 663552 * k + 46291 := by
    unfold C
    simp [show (1327104 * k + 92582) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 46291) = 1990656 * k + 138874 := by
    unfold C
    simp [show (663552 * k + 46291) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 138874) = 995328 * k + 69437 := by
    unfold C
    simp [show (1990656 * k + 138874) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 69437) = 2985984 * k + 208312 := by
    unfold C
    simp [show (995328 * k + 69437) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 208312) = 1492992 * k + 104156 := by
    unfold C
    simp [show (2985984 * k + 208312) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 104156) = 746496 * k + 52078 := by
    unfold C
    simp [show (1492992 * k + 104156) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 52078) = 373248 * k + 26039 := by
    unfold C
    simp [show (746496 * k + 52078) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 26039) = 1119744 * k + 78118 := by
    unfold C
    simp [show (373248 * k + 26039) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 78118) = 559872 * k + 39059 := by
    unfold C
    simp [show (1119744 * k + 78118) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 39059) = 1679616 * k + 117178 := by
    unfold C
    simp [show (559872 * k + 39059) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 117178) = 839808 * k + 58589 := by
    unfold C
    simp [show (1679616 * k + 117178) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 58589) = 2519424 * k + 175768 := by
    unfold C
    simp [show (839808 * k + 58589) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 175768) = 1259712 * k + 87884 := by
    unfold C
    simp [show (2519424 * k + 175768) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 87884) = 629856 * k + 43942 := by
    unfold C
    simp [show (1259712 * k + 87884) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 43942) = 314928 * k + 21971 := by
    unfold C
    simp [show (629856 * k + 43942) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 21971) = 944784 * k + 65914 := by
    unfold C
    simp [show (314928 * k + 21971) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 65914) = 472392 * k + 32957 := by
    unfold C
    simp [show (944784 * k + 65914) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 32957) = 1417176 * k + 98872 := by
    unfold C
    simp [show (472392 * k + 32957) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 98872) = 708588 * k + 49436 := by
    unfold C
    simp [show (1417176 * k + 98872) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 49436) = 354294 * k + 24718 := by
    unfold C
    simp [show (708588 * k + 49436) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 24718) = 177147 * k + 12359 := by
    unfold C
    simp [show (354294 * k + 24718) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 18287) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 18287))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_18687 : ∀ k : Nat,
    iterate (262144 * k + 18687) 29 = 177147 * k + 12629 ∧
      177147 * k + 12629 < 262144 * k + 18687 := by
  intro k
  have h1 : C (262144 * k + 18687) = 786432 * k + 56062 := by
    unfold C
    simp [show (262144 * k + 18687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 56062) = 393216 * k + 28031 := by
    unfold C
    simp [show (786432 * k + 56062) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 28031) = 1179648 * k + 84094 := by
    unfold C
    simp [show (393216 * k + 28031) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 84094) = 589824 * k + 42047 := by
    unfold C
    simp [show (1179648 * k + 84094) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 42047) = 1769472 * k + 126142 := by
    unfold C
    simp [show (589824 * k + 42047) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 126142) = 884736 * k + 63071 := by
    unfold C
    simp [show (1769472 * k + 126142) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 63071) = 2654208 * k + 189214 := by
    unfold C
    simp [show (884736 * k + 63071) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 189214) = 1327104 * k + 94607 := by
    unfold C
    simp [show (2654208 * k + 189214) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 94607) = 3981312 * k + 283822 := by
    unfold C
    simp [show (1327104 * k + 94607) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 283822) = 1990656 * k + 141911 := by
    unfold C
    simp [show (3981312 * k + 283822) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 141911) = 5971968 * k + 425734 := by
    unfold C
    simp [show (1990656 * k + 141911) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 425734) = 2985984 * k + 212867 := by
    unfold C
    simp [show (5971968 * k + 425734) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 212867) = 8957952 * k + 638602 := by
    unfold C
    simp [show (2985984 * k + 212867) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 638602) = 4478976 * k + 319301 := by
    unfold C
    simp [show (8957952 * k + 638602) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 319301) = 13436928 * k + 957904 := by
    unfold C
    simp [show (4478976 * k + 319301) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 957904) = 6718464 * k + 478952 := by
    unfold C
    simp [show (13436928 * k + 957904) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 478952) = 3359232 * k + 239476 := by
    unfold C
    simp [show (6718464 * k + 478952) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 239476) = 1679616 * k + 119738 := by
    unfold C
    simp [show (3359232 * k + 239476) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 119738) = 839808 * k + 59869 := by
    unfold C
    simp [show (1679616 * k + 119738) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 59869) = 2519424 * k + 179608 := by
    unfold C
    simp [show (839808 * k + 59869) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 179608) = 1259712 * k + 89804 := by
    unfold C
    simp [show (2519424 * k + 179608) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 89804) = 629856 * k + 44902 := by
    unfold C
    simp [show (1259712 * k + 89804) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 44902) = 314928 * k + 22451 := by
    unfold C
    simp [show (629856 * k + 44902) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 22451) = 944784 * k + 67354 := by
    unfold C
    simp [show (314928 * k + 22451) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 67354) = 472392 * k + 33677 := by
    unfold C
    simp [show (944784 * k + 67354) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 33677) = 1417176 * k + 101032 := by
    unfold C
    simp [show (472392 * k + 33677) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 101032) = 708588 * k + 50516 := by
    unfold C
    simp [show (1417176 * k + 101032) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 50516) = 354294 * k + 25258 := by
    unfold C
    simp [show (708588 * k + 50516) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 25258) = 177147 * k + 12629 := by
    unfold C
    simp [show (354294 * k + 25258) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 18687) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 18687))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_19271 : ∀ k : Nat,
    iterate (262144 * k + 19271) 29 = 177147 * k + 13024 ∧
      177147 * k + 13024 < 262144 * k + 19271 := by
  intro k
  have h1 : C (262144 * k + 19271) = 786432 * k + 57814 := by
    unfold C
    simp [show (262144 * k + 19271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 57814) = 393216 * k + 28907 := by
    unfold C
    simp [show (786432 * k + 57814) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 28907) = 1179648 * k + 86722 := by
    unfold C
    simp [show (393216 * k + 28907) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 86722) = 589824 * k + 43361 := by
    unfold C
    simp [show (1179648 * k + 86722) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 43361) = 1769472 * k + 130084 := by
    unfold C
    simp [show (589824 * k + 43361) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 130084) = 884736 * k + 65042 := by
    unfold C
    simp [show (1769472 * k + 130084) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 65042) = 442368 * k + 32521 := by
    unfold C
    simp [show (884736 * k + 65042) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 32521) = 1327104 * k + 97564 := by
    unfold C
    simp [show (442368 * k + 32521) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 97564) = 663552 * k + 48782 := by
    unfold C
    simp [show (1327104 * k + 97564) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 48782) = 331776 * k + 24391 := by
    unfold C
    simp [show (663552 * k + 48782) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 24391) = 995328 * k + 73174 := by
    unfold C
    simp [show (331776 * k + 24391) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 73174) = 497664 * k + 36587 := by
    unfold C
    simp [show (995328 * k + 73174) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 36587) = 1492992 * k + 109762 := by
    unfold C
    simp [show (497664 * k + 36587) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 109762) = 746496 * k + 54881 := by
    unfold C
    simp [show (1492992 * k + 109762) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 54881) = 2239488 * k + 164644 := by
    unfold C
    simp [show (746496 * k + 54881) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 164644) = 1119744 * k + 82322 := by
    unfold C
    simp [show (2239488 * k + 164644) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 82322) = 559872 * k + 41161 := by
    unfold C
    simp [show (1119744 * k + 82322) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 41161) = 1679616 * k + 123484 := by
    unfold C
    simp [show (559872 * k + 41161) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 123484) = 839808 * k + 61742 := by
    unfold C
    simp [show (1679616 * k + 123484) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 61742) = 419904 * k + 30871 := by
    unfold C
    simp [show (839808 * k + 61742) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 30871) = 1259712 * k + 92614 := by
    unfold C
    simp [show (419904 * k + 30871) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 92614) = 629856 * k + 46307 := by
    unfold C
    simp [show (1259712 * k + 92614) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 46307) = 1889568 * k + 138922 := by
    unfold C
    simp [show (629856 * k + 46307) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 138922) = 944784 * k + 69461 := by
    unfold C
    simp [show (1889568 * k + 138922) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 69461) = 2834352 * k + 208384 := by
    unfold C
    simp [show (944784 * k + 69461) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 208384) = 1417176 * k + 104192 := by
    unfold C
    simp [show (2834352 * k + 208384) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 104192) = 708588 * k + 52096 := by
    unfold C
    simp [show (1417176 * k + 104192) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 52096) = 354294 * k + 26048 := by
    unfold C
    simp [show (708588 * k + 52096) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 26048) = 177147 * k + 13024 := by
    unfold C
    simp [show (354294 * k + 26048) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 19271) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 19271))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_19311 : ∀ k : Nat,
    iterate (262144 * k + 19311) 29 = 177147 * k + 13051 ∧
      177147 * k + 13051 < 262144 * k + 19311 := by
  intro k
  have h1 : C (262144 * k + 19311) = 786432 * k + 57934 := by
    unfold C
    simp [show (262144 * k + 19311) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 57934) = 393216 * k + 28967 := by
    unfold C
    simp [show (786432 * k + 57934) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 28967) = 1179648 * k + 86902 := by
    unfold C
    simp [show (393216 * k + 28967) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 86902) = 589824 * k + 43451 := by
    unfold C
    simp [show (1179648 * k + 86902) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 43451) = 1769472 * k + 130354 := by
    unfold C
    simp [show (589824 * k + 43451) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 130354) = 884736 * k + 65177 := by
    unfold C
    simp [show (1769472 * k + 130354) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 65177) = 2654208 * k + 195532 := by
    unfold C
    simp [show (884736 * k + 65177) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 195532) = 1327104 * k + 97766 := by
    unfold C
    simp [show (2654208 * k + 195532) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 97766) = 663552 * k + 48883 := by
    unfold C
    simp [show (1327104 * k + 97766) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 48883) = 1990656 * k + 146650 := by
    unfold C
    simp [show (663552 * k + 48883) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 146650) = 995328 * k + 73325 := by
    unfold C
    simp [show (1990656 * k + 146650) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 73325) = 2985984 * k + 219976 := by
    unfold C
    simp [show (995328 * k + 73325) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 219976) = 1492992 * k + 109988 := by
    unfold C
    simp [show (2985984 * k + 219976) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 109988) = 746496 * k + 54994 := by
    unfold C
    simp [show (1492992 * k + 109988) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 54994) = 373248 * k + 27497 := by
    unfold C
    simp [show (746496 * k + 54994) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 27497) = 1119744 * k + 82492 := by
    unfold C
    simp [show (373248 * k + 27497) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 82492) = 559872 * k + 41246 := by
    unfold C
    simp [show (1119744 * k + 82492) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 41246) = 279936 * k + 20623 := by
    unfold C
    simp [show (559872 * k + 41246) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 20623) = 839808 * k + 61870 := by
    unfold C
    simp [show (279936 * k + 20623) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 61870) = 419904 * k + 30935 := by
    unfold C
    simp [show (839808 * k + 61870) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 30935) = 1259712 * k + 92806 := by
    unfold C
    simp [show (419904 * k + 30935) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 92806) = 629856 * k + 46403 := by
    unfold C
    simp [show (1259712 * k + 92806) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 46403) = 1889568 * k + 139210 := by
    unfold C
    simp [show (629856 * k + 46403) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 139210) = 944784 * k + 69605 := by
    unfold C
    simp [show (1889568 * k + 139210) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 69605) = 2834352 * k + 208816 := by
    unfold C
    simp [show (944784 * k + 69605) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 208816) = 1417176 * k + 104408 := by
    unfold C
    simp [show (2834352 * k + 208816) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 104408) = 708588 * k + 52204 := by
    unfold C
    simp [show (1417176 * k + 104408) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 52204) = 354294 * k + 26102 := by
    unfold C
    simp [show (708588 * k + 52204) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 26102) = 177147 * k + 13051 := by
    unfold C
    simp [show (354294 * k + 26102) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 19311) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 19311))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_19663 : ∀ k : Nat,
    iterate (262144 * k + 19663) 29 = 177147 * k + 13289 ∧
      177147 * k + 13289 < 262144 * k + 19663 := by
  intro k
  have h1 : C (262144 * k + 19663) = 786432 * k + 58990 := by
    unfold C
    simp [show (262144 * k + 19663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 58990) = 393216 * k + 29495 := by
    unfold C
    simp [show (786432 * k + 58990) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 29495) = 1179648 * k + 88486 := by
    unfold C
    simp [show (393216 * k + 29495) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 88486) = 589824 * k + 44243 := by
    unfold C
    simp [show (1179648 * k + 88486) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 44243) = 1769472 * k + 132730 := by
    unfold C
    simp [show (589824 * k + 44243) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 132730) = 884736 * k + 66365 := by
    unfold C
    simp [show (1769472 * k + 132730) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 66365) = 2654208 * k + 199096 := by
    unfold C
    simp [show (884736 * k + 66365) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 199096) = 1327104 * k + 99548 := by
    unfold C
    simp [show (2654208 * k + 199096) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 99548) = 663552 * k + 49774 := by
    unfold C
    simp [show (1327104 * k + 99548) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 49774) = 331776 * k + 24887 := by
    unfold C
    simp [show (663552 * k + 49774) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 24887) = 995328 * k + 74662 := by
    unfold C
    simp [show (331776 * k + 24887) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 74662) = 497664 * k + 37331 := by
    unfold C
    simp [show (995328 * k + 74662) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 37331) = 1492992 * k + 111994 := by
    unfold C
    simp [show (497664 * k + 37331) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 111994) = 746496 * k + 55997 := by
    unfold C
    simp [show (1492992 * k + 111994) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 55997) = 2239488 * k + 167992 := by
    unfold C
    simp [show (746496 * k + 55997) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 167992) = 1119744 * k + 83996 := by
    unfold C
    simp [show (2239488 * k + 167992) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 83996) = 559872 * k + 41998 := by
    unfold C
    simp [show (1119744 * k + 83996) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 41998) = 279936 * k + 20999 := by
    unfold C
    simp [show (559872 * k + 41998) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 20999) = 839808 * k + 62998 := by
    unfold C
    simp [show (279936 * k + 20999) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 62998) = 419904 * k + 31499 := by
    unfold C
    simp [show (839808 * k + 62998) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 31499) = 1259712 * k + 94498 := by
    unfold C
    simp [show (419904 * k + 31499) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 94498) = 629856 * k + 47249 := by
    unfold C
    simp [show (1259712 * k + 94498) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 47249) = 1889568 * k + 141748 := by
    unfold C
    simp [show (629856 * k + 47249) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 141748) = 944784 * k + 70874 := by
    unfold C
    simp [show (1889568 * k + 141748) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 70874) = 472392 * k + 35437 := by
    unfold C
    simp [show (944784 * k + 70874) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 35437) = 1417176 * k + 106312 := by
    unfold C
    simp [show (472392 * k + 35437) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 106312) = 708588 * k + 53156 := by
    unfold C
    simp [show (1417176 * k + 106312) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 53156) = 354294 * k + 26578 := by
    unfold C
    simp [show (708588 * k + 53156) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 26578) = 177147 * k + 13289 := by
    unfold C
    simp [show (354294 * k + 26578) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 19663) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 19663))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_19739 : ∀ k : Nat,
    iterate (262144 * k + 19739) 29 = 177147 * k + 13340 ∧
      177147 * k + 13340 < 262144 * k + 19739 := by
  intro k
  have h1 : C (262144 * k + 19739) = 786432 * k + 59218 := by
    unfold C
    simp [show (262144 * k + 19739) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 59218) = 393216 * k + 29609 := by
    unfold C
    simp [show (786432 * k + 59218) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 29609) = 1179648 * k + 88828 := by
    unfold C
    simp [show (393216 * k + 29609) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 88828) = 589824 * k + 44414 := by
    unfold C
    simp [show (1179648 * k + 88828) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 44414) = 294912 * k + 22207 := by
    unfold C
    simp [show (589824 * k + 44414) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 22207) = 884736 * k + 66622 := by
    unfold C
    simp [show (294912 * k + 22207) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 66622) = 442368 * k + 33311 := by
    unfold C
    simp [show (884736 * k + 66622) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 33311) = 1327104 * k + 99934 := by
    unfold C
    simp [show (442368 * k + 33311) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 99934) = 663552 * k + 49967 := by
    unfold C
    simp [show (1327104 * k + 99934) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 49967) = 1990656 * k + 149902 := by
    unfold C
    simp [show (663552 * k + 49967) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 149902) = 995328 * k + 74951 := by
    unfold C
    simp [show (1990656 * k + 149902) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 74951) = 2985984 * k + 224854 := by
    unfold C
    simp [show (995328 * k + 74951) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 224854) = 1492992 * k + 112427 := by
    unfold C
    simp [show (2985984 * k + 224854) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 112427) = 4478976 * k + 337282 := by
    unfold C
    simp [show (1492992 * k + 112427) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 337282) = 2239488 * k + 168641 := by
    unfold C
    simp [show (4478976 * k + 337282) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 168641) = 6718464 * k + 505924 := by
    unfold C
    simp [show (2239488 * k + 168641) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 505924) = 3359232 * k + 252962 := by
    unfold C
    simp [show (6718464 * k + 505924) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 252962) = 1679616 * k + 126481 := by
    unfold C
    simp [show (3359232 * k + 252962) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 126481) = 5038848 * k + 379444 := by
    unfold C
    simp [show (1679616 * k + 126481) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 379444) = 2519424 * k + 189722 := by
    unfold C
    simp [show (5038848 * k + 379444) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 189722) = 1259712 * k + 94861 := by
    unfold C
    simp [show (2519424 * k + 189722) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 94861) = 3779136 * k + 284584 := by
    unfold C
    simp [show (1259712 * k + 94861) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 284584) = 1889568 * k + 142292 := by
    unfold C
    simp [show (3779136 * k + 284584) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 142292) = 944784 * k + 71146 := by
    unfold C
    simp [show (1889568 * k + 142292) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 71146) = 472392 * k + 35573 := by
    unfold C
    simp [show (944784 * k + 71146) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 35573) = 1417176 * k + 106720 := by
    unfold C
    simp [show (472392 * k + 35573) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 106720) = 708588 * k + 53360 := by
    unfold C
    simp [show (1417176 * k + 106720) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 53360) = 354294 * k + 26680 := by
    unfold C
    simp [show (708588 * k + 53360) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 26680) = 177147 * k + 13340 := by
    unfold C
    simp [show (354294 * k + 26680) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 19739) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 19739))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_19783 : ∀ k : Nat,
    iterate (262144 * k + 19783) 29 = 177147 * k + 13370 ∧
      177147 * k + 13370 < 262144 * k + 19783 := by
  intro k
  have h1 : C (262144 * k + 19783) = 786432 * k + 59350 := by
    unfold C
    simp [show (262144 * k + 19783) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 59350) = 393216 * k + 29675 := by
    unfold C
    simp [show (786432 * k + 59350) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 29675) = 1179648 * k + 89026 := by
    unfold C
    simp [show (393216 * k + 29675) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 89026) = 589824 * k + 44513 := by
    unfold C
    simp [show (1179648 * k + 89026) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 44513) = 1769472 * k + 133540 := by
    unfold C
    simp [show (589824 * k + 44513) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 133540) = 884736 * k + 66770 := by
    unfold C
    simp [show (1769472 * k + 133540) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 66770) = 442368 * k + 33385 := by
    unfold C
    simp [show (884736 * k + 66770) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 33385) = 1327104 * k + 100156 := by
    unfold C
    simp [show (442368 * k + 33385) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 100156) = 663552 * k + 50078 := by
    unfold C
    simp [show (1327104 * k + 100156) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 50078) = 331776 * k + 25039 := by
    unfold C
    simp [show (663552 * k + 50078) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 25039) = 995328 * k + 75118 := by
    unfold C
    simp [show (331776 * k + 25039) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 75118) = 497664 * k + 37559 := by
    unfold C
    simp [show (995328 * k + 75118) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 37559) = 1492992 * k + 112678 := by
    unfold C
    simp [show (497664 * k + 37559) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 112678) = 746496 * k + 56339 := by
    unfold C
    simp [show (1492992 * k + 112678) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 56339) = 2239488 * k + 169018 := by
    unfold C
    simp [show (746496 * k + 56339) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 169018) = 1119744 * k + 84509 := by
    unfold C
    simp [show (2239488 * k + 169018) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 84509) = 3359232 * k + 253528 := by
    unfold C
    simp [show (1119744 * k + 84509) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 253528) = 1679616 * k + 126764 := by
    unfold C
    simp [show (3359232 * k + 253528) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 126764) = 839808 * k + 63382 := by
    unfold C
    simp [show (1679616 * k + 126764) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 63382) = 419904 * k + 31691 := by
    unfold C
    simp [show (839808 * k + 63382) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 31691) = 1259712 * k + 95074 := by
    unfold C
    simp [show (419904 * k + 31691) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 95074) = 629856 * k + 47537 := by
    unfold C
    simp [show (1259712 * k + 95074) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 47537) = 1889568 * k + 142612 := by
    unfold C
    simp [show (629856 * k + 47537) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 142612) = 944784 * k + 71306 := by
    unfold C
    simp [show (1889568 * k + 142612) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 71306) = 472392 * k + 35653 := by
    unfold C
    simp [show (944784 * k + 71306) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 35653) = 1417176 * k + 106960 := by
    unfold C
    simp [show (472392 * k + 35653) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 106960) = 708588 * k + 53480 := by
    unfold C
    simp [show (1417176 * k + 106960) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 53480) = 354294 * k + 26740 := by
    unfold C
    simp [show (708588 * k + 53480) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 26740) = 177147 * k + 13370 := by
    unfold C
    simp [show (354294 * k + 26740) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 19783) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 19783))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_19871 : ∀ k : Nat,
    iterate (262144 * k + 19871) 29 = 177147 * k + 13429 ∧
      177147 * k + 13429 < 262144 * k + 19871 := by
  intro k
  have h1 : C (262144 * k + 19871) = 786432 * k + 59614 := by
    unfold C
    simp [show (262144 * k + 19871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 59614) = 393216 * k + 29807 := by
    unfold C
    simp [show (786432 * k + 59614) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 29807) = 1179648 * k + 89422 := by
    unfold C
    simp [show (393216 * k + 29807) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 89422) = 589824 * k + 44711 := by
    unfold C
    simp [show (1179648 * k + 89422) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 44711) = 1769472 * k + 134134 := by
    unfold C
    simp [show (589824 * k + 44711) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 134134) = 884736 * k + 67067 := by
    unfold C
    simp [show (1769472 * k + 134134) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 67067) = 2654208 * k + 201202 := by
    unfold C
    simp [show (884736 * k + 67067) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 201202) = 1327104 * k + 100601 := by
    unfold C
    simp [show (2654208 * k + 201202) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 100601) = 3981312 * k + 301804 := by
    unfold C
    simp [show (1327104 * k + 100601) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 301804) = 1990656 * k + 150902 := by
    unfold C
    simp [show (3981312 * k + 301804) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 150902) = 995328 * k + 75451 := by
    unfold C
    simp [show (1990656 * k + 150902) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 75451) = 2985984 * k + 226354 := by
    unfold C
    simp [show (995328 * k + 75451) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 226354) = 1492992 * k + 113177 := by
    unfold C
    simp [show (2985984 * k + 226354) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 113177) = 4478976 * k + 339532 := by
    unfold C
    simp [show (1492992 * k + 113177) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 339532) = 2239488 * k + 169766 := by
    unfold C
    simp [show (4478976 * k + 339532) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 169766) = 1119744 * k + 84883 := by
    unfold C
    simp [show (2239488 * k + 169766) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 84883) = 3359232 * k + 254650 := by
    unfold C
    simp [show (1119744 * k + 84883) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 254650) = 1679616 * k + 127325 := by
    unfold C
    simp [show (3359232 * k + 254650) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 127325) = 5038848 * k + 381976 := by
    unfold C
    simp [show (1679616 * k + 127325) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 381976) = 2519424 * k + 190988 := by
    unfold C
    simp [show (5038848 * k + 381976) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 190988) = 1259712 * k + 95494 := by
    unfold C
    simp [show (2519424 * k + 190988) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 95494) = 629856 * k + 47747 := by
    unfold C
    simp [show (1259712 * k + 95494) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 47747) = 1889568 * k + 143242 := by
    unfold C
    simp [show (629856 * k + 47747) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 143242) = 944784 * k + 71621 := by
    unfold C
    simp [show (1889568 * k + 143242) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 71621) = 2834352 * k + 214864 := by
    unfold C
    simp [show (944784 * k + 71621) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 214864) = 1417176 * k + 107432 := by
    unfold C
    simp [show (2834352 * k + 214864) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 107432) = 708588 * k + 53716 := by
    unfold C
    simp [show (1417176 * k + 107432) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 53716) = 354294 * k + 26858 := by
    unfold C
    simp [show (708588 * k + 53716) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 26858) = 177147 * k + 13429 := by
    unfold C
    simp [show (354294 * k + 26858) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 19871) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 19871))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_20383 : ∀ k : Nat,
    iterate (262144 * k + 20383) 29 = 177147 * k + 13775 ∧
      177147 * k + 13775 < 262144 * k + 20383 := by
  intro k
  have h1 : C (262144 * k + 20383) = 786432 * k + 61150 := by
    unfold C
    simp [show (262144 * k + 20383) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 61150) = 393216 * k + 30575 := by
    unfold C
    simp [show (786432 * k + 61150) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 30575) = 1179648 * k + 91726 := by
    unfold C
    simp [show (393216 * k + 30575) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 91726) = 589824 * k + 45863 := by
    unfold C
    simp [show (1179648 * k + 91726) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 45863) = 1769472 * k + 137590 := by
    unfold C
    simp [show (589824 * k + 45863) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 137590) = 884736 * k + 68795 := by
    unfold C
    simp [show (1769472 * k + 137590) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 68795) = 2654208 * k + 206386 := by
    unfold C
    simp [show (884736 * k + 68795) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 206386) = 1327104 * k + 103193 := by
    unfold C
    simp [show (2654208 * k + 206386) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 103193) = 3981312 * k + 309580 := by
    unfold C
    simp [show (1327104 * k + 103193) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 309580) = 1990656 * k + 154790 := by
    unfold C
    simp [show (3981312 * k + 309580) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 154790) = 995328 * k + 77395 := by
    unfold C
    simp [show (1990656 * k + 154790) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 77395) = 2985984 * k + 232186 := by
    unfold C
    simp [show (995328 * k + 77395) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 232186) = 1492992 * k + 116093 := by
    unfold C
    simp [show (2985984 * k + 232186) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 116093) = 4478976 * k + 348280 := by
    unfold C
    simp [show (1492992 * k + 116093) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 348280) = 2239488 * k + 174140 := by
    unfold C
    simp [show (4478976 * k + 348280) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 174140) = 1119744 * k + 87070 := by
    unfold C
    simp [show (2239488 * k + 174140) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 87070) = 559872 * k + 43535 := by
    unfold C
    simp [show (1119744 * k + 87070) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 43535) = 1679616 * k + 130606 := by
    unfold C
    simp [show (559872 * k + 43535) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 130606) = 839808 * k + 65303 := by
    unfold C
    simp [show (1679616 * k + 130606) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 65303) = 2519424 * k + 195910 := by
    unfold C
    simp [show (839808 * k + 65303) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 195910) = 1259712 * k + 97955 := by
    unfold C
    simp [show (2519424 * k + 195910) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 97955) = 3779136 * k + 293866 := by
    unfold C
    simp [show (1259712 * k + 97955) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 293866) = 1889568 * k + 146933 := by
    unfold C
    simp [show (3779136 * k + 293866) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 146933) = 5668704 * k + 440800 := by
    unfold C
    simp [show (1889568 * k + 146933) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 440800) = 2834352 * k + 220400 := by
    unfold C
    simp [show (5668704 * k + 440800) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 220400) = 1417176 * k + 110200 := by
    unfold C
    simp [show (2834352 * k + 220400) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 110200) = 708588 * k + 55100 := by
    unfold C
    simp [show (1417176 * k + 110200) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 55100) = 354294 * k + 27550 := by
    unfold C
    simp [show (708588 * k + 55100) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 27550) = 177147 * k + 13775 := by
    unfold C
    simp [show (354294 * k + 27550) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 20383) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 20383))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_20391 : ∀ k : Nat,
    iterate (262144 * k + 20391) 29 = 177147 * k + 13781 ∧
      177147 * k + 13781 < 262144 * k + 20391 := by
  intro k
  have h1 : C (262144 * k + 20391) = 786432 * k + 61174 := by
    unfold C
    simp [show (262144 * k + 20391) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 61174) = 393216 * k + 30587 := by
    unfold C
    simp [show (786432 * k + 61174) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 30587) = 1179648 * k + 91762 := by
    unfold C
    simp [show (393216 * k + 30587) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 91762) = 589824 * k + 45881 := by
    unfold C
    simp [show (1179648 * k + 91762) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 45881) = 1769472 * k + 137644 := by
    unfold C
    simp [show (589824 * k + 45881) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 137644) = 884736 * k + 68822 := by
    unfold C
    simp [show (1769472 * k + 137644) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 68822) = 442368 * k + 34411 := by
    unfold C
    simp [show (884736 * k + 68822) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 34411) = 1327104 * k + 103234 := by
    unfold C
    simp [show (442368 * k + 34411) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 103234) = 663552 * k + 51617 := by
    unfold C
    simp [show (1327104 * k + 103234) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 51617) = 1990656 * k + 154852 := by
    unfold C
    simp [show (663552 * k + 51617) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 154852) = 995328 * k + 77426 := by
    unfold C
    simp [show (1990656 * k + 154852) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 77426) = 497664 * k + 38713 := by
    unfold C
    simp [show (995328 * k + 77426) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 38713) = 1492992 * k + 116140 := by
    unfold C
    simp [show (497664 * k + 38713) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 116140) = 746496 * k + 58070 := by
    unfold C
    simp [show (1492992 * k + 116140) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 58070) = 373248 * k + 29035 := by
    unfold C
    simp [show (746496 * k + 58070) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 29035) = 1119744 * k + 87106 := by
    unfold C
    simp [show (373248 * k + 29035) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 87106) = 559872 * k + 43553 := by
    unfold C
    simp [show (1119744 * k + 87106) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 43553) = 1679616 * k + 130660 := by
    unfold C
    simp [show (559872 * k + 43553) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 130660) = 839808 * k + 65330 := by
    unfold C
    simp [show (1679616 * k + 130660) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 65330) = 419904 * k + 32665 := by
    unfold C
    simp [show (839808 * k + 65330) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 32665) = 1259712 * k + 97996 := by
    unfold C
    simp [show (419904 * k + 32665) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 97996) = 629856 * k + 48998 := by
    unfold C
    simp [show (1259712 * k + 97996) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 48998) = 314928 * k + 24499 := by
    unfold C
    simp [show (629856 * k + 48998) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 24499) = 944784 * k + 73498 := by
    unfold C
    simp [show (314928 * k + 24499) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 73498) = 472392 * k + 36749 := by
    unfold C
    simp [show (944784 * k + 73498) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 36749) = 1417176 * k + 110248 := by
    unfold C
    simp [show (472392 * k + 36749) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 110248) = 708588 * k + 55124 := by
    unfold C
    simp [show (1417176 * k + 110248) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 55124) = 354294 * k + 27562 := by
    unfold C
    simp [show (708588 * k + 55124) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 27562) = 177147 * k + 13781 := by
    unfold C
    simp [show (354294 * k + 27562) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 20391) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 20391))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard004
