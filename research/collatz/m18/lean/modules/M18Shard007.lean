import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard007

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_31615 : ∀ k : Nat,
    iterate (262144 * k + 31615) 29 = 177147 * k + 21365 ∧
      177147 * k + 21365 < 262144 * k + 31615 := by
  intro k
  have h1 : C (262144 * k + 31615) = 786432 * k + 94846 := by
    unfold C
    simp [show (262144 * k + 31615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 94846) = 393216 * k + 47423 := by
    unfold C
    simp [show (786432 * k + 94846) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 47423) = 1179648 * k + 142270 := by
    unfold C
    simp [show (393216 * k + 47423) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 142270) = 589824 * k + 71135 := by
    unfold C
    simp [show (1179648 * k + 142270) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 71135) = 1769472 * k + 213406 := by
    unfold C
    simp [show (589824 * k + 71135) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 213406) = 884736 * k + 106703 := by
    unfold C
    simp [show (1769472 * k + 213406) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 106703) = 2654208 * k + 320110 := by
    unfold C
    simp [show (884736 * k + 106703) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 320110) = 1327104 * k + 160055 := by
    unfold C
    simp [show (2654208 * k + 320110) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 160055) = 3981312 * k + 480166 := by
    unfold C
    simp [show (1327104 * k + 160055) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 480166) = 1990656 * k + 240083 := by
    unfold C
    simp [show (3981312 * k + 480166) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 240083) = 5971968 * k + 720250 := by
    unfold C
    simp [show (1990656 * k + 240083) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 720250) = 2985984 * k + 360125 := by
    unfold C
    simp [show (5971968 * k + 720250) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 360125) = 8957952 * k + 1080376 := by
    unfold C
    simp [show (2985984 * k + 360125) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 1080376) = 4478976 * k + 540188 := by
    unfold C
    simp [show (8957952 * k + 1080376) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 540188) = 2239488 * k + 270094 := by
    unfold C
    simp [show (4478976 * k + 540188) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 270094) = 1119744 * k + 135047 := by
    unfold C
    simp [show (2239488 * k + 270094) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 135047) = 3359232 * k + 405142 := by
    unfold C
    simp [show (1119744 * k + 135047) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 405142) = 1679616 * k + 202571 := by
    unfold C
    simp [show (3359232 * k + 405142) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 202571) = 5038848 * k + 607714 := by
    unfold C
    simp [show (1679616 * k + 202571) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 607714) = 2519424 * k + 303857 := by
    unfold C
    simp [show (5038848 * k + 607714) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 303857) = 7558272 * k + 911572 := by
    unfold C
    simp [show (2519424 * k + 303857) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 911572) = 3779136 * k + 455786 := by
    unfold C
    simp [show (7558272 * k + 911572) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 455786) = 1889568 * k + 227893 := by
    unfold C
    simp [show (3779136 * k + 455786) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 227893) = 5668704 * k + 683680 := by
    unfold C
    simp [show (1889568 * k + 227893) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 683680) = 2834352 * k + 341840 := by
    unfold C
    simp [show (5668704 * k + 683680) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 341840) = 1417176 * k + 170920 := by
    unfold C
    simp [show (2834352 * k + 341840) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 170920) = 708588 * k + 85460 := by
    unfold C
    simp [show (1417176 * k + 170920) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 85460) = 354294 * k + 42730 := by
    unfold C
    simp [show (708588 * k + 85460) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 42730) = 177147 * k + 21365 := by
    unfold C
    simp [show (354294 * k + 42730) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 31615) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 31615))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_31871 : ∀ k : Nat,
    iterate (262144 * k + 31871) 29 = 177147 * k + 21538 ∧
      177147 * k + 21538 < 262144 * k + 31871 := by
  intro k
  have h1 : C (262144 * k + 31871) = 786432 * k + 95614 := by
    unfold C
    simp [show (262144 * k + 31871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 95614) = 393216 * k + 47807 := by
    unfold C
    simp [show (786432 * k + 95614) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 47807) = 1179648 * k + 143422 := by
    unfold C
    simp [show (393216 * k + 47807) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 143422) = 589824 * k + 71711 := by
    unfold C
    simp [show (1179648 * k + 143422) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 71711) = 1769472 * k + 215134 := by
    unfold C
    simp [show (589824 * k + 71711) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 215134) = 884736 * k + 107567 := by
    unfold C
    simp [show (1769472 * k + 215134) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 107567) = 2654208 * k + 322702 := by
    unfold C
    simp [show (884736 * k + 107567) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 322702) = 1327104 * k + 161351 := by
    unfold C
    simp [show (2654208 * k + 322702) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 161351) = 3981312 * k + 484054 := by
    unfold C
    simp [show (1327104 * k + 161351) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 484054) = 1990656 * k + 242027 := by
    unfold C
    simp [show (3981312 * k + 484054) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 242027) = 5971968 * k + 726082 := by
    unfold C
    simp [show (1990656 * k + 242027) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 726082) = 2985984 * k + 363041 := by
    unfold C
    simp [show (5971968 * k + 726082) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 363041) = 8957952 * k + 1089124 := by
    unfold C
    simp [show (2985984 * k + 363041) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 1089124) = 4478976 * k + 544562 := by
    unfold C
    simp [show (8957952 * k + 1089124) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 544562) = 2239488 * k + 272281 := by
    unfold C
    simp [show (4478976 * k + 544562) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 272281) = 6718464 * k + 816844 := by
    unfold C
    simp [show (2239488 * k + 272281) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 816844) = 3359232 * k + 408422 := by
    unfold C
    simp [show (6718464 * k + 816844) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 408422) = 1679616 * k + 204211 := by
    unfold C
    simp [show (3359232 * k + 408422) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 204211) = 5038848 * k + 612634 := by
    unfold C
    simp [show (1679616 * k + 204211) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 612634) = 2519424 * k + 306317 := by
    unfold C
    simp [show (5038848 * k + 612634) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 306317) = 7558272 * k + 918952 := by
    unfold C
    simp [show (2519424 * k + 306317) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 918952) = 3779136 * k + 459476 := by
    unfold C
    simp [show (7558272 * k + 918952) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 459476) = 1889568 * k + 229738 := by
    unfold C
    simp [show (3779136 * k + 459476) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 229738) = 944784 * k + 114869 := by
    unfold C
    simp [show (1889568 * k + 229738) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 114869) = 2834352 * k + 344608 := by
    unfold C
    simp [show (944784 * k + 114869) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 344608) = 1417176 * k + 172304 := by
    unfold C
    simp [show (2834352 * k + 344608) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 172304) = 708588 * k + 86152 := by
    unfold C
    simp [show (1417176 * k + 172304) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 86152) = 354294 * k + 43076 := by
    unfold C
    simp [show (708588 * k + 86152) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 43076) = 177147 * k + 21538 := by
    unfold C
    simp [show (354294 * k + 43076) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 31871) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 31871))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_32063 : ∀ k : Nat,
    iterate (262144 * k + 32063) 29 = 177147 * k + 21668 ∧
      177147 * k + 21668 < 262144 * k + 32063 := by
  intro k
  have h1 : C (262144 * k + 32063) = 786432 * k + 96190 := by
    unfold C
    simp [show (262144 * k + 32063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 96190) = 393216 * k + 48095 := by
    unfold C
    simp [show (786432 * k + 96190) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 48095) = 1179648 * k + 144286 := by
    unfold C
    simp [show (393216 * k + 48095) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 144286) = 589824 * k + 72143 := by
    unfold C
    simp [show (1179648 * k + 144286) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 72143) = 1769472 * k + 216430 := by
    unfold C
    simp [show (589824 * k + 72143) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 216430) = 884736 * k + 108215 := by
    unfold C
    simp [show (1769472 * k + 216430) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 108215) = 2654208 * k + 324646 := by
    unfold C
    simp [show (884736 * k + 108215) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 324646) = 1327104 * k + 162323 := by
    unfold C
    simp [show (2654208 * k + 324646) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 162323) = 3981312 * k + 486970 := by
    unfold C
    simp [show (1327104 * k + 162323) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 486970) = 1990656 * k + 243485 := by
    unfold C
    simp [show (3981312 * k + 486970) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 243485) = 5971968 * k + 730456 := by
    unfold C
    simp [show (1990656 * k + 243485) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 730456) = 2985984 * k + 365228 := by
    unfold C
    simp [show (5971968 * k + 730456) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 365228) = 1492992 * k + 182614 := by
    unfold C
    simp [show (2985984 * k + 365228) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 182614) = 746496 * k + 91307 := by
    unfold C
    simp [show (1492992 * k + 182614) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 91307) = 2239488 * k + 273922 := by
    unfold C
    simp [show (746496 * k + 91307) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 273922) = 1119744 * k + 136961 := by
    unfold C
    simp [show (2239488 * k + 273922) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 136961) = 3359232 * k + 410884 := by
    unfold C
    simp [show (1119744 * k + 136961) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 410884) = 1679616 * k + 205442 := by
    unfold C
    simp [show (3359232 * k + 410884) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 205442) = 839808 * k + 102721 := by
    unfold C
    simp [show (1679616 * k + 205442) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 102721) = 2519424 * k + 308164 := by
    unfold C
    simp [show (839808 * k + 102721) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 308164) = 1259712 * k + 154082 := by
    unfold C
    simp [show (2519424 * k + 308164) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 154082) = 629856 * k + 77041 := by
    unfold C
    simp [show (1259712 * k + 154082) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 77041) = 1889568 * k + 231124 := by
    unfold C
    simp [show (629856 * k + 77041) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 231124) = 944784 * k + 115562 := by
    unfold C
    simp [show (1889568 * k + 231124) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 115562) = 472392 * k + 57781 := by
    unfold C
    simp [show (944784 * k + 115562) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 57781) = 1417176 * k + 173344 := by
    unfold C
    simp [show (472392 * k + 57781) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 173344) = 708588 * k + 86672 := by
    unfold C
    simp [show (1417176 * k + 173344) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 86672) = 354294 * k + 43336 := by
    unfold C
    simp [show (708588 * k + 86672) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 43336) = 177147 * k + 21668 := by
    unfold C
    simp [show (354294 * k + 43336) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 32063) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 32063))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_32103 : ∀ k : Nat,
    iterate (262144 * k + 32103) 29 = 177147 * k + 21695 ∧
      177147 * k + 21695 < 262144 * k + 32103 := by
  intro k
  have h1 : C (262144 * k + 32103) = 786432 * k + 96310 := by
    unfold C
    simp [show (262144 * k + 32103) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 96310) = 393216 * k + 48155 := by
    unfold C
    simp [show (786432 * k + 96310) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 48155) = 1179648 * k + 144466 := by
    unfold C
    simp [show (393216 * k + 48155) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 144466) = 589824 * k + 72233 := by
    unfold C
    simp [show (1179648 * k + 144466) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 72233) = 1769472 * k + 216700 := by
    unfold C
    simp [show (589824 * k + 72233) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 216700) = 884736 * k + 108350 := by
    unfold C
    simp [show (1769472 * k + 216700) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 108350) = 442368 * k + 54175 := by
    unfold C
    simp [show (884736 * k + 108350) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 54175) = 1327104 * k + 162526 := by
    unfold C
    simp [show (442368 * k + 54175) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 162526) = 663552 * k + 81263 := by
    unfold C
    simp [show (1327104 * k + 162526) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 81263) = 1990656 * k + 243790 := by
    unfold C
    simp [show (663552 * k + 81263) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 243790) = 995328 * k + 121895 := by
    unfold C
    simp [show (1990656 * k + 243790) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 121895) = 2985984 * k + 365686 := by
    unfold C
    simp [show (995328 * k + 121895) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 365686) = 1492992 * k + 182843 := by
    unfold C
    simp [show (2985984 * k + 365686) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 182843) = 4478976 * k + 548530 := by
    unfold C
    simp [show (1492992 * k + 182843) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 548530) = 2239488 * k + 274265 := by
    unfold C
    simp [show (4478976 * k + 548530) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 274265) = 6718464 * k + 822796 := by
    unfold C
    simp [show (2239488 * k + 274265) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 822796) = 3359232 * k + 411398 := by
    unfold C
    simp [show (6718464 * k + 822796) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 411398) = 1679616 * k + 205699 := by
    unfold C
    simp [show (3359232 * k + 411398) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 205699) = 5038848 * k + 617098 := by
    unfold C
    simp [show (1679616 * k + 205699) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 617098) = 2519424 * k + 308549 := by
    unfold C
    simp [show (5038848 * k + 617098) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 308549) = 7558272 * k + 925648 := by
    unfold C
    simp [show (2519424 * k + 308549) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 925648) = 3779136 * k + 462824 := by
    unfold C
    simp [show (7558272 * k + 925648) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 462824) = 1889568 * k + 231412 := by
    unfold C
    simp [show (3779136 * k + 462824) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 231412) = 944784 * k + 115706 := by
    unfold C
    simp [show (1889568 * k + 231412) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 115706) = 472392 * k + 57853 := by
    unfold C
    simp [show (944784 * k + 115706) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 57853) = 1417176 * k + 173560 := by
    unfold C
    simp [show (472392 * k + 57853) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 173560) = 708588 * k + 86780 := by
    unfold C
    simp [show (1417176 * k + 173560) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 86780) = 354294 * k + 43390 := by
    unfold C
    simp [show (708588 * k + 86780) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 43390) = 177147 * k + 21695 := by
    unfold C
    simp [show (354294 * k + 43390) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 32103) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 32103))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_32671 : ∀ k : Nat,
    iterate (262144 * k + 32671) 29 = 177147 * k + 22079 ∧
      177147 * k + 22079 < 262144 * k + 32671 := by
  intro k
  have h1 : C (262144 * k + 32671) = 786432 * k + 98014 := by
    unfold C
    simp [show (262144 * k + 32671) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 98014) = 393216 * k + 49007 := by
    unfold C
    simp [show (786432 * k + 98014) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 49007) = 1179648 * k + 147022 := by
    unfold C
    simp [show (393216 * k + 49007) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 147022) = 589824 * k + 73511 := by
    unfold C
    simp [show (1179648 * k + 147022) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 73511) = 1769472 * k + 220534 := by
    unfold C
    simp [show (589824 * k + 73511) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 220534) = 884736 * k + 110267 := by
    unfold C
    simp [show (1769472 * k + 220534) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 110267) = 2654208 * k + 330802 := by
    unfold C
    simp [show (884736 * k + 110267) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 330802) = 1327104 * k + 165401 := by
    unfold C
    simp [show (2654208 * k + 330802) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 165401) = 3981312 * k + 496204 := by
    unfold C
    simp [show (1327104 * k + 165401) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 496204) = 1990656 * k + 248102 := by
    unfold C
    simp [show (3981312 * k + 496204) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 248102) = 995328 * k + 124051 := by
    unfold C
    simp [show (1990656 * k + 248102) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 124051) = 2985984 * k + 372154 := by
    unfold C
    simp [show (995328 * k + 124051) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 372154) = 1492992 * k + 186077 := by
    unfold C
    simp [show (2985984 * k + 372154) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 186077) = 4478976 * k + 558232 := by
    unfold C
    simp [show (1492992 * k + 186077) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 558232) = 2239488 * k + 279116 := by
    unfold C
    simp [show (4478976 * k + 558232) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 279116) = 1119744 * k + 139558 := by
    unfold C
    simp [show (2239488 * k + 279116) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 139558) = 559872 * k + 69779 := by
    unfold C
    simp [show (1119744 * k + 139558) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 69779) = 1679616 * k + 209338 := by
    unfold C
    simp [show (559872 * k + 69779) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 209338) = 839808 * k + 104669 := by
    unfold C
    simp [show (1679616 * k + 209338) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 104669) = 2519424 * k + 314008 := by
    unfold C
    simp [show (839808 * k + 104669) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 314008) = 1259712 * k + 157004 := by
    unfold C
    simp [show (2519424 * k + 314008) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 157004) = 629856 * k + 78502 := by
    unfold C
    simp [show (1259712 * k + 157004) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 78502) = 314928 * k + 39251 := by
    unfold C
    simp [show (629856 * k + 78502) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 39251) = 944784 * k + 117754 := by
    unfold C
    simp [show (314928 * k + 39251) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 117754) = 472392 * k + 58877 := by
    unfold C
    simp [show (944784 * k + 117754) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 58877) = 1417176 * k + 176632 := by
    unfold C
    simp [show (472392 * k + 58877) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 176632) = 708588 * k + 88316 := by
    unfold C
    simp [show (1417176 * k + 176632) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 88316) = 354294 * k + 44158 := by
    unfold C
    simp [show (708588 * k + 88316) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 44158) = 177147 * k + 22079 := by
    unfold C
    simp [show (354294 * k + 44158) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 32671) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 32671))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_33695 : ∀ k : Nat,
    iterate (262144 * k + 33695) 29 = 177147 * k + 22771 ∧
      177147 * k + 22771 < 262144 * k + 33695 := by
  intro k
  have h1 : C (262144 * k + 33695) = 786432 * k + 101086 := by
    unfold C
    simp [show (262144 * k + 33695) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 101086) = 393216 * k + 50543 := by
    unfold C
    simp [show (786432 * k + 101086) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 50543) = 1179648 * k + 151630 := by
    unfold C
    simp [show (393216 * k + 50543) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 151630) = 589824 * k + 75815 := by
    unfold C
    simp [show (1179648 * k + 151630) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 75815) = 1769472 * k + 227446 := by
    unfold C
    simp [show (589824 * k + 75815) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 227446) = 884736 * k + 113723 := by
    unfold C
    simp [show (1769472 * k + 227446) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 113723) = 2654208 * k + 341170 := by
    unfold C
    simp [show (884736 * k + 113723) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 341170) = 1327104 * k + 170585 := by
    unfold C
    simp [show (2654208 * k + 341170) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 170585) = 3981312 * k + 511756 := by
    unfold C
    simp [show (1327104 * k + 170585) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 511756) = 1990656 * k + 255878 := by
    unfold C
    simp [show (3981312 * k + 511756) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 255878) = 995328 * k + 127939 := by
    unfold C
    simp [show (1990656 * k + 255878) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 127939) = 2985984 * k + 383818 := by
    unfold C
    simp [show (995328 * k + 127939) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 383818) = 1492992 * k + 191909 := by
    unfold C
    simp [show (2985984 * k + 383818) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 191909) = 4478976 * k + 575728 := by
    unfold C
    simp [show (1492992 * k + 191909) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 575728) = 2239488 * k + 287864 := by
    unfold C
    simp [show (4478976 * k + 575728) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 287864) = 1119744 * k + 143932 := by
    unfold C
    simp [show (2239488 * k + 287864) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 143932) = 559872 * k + 71966 := by
    unfold C
    simp [show (1119744 * k + 143932) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 71966) = 279936 * k + 35983 := by
    unfold C
    simp [show (559872 * k + 71966) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 35983) = 839808 * k + 107950 := by
    unfold C
    simp [show (279936 * k + 35983) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 107950) = 419904 * k + 53975 := by
    unfold C
    simp [show (839808 * k + 107950) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 53975) = 1259712 * k + 161926 := by
    unfold C
    simp [show (419904 * k + 53975) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 161926) = 629856 * k + 80963 := by
    unfold C
    simp [show (1259712 * k + 161926) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 80963) = 1889568 * k + 242890 := by
    unfold C
    simp [show (629856 * k + 80963) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 242890) = 944784 * k + 121445 := by
    unfold C
    simp [show (1889568 * k + 242890) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 121445) = 2834352 * k + 364336 := by
    unfold C
    simp [show (944784 * k + 121445) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 364336) = 1417176 * k + 182168 := by
    unfold C
    simp [show (2834352 * k + 364336) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 182168) = 708588 * k + 91084 := by
    unfold C
    simp [show (1417176 * k + 182168) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 91084) = 354294 * k + 45542 := by
    unfold C
    simp [show (708588 * k + 91084) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 45542) = 177147 * k + 22771 := by
    unfold C
    simp [show (354294 * k + 45542) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 33695) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 33695))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_33775 : ∀ k : Nat,
    iterate (262144 * k + 33775) 29 = 177147 * k + 22825 ∧
      177147 * k + 22825 < 262144 * k + 33775 := by
  intro k
  have h1 : C (262144 * k + 33775) = 786432 * k + 101326 := by
    unfold C
    simp [show (262144 * k + 33775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 101326) = 393216 * k + 50663 := by
    unfold C
    simp [show (786432 * k + 101326) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 50663) = 1179648 * k + 151990 := by
    unfold C
    simp [show (393216 * k + 50663) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 151990) = 589824 * k + 75995 := by
    unfold C
    simp [show (1179648 * k + 151990) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 75995) = 1769472 * k + 227986 := by
    unfold C
    simp [show (589824 * k + 75995) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 227986) = 884736 * k + 113993 := by
    unfold C
    simp [show (1769472 * k + 227986) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 113993) = 2654208 * k + 341980 := by
    unfold C
    simp [show (884736 * k + 113993) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 341980) = 1327104 * k + 170990 := by
    unfold C
    simp [show (2654208 * k + 341980) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 170990) = 663552 * k + 85495 := by
    unfold C
    simp [show (1327104 * k + 170990) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 85495) = 1990656 * k + 256486 := by
    unfold C
    simp [show (663552 * k + 85495) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 256486) = 995328 * k + 128243 := by
    unfold C
    simp [show (1990656 * k + 256486) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 128243) = 2985984 * k + 384730 := by
    unfold C
    simp [show (995328 * k + 128243) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 384730) = 1492992 * k + 192365 := by
    unfold C
    simp [show (2985984 * k + 384730) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 192365) = 4478976 * k + 577096 := by
    unfold C
    simp [show (1492992 * k + 192365) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 577096) = 2239488 * k + 288548 := by
    unfold C
    simp [show (4478976 * k + 577096) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 288548) = 1119744 * k + 144274 := by
    unfold C
    simp [show (2239488 * k + 288548) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 144274) = 559872 * k + 72137 := by
    unfold C
    simp [show (1119744 * k + 144274) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 72137) = 1679616 * k + 216412 := by
    unfold C
    simp [show (559872 * k + 72137) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 216412) = 839808 * k + 108206 := by
    unfold C
    simp [show (1679616 * k + 216412) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 108206) = 419904 * k + 54103 := by
    unfold C
    simp [show (839808 * k + 108206) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 54103) = 1259712 * k + 162310 := by
    unfold C
    simp [show (419904 * k + 54103) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 162310) = 629856 * k + 81155 := by
    unfold C
    simp [show (1259712 * k + 162310) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 81155) = 1889568 * k + 243466 := by
    unfold C
    simp [show (629856 * k + 81155) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 243466) = 944784 * k + 121733 := by
    unfold C
    simp [show (1889568 * k + 243466) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 121733) = 2834352 * k + 365200 := by
    unfold C
    simp [show (944784 * k + 121733) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 365200) = 1417176 * k + 182600 := by
    unfold C
    simp [show (2834352 * k + 365200) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 182600) = 708588 * k + 91300 := by
    unfold C
    simp [show (1417176 * k + 182600) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 91300) = 354294 * k + 45650 := by
    unfold C
    simp [show (708588 * k + 91300) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 45650) = 177147 * k + 22825 := by
    unfold C
    simp [show (354294 * k + 45650) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 33775) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 33775))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_33895 : ∀ k : Nat,
    iterate (262144 * k + 33895) 29 = 177147 * k + 22906 ∧
      177147 * k + 22906 < 262144 * k + 33895 := by
  intro k
  have h1 : C (262144 * k + 33895) = 786432 * k + 101686 := by
    unfold C
    simp [show (262144 * k + 33895) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 101686) = 393216 * k + 50843 := by
    unfold C
    simp [show (786432 * k + 101686) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 50843) = 1179648 * k + 152530 := by
    unfold C
    simp [show (393216 * k + 50843) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 152530) = 589824 * k + 76265 := by
    unfold C
    simp [show (1179648 * k + 152530) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 76265) = 1769472 * k + 228796 := by
    unfold C
    simp [show (589824 * k + 76265) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 228796) = 884736 * k + 114398 := by
    unfold C
    simp [show (1769472 * k + 228796) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 114398) = 442368 * k + 57199 := by
    unfold C
    simp [show (884736 * k + 114398) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 57199) = 1327104 * k + 171598 := by
    unfold C
    simp [show (442368 * k + 57199) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 171598) = 663552 * k + 85799 := by
    unfold C
    simp [show (1327104 * k + 171598) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 85799) = 1990656 * k + 257398 := by
    unfold C
    simp [show (663552 * k + 85799) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 257398) = 995328 * k + 128699 := by
    unfold C
    simp [show (1990656 * k + 257398) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 128699) = 2985984 * k + 386098 := by
    unfold C
    simp [show (995328 * k + 128699) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 386098) = 1492992 * k + 193049 := by
    unfold C
    simp [show (2985984 * k + 386098) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 193049) = 4478976 * k + 579148 := by
    unfold C
    simp [show (1492992 * k + 193049) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 579148) = 2239488 * k + 289574 := by
    unfold C
    simp [show (4478976 * k + 579148) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 289574) = 1119744 * k + 144787 := by
    unfold C
    simp [show (2239488 * k + 289574) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 144787) = 3359232 * k + 434362 := by
    unfold C
    simp [show (1119744 * k + 144787) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 434362) = 1679616 * k + 217181 := by
    unfold C
    simp [show (3359232 * k + 434362) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 217181) = 5038848 * k + 651544 := by
    unfold C
    simp [show (1679616 * k + 217181) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 651544) = 2519424 * k + 325772 := by
    unfold C
    simp [show (5038848 * k + 651544) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 325772) = 1259712 * k + 162886 := by
    unfold C
    simp [show (2519424 * k + 325772) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 162886) = 629856 * k + 81443 := by
    unfold C
    simp [show (1259712 * k + 162886) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 81443) = 1889568 * k + 244330 := by
    unfold C
    simp [show (629856 * k + 81443) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 244330) = 944784 * k + 122165 := by
    unfold C
    simp [show (1889568 * k + 244330) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 122165) = 2834352 * k + 366496 := by
    unfold C
    simp [show (944784 * k + 122165) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 366496) = 1417176 * k + 183248 := by
    unfold C
    simp [show (2834352 * k + 366496) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 183248) = 708588 * k + 91624 := by
    unfold C
    simp [show (1417176 * k + 183248) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 91624) = 354294 * k + 45812 := by
    unfold C
    simp [show (708588 * k + 91624) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 45812) = 177147 * k + 22906 := by
    unfold C
    simp [show (354294 * k + 45812) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 33895) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 33895))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_34287 : ∀ k : Nat,
    iterate (262144 * k + 34287) 29 = 177147 * k + 23171 ∧
      177147 * k + 23171 < 262144 * k + 34287 := by
  intro k
  have h1 : C (262144 * k + 34287) = 786432 * k + 102862 := by
    unfold C
    simp [show (262144 * k + 34287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 102862) = 393216 * k + 51431 := by
    unfold C
    simp [show (786432 * k + 102862) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 51431) = 1179648 * k + 154294 := by
    unfold C
    simp [show (393216 * k + 51431) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 154294) = 589824 * k + 77147 := by
    unfold C
    simp [show (1179648 * k + 154294) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 77147) = 1769472 * k + 231442 := by
    unfold C
    simp [show (589824 * k + 77147) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 231442) = 884736 * k + 115721 := by
    unfold C
    simp [show (1769472 * k + 231442) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 115721) = 2654208 * k + 347164 := by
    unfold C
    simp [show (884736 * k + 115721) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 347164) = 1327104 * k + 173582 := by
    unfold C
    simp [show (2654208 * k + 347164) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 173582) = 663552 * k + 86791 := by
    unfold C
    simp [show (1327104 * k + 173582) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 86791) = 1990656 * k + 260374 := by
    unfold C
    simp [show (663552 * k + 86791) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 260374) = 995328 * k + 130187 := by
    unfold C
    simp [show (1990656 * k + 260374) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 130187) = 2985984 * k + 390562 := by
    unfold C
    simp [show (995328 * k + 130187) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 390562) = 1492992 * k + 195281 := by
    unfold C
    simp [show (2985984 * k + 390562) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 195281) = 4478976 * k + 585844 := by
    unfold C
    simp [show (1492992 * k + 195281) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 585844) = 2239488 * k + 292922 := by
    unfold C
    simp [show (4478976 * k + 585844) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 292922) = 1119744 * k + 146461 := by
    unfold C
    simp [show (2239488 * k + 292922) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 146461) = 3359232 * k + 439384 := by
    unfold C
    simp [show (1119744 * k + 146461) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 439384) = 1679616 * k + 219692 := by
    unfold C
    simp [show (3359232 * k + 439384) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 219692) = 839808 * k + 109846 := by
    unfold C
    simp [show (1679616 * k + 219692) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 109846) = 419904 * k + 54923 := by
    unfold C
    simp [show (839808 * k + 109846) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 54923) = 1259712 * k + 164770 := by
    unfold C
    simp [show (419904 * k + 54923) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 164770) = 629856 * k + 82385 := by
    unfold C
    simp [show (1259712 * k + 164770) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 82385) = 1889568 * k + 247156 := by
    unfold C
    simp [show (629856 * k + 82385) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 247156) = 944784 * k + 123578 := by
    unfold C
    simp [show (1889568 * k + 247156) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 123578) = 472392 * k + 61789 := by
    unfold C
    simp [show (944784 * k + 123578) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 61789) = 1417176 * k + 185368 := by
    unfold C
    simp [show (472392 * k + 61789) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 185368) = 708588 * k + 92684 := by
    unfold C
    simp [show (1417176 * k + 185368) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 92684) = 354294 * k + 46342 := by
    unfold C
    simp [show (708588 * k + 92684) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 46342) = 177147 * k + 23171 := by
    unfold C
    simp [show (354294 * k + 46342) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 34287) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 34287))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_34407 : ∀ k : Nat,
    iterate (262144 * k + 34407) 29 = 177147 * k + 23252 ∧
      177147 * k + 23252 < 262144 * k + 34407 := by
  intro k
  have h1 : C (262144 * k + 34407) = 786432 * k + 103222 := by
    unfold C
    simp [show (262144 * k + 34407) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 103222) = 393216 * k + 51611 := by
    unfold C
    simp [show (786432 * k + 103222) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 51611) = 1179648 * k + 154834 := by
    unfold C
    simp [show (393216 * k + 51611) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 154834) = 589824 * k + 77417 := by
    unfold C
    simp [show (1179648 * k + 154834) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 77417) = 1769472 * k + 232252 := by
    unfold C
    simp [show (589824 * k + 77417) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 232252) = 884736 * k + 116126 := by
    unfold C
    simp [show (1769472 * k + 232252) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 116126) = 442368 * k + 58063 := by
    unfold C
    simp [show (884736 * k + 116126) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 58063) = 1327104 * k + 174190 := by
    unfold C
    simp [show (442368 * k + 58063) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 174190) = 663552 * k + 87095 := by
    unfold C
    simp [show (1327104 * k + 174190) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 87095) = 1990656 * k + 261286 := by
    unfold C
    simp [show (663552 * k + 87095) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 261286) = 995328 * k + 130643 := by
    unfold C
    simp [show (1990656 * k + 261286) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 130643) = 2985984 * k + 391930 := by
    unfold C
    simp [show (995328 * k + 130643) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 391930) = 1492992 * k + 195965 := by
    unfold C
    simp [show (2985984 * k + 391930) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 195965) = 4478976 * k + 587896 := by
    unfold C
    simp [show (1492992 * k + 195965) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 587896) = 2239488 * k + 293948 := by
    unfold C
    simp [show (4478976 * k + 587896) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 293948) = 1119744 * k + 146974 := by
    unfold C
    simp [show (2239488 * k + 293948) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 146974) = 559872 * k + 73487 := by
    unfold C
    simp [show (1119744 * k + 146974) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 73487) = 1679616 * k + 220462 := by
    unfold C
    simp [show (559872 * k + 73487) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 220462) = 839808 * k + 110231 := by
    unfold C
    simp [show (1679616 * k + 220462) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 110231) = 2519424 * k + 330694 := by
    unfold C
    simp [show (839808 * k + 110231) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 330694) = 1259712 * k + 165347 := by
    unfold C
    simp [show (2519424 * k + 330694) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 165347) = 3779136 * k + 496042 := by
    unfold C
    simp [show (1259712 * k + 165347) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 496042) = 1889568 * k + 248021 := by
    unfold C
    simp [show (3779136 * k + 496042) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 248021) = 5668704 * k + 744064 := by
    unfold C
    simp [show (1889568 * k + 248021) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 744064) = 2834352 * k + 372032 := by
    unfold C
    simp [show (5668704 * k + 744064) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 372032) = 1417176 * k + 186016 := by
    unfold C
    simp [show (2834352 * k + 372032) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 186016) = 708588 * k + 93008 := by
    unfold C
    simp [show (1417176 * k + 186016) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 93008) = 354294 * k + 46504 := by
    unfold C
    simp [show (708588 * k + 93008) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 46504) = 177147 * k + 23252 := by
    unfold C
    simp [show (354294 * k + 46504) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 34407) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 34407))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_34687 : ∀ k : Nat,
    iterate (262144 * k + 34687) 29 = 177147 * k + 23441 ∧
      177147 * k + 23441 < 262144 * k + 34687 := by
  intro k
  have h1 : C (262144 * k + 34687) = 786432 * k + 104062 := by
    unfold C
    simp [show (262144 * k + 34687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 104062) = 393216 * k + 52031 := by
    unfold C
    simp [show (786432 * k + 104062) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 52031) = 1179648 * k + 156094 := by
    unfold C
    simp [show (393216 * k + 52031) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 156094) = 589824 * k + 78047 := by
    unfold C
    simp [show (1179648 * k + 156094) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 78047) = 1769472 * k + 234142 := by
    unfold C
    simp [show (589824 * k + 78047) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 234142) = 884736 * k + 117071 := by
    unfold C
    simp [show (1769472 * k + 234142) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 117071) = 2654208 * k + 351214 := by
    unfold C
    simp [show (884736 * k + 117071) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 351214) = 1327104 * k + 175607 := by
    unfold C
    simp [show (2654208 * k + 351214) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 175607) = 3981312 * k + 526822 := by
    unfold C
    simp [show (1327104 * k + 175607) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 526822) = 1990656 * k + 263411 := by
    unfold C
    simp [show (3981312 * k + 526822) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 263411) = 5971968 * k + 790234 := by
    unfold C
    simp [show (1990656 * k + 263411) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 790234) = 2985984 * k + 395117 := by
    unfold C
    simp [show (5971968 * k + 790234) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 395117) = 8957952 * k + 1185352 := by
    unfold C
    simp [show (2985984 * k + 395117) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 1185352) = 4478976 * k + 592676 := by
    unfold C
    simp [show (8957952 * k + 1185352) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 592676) = 2239488 * k + 296338 := by
    unfold C
    simp [show (4478976 * k + 592676) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 296338) = 1119744 * k + 148169 := by
    unfold C
    simp [show (2239488 * k + 296338) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 148169) = 3359232 * k + 444508 := by
    unfold C
    simp [show (1119744 * k + 148169) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 444508) = 1679616 * k + 222254 := by
    unfold C
    simp [show (3359232 * k + 444508) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 222254) = 839808 * k + 111127 := by
    unfold C
    simp [show (1679616 * k + 222254) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 111127) = 2519424 * k + 333382 := by
    unfold C
    simp [show (839808 * k + 111127) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 333382) = 1259712 * k + 166691 := by
    unfold C
    simp [show (2519424 * k + 333382) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 166691) = 3779136 * k + 500074 := by
    unfold C
    simp [show (1259712 * k + 166691) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 500074) = 1889568 * k + 250037 := by
    unfold C
    simp [show (3779136 * k + 500074) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 250037) = 5668704 * k + 750112 := by
    unfold C
    simp [show (1889568 * k + 250037) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 750112) = 2834352 * k + 375056 := by
    unfold C
    simp [show (5668704 * k + 750112) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 375056) = 1417176 * k + 187528 := by
    unfold C
    simp [show (2834352 * k + 375056) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 187528) = 708588 * k + 93764 := by
    unfold C
    simp [show (1417176 * k + 187528) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 93764) = 354294 * k + 46882 := by
    unfold C
    simp [show (708588 * k + 93764) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 46882) = 177147 * k + 23441 := by
    unfold C
    simp [show (354294 * k + 46882) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 34687) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 34687))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_34907 : ∀ k : Nat,
    iterate (262144 * k + 34907) 29 = 177147 * k + 23590 ∧
      177147 * k + 23590 < 262144 * k + 34907 := by
  intro k
  have h1 : C (262144 * k + 34907) = 786432 * k + 104722 := by
    unfold C
    simp [show (262144 * k + 34907) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 104722) = 393216 * k + 52361 := by
    unfold C
    simp [show (786432 * k + 104722) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 52361) = 1179648 * k + 157084 := by
    unfold C
    simp [show (393216 * k + 52361) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 157084) = 589824 * k + 78542 := by
    unfold C
    simp [show (1179648 * k + 157084) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 78542) = 294912 * k + 39271 := by
    unfold C
    simp [show (589824 * k + 78542) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 39271) = 884736 * k + 117814 := by
    unfold C
    simp [show (294912 * k + 39271) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 117814) = 442368 * k + 58907 := by
    unfold C
    simp [show (884736 * k + 117814) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 58907) = 1327104 * k + 176722 := by
    unfold C
    simp [show (442368 * k + 58907) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 176722) = 663552 * k + 88361 := by
    unfold C
    simp [show (1327104 * k + 176722) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 88361) = 1990656 * k + 265084 := by
    unfold C
    simp [show (663552 * k + 88361) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 265084) = 995328 * k + 132542 := by
    unfold C
    simp [show (1990656 * k + 265084) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 132542) = 497664 * k + 66271 := by
    unfold C
    simp [show (995328 * k + 132542) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 66271) = 1492992 * k + 198814 := by
    unfold C
    simp [show (497664 * k + 66271) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 198814) = 746496 * k + 99407 := by
    unfold C
    simp [show (1492992 * k + 198814) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 99407) = 2239488 * k + 298222 := by
    unfold C
    simp [show (746496 * k + 99407) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 298222) = 1119744 * k + 149111 := by
    unfold C
    simp [show (2239488 * k + 298222) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 149111) = 3359232 * k + 447334 := by
    unfold C
    simp [show (1119744 * k + 149111) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 447334) = 1679616 * k + 223667 := by
    unfold C
    simp [show (3359232 * k + 447334) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 223667) = 5038848 * k + 671002 := by
    unfold C
    simp [show (1679616 * k + 223667) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 671002) = 2519424 * k + 335501 := by
    unfold C
    simp [show (5038848 * k + 671002) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 335501) = 7558272 * k + 1006504 := by
    unfold C
    simp [show (2519424 * k + 335501) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 1006504) = 3779136 * k + 503252 := by
    unfold C
    simp [show (7558272 * k + 1006504) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 503252) = 1889568 * k + 251626 := by
    unfold C
    simp [show (3779136 * k + 503252) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 251626) = 944784 * k + 125813 := by
    unfold C
    simp [show (1889568 * k + 251626) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 125813) = 2834352 * k + 377440 := by
    unfold C
    simp [show (944784 * k + 125813) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 377440) = 1417176 * k + 188720 := by
    unfold C
    simp [show (2834352 * k + 377440) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 188720) = 708588 * k + 94360 := by
    unfold C
    simp [show (1417176 * k + 188720) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 94360) = 354294 * k + 47180 := by
    unfold C
    simp [show (708588 * k + 94360) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 47180) = 177147 * k + 23590 := by
    unfold C
    simp [show (354294 * k + 47180) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 34907) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 34907))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_34943 : ∀ k : Nat,
    iterate (262144 * k + 34943) 29 = 177147 * k + 23614 ∧
      177147 * k + 23614 < 262144 * k + 34943 := by
  intro k
  have h1 : C (262144 * k + 34943) = 786432 * k + 104830 := by
    unfold C
    simp [show (262144 * k + 34943) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 104830) = 393216 * k + 52415 := by
    unfold C
    simp [show (786432 * k + 104830) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 52415) = 1179648 * k + 157246 := by
    unfold C
    simp [show (393216 * k + 52415) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 157246) = 589824 * k + 78623 := by
    unfold C
    simp [show (1179648 * k + 157246) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 78623) = 1769472 * k + 235870 := by
    unfold C
    simp [show (589824 * k + 78623) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 235870) = 884736 * k + 117935 := by
    unfold C
    simp [show (1769472 * k + 235870) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 117935) = 2654208 * k + 353806 := by
    unfold C
    simp [show (884736 * k + 117935) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 353806) = 1327104 * k + 176903 := by
    unfold C
    simp [show (2654208 * k + 353806) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 176903) = 3981312 * k + 530710 := by
    unfold C
    simp [show (1327104 * k + 176903) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 530710) = 1990656 * k + 265355 := by
    unfold C
    simp [show (3981312 * k + 530710) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 265355) = 5971968 * k + 796066 := by
    unfold C
    simp [show (1990656 * k + 265355) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 796066) = 2985984 * k + 398033 := by
    unfold C
    simp [show (5971968 * k + 796066) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 398033) = 8957952 * k + 1194100 := by
    unfold C
    simp [show (2985984 * k + 398033) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 1194100) = 4478976 * k + 597050 := by
    unfold C
    simp [show (8957952 * k + 1194100) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 597050) = 2239488 * k + 298525 := by
    unfold C
    simp [show (4478976 * k + 597050) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 298525) = 6718464 * k + 895576 := by
    unfold C
    simp [show (2239488 * k + 298525) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 895576) = 3359232 * k + 447788 := by
    unfold C
    simp [show (6718464 * k + 895576) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 447788) = 1679616 * k + 223894 := by
    unfold C
    simp [show (3359232 * k + 447788) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 223894) = 839808 * k + 111947 := by
    unfold C
    simp [show (1679616 * k + 223894) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 111947) = 2519424 * k + 335842 := by
    unfold C
    simp [show (839808 * k + 111947) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 335842) = 1259712 * k + 167921 := by
    unfold C
    simp [show (2519424 * k + 335842) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 167921) = 3779136 * k + 503764 := by
    unfold C
    simp [show (1259712 * k + 167921) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 503764) = 1889568 * k + 251882 := by
    unfold C
    simp [show (3779136 * k + 503764) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 251882) = 944784 * k + 125941 := by
    unfold C
    simp [show (1889568 * k + 251882) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 125941) = 2834352 * k + 377824 := by
    unfold C
    simp [show (944784 * k + 125941) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 377824) = 1417176 * k + 188912 := by
    unfold C
    simp [show (2834352 * k + 377824) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 188912) = 708588 * k + 94456 := by
    unfold C
    simp [show (1417176 * k + 188912) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 94456) = 354294 * k + 47228 := by
    unfold C
    simp [show (708588 * k + 94456) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 47228) = 177147 * k + 23614 := by
    unfold C
    simp [show (354294 * k + 47228) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 34943) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 34943))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_35135 : ∀ k : Nat,
    iterate (262144 * k + 35135) 29 = 177147 * k + 23744 ∧
      177147 * k + 23744 < 262144 * k + 35135 := by
  intro k
  have h1 : C (262144 * k + 35135) = 786432 * k + 105406 := by
    unfold C
    simp [show (262144 * k + 35135) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 105406) = 393216 * k + 52703 := by
    unfold C
    simp [show (786432 * k + 105406) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 52703) = 1179648 * k + 158110 := by
    unfold C
    simp [show (393216 * k + 52703) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 158110) = 589824 * k + 79055 := by
    unfold C
    simp [show (1179648 * k + 158110) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 79055) = 1769472 * k + 237166 := by
    unfold C
    simp [show (589824 * k + 79055) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 237166) = 884736 * k + 118583 := by
    unfold C
    simp [show (1769472 * k + 237166) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 118583) = 2654208 * k + 355750 := by
    unfold C
    simp [show (884736 * k + 118583) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 355750) = 1327104 * k + 177875 := by
    unfold C
    simp [show (2654208 * k + 355750) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 177875) = 3981312 * k + 533626 := by
    unfold C
    simp [show (1327104 * k + 177875) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 533626) = 1990656 * k + 266813 := by
    unfold C
    simp [show (3981312 * k + 533626) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 266813) = 5971968 * k + 800440 := by
    unfold C
    simp [show (1990656 * k + 266813) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 800440) = 2985984 * k + 400220 := by
    unfold C
    simp [show (5971968 * k + 800440) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 400220) = 1492992 * k + 200110 := by
    unfold C
    simp [show (2985984 * k + 400220) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 200110) = 746496 * k + 100055 := by
    unfold C
    simp [show (1492992 * k + 200110) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 100055) = 2239488 * k + 300166 := by
    unfold C
    simp [show (746496 * k + 100055) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 300166) = 1119744 * k + 150083 := by
    unfold C
    simp [show (2239488 * k + 300166) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 150083) = 3359232 * k + 450250 := by
    unfold C
    simp [show (1119744 * k + 150083) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 450250) = 1679616 * k + 225125 := by
    unfold C
    simp [show (3359232 * k + 450250) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 225125) = 5038848 * k + 675376 := by
    unfold C
    simp [show (1679616 * k + 225125) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 675376) = 2519424 * k + 337688 := by
    unfold C
    simp [show (5038848 * k + 675376) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 337688) = 1259712 * k + 168844 := by
    unfold C
    simp [show (2519424 * k + 337688) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 168844) = 629856 * k + 84422 := by
    unfold C
    simp [show (1259712 * k + 168844) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 84422) = 314928 * k + 42211 := by
    unfold C
    simp [show (629856 * k + 84422) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 42211) = 944784 * k + 126634 := by
    unfold C
    simp [show (314928 * k + 42211) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 126634) = 472392 * k + 63317 := by
    unfold C
    simp [show (944784 * k + 126634) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 63317) = 1417176 * k + 189952 := by
    unfold C
    simp [show (472392 * k + 63317) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 189952) = 708588 * k + 94976 := by
    unfold C
    simp [show (1417176 * k + 189952) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 94976) = 354294 * k + 47488 := by
    unfold C
    simp [show (708588 * k + 94976) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 47488) = 177147 * k + 23744 := by
    unfold C
    simp [show (354294 * k + 47488) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 35135) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 35135))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_35175 : ∀ k : Nat,
    iterate (262144 * k + 35175) 29 = 177147 * k + 23771 ∧
      177147 * k + 23771 < 262144 * k + 35175 := by
  intro k
  have h1 : C (262144 * k + 35175) = 786432 * k + 105526 := by
    unfold C
    simp [show (262144 * k + 35175) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 105526) = 393216 * k + 52763 := by
    unfold C
    simp [show (786432 * k + 105526) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 52763) = 1179648 * k + 158290 := by
    unfold C
    simp [show (393216 * k + 52763) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 158290) = 589824 * k + 79145 := by
    unfold C
    simp [show (1179648 * k + 158290) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 79145) = 1769472 * k + 237436 := by
    unfold C
    simp [show (589824 * k + 79145) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 237436) = 884736 * k + 118718 := by
    unfold C
    simp [show (1769472 * k + 237436) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 118718) = 442368 * k + 59359 := by
    unfold C
    simp [show (884736 * k + 118718) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 59359) = 1327104 * k + 178078 := by
    unfold C
    simp [show (442368 * k + 59359) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 178078) = 663552 * k + 89039 := by
    unfold C
    simp [show (1327104 * k + 178078) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 89039) = 1990656 * k + 267118 := by
    unfold C
    simp [show (663552 * k + 89039) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 267118) = 995328 * k + 133559 := by
    unfold C
    simp [show (1990656 * k + 267118) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 133559) = 2985984 * k + 400678 := by
    unfold C
    simp [show (995328 * k + 133559) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 400678) = 1492992 * k + 200339 := by
    unfold C
    simp [show (2985984 * k + 400678) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 200339) = 4478976 * k + 601018 := by
    unfold C
    simp [show (1492992 * k + 200339) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 601018) = 2239488 * k + 300509 := by
    unfold C
    simp [show (4478976 * k + 601018) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 300509) = 6718464 * k + 901528 := by
    unfold C
    simp [show (2239488 * k + 300509) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 901528) = 3359232 * k + 450764 := by
    unfold C
    simp [show (6718464 * k + 901528) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 450764) = 1679616 * k + 225382 := by
    unfold C
    simp [show (3359232 * k + 450764) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 225382) = 839808 * k + 112691 := by
    unfold C
    simp [show (1679616 * k + 225382) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 112691) = 2519424 * k + 338074 := by
    unfold C
    simp [show (839808 * k + 112691) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 338074) = 1259712 * k + 169037 := by
    unfold C
    simp [show (2519424 * k + 338074) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 169037) = 3779136 * k + 507112 := by
    unfold C
    simp [show (1259712 * k + 169037) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 507112) = 1889568 * k + 253556 := by
    unfold C
    simp [show (3779136 * k + 507112) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 253556) = 944784 * k + 126778 := by
    unfold C
    simp [show (1889568 * k + 253556) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 126778) = 472392 * k + 63389 := by
    unfold C
    simp [show (944784 * k + 126778) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 63389) = 1417176 * k + 190168 := by
    unfold C
    simp [show (472392 * k + 63389) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 190168) = 708588 * k + 95084 := by
    unfold C
    simp [show (1417176 * k + 190168) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 95084) = 354294 * k + 47542 := by
    unfold C
    simp [show (708588 * k + 95084) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 47542) = 177147 * k + 23771 := by
    unfold C
    simp [show (354294 * k + 47542) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 35175) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 35175))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_35455 : ∀ k : Nat,
    iterate (262144 * k + 35455) 29 = 177147 * k + 23960 ∧
      177147 * k + 23960 < 262144 * k + 35455 := by
  intro k
  have h1 : C (262144 * k + 35455) = 786432 * k + 106366 := by
    unfold C
    simp [show (262144 * k + 35455) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 106366) = 393216 * k + 53183 := by
    unfold C
    simp [show (786432 * k + 106366) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 53183) = 1179648 * k + 159550 := by
    unfold C
    simp [show (393216 * k + 53183) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 159550) = 589824 * k + 79775 := by
    unfold C
    simp [show (1179648 * k + 159550) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 79775) = 1769472 * k + 239326 := by
    unfold C
    simp [show (589824 * k + 79775) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 239326) = 884736 * k + 119663 := by
    unfold C
    simp [show (1769472 * k + 239326) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 119663) = 2654208 * k + 358990 := by
    unfold C
    simp [show (884736 * k + 119663) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 358990) = 1327104 * k + 179495 := by
    unfold C
    simp [show (2654208 * k + 358990) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 179495) = 3981312 * k + 538486 := by
    unfold C
    simp [show (1327104 * k + 179495) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 538486) = 1990656 * k + 269243 := by
    unfold C
    simp [show (3981312 * k + 538486) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 269243) = 5971968 * k + 807730 := by
    unfold C
    simp [show (1990656 * k + 269243) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 807730) = 2985984 * k + 403865 := by
    unfold C
    simp [show (5971968 * k + 807730) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 403865) = 8957952 * k + 1211596 := by
    unfold C
    simp [show (2985984 * k + 403865) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 1211596) = 4478976 * k + 605798 := by
    unfold C
    simp [show (8957952 * k + 1211596) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 605798) = 2239488 * k + 302899 := by
    unfold C
    simp [show (4478976 * k + 605798) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 302899) = 6718464 * k + 908698 := by
    unfold C
    simp [show (2239488 * k + 302899) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 908698) = 3359232 * k + 454349 := by
    unfold C
    simp [show (6718464 * k + 908698) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 454349) = 10077696 * k + 1363048 := by
    unfold C
    simp [show (3359232 * k + 454349) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 1363048) = 5038848 * k + 681524 := by
    unfold C
    simp [show (10077696 * k + 1363048) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 681524) = 2519424 * k + 340762 := by
    unfold C
    simp [show (5038848 * k + 681524) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 340762) = 1259712 * k + 170381 := by
    unfold C
    simp [show (2519424 * k + 340762) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 170381) = 3779136 * k + 511144 := by
    unfold C
    simp [show (1259712 * k + 170381) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 511144) = 1889568 * k + 255572 := by
    unfold C
    simp [show (3779136 * k + 511144) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 255572) = 944784 * k + 127786 := by
    unfold C
    simp [show (1889568 * k + 255572) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 127786) = 472392 * k + 63893 := by
    unfold C
    simp [show (944784 * k + 127786) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 63893) = 1417176 * k + 191680 := by
    unfold C
    simp [show (472392 * k + 63893) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 191680) = 708588 * k + 95840 := by
    unfold C
    simp [show (1417176 * k + 191680) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 95840) = 354294 * k + 47920 := by
    unfold C
    simp [show (708588 * k + 95840) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 47920) = 177147 * k + 23960 := by
    unfold C
    simp [show (354294 * k + 47920) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 35455) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 35455))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_37403 : ∀ k : Nat,
    iterate (262144 * k + 37403) 29 = 177147 * k + 25277 ∧
      177147 * k + 25277 < 262144 * k + 37403 := by
  intro k
  have h1 : C (262144 * k + 37403) = 786432 * k + 112210 := by
    unfold C
    simp [show (262144 * k + 37403) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 112210) = 393216 * k + 56105 := by
    unfold C
    simp [show (786432 * k + 112210) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 56105) = 1179648 * k + 168316 := by
    unfold C
    simp [show (393216 * k + 56105) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 168316) = 589824 * k + 84158 := by
    unfold C
    simp [show (1179648 * k + 168316) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 84158) = 294912 * k + 42079 := by
    unfold C
    simp [show (589824 * k + 84158) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 42079) = 884736 * k + 126238 := by
    unfold C
    simp [show (294912 * k + 42079) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 126238) = 442368 * k + 63119 := by
    unfold C
    simp [show (884736 * k + 126238) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 63119) = 1327104 * k + 189358 := by
    unfold C
    simp [show (442368 * k + 63119) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 189358) = 663552 * k + 94679 := by
    unfold C
    simp [show (1327104 * k + 189358) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 94679) = 1990656 * k + 284038 := by
    unfold C
    simp [show (663552 * k + 94679) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 284038) = 995328 * k + 142019 := by
    unfold C
    simp [show (1990656 * k + 284038) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 142019) = 2985984 * k + 426058 := by
    unfold C
    simp [show (995328 * k + 142019) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 426058) = 1492992 * k + 213029 := by
    unfold C
    simp [show (2985984 * k + 426058) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 213029) = 4478976 * k + 639088 := by
    unfold C
    simp [show (1492992 * k + 213029) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 639088) = 2239488 * k + 319544 := by
    unfold C
    simp [show (4478976 * k + 639088) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 319544) = 1119744 * k + 159772 := by
    unfold C
    simp [show (2239488 * k + 319544) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 159772) = 559872 * k + 79886 := by
    unfold C
    simp [show (1119744 * k + 159772) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 79886) = 279936 * k + 39943 := by
    unfold C
    simp [show (559872 * k + 79886) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 39943) = 839808 * k + 119830 := by
    unfold C
    simp [show (279936 * k + 39943) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 119830) = 419904 * k + 59915 := by
    unfold C
    simp [show (839808 * k + 119830) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 59915) = 1259712 * k + 179746 := by
    unfold C
    simp [show (419904 * k + 59915) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 179746) = 629856 * k + 89873 := by
    unfold C
    simp [show (1259712 * k + 179746) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 89873) = 1889568 * k + 269620 := by
    unfold C
    simp [show (629856 * k + 89873) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 269620) = 944784 * k + 134810 := by
    unfold C
    simp [show (1889568 * k + 269620) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 134810) = 472392 * k + 67405 := by
    unfold C
    simp [show (944784 * k + 134810) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 67405) = 1417176 * k + 202216 := by
    unfold C
    simp [show (472392 * k + 67405) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 202216) = 708588 * k + 101108 := by
    unfold C
    simp [show (1417176 * k + 202216) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 101108) = 354294 * k + 50554 := by
    unfold C
    simp [show (708588 * k + 101108) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 50554) = 177147 * k + 25277 := by
    unfold C
    simp [show (354294 * k + 50554) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 37403) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 37403))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_37759 : ∀ k : Nat,
    iterate (262144 * k + 37759) 29 = 177147 * k + 25517 ∧
      177147 * k + 25517 < 262144 * k + 37759 := by
  intro k
  have h1 : C (262144 * k + 37759) = 786432 * k + 113278 := by
    unfold C
    simp [show (262144 * k + 37759) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 113278) = 393216 * k + 56639 := by
    unfold C
    simp [show (786432 * k + 113278) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 56639) = 1179648 * k + 169918 := by
    unfold C
    simp [show (393216 * k + 56639) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 169918) = 589824 * k + 84959 := by
    unfold C
    simp [show (1179648 * k + 169918) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 84959) = 1769472 * k + 254878 := by
    unfold C
    simp [show (589824 * k + 84959) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 254878) = 884736 * k + 127439 := by
    unfold C
    simp [show (1769472 * k + 254878) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 127439) = 2654208 * k + 382318 := by
    unfold C
    simp [show (884736 * k + 127439) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 382318) = 1327104 * k + 191159 := by
    unfold C
    simp [show (2654208 * k + 382318) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 191159) = 3981312 * k + 573478 := by
    unfold C
    simp [show (1327104 * k + 191159) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 573478) = 1990656 * k + 286739 := by
    unfold C
    simp [show (3981312 * k + 573478) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 286739) = 5971968 * k + 860218 := by
    unfold C
    simp [show (1990656 * k + 286739) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 860218) = 2985984 * k + 430109 := by
    unfold C
    simp [show (5971968 * k + 860218) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 430109) = 8957952 * k + 1290328 := by
    unfold C
    simp [show (2985984 * k + 430109) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 1290328) = 4478976 * k + 645164 := by
    unfold C
    simp [show (8957952 * k + 1290328) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 645164) = 2239488 * k + 322582 := by
    unfold C
    simp [show (4478976 * k + 645164) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 322582) = 1119744 * k + 161291 := by
    unfold C
    simp [show (2239488 * k + 322582) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 161291) = 3359232 * k + 483874 := by
    unfold C
    simp [show (1119744 * k + 161291) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 483874) = 1679616 * k + 241937 := by
    unfold C
    simp [show (3359232 * k + 483874) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 241937) = 5038848 * k + 725812 := by
    unfold C
    simp [show (1679616 * k + 241937) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 725812) = 2519424 * k + 362906 := by
    unfold C
    simp [show (5038848 * k + 725812) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 362906) = 1259712 * k + 181453 := by
    unfold C
    simp [show (2519424 * k + 362906) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 181453) = 3779136 * k + 544360 := by
    unfold C
    simp [show (1259712 * k + 181453) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 544360) = 1889568 * k + 272180 := by
    unfold C
    simp [show (3779136 * k + 544360) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 272180) = 944784 * k + 136090 := by
    unfold C
    simp [show (1889568 * k + 272180) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 136090) = 472392 * k + 68045 := by
    unfold C
    simp [show (944784 * k + 136090) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 68045) = 1417176 * k + 204136 := by
    unfold C
    simp [show (472392 * k + 68045) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 204136) = 708588 * k + 102068 := by
    unfold C
    simp [show (1417176 * k + 204136) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 102068) = 354294 * k + 51034 := by
    unfold C
    simp [show (708588 * k + 102068) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 51034) = 177147 * k + 25517 := by
    unfold C
    simp [show (354294 * k + 51034) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 37759) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 37759))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_37979 : ∀ k : Nat,
    iterate (262144 * k + 37979) 29 = 177147 * k + 25666 ∧
      177147 * k + 25666 < 262144 * k + 37979 := by
  intro k
  have h1 : C (262144 * k + 37979) = 786432 * k + 113938 := by
    unfold C
    simp [show (262144 * k + 37979) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 113938) = 393216 * k + 56969 := by
    unfold C
    simp [show (786432 * k + 113938) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 56969) = 1179648 * k + 170908 := by
    unfold C
    simp [show (393216 * k + 56969) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 170908) = 589824 * k + 85454 := by
    unfold C
    simp [show (1179648 * k + 170908) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 85454) = 294912 * k + 42727 := by
    unfold C
    simp [show (589824 * k + 85454) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 42727) = 884736 * k + 128182 := by
    unfold C
    simp [show (294912 * k + 42727) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 128182) = 442368 * k + 64091 := by
    unfold C
    simp [show (884736 * k + 128182) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 64091) = 1327104 * k + 192274 := by
    unfold C
    simp [show (442368 * k + 64091) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 192274) = 663552 * k + 96137 := by
    unfold C
    simp [show (1327104 * k + 192274) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 96137) = 1990656 * k + 288412 := by
    unfold C
    simp [show (663552 * k + 96137) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 288412) = 995328 * k + 144206 := by
    unfold C
    simp [show (1990656 * k + 288412) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 144206) = 497664 * k + 72103 := by
    unfold C
    simp [show (995328 * k + 144206) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 72103) = 1492992 * k + 216310 := by
    unfold C
    simp [show (497664 * k + 72103) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 216310) = 746496 * k + 108155 := by
    unfold C
    simp [show (1492992 * k + 216310) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 108155) = 2239488 * k + 324466 := by
    unfold C
    simp [show (746496 * k + 108155) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 324466) = 1119744 * k + 162233 := by
    unfold C
    simp [show (2239488 * k + 324466) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 162233) = 3359232 * k + 486700 := by
    unfold C
    simp [show (1119744 * k + 162233) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 486700) = 1679616 * k + 243350 := by
    unfold C
    simp [show (3359232 * k + 486700) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 243350) = 839808 * k + 121675 := by
    unfold C
    simp [show (1679616 * k + 243350) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 121675) = 2519424 * k + 365026 := by
    unfold C
    simp [show (839808 * k + 121675) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 365026) = 1259712 * k + 182513 := by
    unfold C
    simp [show (2519424 * k + 365026) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 182513) = 3779136 * k + 547540 := by
    unfold C
    simp [show (1259712 * k + 182513) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 547540) = 1889568 * k + 273770 := by
    unfold C
    simp [show (3779136 * k + 547540) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 273770) = 944784 * k + 136885 := by
    unfold C
    simp [show (1889568 * k + 273770) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 136885) = 2834352 * k + 410656 := by
    unfold C
    simp [show (944784 * k + 136885) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 410656) = 1417176 * k + 205328 := by
    unfold C
    simp [show (2834352 * k + 410656) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 205328) = 708588 * k + 102664 := by
    unfold C
    simp [show (1417176 * k + 205328) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 102664) = 354294 * k + 51332 := by
    unfold C
    simp [show (708588 * k + 102664) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 51332) = 177147 * k + 25666 := by
    unfold C
    simp [show (354294 * k + 51332) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 37979) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 37979))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_38447 : ∀ k : Nat,
    iterate (262144 * k + 38447) 29 = 177147 * k + 25982 ∧
      177147 * k + 25982 < 262144 * k + 38447 := by
  intro k
  have h1 : C (262144 * k + 38447) = 786432 * k + 115342 := by
    unfold C
    simp [show (262144 * k + 38447) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 115342) = 393216 * k + 57671 := by
    unfold C
    simp [show (786432 * k + 115342) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 57671) = 1179648 * k + 173014 := by
    unfold C
    simp [show (393216 * k + 57671) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 173014) = 589824 * k + 86507 := by
    unfold C
    simp [show (1179648 * k + 173014) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 86507) = 1769472 * k + 259522 := by
    unfold C
    simp [show (589824 * k + 86507) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 259522) = 884736 * k + 129761 := by
    unfold C
    simp [show (1769472 * k + 259522) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 129761) = 2654208 * k + 389284 := by
    unfold C
    simp [show (884736 * k + 129761) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 389284) = 1327104 * k + 194642 := by
    unfold C
    simp [show (2654208 * k + 389284) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 194642) = 663552 * k + 97321 := by
    unfold C
    simp [show (1327104 * k + 194642) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 97321) = 1990656 * k + 291964 := by
    unfold C
    simp [show (663552 * k + 97321) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 291964) = 995328 * k + 145982 := by
    unfold C
    simp [show (1990656 * k + 291964) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 145982) = 497664 * k + 72991 := by
    unfold C
    simp [show (995328 * k + 145982) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 72991) = 1492992 * k + 218974 := by
    unfold C
    simp [show (497664 * k + 72991) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 218974) = 746496 * k + 109487 := by
    unfold C
    simp [show (1492992 * k + 218974) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 109487) = 2239488 * k + 328462 := by
    unfold C
    simp [show (746496 * k + 109487) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 328462) = 1119744 * k + 164231 := by
    unfold C
    simp [show (2239488 * k + 328462) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 164231) = 3359232 * k + 492694 := by
    unfold C
    simp [show (1119744 * k + 164231) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 492694) = 1679616 * k + 246347 := by
    unfold C
    simp [show (3359232 * k + 492694) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 246347) = 5038848 * k + 739042 := by
    unfold C
    simp [show (1679616 * k + 246347) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 739042) = 2519424 * k + 369521 := by
    unfold C
    simp [show (5038848 * k + 739042) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 369521) = 7558272 * k + 1108564 := by
    unfold C
    simp [show (2519424 * k + 369521) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 1108564) = 3779136 * k + 554282 := by
    unfold C
    simp [show (7558272 * k + 1108564) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 554282) = 1889568 * k + 277141 := by
    unfold C
    simp [show (3779136 * k + 554282) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 277141) = 5668704 * k + 831424 := by
    unfold C
    simp [show (1889568 * k + 277141) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 831424) = 2834352 * k + 415712 := by
    unfold C
    simp [show (5668704 * k + 831424) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 415712) = 1417176 * k + 207856 := by
    unfold C
    simp [show (2834352 * k + 415712) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 207856) = 708588 * k + 103928 := by
    unfold C
    simp [show (1417176 * k + 207856) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 103928) = 354294 * k + 51964 := by
    unfold C
    simp [show (708588 * k + 103928) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 51964) = 177147 * k + 25982 := by
    unfold C
    simp [show (354294 * k + 51964) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 38447) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 38447))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard007
