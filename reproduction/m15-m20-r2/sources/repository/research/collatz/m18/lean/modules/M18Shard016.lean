import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard016

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_77119 : ∀ k : Nat,
    iterate (262144 * k + 77119) 29 = 177147 * k + 52115 ∧
      177147 * k + 52115 < 262144 * k + 77119 := by
  intro k
  have h1 : C (262144 * k + 77119) = 786432 * k + 231358 := by
    unfold C
    simp [show (262144 * k + 77119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 231358) = 393216 * k + 115679 := by
    unfold C
    simp [show (786432 * k + 231358) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 115679) = 1179648 * k + 347038 := by
    unfold C
    simp [show (393216 * k + 115679) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 347038) = 589824 * k + 173519 := by
    unfold C
    simp [show (1179648 * k + 347038) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 173519) = 1769472 * k + 520558 := by
    unfold C
    simp [show (589824 * k + 173519) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 520558) = 884736 * k + 260279 := by
    unfold C
    simp [show (1769472 * k + 520558) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 260279) = 2654208 * k + 780838 := by
    unfold C
    simp [show (884736 * k + 260279) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 780838) = 1327104 * k + 390419 := by
    unfold C
    simp [show (2654208 * k + 780838) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 390419) = 3981312 * k + 1171258 := by
    unfold C
    simp [show (1327104 * k + 390419) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1171258) = 1990656 * k + 585629 := by
    unfold C
    simp [show (3981312 * k + 1171258) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 585629) = 5971968 * k + 1756888 := by
    unfold C
    simp [show (1990656 * k + 585629) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1756888) = 2985984 * k + 878444 := by
    unfold C
    simp [show (5971968 * k + 1756888) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 878444) = 1492992 * k + 439222 := by
    unfold C
    simp [show (2985984 * k + 878444) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 439222) = 746496 * k + 219611 := by
    unfold C
    simp [show (1492992 * k + 439222) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 219611) = 2239488 * k + 658834 := by
    unfold C
    simp [show (746496 * k + 219611) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 658834) = 1119744 * k + 329417 := by
    unfold C
    simp [show (2239488 * k + 658834) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 329417) = 3359232 * k + 988252 := by
    unfold C
    simp [show (1119744 * k + 329417) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 988252) = 1679616 * k + 494126 := by
    unfold C
    simp [show (3359232 * k + 988252) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 494126) = 839808 * k + 247063 := by
    unfold C
    simp [show (1679616 * k + 494126) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 247063) = 2519424 * k + 741190 := by
    unfold C
    simp [show (839808 * k + 247063) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 741190) = 1259712 * k + 370595 := by
    unfold C
    simp [show (2519424 * k + 741190) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 370595) = 3779136 * k + 1111786 := by
    unfold C
    simp [show (1259712 * k + 370595) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1111786) = 1889568 * k + 555893 := by
    unfold C
    simp [show (3779136 * k + 1111786) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 555893) = 5668704 * k + 1667680 := by
    unfold C
    simp [show (1889568 * k + 555893) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 1667680) = 2834352 * k + 833840 := by
    unfold C
    simp [show (5668704 * k + 1667680) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 833840) = 1417176 * k + 416920 := by
    unfold C
    simp [show (2834352 * k + 833840) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 416920) = 708588 * k + 208460 := by
    unfold C
    simp [show (1417176 * k + 416920) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 208460) = 354294 * k + 104230 := by
    unfold C
    simp [show (708588 * k + 208460) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 104230) = 177147 * k + 52115 := by
    unfold C
    simp [show (354294 * k + 104230) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 77119) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 77119))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_77127 : ∀ k : Nat,
    iterate (262144 * k + 77127) 29 = 177147 * k + 52121 ∧
      177147 * k + 52121 < 262144 * k + 77127 := by
  intro k
  have h1 : C (262144 * k + 77127) = 786432 * k + 231382 := by
    unfold C
    simp [show (262144 * k + 77127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 231382) = 393216 * k + 115691 := by
    unfold C
    simp [show (786432 * k + 231382) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 115691) = 1179648 * k + 347074 := by
    unfold C
    simp [show (393216 * k + 115691) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 347074) = 589824 * k + 173537 := by
    unfold C
    simp [show (1179648 * k + 347074) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 173537) = 1769472 * k + 520612 := by
    unfold C
    simp [show (589824 * k + 173537) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 520612) = 884736 * k + 260306 := by
    unfold C
    simp [show (1769472 * k + 520612) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 260306) = 442368 * k + 130153 := by
    unfold C
    simp [show (884736 * k + 260306) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 130153) = 1327104 * k + 390460 := by
    unfold C
    simp [show (442368 * k + 130153) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 390460) = 663552 * k + 195230 := by
    unfold C
    simp [show (1327104 * k + 390460) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 195230) = 331776 * k + 97615 := by
    unfold C
    simp [show (663552 * k + 195230) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 97615) = 995328 * k + 292846 := by
    unfold C
    simp [show (331776 * k + 97615) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 292846) = 497664 * k + 146423 := by
    unfold C
    simp [show (995328 * k + 292846) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 146423) = 1492992 * k + 439270 := by
    unfold C
    simp [show (497664 * k + 146423) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 439270) = 746496 * k + 219635 := by
    unfold C
    simp [show (1492992 * k + 439270) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 219635) = 2239488 * k + 658906 := by
    unfold C
    simp [show (746496 * k + 219635) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 658906) = 1119744 * k + 329453 := by
    unfold C
    simp [show (2239488 * k + 658906) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 329453) = 3359232 * k + 988360 := by
    unfold C
    simp [show (1119744 * k + 329453) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 988360) = 1679616 * k + 494180 := by
    unfold C
    simp [show (3359232 * k + 988360) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 494180) = 839808 * k + 247090 := by
    unfold C
    simp [show (1679616 * k + 494180) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 247090) = 419904 * k + 123545 := by
    unfold C
    simp [show (839808 * k + 247090) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 123545) = 1259712 * k + 370636 := by
    unfold C
    simp [show (419904 * k + 123545) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 370636) = 629856 * k + 185318 := by
    unfold C
    simp [show (1259712 * k + 370636) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 185318) = 314928 * k + 92659 := by
    unfold C
    simp [show (629856 * k + 185318) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 92659) = 944784 * k + 277978 := by
    unfold C
    simp [show (314928 * k + 92659) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 277978) = 472392 * k + 138989 := by
    unfold C
    simp [show (944784 * k + 277978) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 138989) = 1417176 * k + 416968 := by
    unfold C
    simp [show (472392 * k + 138989) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 416968) = 708588 * k + 208484 := by
    unfold C
    simp [show (1417176 * k + 416968) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 208484) = 354294 * k + 104242 := by
    unfold C
    simp [show (708588 * k + 208484) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 104242) = 177147 * k + 52121 := by
    unfold C
    simp [show (354294 * k + 104242) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 77127) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 77127))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_77295 : ∀ k : Nat,
    iterate (262144 * k + 77295) 29 = 177147 * k + 52234 ∧
      177147 * k + 52234 < 262144 * k + 77295 := by
  intro k
  have h1 : C (262144 * k + 77295) = 786432 * k + 231886 := by
    unfold C
    simp [show (262144 * k + 77295) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 231886) = 393216 * k + 115943 := by
    unfold C
    simp [show (786432 * k + 231886) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 115943) = 1179648 * k + 347830 := by
    unfold C
    simp [show (393216 * k + 115943) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 347830) = 589824 * k + 173915 := by
    unfold C
    simp [show (1179648 * k + 347830) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 173915) = 1769472 * k + 521746 := by
    unfold C
    simp [show (589824 * k + 173915) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 521746) = 884736 * k + 260873 := by
    unfold C
    simp [show (1769472 * k + 521746) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 260873) = 2654208 * k + 782620 := by
    unfold C
    simp [show (884736 * k + 260873) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 782620) = 1327104 * k + 391310 := by
    unfold C
    simp [show (2654208 * k + 782620) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 391310) = 663552 * k + 195655 := by
    unfold C
    simp [show (1327104 * k + 391310) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 195655) = 1990656 * k + 586966 := by
    unfold C
    simp [show (663552 * k + 195655) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 586966) = 995328 * k + 293483 := by
    unfold C
    simp [show (1990656 * k + 586966) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 293483) = 2985984 * k + 880450 := by
    unfold C
    simp [show (995328 * k + 293483) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 880450) = 1492992 * k + 440225 := by
    unfold C
    simp [show (2985984 * k + 880450) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 440225) = 4478976 * k + 1320676 := by
    unfold C
    simp [show (1492992 * k + 440225) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1320676) = 2239488 * k + 660338 := by
    unfold C
    simp [show (4478976 * k + 1320676) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 660338) = 1119744 * k + 330169 := by
    unfold C
    simp [show (2239488 * k + 660338) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 330169) = 3359232 * k + 990508 := by
    unfold C
    simp [show (1119744 * k + 330169) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 990508) = 1679616 * k + 495254 := by
    unfold C
    simp [show (3359232 * k + 990508) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 495254) = 839808 * k + 247627 := by
    unfold C
    simp [show (1679616 * k + 495254) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 247627) = 2519424 * k + 742882 := by
    unfold C
    simp [show (839808 * k + 247627) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 742882) = 1259712 * k + 371441 := by
    unfold C
    simp [show (2519424 * k + 742882) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 371441) = 3779136 * k + 1114324 := by
    unfold C
    simp [show (1259712 * k + 371441) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1114324) = 1889568 * k + 557162 := by
    unfold C
    simp [show (3779136 * k + 1114324) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 557162) = 944784 * k + 278581 := by
    unfold C
    simp [show (1889568 * k + 557162) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 278581) = 2834352 * k + 835744 := by
    unfold C
    simp [show (944784 * k + 278581) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 835744) = 1417176 * k + 417872 := by
    unfold C
    simp [show (2834352 * k + 835744) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 417872) = 708588 * k + 208936 := by
    unfold C
    simp [show (1417176 * k + 417872) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 208936) = 354294 * k + 104468 := by
    unfold C
    simp [show (708588 * k + 208936) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 104468) = 177147 * k + 52234 := by
    unfold C
    simp [show (354294 * k + 104468) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 77295) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 77295))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_77339 : ∀ k : Nat,
    iterate (262144 * k + 77339) 29 = 177147 * k + 52264 ∧
      177147 * k + 52264 < 262144 * k + 77339 := by
  intro k
  have h1 : C (262144 * k + 77339) = 786432 * k + 232018 := by
    unfold C
    simp [show (262144 * k + 77339) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 232018) = 393216 * k + 116009 := by
    unfold C
    simp [show (786432 * k + 232018) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 116009) = 1179648 * k + 348028 := by
    unfold C
    simp [show (393216 * k + 116009) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 348028) = 589824 * k + 174014 := by
    unfold C
    simp [show (1179648 * k + 348028) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 174014) = 294912 * k + 87007 := by
    unfold C
    simp [show (589824 * k + 174014) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 87007) = 884736 * k + 261022 := by
    unfold C
    simp [show (294912 * k + 87007) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 261022) = 442368 * k + 130511 := by
    unfold C
    simp [show (884736 * k + 261022) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 130511) = 1327104 * k + 391534 := by
    unfold C
    simp [show (442368 * k + 130511) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 391534) = 663552 * k + 195767 := by
    unfold C
    simp [show (1327104 * k + 391534) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 195767) = 1990656 * k + 587302 := by
    unfold C
    simp [show (663552 * k + 195767) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 587302) = 995328 * k + 293651 := by
    unfold C
    simp [show (1990656 * k + 587302) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 293651) = 2985984 * k + 880954 := by
    unfold C
    simp [show (995328 * k + 293651) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 880954) = 1492992 * k + 440477 := by
    unfold C
    simp [show (2985984 * k + 880954) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 440477) = 4478976 * k + 1321432 := by
    unfold C
    simp [show (1492992 * k + 440477) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1321432) = 2239488 * k + 660716 := by
    unfold C
    simp [show (4478976 * k + 1321432) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 660716) = 1119744 * k + 330358 := by
    unfold C
    simp [show (2239488 * k + 660716) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 330358) = 559872 * k + 165179 := by
    unfold C
    simp [show (1119744 * k + 330358) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 165179) = 1679616 * k + 495538 := by
    unfold C
    simp [show (559872 * k + 165179) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 495538) = 839808 * k + 247769 := by
    unfold C
    simp [show (1679616 * k + 495538) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 247769) = 2519424 * k + 743308 := by
    unfold C
    simp [show (839808 * k + 247769) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 743308) = 1259712 * k + 371654 := by
    unfold C
    simp [show (2519424 * k + 743308) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 371654) = 629856 * k + 185827 := by
    unfold C
    simp [show (1259712 * k + 371654) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 185827) = 1889568 * k + 557482 := by
    unfold C
    simp [show (629856 * k + 185827) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 557482) = 944784 * k + 278741 := by
    unfold C
    simp [show (1889568 * k + 557482) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 278741) = 2834352 * k + 836224 := by
    unfold C
    simp [show (944784 * k + 278741) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 836224) = 1417176 * k + 418112 := by
    unfold C
    simp [show (2834352 * k + 836224) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 418112) = 708588 * k + 209056 := by
    unfold C
    simp [show (1417176 * k + 418112) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 209056) = 354294 * k + 104528 := by
    unfold C
    simp [show (708588 * k + 209056) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 104528) = 177147 * k + 52264 := by
    unfold C
    simp [show (354294 * k + 104528) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 77339) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 77339))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_77727 : ∀ k : Nat,
    iterate (262144 * k + 77727) 29 = 177147 * k + 52526 ∧
      177147 * k + 52526 < 262144 * k + 77727 := by
  intro k
  have h1 : C (262144 * k + 77727) = 786432 * k + 233182 := by
    unfold C
    simp [show (262144 * k + 77727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 233182) = 393216 * k + 116591 := by
    unfold C
    simp [show (786432 * k + 233182) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 116591) = 1179648 * k + 349774 := by
    unfold C
    simp [show (393216 * k + 116591) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 349774) = 589824 * k + 174887 := by
    unfold C
    simp [show (1179648 * k + 349774) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 174887) = 1769472 * k + 524662 := by
    unfold C
    simp [show (589824 * k + 174887) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 524662) = 884736 * k + 262331 := by
    unfold C
    simp [show (1769472 * k + 524662) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 262331) = 2654208 * k + 786994 := by
    unfold C
    simp [show (884736 * k + 262331) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 786994) = 1327104 * k + 393497 := by
    unfold C
    simp [show (2654208 * k + 786994) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 393497) = 3981312 * k + 1180492 := by
    unfold C
    simp [show (1327104 * k + 393497) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1180492) = 1990656 * k + 590246 := by
    unfold C
    simp [show (3981312 * k + 1180492) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 590246) = 995328 * k + 295123 := by
    unfold C
    simp [show (1990656 * k + 590246) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 295123) = 2985984 * k + 885370 := by
    unfold C
    simp [show (995328 * k + 295123) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 885370) = 1492992 * k + 442685 := by
    unfold C
    simp [show (2985984 * k + 885370) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 442685) = 4478976 * k + 1328056 := by
    unfold C
    simp [show (1492992 * k + 442685) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1328056) = 2239488 * k + 664028 := by
    unfold C
    simp [show (4478976 * k + 1328056) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 664028) = 1119744 * k + 332014 := by
    unfold C
    simp [show (2239488 * k + 664028) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 332014) = 559872 * k + 166007 := by
    unfold C
    simp [show (1119744 * k + 332014) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 166007) = 1679616 * k + 498022 := by
    unfold C
    simp [show (559872 * k + 166007) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 498022) = 839808 * k + 249011 := by
    unfold C
    simp [show (1679616 * k + 498022) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 249011) = 2519424 * k + 747034 := by
    unfold C
    simp [show (839808 * k + 249011) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 747034) = 1259712 * k + 373517 := by
    unfold C
    simp [show (2519424 * k + 747034) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 373517) = 3779136 * k + 1120552 := by
    unfold C
    simp [show (1259712 * k + 373517) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1120552) = 1889568 * k + 560276 := by
    unfold C
    simp [show (3779136 * k + 1120552) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 560276) = 944784 * k + 280138 := by
    unfold C
    simp [show (1889568 * k + 560276) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 280138) = 472392 * k + 140069 := by
    unfold C
    simp [show (944784 * k + 280138) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 140069) = 1417176 * k + 420208 := by
    unfold C
    simp [show (472392 * k + 140069) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 420208) = 708588 * k + 210104 := by
    unfold C
    simp [show (1417176 * k + 420208) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 210104) = 354294 * k + 105052 := by
    unfold C
    simp [show (708588 * k + 210104) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 105052) = 177147 * k + 52526 := by
    unfold C
    simp [show (354294 * k + 105052) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 77727) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 77727))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_77851 : ∀ k : Nat,
    iterate (262144 * k + 77851) 29 = 177147 * k + 52610 ∧
      177147 * k + 52610 < 262144 * k + 77851 := by
  intro k
  have h1 : C (262144 * k + 77851) = 786432 * k + 233554 := by
    unfold C
    simp [show (262144 * k + 77851) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 233554) = 393216 * k + 116777 := by
    unfold C
    simp [show (786432 * k + 233554) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 116777) = 1179648 * k + 350332 := by
    unfold C
    simp [show (393216 * k + 116777) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 350332) = 589824 * k + 175166 := by
    unfold C
    simp [show (1179648 * k + 350332) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 175166) = 294912 * k + 87583 := by
    unfold C
    simp [show (589824 * k + 175166) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 87583) = 884736 * k + 262750 := by
    unfold C
    simp [show (294912 * k + 87583) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 262750) = 442368 * k + 131375 := by
    unfold C
    simp [show (884736 * k + 262750) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 131375) = 1327104 * k + 394126 := by
    unfold C
    simp [show (442368 * k + 131375) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 394126) = 663552 * k + 197063 := by
    unfold C
    simp [show (1327104 * k + 394126) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 197063) = 1990656 * k + 591190 := by
    unfold C
    simp [show (663552 * k + 197063) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 591190) = 995328 * k + 295595 := by
    unfold C
    simp [show (1990656 * k + 591190) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 295595) = 2985984 * k + 886786 := by
    unfold C
    simp [show (995328 * k + 295595) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 886786) = 1492992 * k + 443393 := by
    unfold C
    simp [show (2985984 * k + 886786) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 443393) = 4478976 * k + 1330180 := by
    unfold C
    simp [show (1492992 * k + 443393) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1330180) = 2239488 * k + 665090 := by
    unfold C
    simp [show (4478976 * k + 1330180) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 665090) = 1119744 * k + 332545 := by
    unfold C
    simp [show (2239488 * k + 665090) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 332545) = 3359232 * k + 997636 := by
    unfold C
    simp [show (1119744 * k + 332545) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 997636) = 1679616 * k + 498818 := by
    unfold C
    simp [show (3359232 * k + 997636) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 498818) = 839808 * k + 249409 := by
    unfold C
    simp [show (1679616 * k + 498818) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 249409) = 2519424 * k + 748228 := by
    unfold C
    simp [show (839808 * k + 249409) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 748228) = 1259712 * k + 374114 := by
    unfold C
    simp [show (2519424 * k + 748228) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 374114) = 629856 * k + 187057 := by
    unfold C
    simp [show (1259712 * k + 374114) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 187057) = 1889568 * k + 561172 := by
    unfold C
    simp [show (629856 * k + 187057) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 561172) = 944784 * k + 280586 := by
    unfold C
    simp [show (1889568 * k + 561172) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 280586) = 472392 * k + 140293 := by
    unfold C
    simp [show (944784 * k + 280586) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 140293) = 1417176 * k + 420880 := by
    unfold C
    simp [show (472392 * k + 140293) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 420880) = 708588 * k + 210440 := by
    unfold C
    simp [show (1417176 * k + 420880) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 210440) = 354294 * k + 105220 := by
    unfold C
    simp [show (708588 * k + 210440) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 105220) = 177147 * k + 52610 := by
    unfold C
    simp [show (354294 * k + 105220) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 77851) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 77851))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_78619 : ∀ k : Nat,
    iterate (262144 * k + 78619) 29 = 177147 * k + 53129 ∧
      177147 * k + 53129 < 262144 * k + 78619 := by
  intro k
  have h1 : C (262144 * k + 78619) = 786432 * k + 235858 := by
    unfold C
    simp [show (262144 * k + 78619) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 235858) = 393216 * k + 117929 := by
    unfold C
    simp [show (786432 * k + 235858) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 117929) = 1179648 * k + 353788 := by
    unfold C
    simp [show (393216 * k + 117929) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 353788) = 589824 * k + 176894 := by
    unfold C
    simp [show (1179648 * k + 353788) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 176894) = 294912 * k + 88447 := by
    unfold C
    simp [show (589824 * k + 176894) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 88447) = 884736 * k + 265342 := by
    unfold C
    simp [show (294912 * k + 88447) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 265342) = 442368 * k + 132671 := by
    unfold C
    simp [show (884736 * k + 265342) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 132671) = 1327104 * k + 398014 := by
    unfold C
    simp [show (442368 * k + 132671) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 398014) = 663552 * k + 199007 := by
    unfold C
    simp [show (1327104 * k + 398014) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 199007) = 1990656 * k + 597022 := by
    unfold C
    simp [show (663552 * k + 199007) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 597022) = 995328 * k + 298511 := by
    unfold C
    simp [show (1990656 * k + 597022) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 298511) = 2985984 * k + 895534 := by
    unfold C
    simp [show (995328 * k + 298511) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 895534) = 1492992 * k + 447767 := by
    unfold C
    simp [show (2985984 * k + 895534) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 447767) = 4478976 * k + 1343302 := by
    unfold C
    simp [show (1492992 * k + 447767) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1343302) = 2239488 * k + 671651 := by
    unfold C
    simp [show (4478976 * k + 1343302) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 671651) = 6718464 * k + 2014954 := by
    unfold C
    simp [show (2239488 * k + 671651) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 2014954) = 3359232 * k + 1007477 := by
    unfold C
    simp [show (6718464 * k + 2014954) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1007477) = 10077696 * k + 3022432 := by
    unfold C
    simp [show (3359232 * k + 1007477) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 3022432) = 5038848 * k + 1511216 := by
    unfold C
    simp [show (10077696 * k + 3022432) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 1511216) = 2519424 * k + 755608 := by
    unfold C
    simp [show (5038848 * k + 1511216) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 755608) = 1259712 * k + 377804 := by
    unfold C
    simp [show (2519424 * k + 755608) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 377804) = 629856 * k + 188902 := by
    unfold C
    simp [show (1259712 * k + 377804) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 188902) = 314928 * k + 94451 := by
    unfold C
    simp [show (629856 * k + 188902) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 94451) = 944784 * k + 283354 := by
    unfold C
    simp [show (314928 * k + 94451) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 283354) = 472392 * k + 141677 := by
    unfold C
    simp [show (944784 * k + 283354) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 141677) = 1417176 * k + 425032 := by
    unfold C
    simp [show (472392 * k + 141677) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 425032) = 708588 * k + 212516 := by
    unfold C
    simp [show (1417176 * k + 425032) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 212516) = 354294 * k + 106258 := by
    unfold C
    simp [show (708588 * k + 212516) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 106258) = 177147 * k + 53129 := by
    unfold C
    simp [show (354294 * k + 106258) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 78619) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 78619))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_78695 : ∀ k : Nat,
    iterate (262144 * k + 78695) 29 = 177147 * k + 53180 ∧
      177147 * k + 53180 < 262144 * k + 78695 := by
  intro k
  have h1 : C (262144 * k + 78695) = 786432 * k + 236086 := by
    unfold C
    simp [show (262144 * k + 78695) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 236086) = 393216 * k + 118043 := by
    unfold C
    simp [show (786432 * k + 236086) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 118043) = 1179648 * k + 354130 := by
    unfold C
    simp [show (393216 * k + 118043) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 354130) = 589824 * k + 177065 := by
    unfold C
    simp [show (1179648 * k + 354130) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 177065) = 1769472 * k + 531196 := by
    unfold C
    simp [show (589824 * k + 177065) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 531196) = 884736 * k + 265598 := by
    unfold C
    simp [show (1769472 * k + 531196) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 265598) = 442368 * k + 132799 := by
    unfold C
    simp [show (884736 * k + 265598) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 132799) = 1327104 * k + 398398 := by
    unfold C
    simp [show (442368 * k + 132799) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 398398) = 663552 * k + 199199 := by
    unfold C
    simp [show (1327104 * k + 398398) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 199199) = 1990656 * k + 597598 := by
    unfold C
    simp [show (663552 * k + 199199) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 597598) = 995328 * k + 298799 := by
    unfold C
    simp [show (1990656 * k + 597598) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 298799) = 2985984 * k + 896398 := by
    unfold C
    simp [show (995328 * k + 298799) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 896398) = 1492992 * k + 448199 := by
    unfold C
    simp [show (2985984 * k + 896398) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 448199) = 4478976 * k + 1344598 := by
    unfold C
    simp [show (1492992 * k + 448199) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1344598) = 2239488 * k + 672299 := by
    unfold C
    simp [show (4478976 * k + 1344598) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 672299) = 6718464 * k + 2016898 := by
    unfold C
    simp [show (2239488 * k + 672299) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 2016898) = 3359232 * k + 1008449 := by
    unfold C
    simp [show (6718464 * k + 2016898) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1008449) = 10077696 * k + 3025348 := by
    unfold C
    simp [show (3359232 * k + 1008449) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 3025348) = 5038848 * k + 1512674 := by
    unfold C
    simp [show (10077696 * k + 3025348) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 1512674) = 2519424 * k + 756337 := by
    unfold C
    simp [show (5038848 * k + 1512674) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 756337) = 7558272 * k + 2269012 := by
    unfold C
    simp [show (2519424 * k + 756337) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 2269012) = 3779136 * k + 1134506 := by
    unfold C
    simp [show (7558272 * k + 2269012) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1134506) = 1889568 * k + 567253 := by
    unfold C
    simp [show (3779136 * k + 1134506) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 567253) = 5668704 * k + 1701760 := by
    unfold C
    simp [show (1889568 * k + 567253) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 1701760) = 2834352 * k + 850880 := by
    unfold C
    simp [show (5668704 * k + 1701760) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 850880) = 1417176 * k + 425440 := by
    unfold C
    simp [show (2834352 * k + 850880) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 425440) = 708588 * k + 212720 := by
    unfold C
    simp [show (1417176 * k + 425440) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 212720) = 354294 * k + 106360 := by
    unfold C
    simp [show (708588 * k + 212720) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 106360) = 177147 * k + 53180 := by
    unfold C
    simp [show (354294 * k + 106360) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 78695) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 78695))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_79719 : ∀ k : Nat,
    iterate (262144 * k + 79719) 29 = 177147 * k + 53872 ∧
      177147 * k + 53872 < 262144 * k + 79719 := by
  intro k
  have h1 : C (262144 * k + 79719) = 786432 * k + 239158 := by
    unfold C
    simp [show (262144 * k + 79719) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 239158) = 393216 * k + 119579 := by
    unfold C
    simp [show (786432 * k + 239158) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 119579) = 1179648 * k + 358738 := by
    unfold C
    simp [show (393216 * k + 119579) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 358738) = 589824 * k + 179369 := by
    unfold C
    simp [show (1179648 * k + 358738) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 179369) = 1769472 * k + 538108 := by
    unfold C
    simp [show (589824 * k + 179369) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 538108) = 884736 * k + 269054 := by
    unfold C
    simp [show (1769472 * k + 538108) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 269054) = 442368 * k + 134527 := by
    unfold C
    simp [show (884736 * k + 269054) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 134527) = 1327104 * k + 403582 := by
    unfold C
    simp [show (442368 * k + 134527) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 403582) = 663552 * k + 201791 := by
    unfold C
    simp [show (1327104 * k + 403582) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 201791) = 1990656 * k + 605374 := by
    unfold C
    simp [show (663552 * k + 201791) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 605374) = 995328 * k + 302687 := by
    unfold C
    simp [show (1990656 * k + 605374) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 302687) = 2985984 * k + 908062 := by
    unfold C
    simp [show (995328 * k + 302687) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 908062) = 1492992 * k + 454031 := by
    unfold C
    simp [show (2985984 * k + 908062) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 454031) = 4478976 * k + 1362094 := by
    unfold C
    simp [show (1492992 * k + 454031) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1362094) = 2239488 * k + 681047 := by
    unfold C
    simp [show (4478976 * k + 1362094) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 681047) = 6718464 * k + 2043142 := by
    unfold C
    simp [show (2239488 * k + 681047) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 2043142) = 3359232 * k + 1021571 := by
    unfold C
    simp [show (6718464 * k + 2043142) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1021571) = 10077696 * k + 3064714 := by
    unfold C
    simp [show (3359232 * k + 1021571) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 3064714) = 5038848 * k + 1532357 := by
    unfold C
    simp [show (10077696 * k + 3064714) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 1532357) = 15116544 * k + 4597072 := by
    unfold C
    simp [show (5038848 * k + 1532357) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 4597072) = 7558272 * k + 2298536 := by
    unfold C
    simp [show (15116544 * k + 4597072) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 2298536) = 3779136 * k + 1149268 := by
    unfold C
    simp [show (7558272 * k + 2298536) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1149268) = 1889568 * k + 574634 := by
    unfold C
    simp [show (3779136 * k + 1149268) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 574634) = 944784 * k + 287317 := by
    unfold C
    simp [show (1889568 * k + 574634) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 287317) = 2834352 * k + 861952 := by
    unfold C
    simp [show (944784 * k + 287317) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 861952) = 1417176 * k + 430976 := by
    unfold C
    simp [show (2834352 * k + 861952) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 430976) = 708588 * k + 215488 := by
    unfold C
    simp [show (1417176 * k + 430976) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 215488) = 354294 * k + 107744 := by
    unfold C
    simp [show (708588 * k + 215488) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 107744) = 177147 * k + 53872 := by
    unfold C
    simp [show (354294 * k + 107744) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 79719) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 79719))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_80155 : ∀ k : Nat,
    iterate (262144 * k + 80155) 29 = 177147 * k + 54167 ∧
      177147 * k + 54167 < 262144 * k + 80155 := by
  intro k
  have h1 : C (262144 * k + 80155) = 786432 * k + 240466 := by
    unfold C
    simp [show (262144 * k + 80155) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 240466) = 393216 * k + 120233 := by
    unfold C
    simp [show (786432 * k + 240466) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 120233) = 1179648 * k + 360700 := by
    unfold C
    simp [show (393216 * k + 120233) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 360700) = 589824 * k + 180350 := by
    unfold C
    simp [show (1179648 * k + 360700) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 180350) = 294912 * k + 90175 := by
    unfold C
    simp [show (589824 * k + 180350) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 90175) = 884736 * k + 270526 := by
    unfold C
    simp [show (294912 * k + 90175) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 270526) = 442368 * k + 135263 := by
    unfold C
    simp [show (884736 * k + 270526) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 135263) = 1327104 * k + 405790 := by
    unfold C
    simp [show (442368 * k + 135263) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 405790) = 663552 * k + 202895 := by
    unfold C
    simp [show (1327104 * k + 405790) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 202895) = 1990656 * k + 608686 := by
    unfold C
    simp [show (663552 * k + 202895) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 608686) = 995328 * k + 304343 := by
    unfold C
    simp [show (1990656 * k + 608686) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 304343) = 2985984 * k + 913030 := by
    unfold C
    simp [show (995328 * k + 304343) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 913030) = 1492992 * k + 456515 := by
    unfold C
    simp [show (2985984 * k + 913030) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 456515) = 4478976 * k + 1369546 := by
    unfold C
    simp [show (1492992 * k + 456515) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1369546) = 2239488 * k + 684773 := by
    unfold C
    simp [show (4478976 * k + 1369546) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 684773) = 6718464 * k + 2054320 := by
    unfold C
    simp [show (2239488 * k + 684773) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 2054320) = 3359232 * k + 1027160 := by
    unfold C
    simp [show (6718464 * k + 2054320) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1027160) = 1679616 * k + 513580 := by
    unfold C
    simp [show (3359232 * k + 1027160) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 513580) = 839808 * k + 256790 := by
    unfold C
    simp [show (1679616 * k + 513580) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 256790) = 419904 * k + 128395 := by
    unfold C
    simp [show (839808 * k + 256790) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 128395) = 1259712 * k + 385186 := by
    unfold C
    simp [show (419904 * k + 128395) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 385186) = 629856 * k + 192593 := by
    unfold C
    simp [show (1259712 * k + 385186) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 192593) = 1889568 * k + 577780 := by
    unfold C
    simp [show (629856 * k + 192593) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 577780) = 944784 * k + 288890 := by
    unfold C
    simp [show (1889568 * k + 577780) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 288890) = 472392 * k + 144445 := by
    unfold C
    simp [show (944784 * k + 288890) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 144445) = 1417176 * k + 433336 := by
    unfold C
    simp [show (472392 * k + 144445) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 433336) = 708588 * k + 216668 := by
    unfold C
    simp [show (1417176 * k + 433336) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 216668) = 354294 * k + 108334 := by
    unfold C
    simp [show (708588 * k + 216668) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 108334) = 177147 * k + 54167 := by
    unfold C
    simp [show (354294 * k + 108334) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 80155) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 80155))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_80191 : ∀ k : Nat,
    iterate (262144 * k + 80191) 29 = 177147 * k + 54191 ∧
      177147 * k + 54191 < 262144 * k + 80191 := by
  intro k
  have h1 : C (262144 * k + 80191) = 786432 * k + 240574 := by
    unfold C
    simp [show (262144 * k + 80191) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 240574) = 393216 * k + 120287 := by
    unfold C
    simp [show (786432 * k + 240574) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 120287) = 1179648 * k + 360862 := by
    unfold C
    simp [show (393216 * k + 120287) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 360862) = 589824 * k + 180431 := by
    unfold C
    simp [show (1179648 * k + 360862) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 180431) = 1769472 * k + 541294 := by
    unfold C
    simp [show (589824 * k + 180431) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 541294) = 884736 * k + 270647 := by
    unfold C
    simp [show (1769472 * k + 541294) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 270647) = 2654208 * k + 811942 := by
    unfold C
    simp [show (884736 * k + 270647) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 811942) = 1327104 * k + 405971 := by
    unfold C
    simp [show (2654208 * k + 811942) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 405971) = 3981312 * k + 1217914 := by
    unfold C
    simp [show (1327104 * k + 405971) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1217914) = 1990656 * k + 608957 := by
    unfold C
    simp [show (3981312 * k + 1217914) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 608957) = 5971968 * k + 1826872 := by
    unfold C
    simp [show (1990656 * k + 608957) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1826872) = 2985984 * k + 913436 := by
    unfold C
    simp [show (5971968 * k + 1826872) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 913436) = 1492992 * k + 456718 := by
    unfold C
    simp [show (2985984 * k + 913436) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 456718) = 746496 * k + 228359 := by
    unfold C
    simp [show (1492992 * k + 456718) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 228359) = 2239488 * k + 685078 := by
    unfold C
    simp [show (746496 * k + 228359) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 685078) = 1119744 * k + 342539 := by
    unfold C
    simp [show (2239488 * k + 685078) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 342539) = 3359232 * k + 1027618 := by
    unfold C
    simp [show (1119744 * k + 342539) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1027618) = 1679616 * k + 513809 := by
    unfold C
    simp [show (3359232 * k + 1027618) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 513809) = 5038848 * k + 1541428 := by
    unfold C
    simp [show (1679616 * k + 513809) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1541428) = 2519424 * k + 770714 := by
    unfold C
    simp [show (5038848 * k + 1541428) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 770714) = 1259712 * k + 385357 := by
    unfold C
    simp [show (2519424 * k + 770714) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 385357) = 3779136 * k + 1156072 := by
    unfold C
    simp [show (1259712 * k + 385357) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1156072) = 1889568 * k + 578036 := by
    unfold C
    simp [show (3779136 * k + 1156072) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 578036) = 944784 * k + 289018 := by
    unfold C
    simp [show (1889568 * k + 578036) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 289018) = 472392 * k + 144509 := by
    unfold C
    simp [show (944784 * k + 289018) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 144509) = 1417176 * k + 433528 := by
    unfold C
    simp [show (472392 * k + 144509) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 433528) = 708588 * k + 216764 := by
    unfold C
    simp [show (1417176 * k + 433528) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 216764) = 354294 * k + 108382 := by
    unfold C
    simp [show (708588 * k + 216764) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 108382) = 177147 * k + 54191 := by
    unfold C
    simp [show (354294 * k + 108382) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 80191) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 80191))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_80923 : ∀ k : Nat,
    iterate (262144 * k + 80923) 29 = 177147 * k + 54686 ∧
      177147 * k + 54686 < 262144 * k + 80923 := by
  intro k
  have h1 : C (262144 * k + 80923) = 786432 * k + 242770 := by
    unfold C
    simp [show (262144 * k + 80923) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 242770) = 393216 * k + 121385 := by
    unfold C
    simp [show (786432 * k + 242770) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 121385) = 1179648 * k + 364156 := by
    unfold C
    simp [show (393216 * k + 121385) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 364156) = 589824 * k + 182078 := by
    unfold C
    simp [show (1179648 * k + 364156) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 182078) = 294912 * k + 91039 := by
    unfold C
    simp [show (589824 * k + 182078) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 91039) = 884736 * k + 273118 := by
    unfold C
    simp [show (294912 * k + 91039) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 273118) = 442368 * k + 136559 := by
    unfold C
    simp [show (884736 * k + 273118) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 136559) = 1327104 * k + 409678 := by
    unfold C
    simp [show (442368 * k + 136559) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 409678) = 663552 * k + 204839 := by
    unfold C
    simp [show (1327104 * k + 409678) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 204839) = 1990656 * k + 614518 := by
    unfold C
    simp [show (663552 * k + 204839) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 614518) = 995328 * k + 307259 := by
    unfold C
    simp [show (1990656 * k + 614518) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 307259) = 2985984 * k + 921778 := by
    unfold C
    simp [show (995328 * k + 307259) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 921778) = 1492992 * k + 460889 := by
    unfold C
    simp [show (2985984 * k + 921778) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 460889) = 4478976 * k + 1382668 := by
    unfold C
    simp [show (1492992 * k + 460889) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1382668) = 2239488 * k + 691334 := by
    unfold C
    simp [show (4478976 * k + 1382668) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 691334) = 1119744 * k + 345667 := by
    unfold C
    simp [show (2239488 * k + 691334) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 345667) = 3359232 * k + 1037002 := by
    unfold C
    simp [show (1119744 * k + 345667) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1037002) = 1679616 * k + 518501 := by
    unfold C
    simp [show (3359232 * k + 1037002) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 518501) = 5038848 * k + 1555504 := by
    unfold C
    simp [show (1679616 * k + 518501) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1555504) = 2519424 * k + 777752 := by
    unfold C
    simp [show (5038848 * k + 1555504) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 777752) = 1259712 * k + 388876 := by
    unfold C
    simp [show (2519424 * k + 777752) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 388876) = 629856 * k + 194438 := by
    unfold C
    simp [show (1259712 * k + 388876) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 194438) = 314928 * k + 97219 := by
    unfold C
    simp [show (629856 * k + 194438) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 97219) = 944784 * k + 291658 := by
    unfold C
    simp [show (314928 * k + 97219) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 291658) = 472392 * k + 145829 := by
    unfold C
    simp [show (944784 * k + 291658) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 145829) = 1417176 * k + 437488 := by
    unfold C
    simp [show (472392 * k + 145829) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 437488) = 708588 * k + 218744 := by
    unfold C
    simp [show (1417176 * k + 437488) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 218744) = 354294 * k + 109372 := by
    unfold C
    simp [show (708588 * k + 218744) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 109372) = 177147 * k + 54686 := by
    unfold C
    simp [show (354294 * k + 109372) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 80923) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 80923))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_80999 : ∀ k : Nat,
    iterate (262144 * k + 80999) 29 = 177147 * k + 54737 ∧
      177147 * k + 54737 < 262144 * k + 80999 := by
  intro k
  have h1 : C (262144 * k + 80999) = 786432 * k + 242998 := by
    unfold C
    simp [show (262144 * k + 80999) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 242998) = 393216 * k + 121499 := by
    unfold C
    simp [show (786432 * k + 242998) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 121499) = 1179648 * k + 364498 := by
    unfold C
    simp [show (393216 * k + 121499) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 364498) = 589824 * k + 182249 := by
    unfold C
    simp [show (1179648 * k + 364498) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 182249) = 1769472 * k + 546748 := by
    unfold C
    simp [show (589824 * k + 182249) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 546748) = 884736 * k + 273374 := by
    unfold C
    simp [show (1769472 * k + 546748) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 273374) = 442368 * k + 136687 := by
    unfold C
    simp [show (884736 * k + 273374) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 136687) = 1327104 * k + 410062 := by
    unfold C
    simp [show (442368 * k + 136687) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 410062) = 663552 * k + 205031 := by
    unfold C
    simp [show (1327104 * k + 410062) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 205031) = 1990656 * k + 615094 := by
    unfold C
    simp [show (663552 * k + 205031) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 615094) = 995328 * k + 307547 := by
    unfold C
    simp [show (1990656 * k + 615094) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 307547) = 2985984 * k + 922642 := by
    unfold C
    simp [show (995328 * k + 307547) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 922642) = 1492992 * k + 461321 := by
    unfold C
    simp [show (2985984 * k + 922642) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 461321) = 4478976 * k + 1383964 := by
    unfold C
    simp [show (1492992 * k + 461321) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1383964) = 2239488 * k + 691982 := by
    unfold C
    simp [show (4478976 * k + 1383964) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 691982) = 1119744 * k + 345991 := by
    unfold C
    simp [show (2239488 * k + 691982) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 345991) = 3359232 * k + 1037974 := by
    unfold C
    simp [show (1119744 * k + 345991) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1037974) = 1679616 * k + 518987 := by
    unfold C
    simp [show (3359232 * k + 1037974) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 518987) = 5038848 * k + 1556962 := by
    unfold C
    simp [show (1679616 * k + 518987) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1556962) = 2519424 * k + 778481 := by
    unfold C
    simp [show (5038848 * k + 1556962) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 778481) = 7558272 * k + 2335444 := by
    unfold C
    simp [show (2519424 * k + 778481) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 2335444) = 3779136 * k + 1167722 := by
    unfold C
    simp [show (7558272 * k + 2335444) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1167722) = 1889568 * k + 583861 := by
    unfold C
    simp [show (3779136 * k + 1167722) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 583861) = 5668704 * k + 1751584 := by
    unfold C
    simp [show (1889568 * k + 583861) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 1751584) = 2834352 * k + 875792 := by
    unfold C
    simp [show (5668704 * k + 1751584) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 875792) = 1417176 * k + 437896 := by
    unfold C
    simp [show (2834352 * k + 875792) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 437896) = 708588 * k + 218948 := by
    unfold C
    simp [show (1417176 * k + 437896) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 218948) = 354294 * k + 109474 := by
    unfold C
    simp [show (708588 * k + 218948) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 109474) = 177147 * k + 54737 := by
    unfold C
    simp [show (354294 * k + 109474) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 80999) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 80999))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_81215 : ∀ k : Nat,
    iterate (262144 * k + 81215) 29 = 177147 * k + 54883 ∧
      177147 * k + 54883 < 262144 * k + 81215 := by
  intro k
  have h1 : C (262144 * k + 81215) = 786432 * k + 243646 := by
    unfold C
    simp [show (262144 * k + 81215) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 243646) = 393216 * k + 121823 := by
    unfold C
    simp [show (786432 * k + 243646) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 121823) = 1179648 * k + 365470 := by
    unfold C
    simp [show (393216 * k + 121823) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 365470) = 589824 * k + 182735 := by
    unfold C
    simp [show (1179648 * k + 365470) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 182735) = 1769472 * k + 548206 := by
    unfold C
    simp [show (589824 * k + 182735) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 548206) = 884736 * k + 274103 := by
    unfold C
    simp [show (1769472 * k + 548206) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 274103) = 2654208 * k + 822310 := by
    unfold C
    simp [show (884736 * k + 274103) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 822310) = 1327104 * k + 411155 := by
    unfold C
    simp [show (2654208 * k + 822310) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 411155) = 3981312 * k + 1233466 := by
    unfold C
    simp [show (1327104 * k + 411155) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1233466) = 1990656 * k + 616733 := by
    unfold C
    simp [show (3981312 * k + 1233466) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 616733) = 5971968 * k + 1850200 := by
    unfold C
    simp [show (1990656 * k + 616733) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1850200) = 2985984 * k + 925100 := by
    unfold C
    simp [show (5971968 * k + 1850200) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 925100) = 1492992 * k + 462550 := by
    unfold C
    simp [show (2985984 * k + 925100) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 462550) = 746496 * k + 231275 := by
    unfold C
    simp [show (1492992 * k + 462550) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 231275) = 2239488 * k + 693826 := by
    unfold C
    simp [show (746496 * k + 231275) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 693826) = 1119744 * k + 346913 := by
    unfold C
    simp [show (2239488 * k + 693826) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 346913) = 3359232 * k + 1040740 := by
    unfold C
    simp [show (1119744 * k + 346913) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1040740) = 1679616 * k + 520370 := by
    unfold C
    simp [show (3359232 * k + 1040740) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 520370) = 839808 * k + 260185 := by
    unfold C
    simp [show (1679616 * k + 520370) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 260185) = 2519424 * k + 780556 := by
    unfold C
    simp [show (839808 * k + 260185) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 780556) = 1259712 * k + 390278 := by
    unfold C
    simp [show (2519424 * k + 780556) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 390278) = 629856 * k + 195139 := by
    unfold C
    simp [show (1259712 * k + 390278) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 195139) = 1889568 * k + 585418 := by
    unfold C
    simp [show (629856 * k + 195139) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 585418) = 944784 * k + 292709 := by
    unfold C
    simp [show (1889568 * k + 585418) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 292709) = 2834352 * k + 878128 := by
    unfold C
    simp [show (944784 * k + 292709) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 878128) = 1417176 * k + 439064 := by
    unfold C
    simp [show (2834352 * k + 878128) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 439064) = 708588 * k + 219532 := by
    unfold C
    simp [show (1417176 * k + 439064) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 219532) = 354294 * k + 109766 := by
    unfold C
    simp [show (708588 * k + 219532) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 109766) = 177147 * k + 54883 := by
    unfold C
    simp [show (354294 * k + 109766) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 81215) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 81215))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_81255 : ∀ k : Nat,
    iterate (262144 * k + 81255) 29 = 177147 * k + 54910 ∧
      177147 * k + 54910 < 262144 * k + 81255 := by
  intro k
  have h1 : C (262144 * k + 81255) = 786432 * k + 243766 := by
    unfold C
    simp [show (262144 * k + 81255) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 243766) = 393216 * k + 121883 := by
    unfold C
    simp [show (786432 * k + 243766) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 121883) = 1179648 * k + 365650 := by
    unfold C
    simp [show (393216 * k + 121883) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 365650) = 589824 * k + 182825 := by
    unfold C
    simp [show (1179648 * k + 365650) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 182825) = 1769472 * k + 548476 := by
    unfold C
    simp [show (589824 * k + 182825) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 548476) = 884736 * k + 274238 := by
    unfold C
    simp [show (1769472 * k + 548476) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 274238) = 442368 * k + 137119 := by
    unfold C
    simp [show (884736 * k + 274238) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 137119) = 1327104 * k + 411358 := by
    unfold C
    simp [show (442368 * k + 137119) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 411358) = 663552 * k + 205679 := by
    unfold C
    simp [show (1327104 * k + 411358) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 205679) = 1990656 * k + 617038 := by
    unfold C
    simp [show (663552 * k + 205679) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 617038) = 995328 * k + 308519 := by
    unfold C
    simp [show (1990656 * k + 617038) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 308519) = 2985984 * k + 925558 := by
    unfold C
    simp [show (995328 * k + 308519) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 925558) = 1492992 * k + 462779 := by
    unfold C
    simp [show (2985984 * k + 925558) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 462779) = 4478976 * k + 1388338 := by
    unfold C
    simp [show (1492992 * k + 462779) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1388338) = 2239488 * k + 694169 := by
    unfold C
    simp [show (4478976 * k + 1388338) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 694169) = 6718464 * k + 2082508 := by
    unfold C
    simp [show (2239488 * k + 694169) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 2082508) = 3359232 * k + 1041254 := by
    unfold C
    simp [show (6718464 * k + 2082508) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1041254) = 1679616 * k + 520627 := by
    unfold C
    simp [show (3359232 * k + 1041254) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 520627) = 5038848 * k + 1561882 := by
    unfold C
    simp [show (1679616 * k + 520627) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1561882) = 2519424 * k + 780941 := by
    unfold C
    simp [show (5038848 * k + 1561882) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 780941) = 7558272 * k + 2342824 := by
    unfold C
    simp [show (2519424 * k + 780941) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 2342824) = 3779136 * k + 1171412 := by
    unfold C
    simp [show (7558272 * k + 2342824) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1171412) = 1889568 * k + 585706 := by
    unfold C
    simp [show (3779136 * k + 1171412) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 585706) = 944784 * k + 292853 := by
    unfold C
    simp [show (1889568 * k + 585706) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 292853) = 2834352 * k + 878560 := by
    unfold C
    simp [show (944784 * k + 292853) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 878560) = 1417176 * k + 439280 := by
    unfold C
    simp [show (2834352 * k + 878560) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 439280) = 708588 * k + 219640 := by
    unfold C
    simp [show (1417176 * k + 439280) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 219640) = 354294 * k + 109820 := by
    unfold C
    simp [show (708588 * k + 219640) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 109820) = 177147 * k + 54910 := by
    unfold C
    simp [show (354294 * k + 109820) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 81255) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 81255))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_81647 : ∀ k : Nat,
    iterate (262144 * k + 81647) 29 = 177147 * k + 55175 ∧
      177147 * k + 55175 < 262144 * k + 81647 := by
  intro k
  have h1 : C (262144 * k + 81647) = 786432 * k + 244942 := by
    unfold C
    simp [show (262144 * k + 81647) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 244942) = 393216 * k + 122471 := by
    unfold C
    simp [show (786432 * k + 244942) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 122471) = 1179648 * k + 367414 := by
    unfold C
    simp [show (393216 * k + 122471) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 367414) = 589824 * k + 183707 := by
    unfold C
    simp [show (1179648 * k + 367414) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 183707) = 1769472 * k + 551122 := by
    unfold C
    simp [show (589824 * k + 183707) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 551122) = 884736 * k + 275561 := by
    unfold C
    simp [show (1769472 * k + 551122) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 275561) = 2654208 * k + 826684 := by
    unfold C
    simp [show (884736 * k + 275561) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 826684) = 1327104 * k + 413342 := by
    unfold C
    simp [show (2654208 * k + 826684) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 413342) = 663552 * k + 206671 := by
    unfold C
    simp [show (1327104 * k + 413342) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 206671) = 1990656 * k + 620014 := by
    unfold C
    simp [show (663552 * k + 206671) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 620014) = 995328 * k + 310007 := by
    unfold C
    simp [show (1990656 * k + 620014) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 310007) = 2985984 * k + 930022 := by
    unfold C
    simp [show (995328 * k + 310007) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 930022) = 1492992 * k + 465011 := by
    unfold C
    simp [show (2985984 * k + 930022) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 465011) = 4478976 * k + 1395034 := by
    unfold C
    simp [show (1492992 * k + 465011) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1395034) = 2239488 * k + 697517 := by
    unfold C
    simp [show (4478976 * k + 1395034) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 697517) = 6718464 * k + 2092552 := by
    unfold C
    simp [show (2239488 * k + 697517) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 2092552) = 3359232 * k + 1046276 := by
    unfold C
    simp [show (6718464 * k + 2092552) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1046276) = 1679616 * k + 523138 := by
    unfold C
    simp [show (3359232 * k + 1046276) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 523138) = 839808 * k + 261569 := by
    unfold C
    simp [show (1679616 * k + 523138) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 261569) = 2519424 * k + 784708 := by
    unfold C
    simp [show (839808 * k + 261569) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 784708) = 1259712 * k + 392354 := by
    unfold C
    simp [show (2519424 * k + 784708) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 392354) = 629856 * k + 196177 := by
    unfold C
    simp [show (1259712 * k + 392354) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 196177) = 1889568 * k + 588532 := by
    unfold C
    simp [show (629856 * k + 196177) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 588532) = 944784 * k + 294266 := by
    unfold C
    simp [show (1889568 * k + 588532) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 294266) = 472392 * k + 147133 := by
    unfold C
    simp [show (944784 * k + 294266) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 147133) = 1417176 * k + 441400 := by
    unfold C
    simp [show (472392 * k + 147133) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 441400) = 708588 * k + 220700 := by
    unfold C
    simp [show (1417176 * k + 441400) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 220700) = 354294 * k + 110350 := by
    unfold C
    simp [show (708588 * k + 220700) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 110350) = 177147 * k + 55175 := by
    unfold C
    simp [show (354294 * k + 110350) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 81647) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 81647))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_82335 : ∀ k : Nat,
    iterate (262144 * k + 82335) 29 = 177147 * k + 55640 ∧
      177147 * k + 55640 < 262144 * k + 82335 := by
  intro k
  have h1 : C (262144 * k + 82335) = 786432 * k + 247006 := by
    unfold C
    simp [show (262144 * k + 82335) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 247006) = 393216 * k + 123503 := by
    unfold C
    simp [show (786432 * k + 247006) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 123503) = 1179648 * k + 370510 := by
    unfold C
    simp [show (393216 * k + 123503) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 370510) = 589824 * k + 185255 := by
    unfold C
    simp [show (1179648 * k + 370510) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 185255) = 1769472 * k + 555766 := by
    unfold C
    simp [show (589824 * k + 185255) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 555766) = 884736 * k + 277883 := by
    unfold C
    simp [show (1769472 * k + 555766) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 277883) = 2654208 * k + 833650 := by
    unfold C
    simp [show (884736 * k + 277883) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 833650) = 1327104 * k + 416825 := by
    unfold C
    simp [show (2654208 * k + 833650) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 416825) = 3981312 * k + 1250476 := by
    unfold C
    simp [show (1327104 * k + 416825) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1250476) = 1990656 * k + 625238 := by
    unfold C
    simp [show (3981312 * k + 1250476) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 625238) = 995328 * k + 312619 := by
    unfold C
    simp [show (1990656 * k + 625238) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 312619) = 2985984 * k + 937858 := by
    unfold C
    simp [show (995328 * k + 312619) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 937858) = 1492992 * k + 468929 := by
    unfold C
    simp [show (2985984 * k + 937858) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 468929) = 4478976 * k + 1406788 := by
    unfold C
    simp [show (1492992 * k + 468929) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1406788) = 2239488 * k + 703394 := by
    unfold C
    simp [show (4478976 * k + 1406788) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 703394) = 1119744 * k + 351697 := by
    unfold C
    simp [show (2239488 * k + 703394) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 351697) = 3359232 * k + 1055092 := by
    unfold C
    simp [show (1119744 * k + 351697) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1055092) = 1679616 * k + 527546 := by
    unfold C
    simp [show (3359232 * k + 1055092) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 527546) = 839808 * k + 263773 := by
    unfold C
    simp [show (1679616 * k + 527546) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 263773) = 2519424 * k + 791320 := by
    unfold C
    simp [show (839808 * k + 263773) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 791320) = 1259712 * k + 395660 := by
    unfold C
    simp [show (2519424 * k + 791320) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 395660) = 629856 * k + 197830 := by
    unfold C
    simp [show (1259712 * k + 395660) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 197830) = 314928 * k + 98915 := by
    unfold C
    simp [show (629856 * k + 197830) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 98915) = 944784 * k + 296746 := by
    unfold C
    simp [show (314928 * k + 98915) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 296746) = 472392 * k + 148373 := by
    unfold C
    simp [show (944784 * k + 296746) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 148373) = 1417176 * k + 445120 := by
    unfold C
    simp [show (472392 * k + 148373) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 445120) = 708588 * k + 222560 := by
    unfold C
    simp [show (1417176 * k + 445120) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 222560) = 354294 * k + 111280 := by
    unfold C
    simp [show (708588 * k + 222560) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 111280) = 177147 * k + 55640 := by
    unfold C
    simp [show (354294 * k + 111280) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 82335) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 82335))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_83431 : ∀ k : Nat,
    iterate (262144 * k + 83431) 29 = 177147 * k + 56381 ∧
      177147 * k + 56381 < 262144 * k + 83431 := by
  intro k
  have h1 : C (262144 * k + 83431) = 786432 * k + 250294 := by
    unfold C
    simp [show (262144 * k + 83431) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 250294) = 393216 * k + 125147 := by
    unfold C
    simp [show (786432 * k + 250294) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 125147) = 1179648 * k + 375442 := by
    unfold C
    simp [show (393216 * k + 125147) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 375442) = 589824 * k + 187721 := by
    unfold C
    simp [show (1179648 * k + 375442) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 187721) = 1769472 * k + 563164 := by
    unfold C
    simp [show (589824 * k + 187721) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 563164) = 884736 * k + 281582 := by
    unfold C
    simp [show (1769472 * k + 563164) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 281582) = 442368 * k + 140791 := by
    unfold C
    simp [show (884736 * k + 281582) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 140791) = 1327104 * k + 422374 := by
    unfold C
    simp [show (442368 * k + 140791) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 422374) = 663552 * k + 211187 := by
    unfold C
    simp [show (1327104 * k + 422374) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 211187) = 1990656 * k + 633562 := by
    unfold C
    simp [show (663552 * k + 211187) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 633562) = 995328 * k + 316781 := by
    unfold C
    simp [show (1990656 * k + 633562) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 316781) = 2985984 * k + 950344 := by
    unfold C
    simp [show (995328 * k + 316781) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 950344) = 1492992 * k + 475172 := by
    unfold C
    simp [show (2985984 * k + 950344) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 475172) = 746496 * k + 237586 := by
    unfold C
    simp [show (1492992 * k + 475172) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 237586) = 373248 * k + 118793 := by
    unfold C
    simp [show (746496 * k + 237586) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 118793) = 1119744 * k + 356380 := by
    unfold C
    simp [show (373248 * k + 118793) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 356380) = 559872 * k + 178190 := by
    unfold C
    simp [show (1119744 * k + 356380) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 178190) = 279936 * k + 89095 := by
    unfold C
    simp [show (559872 * k + 178190) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 89095) = 839808 * k + 267286 := by
    unfold C
    simp [show (279936 * k + 89095) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 267286) = 419904 * k + 133643 := by
    unfold C
    simp [show (839808 * k + 267286) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 133643) = 1259712 * k + 400930 := by
    unfold C
    simp [show (419904 * k + 133643) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 400930) = 629856 * k + 200465 := by
    unfold C
    simp [show (1259712 * k + 400930) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 200465) = 1889568 * k + 601396 := by
    unfold C
    simp [show (629856 * k + 200465) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 601396) = 944784 * k + 300698 := by
    unfold C
    simp [show (1889568 * k + 601396) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 300698) = 472392 * k + 150349 := by
    unfold C
    simp [show (944784 * k + 300698) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 150349) = 1417176 * k + 451048 := by
    unfold C
    simp [show (472392 * k + 150349) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 451048) = 708588 * k + 225524 := by
    unfold C
    simp [show (1417176 * k + 451048) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 225524) = 354294 * k + 112762 := by
    unfold C
    simp [show (708588 * k + 225524) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 112762) = 177147 * k + 56381 := by
    unfold C
    simp [show (354294 * k + 112762) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 83431) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 83431))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_83439 : ∀ k : Nat,
    iterate (262144 * k + 83439) 29 = 177147 * k + 56386 ∧
      177147 * k + 56386 < 262144 * k + 83439 := by
  intro k
  have h1 : C (262144 * k + 83439) = 786432 * k + 250318 := by
    unfold C
    simp [show (262144 * k + 83439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 250318) = 393216 * k + 125159 := by
    unfold C
    simp [show (786432 * k + 250318) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 125159) = 1179648 * k + 375478 := by
    unfold C
    simp [show (393216 * k + 125159) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 375478) = 589824 * k + 187739 := by
    unfold C
    simp [show (1179648 * k + 375478) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 187739) = 1769472 * k + 563218 := by
    unfold C
    simp [show (589824 * k + 187739) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 563218) = 884736 * k + 281609 := by
    unfold C
    simp [show (1769472 * k + 563218) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 281609) = 2654208 * k + 844828 := by
    unfold C
    simp [show (884736 * k + 281609) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 844828) = 1327104 * k + 422414 := by
    unfold C
    simp [show (2654208 * k + 844828) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 422414) = 663552 * k + 211207 := by
    unfold C
    simp [show (1327104 * k + 422414) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 211207) = 1990656 * k + 633622 := by
    unfold C
    simp [show (663552 * k + 211207) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 633622) = 995328 * k + 316811 := by
    unfold C
    simp [show (1990656 * k + 633622) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 316811) = 2985984 * k + 950434 := by
    unfold C
    simp [show (995328 * k + 316811) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 950434) = 1492992 * k + 475217 := by
    unfold C
    simp [show (2985984 * k + 950434) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 475217) = 4478976 * k + 1425652 := by
    unfold C
    simp [show (1492992 * k + 475217) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1425652) = 2239488 * k + 712826 := by
    unfold C
    simp [show (4478976 * k + 1425652) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 712826) = 1119744 * k + 356413 := by
    unfold C
    simp [show (2239488 * k + 712826) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 356413) = 3359232 * k + 1069240 := by
    unfold C
    simp [show (1119744 * k + 356413) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1069240) = 1679616 * k + 534620 := by
    unfold C
    simp [show (3359232 * k + 1069240) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 534620) = 839808 * k + 267310 := by
    unfold C
    simp [show (1679616 * k + 534620) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 267310) = 419904 * k + 133655 := by
    unfold C
    simp [show (839808 * k + 267310) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 133655) = 1259712 * k + 400966 := by
    unfold C
    simp [show (419904 * k + 133655) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 400966) = 629856 * k + 200483 := by
    unfold C
    simp [show (1259712 * k + 400966) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 200483) = 1889568 * k + 601450 := by
    unfold C
    simp [show (629856 * k + 200483) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 601450) = 944784 * k + 300725 := by
    unfold C
    simp [show (1889568 * k + 601450) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 300725) = 2834352 * k + 902176 := by
    unfold C
    simp [show (944784 * k + 300725) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 902176) = 1417176 * k + 451088 := by
    unfold C
    simp [show (2834352 * k + 902176) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 451088) = 708588 * k + 225544 := by
    unfold C
    simp [show (1417176 * k + 451088) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 225544) = 354294 * k + 112772 := by
    unfold C
    simp [show (708588 * k + 225544) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 112772) = 177147 * k + 56386 := by
    unfold C
    simp [show (354294 * k + 112772) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 83439) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 83439))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_83871 : ∀ k : Nat,
    iterate (262144 * k + 83871) 29 = 177147 * k + 56678 ∧
      177147 * k + 56678 < 262144 * k + 83871 := by
  intro k
  have h1 : C (262144 * k + 83871) = 786432 * k + 251614 := by
    unfold C
    simp [show (262144 * k + 83871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 251614) = 393216 * k + 125807 := by
    unfold C
    simp [show (786432 * k + 251614) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 125807) = 1179648 * k + 377422 := by
    unfold C
    simp [show (393216 * k + 125807) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 377422) = 589824 * k + 188711 := by
    unfold C
    simp [show (1179648 * k + 377422) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 188711) = 1769472 * k + 566134 := by
    unfold C
    simp [show (589824 * k + 188711) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 566134) = 884736 * k + 283067 := by
    unfold C
    simp [show (1769472 * k + 566134) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 283067) = 2654208 * k + 849202 := by
    unfold C
    simp [show (884736 * k + 283067) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 849202) = 1327104 * k + 424601 := by
    unfold C
    simp [show (2654208 * k + 849202) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 424601) = 3981312 * k + 1273804 := by
    unfold C
    simp [show (1327104 * k + 424601) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1273804) = 1990656 * k + 636902 := by
    unfold C
    simp [show (3981312 * k + 1273804) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 636902) = 995328 * k + 318451 := by
    unfold C
    simp [show (1990656 * k + 636902) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 318451) = 2985984 * k + 955354 := by
    unfold C
    simp [show (995328 * k + 318451) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 955354) = 1492992 * k + 477677 := by
    unfold C
    simp [show (2985984 * k + 955354) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 477677) = 4478976 * k + 1433032 := by
    unfold C
    simp [show (1492992 * k + 477677) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1433032) = 2239488 * k + 716516 := by
    unfold C
    simp [show (4478976 * k + 1433032) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 716516) = 1119744 * k + 358258 := by
    unfold C
    simp [show (2239488 * k + 716516) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 358258) = 559872 * k + 179129 := by
    unfold C
    simp [show (1119744 * k + 358258) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 179129) = 1679616 * k + 537388 := by
    unfold C
    simp [show (559872 * k + 179129) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 537388) = 839808 * k + 268694 := by
    unfold C
    simp [show (1679616 * k + 537388) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 268694) = 419904 * k + 134347 := by
    unfold C
    simp [show (839808 * k + 268694) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 134347) = 1259712 * k + 403042 := by
    unfold C
    simp [show (419904 * k + 134347) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 403042) = 629856 * k + 201521 := by
    unfold C
    simp [show (1259712 * k + 403042) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 201521) = 1889568 * k + 604564 := by
    unfold C
    simp [show (629856 * k + 201521) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 604564) = 944784 * k + 302282 := by
    unfold C
    simp [show (1889568 * k + 604564) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 302282) = 472392 * k + 151141 := by
    unfold C
    simp [show (944784 * k + 302282) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 151141) = 1417176 * k + 453424 := by
    unfold C
    simp [show (472392 * k + 151141) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 453424) = 708588 * k + 226712 := by
    unfold C
    simp [show (1417176 * k + 453424) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 226712) = 354294 * k + 113356 := by
    unfold C
    simp [show (708588 * k + 226712) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 113356) = 177147 * k + 56678 := by
    unfold C
    simp [show (354294 * k + 113356) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 83871) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 83871))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard016
