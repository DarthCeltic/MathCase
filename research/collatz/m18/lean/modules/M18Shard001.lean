import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard001

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_511 : ∀ k : Nat,
    iterate (262144 * k + 511) 29 = 177147 * k + 346 ∧
      177147 * k + 346 < 262144 * k + 511 := by
  intro k
  have h1 : C (262144 * k + 511) = 786432 * k + 1534 := by
    unfold C
    simp [show (262144 * k + 511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 1534) = 393216 * k + 767 := by
    unfold C
    simp [show (786432 * k + 1534) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 767) = 1179648 * k + 2302 := by
    unfold C
    simp [show (393216 * k + 767) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 2302) = 589824 * k + 1151 := by
    unfold C
    simp [show (1179648 * k + 2302) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 1151) = 1769472 * k + 3454 := by
    unfold C
    simp [show (589824 * k + 1151) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 3454) = 884736 * k + 1727 := by
    unfold C
    simp [show (1769472 * k + 3454) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 1727) = 2654208 * k + 5182 := by
    unfold C
    simp [show (884736 * k + 1727) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 5182) = 1327104 * k + 2591 := by
    unfold C
    simp [show (2654208 * k + 5182) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 2591) = 3981312 * k + 7774 := by
    unfold C
    simp [show (1327104 * k + 2591) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 7774) = 1990656 * k + 3887 := by
    unfold C
    simp [show (3981312 * k + 7774) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 3887) = 5971968 * k + 11662 := by
    unfold C
    simp [show (1990656 * k + 3887) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 11662) = 2985984 * k + 5831 := by
    unfold C
    simp [show (5971968 * k + 11662) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 5831) = 8957952 * k + 17494 := by
    unfold C
    simp [show (2985984 * k + 5831) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 17494) = 4478976 * k + 8747 := by
    unfold C
    simp [show (8957952 * k + 17494) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 8747) = 13436928 * k + 26242 := by
    unfold C
    simp [show (4478976 * k + 8747) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 26242) = 6718464 * k + 13121 := by
    unfold C
    simp [show (13436928 * k + 26242) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 13121) = 20155392 * k + 39364 := by
    unfold C
    simp [show (6718464 * k + 13121) % 2 ≠ 0 by omega]
    omega
  have h18 : C (20155392 * k + 39364) = 10077696 * k + 19682 := by
    unfold C
    simp [show (20155392 * k + 39364) % 2 = 0 by omega]
    omega
  have h19 : C (10077696 * k + 19682) = 5038848 * k + 9841 := by
    unfold C
    simp [show (10077696 * k + 19682) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 9841) = 15116544 * k + 29524 := by
    unfold C
    simp [show (5038848 * k + 9841) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 29524) = 7558272 * k + 14762 := by
    unfold C
    simp [show (15116544 * k + 29524) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 14762) = 3779136 * k + 7381 := by
    unfold C
    simp [show (7558272 * k + 14762) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 7381) = 11337408 * k + 22144 := by
    unfold C
    simp [show (3779136 * k + 7381) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 22144) = 5668704 * k + 11072 := by
    unfold C
    simp [show (11337408 * k + 22144) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 11072) = 2834352 * k + 5536 := by
    unfold C
    simp [show (5668704 * k + 11072) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 5536) = 1417176 * k + 2768 := by
    unfold C
    simp [show (2834352 * k + 5536) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 2768) = 708588 * k + 1384 := by
    unfold C
    simp [show (1417176 * k + 2768) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 1384) = 354294 * k + 692 := by
    unfold C
    simp [show (708588 * k + 1384) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 692) = 177147 * k + 346 := by
    unfold C
    simp [show (354294 * k + 692) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 511) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 511))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_1023 : ∀ k : Nat,
    iterate (262144 * k + 1023) 29 = 177147 * k + 692 ∧
      177147 * k + 692 < 262144 * k + 1023 := by
  intro k
  have h1 : C (262144 * k + 1023) = 786432 * k + 3070 := by
    unfold C
    simp [show (262144 * k + 1023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 3070) = 393216 * k + 1535 := by
    unfold C
    simp [show (786432 * k + 3070) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 1535) = 1179648 * k + 4606 := by
    unfold C
    simp [show (393216 * k + 1535) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 4606) = 589824 * k + 2303 := by
    unfold C
    simp [show (1179648 * k + 4606) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 2303) = 1769472 * k + 6910 := by
    unfold C
    simp [show (589824 * k + 2303) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 6910) = 884736 * k + 3455 := by
    unfold C
    simp [show (1769472 * k + 6910) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 3455) = 2654208 * k + 10366 := by
    unfold C
    simp [show (884736 * k + 3455) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 10366) = 1327104 * k + 5183 := by
    unfold C
    simp [show (2654208 * k + 10366) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 5183) = 3981312 * k + 15550 := by
    unfold C
    simp [show (1327104 * k + 5183) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 15550) = 1990656 * k + 7775 := by
    unfold C
    simp [show (3981312 * k + 15550) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 7775) = 5971968 * k + 23326 := by
    unfold C
    simp [show (1990656 * k + 7775) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 23326) = 2985984 * k + 11663 := by
    unfold C
    simp [show (5971968 * k + 23326) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 11663) = 8957952 * k + 34990 := by
    unfold C
    simp [show (2985984 * k + 11663) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 34990) = 4478976 * k + 17495 := by
    unfold C
    simp [show (8957952 * k + 34990) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 17495) = 13436928 * k + 52486 := by
    unfold C
    simp [show (4478976 * k + 17495) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 52486) = 6718464 * k + 26243 := by
    unfold C
    simp [show (13436928 * k + 52486) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 26243) = 20155392 * k + 78730 := by
    unfold C
    simp [show (6718464 * k + 26243) % 2 ≠ 0 by omega]
    omega
  have h18 : C (20155392 * k + 78730) = 10077696 * k + 39365 := by
    unfold C
    simp [show (20155392 * k + 78730) % 2 = 0 by omega]
    omega
  have h19 : C (10077696 * k + 39365) = 30233088 * k + 118096 := by
    unfold C
    simp [show (10077696 * k + 39365) % 2 ≠ 0 by omega]
    omega
  have h20 : C (30233088 * k + 118096) = 15116544 * k + 59048 := by
    unfold C
    simp [show (30233088 * k + 118096) % 2 = 0 by omega]
    omega
  have h21 : C (15116544 * k + 59048) = 7558272 * k + 29524 := by
    unfold C
    simp [show (15116544 * k + 59048) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 29524) = 3779136 * k + 14762 := by
    unfold C
    simp [show (7558272 * k + 29524) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 14762) = 1889568 * k + 7381 := by
    unfold C
    simp [show (3779136 * k + 14762) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 7381) = 5668704 * k + 22144 := by
    unfold C
    simp [show (1889568 * k + 7381) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 22144) = 2834352 * k + 11072 := by
    unfold C
    simp [show (5668704 * k + 22144) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 11072) = 1417176 * k + 5536 := by
    unfold C
    simp [show (2834352 * k + 11072) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 5536) = 708588 * k + 2768 := by
    unfold C
    simp [show (1417176 * k + 5536) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 2768) = 354294 * k + 1384 := by
    unfold C
    simp [show (708588 * k + 2768) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 1384) = 177147 * k + 692 := by
    unfold C
    simp [show (354294 * k + 1384) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 1023) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 1023))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_1691 : ∀ k : Nat,
    iterate (262144 * k + 1691) 29 = 177147 * k + 1144 ∧
      177147 * k + 1144 < 262144 * k + 1691 := by
  intro k
  have h1 : C (262144 * k + 1691) = 786432 * k + 5074 := by
    unfold C
    simp [show (262144 * k + 1691) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 5074) = 393216 * k + 2537 := by
    unfold C
    simp [show (786432 * k + 5074) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 2537) = 1179648 * k + 7612 := by
    unfold C
    simp [show (393216 * k + 2537) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 7612) = 589824 * k + 3806 := by
    unfold C
    simp [show (1179648 * k + 7612) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 3806) = 294912 * k + 1903 := by
    unfold C
    simp [show (589824 * k + 3806) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 1903) = 884736 * k + 5710 := by
    unfold C
    simp [show (294912 * k + 1903) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 5710) = 442368 * k + 2855 := by
    unfold C
    simp [show (884736 * k + 5710) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 2855) = 1327104 * k + 8566 := by
    unfold C
    simp [show (442368 * k + 2855) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 8566) = 663552 * k + 4283 := by
    unfold C
    simp [show (1327104 * k + 8566) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 4283) = 1990656 * k + 12850 := by
    unfold C
    simp [show (663552 * k + 4283) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 12850) = 995328 * k + 6425 := by
    unfold C
    simp [show (1990656 * k + 12850) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 6425) = 2985984 * k + 19276 := by
    unfold C
    simp [show (995328 * k + 6425) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 19276) = 1492992 * k + 9638 := by
    unfold C
    simp [show (2985984 * k + 19276) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 9638) = 746496 * k + 4819 := by
    unfold C
    simp [show (1492992 * k + 9638) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 4819) = 2239488 * k + 14458 := by
    unfold C
    simp [show (746496 * k + 4819) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 14458) = 1119744 * k + 7229 := by
    unfold C
    simp [show (2239488 * k + 14458) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 7229) = 3359232 * k + 21688 := by
    unfold C
    simp [show (1119744 * k + 7229) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 21688) = 1679616 * k + 10844 := by
    unfold C
    simp [show (3359232 * k + 21688) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 10844) = 839808 * k + 5422 := by
    unfold C
    simp [show (1679616 * k + 10844) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 5422) = 419904 * k + 2711 := by
    unfold C
    simp [show (839808 * k + 5422) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 2711) = 1259712 * k + 8134 := by
    unfold C
    simp [show (419904 * k + 2711) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 8134) = 629856 * k + 4067 := by
    unfold C
    simp [show (1259712 * k + 8134) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 4067) = 1889568 * k + 12202 := by
    unfold C
    simp [show (629856 * k + 4067) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 12202) = 944784 * k + 6101 := by
    unfold C
    simp [show (1889568 * k + 12202) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 6101) = 2834352 * k + 18304 := by
    unfold C
    simp [show (944784 * k + 6101) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 18304) = 1417176 * k + 9152 := by
    unfold C
    simp [show (2834352 * k + 18304) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 9152) = 708588 * k + 4576 := by
    unfold C
    simp [show (1417176 * k + 9152) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 4576) = 354294 * k + 2288 := by
    unfold C
    simp [show (708588 * k + 4576) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 2288) = 177147 * k + 1144 := by
    unfold C
    simp [show (354294 * k + 2288) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 1691) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 1691))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_1791 : ∀ k : Nat,
    iterate (262144 * k + 1791) 29 = 177147 * k + 1211 ∧
      177147 * k + 1211 < 262144 * k + 1791 := by
  intro k
  have h1 : C (262144 * k + 1791) = 786432 * k + 5374 := by
    unfold C
    simp [show (262144 * k + 1791) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 5374) = 393216 * k + 2687 := by
    unfold C
    simp [show (786432 * k + 5374) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 2687) = 1179648 * k + 8062 := by
    unfold C
    simp [show (393216 * k + 2687) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 8062) = 589824 * k + 4031 := by
    unfold C
    simp [show (1179648 * k + 8062) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 4031) = 1769472 * k + 12094 := by
    unfold C
    simp [show (589824 * k + 4031) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 12094) = 884736 * k + 6047 := by
    unfold C
    simp [show (1769472 * k + 12094) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 6047) = 2654208 * k + 18142 := by
    unfold C
    simp [show (884736 * k + 6047) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 18142) = 1327104 * k + 9071 := by
    unfold C
    simp [show (2654208 * k + 18142) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 9071) = 3981312 * k + 27214 := by
    unfold C
    simp [show (1327104 * k + 9071) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 27214) = 1990656 * k + 13607 := by
    unfold C
    simp [show (3981312 * k + 27214) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 13607) = 5971968 * k + 40822 := by
    unfold C
    simp [show (1990656 * k + 13607) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 40822) = 2985984 * k + 20411 := by
    unfold C
    simp [show (5971968 * k + 40822) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 20411) = 8957952 * k + 61234 := by
    unfold C
    simp [show (2985984 * k + 20411) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 61234) = 4478976 * k + 30617 := by
    unfold C
    simp [show (8957952 * k + 61234) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 30617) = 13436928 * k + 91852 := by
    unfold C
    simp [show (4478976 * k + 30617) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 91852) = 6718464 * k + 45926 := by
    unfold C
    simp [show (13436928 * k + 91852) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 45926) = 3359232 * k + 22963 := by
    unfold C
    simp [show (6718464 * k + 45926) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 22963) = 10077696 * k + 68890 := by
    unfold C
    simp [show (3359232 * k + 22963) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 68890) = 5038848 * k + 34445 := by
    unfold C
    simp [show (10077696 * k + 68890) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 34445) = 15116544 * k + 103336 := by
    unfold C
    simp [show (5038848 * k + 34445) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 103336) = 7558272 * k + 51668 := by
    unfold C
    simp [show (15116544 * k + 103336) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 51668) = 3779136 * k + 25834 := by
    unfold C
    simp [show (7558272 * k + 51668) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 25834) = 1889568 * k + 12917 := by
    unfold C
    simp [show (3779136 * k + 25834) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 12917) = 5668704 * k + 38752 := by
    unfold C
    simp [show (1889568 * k + 12917) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 38752) = 2834352 * k + 19376 := by
    unfold C
    simp [show (5668704 * k + 38752) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 19376) = 1417176 * k + 9688 := by
    unfold C
    simp [show (2834352 * k + 19376) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 9688) = 708588 * k + 4844 := by
    unfold C
    simp [show (1417176 * k + 9688) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 4844) = 354294 * k + 2422 := by
    unfold C
    simp [show (708588 * k + 4844) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 2422) = 177147 * k + 1211 := by
    unfold C
    simp [show (354294 * k + 2422) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 1791) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 1791))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_1883 : ∀ k : Nat,
    iterate (262144 * k + 1883) 29 = 177147 * k + 1274 ∧
      177147 * k + 1274 < 262144 * k + 1883 := by
  intro k
  have h1 : C (262144 * k + 1883) = 786432 * k + 5650 := by
    unfold C
    simp [show (262144 * k + 1883) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 5650) = 393216 * k + 2825 := by
    unfold C
    simp [show (786432 * k + 5650) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 2825) = 1179648 * k + 8476 := by
    unfold C
    simp [show (393216 * k + 2825) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 8476) = 589824 * k + 4238 := by
    unfold C
    simp [show (1179648 * k + 8476) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 4238) = 294912 * k + 2119 := by
    unfold C
    simp [show (589824 * k + 4238) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 2119) = 884736 * k + 6358 := by
    unfold C
    simp [show (294912 * k + 2119) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 6358) = 442368 * k + 3179 := by
    unfold C
    simp [show (884736 * k + 6358) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 3179) = 1327104 * k + 9538 := by
    unfold C
    simp [show (442368 * k + 3179) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 9538) = 663552 * k + 4769 := by
    unfold C
    simp [show (1327104 * k + 9538) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 4769) = 1990656 * k + 14308 := by
    unfold C
    simp [show (663552 * k + 4769) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 14308) = 995328 * k + 7154 := by
    unfold C
    simp [show (1990656 * k + 14308) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 7154) = 497664 * k + 3577 := by
    unfold C
    simp [show (995328 * k + 7154) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 3577) = 1492992 * k + 10732 := by
    unfold C
    simp [show (497664 * k + 3577) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 10732) = 746496 * k + 5366 := by
    unfold C
    simp [show (1492992 * k + 10732) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 5366) = 373248 * k + 2683 := by
    unfold C
    simp [show (746496 * k + 5366) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 2683) = 1119744 * k + 8050 := by
    unfold C
    simp [show (373248 * k + 2683) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 8050) = 559872 * k + 4025 := by
    unfold C
    simp [show (1119744 * k + 8050) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 4025) = 1679616 * k + 12076 := by
    unfold C
    simp [show (559872 * k + 4025) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 12076) = 839808 * k + 6038 := by
    unfold C
    simp [show (1679616 * k + 12076) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 6038) = 419904 * k + 3019 := by
    unfold C
    simp [show (839808 * k + 6038) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 3019) = 1259712 * k + 9058 := by
    unfold C
    simp [show (419904 * k + 3019) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 9058) = 629856 * k + 4529 := by
    unfold C
    simp [show (1259712 * k + 9058) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 4529) = 1889568 * k + 13588 := by
    unfold C
    simp [show (629856 * k + 4529) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 13588) = 944784 * k + 6794 := by
    unfold C
    simp [show (1889568 * k + 13588) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 6794) = 472392 * k + 3397 := by
    unfold C
    simp [show (944784 * k + 6794) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 3397) = 1417176 * k + 10192 := by
    unfold C
    simp [show (472392 * k + 3397) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 10192) = 708588 * k + 5096 := by
    unfold C
    simp [show (1417176 * k + 10192) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 5096) = 354294 * k + 2548 := by
    unfold C
    simp [show (708588 * k + 5096) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 2548) = 177147 * k + 1274 := by
    unfold C
    simp [show (354294 * k + 2548) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 1883) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 1883))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_2043 : ∀ k : Nat,
    iterate (262144 * k + 2043) 29 = 177147 * k + 1382 ∧
      177147 * k + 1382 < 262144 * k + 2043 := by
  intro k
  have h1 : C (262144 * k + 2043) = 786432 * k + 6130 := by
    unfold C
    simp [show (262144 * k + 2043) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 6130) = 393216 * k + 3065 := by
    unfold C
    simp [show (786432 * k + 6130) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 3065) = 1179648 * k + 9196 := by
    unfold C
    simp [show (393216 * k + 3065) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 9196) = 589824 * k + 4598 := by
    unfold C
    simp [show (1179648 * k + 9196) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 4598) = 294912 * k + 2299 := by
    unfold C
    simp [show (589824 * k + 4598) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 2299) = 884736 * k + 6898 := by
    unfold C
    simp [show (294912 * k + 2299) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 6898) = 442368 * k + 3449 := by
    unfold C
    simp [show (884736 * k + 6898) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 3449) = 1327104 * k + 10348 := by
    unfold C
    simp [show (442368 * k + 3449) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 10348) = 663552 * k + 5174 := by
    unfold C
    simp [show (1327104 * k + 10348) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 5174) = 331776 * k + 2587 := by
    unfold C
    simp [show (663552 * k + 5174) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 2587) = 995328 * k + 7762 := by
    unfold C
    simp [show (331776 * k + 2587) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 7762) = 497664 * k + 3881 := by
    unfold C
    simp [show (995328 * k + 7762) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 3881) = 1492992 * k + 11644 := by
    unfold C
    simp [show (497664 * k + 3881) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 11644) = 746496 * k + 5822 := by
    unfold C
    simp [show (1492992 * k + 11644) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 5822) = 373248 * k + 2911 := by
    unfold C
    simp [show (746496 * k + 5822) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 2911) = 1119744 * k + 8734 := by
    unfold C
    simp [show (373248 * k + 2911) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 8734) = 559872 * k + 4367 := by
    unfold C
    simp [show (1119744 * k + 8734) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 4367) = 1679616 * k + 13102 := by
    unfold C
    simp [show (559872 * k + 4367) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 13102) = 839808 * k + 6551 := by
    unfold C
    simp [show (1679616 * k + 13102) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 6551) = 2519424 * k + 19654 := by
    unfold C
    simp [show (839808 * k + 6551) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 19654) = 1259712 * k + 9827 := by
    unfold C
    simp [show (2519424 * k + 19654) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 9827) = 3779136 * k + 29482 := by
    unfold C
    simp [show (1259712 * k + 9827) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 29482) = 1889568 * k + 14741 := by
    unfold C
    simp [show (3779136 * k + 29482) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 14741) = 5668704 * k + 44224 := by
    unfold C
    simp [show (1889568 * k + 14741) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 44224) = 2834352 * k + 22112 := by
    unfold C
    simp [show (5668704 * k + 44224) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 22112) = 1417176 * k + 11056 := by
    unfold C
    simp [show (2834352 * k + 22112) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 11056) = 708588 * k + 5528 := by
    unfold C
    simp [show (1417176 * k + 11056) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 5528) = 354294 * k + 2764 := by
    unfold C
    simp [show (708588 * k + 5528) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 2764) = 177147 * k + 1382 := by
    unfold C
    simp [show (354294 * k + 2764) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 2043) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 2043))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_2159 : ∀ k : Nat,
    iterate (262144 * k + 2159) 29 = 177147 * k + 1460 ∧
      177147 * k + 1460 < 262144 * k + 2159 := by
  intro k
  have h1 : C (262144 * k + 2159) = 786432 * k + 6478 := by
    unfold C
    simp [show (262144 * k + 2159) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 6478) = 393216 * k + 3239 := by
    unfold C
    simp [show (786432 * k + 6478) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 3239) = 1179648 * k + 9718 := by
    unfold C
    simp [show (393216 * k + 3239) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 9718) = 589824 * k + 4859 := by
    unfold C
    simp [show (1179648 * k + 9718) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 4859) = 1769472 * k + 14578 := by
    unfold C
    simp [show (589824 * k + 4859) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 14578) = 884736 * k + 7289 := by
    unfold C
    simp [show (1769472 * k + 14578) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 7289) = 2654208 * k + 21868 := by
    unfold C
    simp [show (884736 * k + 7289) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 21868) = 1327104 * k + 10934 := by
    unfold C
    simp [show (2654208 * k + 21868) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 10934) = 663552 * k + 5467 := by
    unfold C
    simp [show (1327104 * k + 10934) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 5467) = 1990656 * k + 16402 := by
    unfold C
    simp [show (663552 * k + 5467) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 16402) = 995328 * k + 8201 := by
    unfold C
    simp [show (1990656 * k + 16402) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 8201) = 2985984 * k + 24604 := by
    unfold C
    simp [show (995328 * k + 8201) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 24604) = 1492992 * k + 12302 := by
    unfold C
    simp [show (2985984 * k + 24604) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 12302) = 746496 * k + 6151 := by
    unfold C
    simp [show (1492992 * k + 12302) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 6151) = 2239488 * k + 18454 := by
    unfold C
    simp [show (746496 * k + 6151) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 18454) = 1119744 * k + 9227 := by
    unfold C
    simp [show (2239488 * k + 18454) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 9227) = 3359232 * k + 27682 := by
    unfold C
    simp [show (1119744 * k + 9227) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 27682) = 1679616 * k + 13841 := by
    unfold C
    simp [show (3359232 * k + 27682) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 13841) = 5038848 * k + 41524 := by
    unfold C
    simp [show (1679616 * k + 13841) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 41524) = 2519424 * k + 20762 := by
    unfold C
    simp [show (5038848 * k + 41524) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 20762) = 1259712 * k + 10381 := by
    unfold C
    simp [show (2519424 * k + 20762) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 10381) = 3779136 * k + 31144 := by
    unfold C
    simp [show (1259712 * k + 10381) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 31144) = 1889568 * k + 15572 := by
    unfold C
    simp [show (3779136 * k + 31144) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 15572) = 944784 * k + 7786 := by
    unfold C
    simp [show (1889568 * k + 15572) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 7786) = 472392 * k + 3893 := by
    unfold C
    simp [show (944784 * k + 7786) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 3893) = 1417176 * k + 11680 := by
    unfold C
    simp [show (472392 * k + 3893) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 11680) = 708588 * k + 5840 := by
    unfold C
    simp [show (1417176 * k + 11680) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 5840) = 354294 * k + 2920 := by
    unfold C
    simp [show (708588 * k + 5840) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 2920) = 177147 * k + 1460 := by
    unfold C
    simp [show (354294 * k + 2920) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 2159) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 2159))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_2459 : ∀ k : Nat,
    iterate (262144 * k + 2459) 29 = 177147 * k + 1663 ∧
      177147 * k + 1663 < 262144 * k + 2459 := by
  intro k
  have h1 : C (262144 * k + 2459) = 786432 * k + 7378 := by
    unfold C
    simp [show (262144 * k + 2459) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 7378) = 393216 * k + 3689 := by
    unfold C
    simp [show (786432 * k + 7378) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 3689) = 1179648 * k + 11068 := by
    unfold C
    simp [show (393216 * k + 3689) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 11068) = 589824 * k + 5534 := by
    unfold C
    simp [show (1179648 * k + 11068) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 5534) = 294912 * k + 2767 := by
    unfold C
    simp [show (589824 * k + 5534) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 2767) = 884736 * k + 8302 := by
    unfold C
    simp [show (294912 * k + 2767) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 8302) = 442368 * k + 4151 := by
    unfold C
    simp [show (884736 * k + 8302) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 4151) = 1327104 * k + 12454 := by
    unfold C
    simp [show (442368 * k + 4151) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 12454) = 663552 * k + 6227 := by
    unfold C
    simp [show (1327104 * k + 12454) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 6227) = 1990656 * k + 18682 := by
    unfold C
    simp [show (663552 * k + 6227) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 18682) = 995328 * k + 9341 := by
    unfold C
    simp [show (1990656 * k + 18682) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 9341) = 2985984 * k + 28024 := by
    unfold C
    simp [show (995328 * k + 9341) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 28024) = 1492992 * k + 14012 := by
    unfold C
    simp [show (2985984 * k + 28024) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 14012) = 746496 * k + 7006 := by
    unfold C
    simp [show (1492992 * k + 14012) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 7006) = 373248 * k + 3503 := by
    unfold C
    simp [show (746496 * k + 7006) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 3503) = 1119744 * k + 10510 := by
    unfold C
    simp [show (373248 * k + 3503) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 10510) = 559872 * k + 5255 := by
    unfold C
    simp [show (1119744 * k + 10510) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 5255) = 1679616 * k + 15766 := by
    unfold C
    simp [show (559872 * k + 5255) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 15766) = 839808 * k + 7883 := by
    unfold C
    simp [show (1679616 * k + 15766) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 7883) = 2519424 * k + 23650 := by
    unfold C
    simp [show (839808 * k + 7883) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 23650) = 1259712 * k + 11825 := by
    unfold C
    simp [show (2519424 * k + 23650) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 11825) = 3779136 * k + 35476 := by
    unfold C
    simp [show (1259712 * k + 11825) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 35476) = 1889568 * k + 17738 := by
    unfold C
    simp [show (3779136 * k + 35476) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 17738) = 944784 * k + 8869 := by
    unfold C
    simp [show (1889568 * k + 17738) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 8869) = 2834352 * k + 26608 := by
    unfold C
    simp [show (944784 * k + 8869) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 26608) = 1417176 * k + 13304 := by
    unfold C
    simp [show (2834352 * k + 26608) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 13304) = 708588 * k + 6652 := by
    unfold C
    simp [show (1417176 * k + 13304) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 6652) = 354294 * k + 3326 := by
    unfold C
    simp [show (708588 * k + 6652) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 3326) = 177147 * k + 1663 := by
    unfold C
    simp [show (354294 * k + 3326) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 2459) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 2459))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_2651 : ∀ k : Nat,
    iterate (262144 * k + 2651) 29 = 177147 * k + 1793 ∧
      177147 * k + 1793 < 262144 * k + 2651 := by
  intro k
  have h1 : C (262144 * k + 2651) = 786432 * k + 7954 := by
    unfold C
    simp [show (262144 * k + 2651) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 7954) = 393216 * k + 3977 := by
    unfold C
    simp [show (786432 * k + 7954) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 3977) = 1179648 * k + 11932 := by
    unfold C
    simp [show (393216 * k + 3977) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 11932) = 589824 * k + 5966 := by
    unfold C
    simp [show (1179648 * k + 11932) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 5966) = 294912 * k + 2983 := by
    unfold C
    simp [show (589824 * k + 5966) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 2983) = 884736 * k + 8950 := by
    unfold C
    simp [show (294912 * k + 2983) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 8950) = 442368 * k + 4475 := by
    unfold C
    simp [show (884736 * k + 8950) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 4475) = 1327104 * k + 13426 := by
    unfold C
    simp [show (442368 * k + 4475) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 13426) = 663552 * k + 6713 := by
    unfold C
    simp [show (1327104 * k + 13426) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 6713) = 1990656 * k + 20140 := by
    unfold C
    simp [show (663552 * k + 6713) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 20140) = 995328 * k + 10070 := by
    unfold C
    simp [show (1990656 * k + 20140) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 10070) = 497664 * k + 5035 := by
    unfold C
    simp [show (995328 * k + 10070) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 5035) = 1492992 * k + 15106 := by
    unfold C
    simp [show (497664 * k + 5035) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 15106) = 746496 * k + 7553 := by
    unfold C
    simp [show (1492992 * k + 15106) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 7553) = 2239488 * k + 22660 := by
    unfold C
    simp [show (746496 * k + 7553) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 22660) = 1119744 * k + 11330 := by
    unfold C
    simp [show (2239488 * k + 22660) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 11330) = 559872 * k + 5665 := by
    unfold C
    simp [show (1119744 * k + 11330) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 5665) = 1679616 * k + 16996 := by
    unfold C
    simp [show (559872 * k + 5665) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 16996) = 839808 * k + 8498 := by
    unfold C
    simp [show (1679616 * k + 16996) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 8498) = 419904 * k + 4249 := by
    unfold C
    simp [show (839808 * k + 8498) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 4249) = 1259712 * k + 12748 := by
    unfold C
    simp [show (419904 * k + 4249) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 12748) = 629856 * k + 6374 := by
    unfold C
    simp [show (1259712 * k + 12748) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 6374) = 314928 * k + 3187 := by
    unfold C
    simp [show (629856 * k + 6374) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 3187) = 944784 * k + 9562 := by
    unfold C
    simp [show (314928 * k + 3187) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 9562) = 472392 * k + 4781 := by
    unfold C
    simp [show (944784 * k + 9562) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 4781) = 1417176 * k + 14344 := by
    unfold C
    simp [show (472392 * k + 4781) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 14344) = 708588 * k + 7172 := by
    unfold C
    simp [show (1417176 * k + 14344) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 7172) = 354294 * k + 3586 := by
    unfold C
    simp [show (708588 * k + 7172) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 3586) = 177147 * k + 1793 := by
    unfold C
    simp [show (354294 * k + 3586) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 2651) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 2651))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_2811 : ∀ k : Nat,
    iterate (262144 * k + 2811) 29 = 177147 * k + 1901 ∧
      177147 * k + 1901 < 262144 * k + 2811 := by
  intro k
  have h1 : C (262144 * k + 2811) = 786432 * k + 8434 := by
    unfold C
    simp [show (262144 * k + 2811) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 8434) = 393216 * k + 4217 := by
    unfold C
    simp [show (786432 * k + 8434) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 4217) = 1179648 * k + 12652 := by
    unfold C
    simp [show (393216 * k + 4217) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 12652) = 589824 * k + 6326 := by
    unfold C
    simp [show (1179648 * k + 12652) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 6326) = 294912 * k + 3163 := by
    unfold C
    simp [show (589824 * k + 6326) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 3163) = 884736 * k + 9490 := by
    unfold C
    simp [show (294912 * k + 3163) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 9490) = 442368 * k + 4745 := by
    unfold C
    simp [show (884736 * k + 9490) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 4745) = 1327104 * k + 14236 := by
    unfold C
    simp [show (442368 * k + 4745) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 14236) = 663552 * k + 7118 := by
    unfold C
    simp [show (1327104 * k + 14236) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 7118) = 331776 * k + 3559 := by
    unfold C
    simp [show (663552 * k + 7118) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 3559) = 995328 * k + 10678 := by
    unfold C
    simp [show (331776 * k + 3559) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 10678) = 497664 * k + 5339 := by
    unfold C
    simp [show (995328 * k + 10678) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 5339) = 1492992 * k + 16018 := by
    unfold C
    simp [show (497664 * k + 5339) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 16018) = 746496 * k + 8009 := by
    unfold C
    simp [show (1492992 * k + 16018) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 8009) = 2239488 * k + 24028 := by
    unfold C
    simp [show (746496 * k + 8009) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 24028) = 1119744 * k + 12014 := by
    unfold C
    simp [show (2239488 * k + 24028) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 12014) = 559872 * k + 6007 := by
    unfold C
    simp [show (1119744 * k + 12014) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 6007) = 1679616 * k + 18022 := by
    unfold C
    simp [show (559872 * k + 6007) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 18022) = 839808 * k + 9011 := by
    unfold C
    simp [show (1679616 * k + 18022) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 9011) = 2519424 * k + 27034 := by
    unfold C
    simp [show (839808 * k + 9011) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 27034) = 1259712 * k + 13517 := by
    unfold C
    simp [show (2519424 * k + 27034) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 13517) = 3779136 * k + 40552 := by
    unfold C
    simp [show (1259712 * k + 13517) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 40552) = 1889568 * k + 20276 := by
    unfold C
    simp [show (3779136 * k + 40552) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 20276) = 944784 * k + 10138 := by
    unfold C
    simp [show (1889568 * k + 20276) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 10138) = 472392 * k + 5069 := by
    unfold C
    simp [show (944784 * k + 10138) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 5069) = 1417176 * k + 15208 := by
    unfold C
    simp [show (472392 * k + 5069) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 15208) = 708588 * k + 7604 := by
    unfold C
    simp [show (1417176 * k + 15208) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 7604) = 354294 * k + 3802 := by
    unfold C
    simp [show (708588 * k + 7604) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 3802) = 177147 * k + 1901 := by
    unfold C
    simp [show (354294 * k + 3802) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 2811) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 2811))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_3183 : ∀ k : Nat,
    iterate (262144 * k + 3183) 29 = 177147 * k + 2152 ∧
      177147 * k + 2152 < 262144 * k + 3183 := by
  intro k
  have h1 : C (262144 * k + 3183) = 786432 * k + 9550 := by
    unfold C
    simp [show (262144 * k + 3183) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 9550) = 393216 * k + 4775 := by
    unfold C
    simp [show (786432 * k + 9550) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 4775) = 1179648 * k + 14326 := by
    unfold C
    simp [show (393216 * k + 4775) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 14326) = 589824 * k + 7163 := by
    unfold C
    simp [show (1179648 * k + 14326) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 7163) = 1769472 * k + 21490 := by
    unfold C
    simp [show (589824 * k + 7163) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 21490) = 884736 * k + 10745 := by
    unfold C
    simp [show (1769472 * k + 21490) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 10745) = 2654208 * k + 32236 := by
    unfold C
    simp [show (884736 * k + 10745) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 32236) = 1327104 * k + 16118 := by
    unfold C
    simp [show (2654208 * k + 32236) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 16118) = 663552 * k + 8059 := by
    unfold C
    simp [show (1327104 * k + 16118) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 8059) = 1990656 * k + 24178 := by
    unfold C
    simp [show (663552 * k + 8059) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 24178) = 995328 * k + 12089 := by
    unfold C
    simp [show (1990656 * k + 24178) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 12089) = 2985984 * k + 36268 := by
    unfold C
    simp [show (995328 * k + 12089) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 36268) = 1492992 * k + 18134 := by
    unfold C
    simp [show (2985984 * k + 36268) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 18134) = 746496 * k + 9067 := by
    unfold C
    simp [show (1492992 * k + 18134) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 9067) = 2239488 * k + 27202 := by
    unfold C
    simp [show (746496 * k + 9067) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 27202) = 1119744 * k + 13601 := by
    unfold C
    simp [show (2239488 * k + 27202) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 13601) = 3359232 * k + 40804 := by
    unfold C
    simp [show (1119744 * k + 13601) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 40804) = 1679616 * k + 20402 := by
    unfold C
    simp [show (3359232 * k + 40804) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 20402) = 839808 * k + 10201 := by
    unfold C
    simp [show (1679616 * k + 20402) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 10201) = 2519424 * k + 30604 := by
    unfold C
    simp [show (839808 * k + 10201) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 30604) = 1259712 * k + 15302 := by
    unfold C
    simp [show (2519424 * k + 30604) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 15302) = 629856 * k + 7651 := by
    unfold C
    simp [show (1259712 * k + 15302) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 7651) = 1889568 * k + 22954 := by
    unfold C
    simp [show (629856 * k + 7651) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 22954) = 944784 * k + 11477 := by
    unfold C
    simp [show (1889568 * k + 22954) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 11477) = 2834352 * k + 34432 := by
    unfold C
    simp [show (944784 * k + 11477) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 34432) = 1417176 * k + 17216 := by
    unfold C
    simp [show (2834352 * k + 34432) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 17216) = 708588 * k + 8608 := by
    unfold C
    simp [show (1417176 * k + 17216) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 8608) = 354294 * k + 4304 := by
    unfold C
    simp [show (708588 * k + 8608) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 4304) = 177147 * k + 2152 := by
    unfold C
    simp [show (354294 * k + 4304) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 3183) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 3183))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_3263 : ∀ k : Nat,
    iterate (262144 * k + 3263) 29 = 177147 * k + 2206 ∧
      177147 * k + 2206 < 262144 * k + 3263 := by
  intro k
  have h1 : C (262144 * k + 3263) = 786432 * k + 9790 := by
    unfold C
    simp [show (262144 * k + 3263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 9790) = 393216 * k + 4895 := by
    unfold C
    simp [show (786432 * k + 9790) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 4895) = 1179648 * k + 14686 := by
    unfold C
    simp [show (393216 * k + 4895) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 14686) = 589824 * k + 7343 := by
    unfold C
    simp [show (1179648 * k + 14686) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 7343) = 1769472 * k + 22030 := by
    unfold C
    simp [show (589824 * k + 7343) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 22030) = 884736 * k + 11015 := by
    unfold C
    simp [show (1769472 * k + 22030) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 11015) = 2654208 * k + 33046 := by
    unfold C
    simp [show (884736 * k + 11015) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 33046) = 1327104 * k + 16523 := by
    unfold C
    simp [show (2654208 * k + 33046) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 16523) = 3981312 * k + 49570 := by
    unfold C
    simp [show (1327104 * k + 16523) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 49570) = 1990656 * k + 24785 := by
    unfold C
    simp [show (3981312 * k + 49570) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 24785) = 5971968 * k + 74356 := by
    unfold C
    simp [show (1990656 * k + 24785) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 74356) = 2985984 * k + 37178 := by
    unfold C
    simp [show (5971968 * k + 74356) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 37178) = 1492992 * k + 18589 := by
    unfold C
    simp [show (2985984 * k + 37178) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 18589) = 4478976 * k + 55768 := by
    unfold C
    simp [show (1492992 * k + 18589) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 55768) = 2239488 * k + 27884 := by
    unfold C
    simp [show (4478976 * k + 55768) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 27884) = 1119744 * k + 13942 := by
    unfold C
    simp [show (2239488 * k + 27884) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 13942) = 559872 * k + 6971 := by
    unfold C
    simp [show (1119744 * k + 13942) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 6971) = 1679616 * k + 20914 := by
    unfold C
    simp [show (559872 * k + 6971) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 20914) = 839808 * k + 10457 := by
    unfold C
    simp [show (1679616 * k + 20914) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 10457) = 2519424 * k + 31372 := by
    unfold C
    simp [show (839808 * k + 10457) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 31372) = 1259712 * k + 15686 := by
    unfold C
    simp [show (2519424 * k + 31372) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 15686) = 629856 * k + 7843 := by
    unfold C
    simp [show (1259712 * k + 15686) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 7843) = 1889568 * k + 23530 := by
    unfold C
    simp [show (629856 * k + 7843) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 23530) = 944784 * k + 11765 := by
    unfold C
    simp [show (1889568 * k + 23530) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 11765) = 2834352 * k + 35296 := by
    unfold C
    simp [show (944784 * k + 11765) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 35296) = 1417176 * k + 17648 := by
    unfold C
    simp [show (2834352 * k + 35296) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 17648) = 708588 * k + 8824 := by
    unfold C
    simp [show (1417176 * k + 17648) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 8824) = 354294 * k + 4412 := by
    unfold C
    simp [show (708588 * k + 8824) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 4412) = 177147 * k + 2206 := by
    unfold C
    simp [show (354294 * k + 4412) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 3263) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 3263))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_3327 : ∀ k : Nat,
    iterate (262144 * k + 3327) 29 = 177147 * k + 2249 ∧
      177147 * k + 2249 < 262144 * k + 3327 := by
  intro k
  have h1 : C (262144 * k + 3327) = 786432 * k + 9982 := by
    unfold C
    simp [show (262144 * k + 3327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 9982) = 393216 * k + 4991 := by
    unfold C
    simp [show (786432 * k + 9982) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 4991) = 1179648 * k + 14974 := by
    unfold C
    simp [show (393216 * k + 4991) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 14974) = 589824 * k + 7487 := by
    unfold C
    simp [show (1179648 * k + 14974) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 7487) = 1769472 * k + 22462 := by
    unfold C
    simp [show (589824 * k + 7487) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 22462) = 884736 * k + 11231 := by
    unfold C
    simp [show (1769472 * k + 22462) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 11231) = 2654208 * k + 33694 := by
    unfold C
    simp [show (884736 * k + 11231) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 33694) = 1327104 * k + 16847 := by
    unfold C
    simp [show (2654208 * k + 33694) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 16847) = 3981312 * k + 50542 := by
    unfold C
    simp [show (1327104 * k + 16847) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 50542) = 1990656 * k + 25271 := by
    unfold C
    simp [show (3981312 * k + 50542) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 25271) = 5971968 * k + 75814 := by
    unfold C
    simp [show (1990656 * k + 25271) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 75814) = 2985984 * k + 37907 := by
    unfold C
    simp [show (5971968 * k + 75814) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 37907) = 8957952 * k + 113722 := by
    unfold C
    simp [show (2985984 * k + 37907) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 113722) = 4478976 * k + 56861 := by
    unfold C
    simp [show (8957952 * k + 113722) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 56861) = 13436928 * k + 170584 := by
    unfold C
    simp [show (4478976 * k + 56861) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 170584) = 6718464 * k + 85292 := by
    unfold C
    simp [show (13436928 * k + 170584) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 85292) = 3359232 * k + 42646 := by
    unfold C
    simp [show (6718464 * k + 85292) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 42646) = 1679616 * k + 21323 := by
    unfold C
    simp [show (3359232 * k + 42646) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 21323) = 5038848 * k + 63970 := by
    unfold C
    simp [show (1679616 * k + 21323) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 63970) = 2519424 * k + 31985 := by
    unfold C
    simp [show (5038848 * k + 63970) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 31985) = 7558272 * k + 95956 := by
    unfold C
    simp [show (2519424 * k + 31985) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 95956) = 3779136 * k + 47978 := by
    unfold C
    simp [show (7558272 * k + 95956) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 47978) = 1889568 * k + 23989 := by
    unfold C
    simp [show (3779136 * k + 47978) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 23989) = 5668704 * k + 71968 := by
    unfold C
    simp [show (1889568 * k + 23989) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 71968) = 2834352 * k + 35984 := by
    unfold C
    simp [show (5668704 * k + 71968) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 35984) = 1417176 * k + 17992 := by
    unfold C
    simp [show (2834352 * k + 35984) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 17992) = 708588 * k + 8996 := by
    unfold C
    simp [show (1417176 * k + 17992) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 8996) = 354294 * k + 4498 := by
    unfold C
    simp [show (708588 * k + 8996) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 4498) = 177147 * k + 2249 := by
    unfold C
    simp [show (354294 * k + 4498) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 3327) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 3327))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_3375 : ∀ k : Nat,
    iterate (262144 * k + 3375) 29 = 177147 * k + 2282 ∧
      177147 * k + 2282 < 262144 * k + 3375 := by
  intro k
  have h1 : C (262144 * k + 3375) = 786432 * k + 10126 := by
    unfold C
    simp [show (262144 * k + 3375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 10126) = 393216 * k + 5063 := by
    unfold C
    simp [show (786432 * k + 10126) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 5063) = 1179648 * k + 15190 := by
    unfold C
    simp [show (393216 * k + 5063) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 15190) = 589824 * k + 7595 := by
    unfold C
    simp [show (1179648 * k + 15190) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 7595) = 1769472 * k + 22786 := by
    unfold C
    simp [show (589824 * k + 7595) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 22786) = 884736 * k + 11393 := by
    unfold C
    simp [show (1769472 * k + 22786) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 11393) = 2654208 * k + 34180 := by
    unfold C
    simp [show (884736 * k + 11393) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 34180) = 1327104 * k + 17090 := by
    unfold C
    simp [show (2654208 * k + 34180) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 17090) = 663552 * k + 8545 := by
    unfold C
    simp [show (1327104 * k + 17090) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 8545) = 1990656 * k + 25636 := by
    unfold C
    simp [show (663552 * k + 8545) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 25636) = 995328 * k + 12818 := by
    unfold C
    simp [show (1990656 * k + 25636) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 12818) = 497664 * k + 6409 := by
    unfold C
    simp [show (995328 * k + 12818) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 6409) = 1492992 * k + 19228 := by
    unfold C
    simp [show (497664 * k + 6409) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 19228) = 746496 * k + 9614 := by
    unfold C
    simp [show (1492992 * k + 19228) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 9614) = 373248 * k + 4807 := by
    unfold C
    simp [show (746496 * k + 9614) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 4807) = 1119744 * k + 14422 := by
    unfold C
    simp [show (373248 * k + 4807) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 14422) = 559872 * k + 7211 := by
    unfold C
    simp [show (1119744 * k + 14422) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 7211) = 1679616 * k + 21634 := by
    unfold C
    simp [show (559872 * k + 7211) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 21634) = 839808 * k + 10817 := by
    unfold C
    simp [show (1679616 * k + 21634) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 10817) = 2519424 * k + 32452 := by
    unfold C
    simp [show (839808 * k + 10817) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 32452) = 1259712 * k + 16226 := by
    unfold C
    simp [show (2519424 * k + 32452) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 16226) = 629856 * k + 8113 := by
    unfold C
    simp [show (1259712 * k + 16226) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 8113) = 1889568 * k + 24340 := by
    unfold C
    simp [show (629856 * k + 8113) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 24340) = 944784 * k + 12170 := by
    unfold C
    simp [show (1889568 * k + 24340) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 12170) = 472392 * k + 6085 := by
    unfold C
    simp [show (944784 * k + 12170) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 6085) = 1417176 * k + 18256 := by
    unfold C
    simp [show (472392 * k + 6085) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 18256) = 708588 * k + 9128 := by
    unfold C
    simp [show (1417176 * k + 18256) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 9128) = 354294 * k + 4564 := by
    unfold C
    simp [show (708588 * k + 9128) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 4564) = 177147 * k + 2282 := by
    unfold C
    simp [show (354294 * k + 4564) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 3375) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 3375))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_3583 : ∀ k : Nat,
    iterate (262144 * k + 3583) 29 = 177147 * k + 2422 ∧
      177147 * k + 2422 < 262144 * k + 3583 := by
  intro k
  have h1 : C (262144 * k + 3583) = 786432 * k + 10750 := by
    unfold C
    simp [show (262144 * k + 3583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 10750) = 393216 * k + 5375 := by
    unfold C
    simp [show (786432 * k + 10750) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 5375) = 1179648 * k + 16126 := by
    unfold C
    simp [show (393216 * k + 5375) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 16126) = 589824 * k + 8063 := by
    unfold C
    simp [show (1179648 * k + 16126) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 8063) = 1769472 * k + 24190 := by
    unfold C
    simp [show (589824 * k + 8063) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 24190) = 884736 * k + 12095 := by
    unfold C
    simp [show (1769472 * k + 24190) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 12095) = 2654208 * k + 36286 := by
    unfold C
    simp [show (884736 * k + 12095) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 36286) = 1327104 * k + 18143 := by
    unfold C
    simp [show (2654208 * k + 36286) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 18143) = 3981312 * k + 54430 := by
    unfold C
    simp [show (1327104 * k + 18143) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 54430) = 1990656 * k + 27215 := by
    unfold C
    simp [show (3981312 * k + 54430) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 27215) = 5971968 * k + 81646 := by
    unfold C
    simp [show (1990656 * k + 27215) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 81646) = 2985984 * k + 40823 := by
    unfold C
    simp [show (5971968 * k + 81646) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 40823) = 8957952 * k + 122470 := by
    unfold C
    simp [show (2985984 * k + 40823) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 122470) = 4478976 * k + 61235 := by
    unfold C
    simp [show (8957952 * k + 122470) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 61235) = 13436928 * k + 183706 := by
    unfold C
    simp [show (4478976 * k + 61235) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 183706) = 6718464 * k + 91853 := by
    unfold C
    simp [show (13436928 * k + 183706) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 91853) = 20155392 * k + 275560 := by
    unfold C
    simp [show (6718464 * k + 91853) % 2 ≠ 0 by omega]
    omega
  have h18 : C (20155392 * k + 275560) = 10077696 * k + 137780 := by
    unfold C
    simp [show (20155392 * k + 275560) % 2 = 0 by omega]
    omega
  have h19 : C (10077696 * k + 137780) = 5038848 * k + 68890 := by
    unfold C
    simp [show (10077696 * k + 137780) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 68890) = 2519424 * k + 34445 := by
    unfold C
    simp [show (5038848 * k + 68890) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 34445) = 7558272 * k + 103336 := by
    unfold C
    simp [show (2519424 * k + 34445) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 103336) = 3779136 * k + 51668 := by
    unfold C
    simp [show (7558272 * k + 103336) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 51668) = 1889568 * k + 25834 := by
    unfold C
    simp [show (3779136 * k + 51668) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 25834) = 944784 * k + 12917 := by
    unfold C
    simp [show (1889568 * k + 25834) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 12917) = 2834352 * k + 38752 := by
    unfold C
    simp [show (944784 * k + 12917) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 38752) = 1417176 * k + 19376 := by
    unfold C
    simp [show (2834352 * k + 38752) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 19376) = 708588 * k + 9688 := by
    unfold C
    simp [show (1417176 * k + 19376) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 9688) = 354294 * k + 4844 := by
    unfold C
    simp [show (708588 * k + 9688) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 4844) = 177147 * k + 2422 := by
    unfold C
    simp [show (354294 * k + 4844) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 3583) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 3583))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_3615 : ∀ k : Nat,
    iterate (262144 * k + 3615) 29 = 177147 * k + 2444 ∧
      177147 * k + 2444 < 262144 * k + 3615 := by
  intro k
  have h1 : C (262144 * k + 3615) = 786432 * k + 10846 := by
    unfold C
    simp [show (262144 * k + 3615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 10846) = 393216 * k + 5423 := by
    unfold C
    simp [show (786432 * k + 10846) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 5423) = 1179648 * k + 16270 := by
    unfold C
    simp [show (393216 * k + 5423) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 16270) = 589824 * k + 8135 := by
    unfold C
    simp [show (1179648 * k + 16270) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 8135) = 1769472 * k + 24406 := by
    unfold C
    simp [show (589824 * k + 8135) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 24406) = 884736 * k + 12203 := by
    unfold C
    simp [show (1769472 * k + 24406) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 12203) = 2654208 * k + 36610 := by
    unfold C
    simp [show (884736 * k + 12203) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 36610) = 1327104 * k + 18305 := by
    unfold C
    simp [show (2654208 * k + 36610) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 18305) = 3981312 * k + 54916 := by
    unfold C
    simp [show (1327104 * k + 18305) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 54916) = 1990656 * k + 27458 := by
    unfold C
    simp [show (3981312 * k + 54916) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 27458) = 995328 * k + 13729 := by
    unfold C
    simp [show (1990656 * k + 27458) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 13729) = 2985984 * k + 41188 := by
    unfold C
    simp [show (995328 * k + 13729) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 41188) = 1492992 * k + 20594 := by
    unfold C
    simp [show (2985984 * k + 41188) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 20594) = 746496 * k + 10297 := by
    unfold C
    simp [show (1492992 * k + 20594) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 10297) = 2239488 * k + 30892 := by
    unfold C
    simp [show (746496 * k + 10297) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 30892) = 1119744 * k + 15446 := by
    unfold C
    simp [show (2239488 * k + 30892) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 15446) = 559872 * k + 7723 := by
    unfold C
    simp [show (1119744 * k + 15446) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 7723) = 1679616 * k + 23170 := by
    unfold C
    simp [show (559872 * k + 7723) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 23170) = 839808 * k + 11585 := by
    unfold C
    simp [show (1679616 * k + 23170) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 11585) = 2519424 * k + 34756 := by
    unfold C
    simp [show (839808 * k + 11585) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 34756) = 1259712 * k + 17378 := by
    unfold C
    simp [show (2519424 * k + 34756) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 17378) = 629856 * k + 8689 := by
    unfold C
    simp [show (1259712 * k + 17378) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 8689) = 1889568 * k + 26068 := by
    unfold C
    simp [show (629856 * k + 8689) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 26068) = 944784 * k + 13034 := by
    unfold C
    simp [show (1889568 * k + 26068) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 13034) = 472392 * k + 6517 := by
    unfold C
    simp [show (944784 * k + 13034) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 6517) = 1417176 * k + 19552 := by
    unfold C
    simp [show (472392 * k + 6517) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 19552) = 708588 * k + 9776 := by
    unfold C
    simp [show (1417176 * k + 19552) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 9776) = 354294 * k + 4888 := by
    unfold C
    simp [show (708588 * k + 9776) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 4888) = 177147 * k + 2444 := by
    unfold C
    simp [show (354294 * k + 4888) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 3615) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 3615))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_3775 : ∀ k : Nat,
    iterate (262144 * k + 3775) 29 = 177147 * k + 2552 ∧
      177147 * k + 2552 < 262144 * k + 3775 := by
  intro k
  have h1 : C (262144 * k + 3775) = 786432 * k + 11326 := by
    unfold C
    simp [show (262144 * k + 3775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 11326) = 393216 * k + 5663 := by
    unfold C
    simp [show (786432 * k + 11326) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 5663) = 1179648 * k + 16990 := by
    unfold C
    simp [show (393216 * k + 5663) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 16990) = 589824 * k + 8495 := by
    unfold C
    simp [show (1179648 * k + 16990) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 8495) = 1769472 * k + 25486 := by
    unfold C
    simp [show (589824 * k + 8495) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 25486) = 884736 * k + 12743 := by
    unfold C
    simp [show (1769472 * k + 25486) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 12743) = 2654208 * k + 38230 := by
    unfold C
    simp [show (884736 * k + 12743) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 38230) = 1327104 * k + 19115 := by
    unfold C
    simp [show (2654208 * k + 38230) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 19115) = 3981312 * k + 57346 := by
    unfold C
    simp [show (1327104 * k + 19115) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 57346) = 1990656 * k + 28673 := by
    unfold C
    simp [show (3981312 * k + 57346) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 28673) = 5971968 * k + 86020 := by
    unfold C
    simp [show (1990656 * k + 28673) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 86020) = 2985984 * k + 43010 := by
    unfold C
    simp [show (5971968 * k + 86020) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 43010) = 1492992 * k + 21505 := by
    unfold C
    simp [show (2985984 * k + 43010) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 21505) = 4478976 * k + 64516 := by
    unfold C
    simp [show (1492992 * k + 21505) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 64516) = 2239488 * k + 32258 := by
    unfold C
    simp [show (4478976 * k + 64516) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 32258) = 1119744 * k + 16129 := by
    unfold C
    simp [show (2239488 * k + 32258) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 16129) = 3359232 * k + 48388 := by
    unfold C
    simp [show (1119744 * k + 16129) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 48388) = 1679616 * k + 24194 := by
    unfold C
    simp [show (3359232 * k + 48388) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 24194) = 839808 * k + 12097 := by
    unfold C
    simp [show (1679616 * k + 24194) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 12097) = 2519424 * k + 36292 := by
    unfold C
    simp [show (839808 * k + 12097) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 36292) = 1259712 * k + 18146 := by
    unfold C
    simp [show (2519424 * k + 36292) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 18146) = 629856 * k + 9073 := by
    unfold C
    simp [show (1259712 * k + 18146) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 9073) = 1889568 * k + 27220 := by
    unfold C
    simp [show (629856 * k + 9073) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 27220) = 944784 * k + 13610 := by
    unfold C
    simp [show (1889568 * k + 27220) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 13610) = 472392 * k + 6805 := by
    unfold C
    simp [show (944784 * k + 13610) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 6805) = 1417176 * k + 20416 := by
    unfold C
    simp [show (472392 * k + 6805) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 20416) = 708588 * k + 10208 := by
    unfold C
    simp [show (1417176 * k + 20416) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 10208) = 354294 * k + 5104 := by
    unfold C
    simp [show (708588 * k + 10208) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 5104) = 177147 * k + 2552 := by
    unfold C
    simp [show (354294 * k + 5104) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 3775) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 3775))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_4143 : ∀ k : Nat,
    iterate (262144 * k + 4143) 29 = 177147 * k + 2801 ∧
      177147 * k + 2801 < 262144 * k + 4143 := by
  intro k
  have h1 : C (262144 * k + 4143) = 786432 * k + 12430 := by
    unfold C
    simp [show (262144 * k + 4143) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 12430) = 393216 * k + 6215 := by
    unfold C
    simp [show (786432 * k + 12430) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 6215) = 1179648 * k + 18646 := by
    unfold C
    simp [show (393216 * k + 6215) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 18646) = 589824 * k + 9323 := by
    unfold C
    simp [show (1179648 * k + 18646) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 9323) = 1769472 * k + 27970 := by
    unfold C
    simp [show (589824 * k + 9323) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 27970) = 884736 * k + 13985 := by
    unfold C
    simp [show (1769472 * k + 27970) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 13985) = 2654208 * k + 41956 := by
    unfold C
    simp [show (884736 * k + 13985) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 41956) = 1327104 * k + 20978 := by
    unfold C
    simp [show (2654208 * k + 41956) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 20978) = 663552 * k + 10489 := by
    unfold C
    simp [show (1327104 * k + 20978) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 10489) = 1990656 * k + 31468 := by
    unfold C
    simp [show (663552 * k + 10489) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 31468) = 995328 * k + 15734 := by
    unfold C
    simp [show (1990656 * k + 31468) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 15734) = 497664 * k + 7867 := by
    unfold C
    simp [show (995328 * k + 15734) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 7867) = 1492992 * k + 23602 := by
    unfold C
    simp [show (497664 * k + 7867) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 23602) = 746496 * k + 11801 := by
    unfold C
    simp [show (1492992 * k + 23602) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 11801) = 2239488 * k + 35404 := by
    unfold C
    simp [show (746496 * k + 11801) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 35404) = 1119744 * k + 17702 := by
    unfold C
    simp [show (2239488 * k + 35404) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 17702) = 559872 * k + 8851 := by
    unfold C
    simp [show (1119744 * k + 17702) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 8851) = 1679616 * k + 26554 := by
    unfold C
    simp [show (559872 * k + 8851) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 26554) = 839808 * k + 13277 := by
    unfold C
    simp [show (1679616 * k + 26554) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 13277) = 2519424 * k + 39832 := by
    unfold C
    simp [show (839808 * k + 13277) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 39832) = 1259712 * k + 19916 := by
    unfold C
    simp [show (2519424 * k + 39832) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 19916) = 629856 * k + 9958 := by
    unfold C
    simp [show (1259712 * k + 19916) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 9958) = 314928 * k + 4979 := by
    unfold C
    simp [show (629856 * k + 9958) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 4979) = 944784 * k + 14938 := by
    unfold C
    simp [show (314928 * k + 4979) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 14938) = 472392 * k + 7469 := by
    unfold C
    simp [show (944784 * k + 14938) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 7469) = 1417176 * k + 22408 := by
    unfold C
    simp [show (472392 * k + 7469) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 22408) = 708588 * k + 11204 := by
    unfold C
    simp [show (1417176 * k + 22408) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 11204) = 354294 * k + 5602 := by
    unfold C
    simp [show (708588 * k + 11204) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 5602) = 177147 * k + 2801 := by
    unfold C
    simp [show (354294 * k + 5602) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 4143) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 4143))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_4543 : ∀ k : Nat,
    iterate (262144 * k + 4543) 29 = 177147 * k + 3071 ∧
      177147 * k + 3071 < 262144 * k + 4543 := by
  intro k
  have h1 : C (262144 * k + 4543) = 786432 * k + 13630 := by
    unfold C
    simp [show (262144 * k + 4543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 13630) = 393216 * k + 6815 := by
    unfold C
    simp [show (786432 * k + 13630) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 6815) = 1179648 * k + 20446 := by
    unfold C
    simp [show (393216 * k + 6815) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 20446) = 589824 * k + 10223 := by
    unfold C
    simp [show (1179648 * k + 20446) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 10223) = 1769472 * k + 30670 := by
    unfold C
    simp [show (589824 * k + 10223) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 30670) = 884736 * k + 15335 := by
    unfold C
    simp [show (1769472 * k + 30670) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 15335) = 2654208 * k + 46006 := by
    unfold C
    simp [show (884736 * k + 15335) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 46006) = 1327104 * k + 23003 := by
    unfold C
    simp [show (2654208 * k + 46006) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 23003) = 3981312 * k + 69010 := by
    unfold C
    simp [show (1327104 * k + 23003) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 69010) = 1990656 * k + 34505 := by
    unfold C
    simp [show (3981312 * k + 69010) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 34505) = 5971968 * k + 103516 := by
    unfold C
    simp [show (1990656 * k + 34505) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 103516) = 2985984 * k + 51758 := by
    unfold C
    simp [show (5971968 * k + 103516) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 51758) = 1492992 * k + 25879 := by
    unfold C
    simp [show (2985984 * k + 51758) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 25879) = 4478976 * k + 77638 := by
    unfold C
    simp [show (1492992 * k + 25879) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 77638) = 2239488 * k + 38819 := by
    unfold C
    simp [show (4478976 * k + 77638) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 38819) = 6718464 * k + 116458 := by
    unfold C
    simp [show (2239488 * k + 38819) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 116458) = 3359232 * k + 58229 := by
    unfold C
    simp [show (6718464 * k + 116458) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 58229) = 10077696 * k + 174688 := by
    unfold C
    simp [show (3359232 * k + 58229) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 174688) = 5038848 * k + 87344 := by
    unfold C
    simp [show (10077696 * k + 174688) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 87344) = 2519424 * k + 43672 := by
    unfold C
    simp [show (5038848 * k + 87344) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 43672) = 1259712 * k + 21836 := by
    unfold C
    simp [show (2519424 * k + 43672) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 21836) = 629856 * k + 10918 := by
    unfold C
    simp [show (1259712 * k + 21836) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 10918) = 314928 * k + 5459 := by
    unfold C
    simp [show (629856 * k + 10918) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 5459) = 944784 * k + 16378 := by
    unfold C
    simp [show (314928 * k + 5459) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 16378) = 472392 * k + 8189 := by
    unfold C
    simp [show (944784 * k + 16378) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 8189) = 1417176 * k + 24568 := by
    unfold C
    simp [show (472392 * k + 8189) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 24568) = 708588 * k + 12284 := by
    unfold C
    simp [show (1417176 * k + 24568) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 12284) = 354294 * k + 6142 := by
    unfold C
    simp [show (708588 * k + 12284) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 6142) = 177147 * k + 3071 := by
    unfold C
    simp [show (354294 * k + 6142) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 4543) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 4543))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_5167 : ∀ k : Nat,
    iterate (262144 * k + 5167) 29 = 177147 * k + 3493 ∧
      177147 * k + 3493 < 262144 * k + 5167 := by
  intro k
  have h1 : C (262144 * k + 5167) = 786432 * k + 15502 := by
    unfold C
    simp [show (262144 * k + 5167) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 15502) = 393216 * k + 7751 := by
    unfold C
    simp [show (786432 * k + 15502) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 7751) = 1179648 * k + 23254 := by
    unfold C
    simp [show (393216 * k + 7751) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 23254) = 589824 * k + 11627 := by
    unfold C
    simp [show (1179648 * k + 23254) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 11627) = 1769472 * k + 34882 := by
    unfold C
    simp [show (589824 * k + 11627) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 34882) = 884736 * k + 17441 := by
    unfold C
    simp [show (1769472 * k + 34882) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 17441) = 2654208 * k + 52324 := by
    unfold C
    simp [show (884736 * k + 17441) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 52324) = 1327104 * k + 26162 := by
    unfold C
    simp [show (2654208 * k + 52324) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 26162) = 663552 * k + 13081 := by
    unfold C
    simp [show (1327104 * k + 26162) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 13081) = 1990656 * k + 39244 := by
    unfold C
    simp [show (663552 * k + 13081) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 39244) = 995328 * k + 19622 := by
    unfold C
    simp [show (1990656 * k + 39244) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 19622) = 497664 * k + 9811 := by
    unfold C
    simp [show (995328 * k + 19622) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 9811) = 1492992 * k + 29434 := by
    unfold C
    simp [show (497664 * k + 9811) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 29434) = 746496 * k + 14717 := by
    unfold C
    simp [show (1492992 * k + 29434) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 14717) = 2239488 * k + 44152 := by
    unfold C
    simp [show (746496 * k + 14717) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 44152) = 1119744 * k + 22076 := by
    unfold C
    simp [show (2239488 * k + 44152) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 22076) = 559872 * k + 11038 := by
    unfold C
    simp [show (1119744 * k + 22076) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 11038) = 279936 * k + 5519 := by
    unfold C
    simp [show (559872 * k + 11038) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 5519) = 839808 * k + 16558 := by
    unfold C
    simp [show (279936 * k + 5519) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 16558) = 419904 * k + 8279 := by
    unfold C
    simp [show (839808 * k + 16558) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 8279) = 1259712 * k + 24838 := by
    unfold C
    simp [show (419904 * k + 8279) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 24838) = 629856 * k + 12419 := by
    unfold C
    simp [show (1259712 * k + 24838) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 12419) = 1889568 * k + 37258 := by
    unfold C
    simp [show (629856 * k + 12419) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 37258) = 944784 * k + 18629 := by
    unfold C
    simp [show (1889568 * k + 37258) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 18629) = 2834352 * k + 55888 := by
    unfold C
    simp [show (944784 * k + 18629) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 55888) = 1417176 * k + 27944 := by
    unfold C
    simp [show (2834352 * k + 55888) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 27944) = 708588 * k + 13972 := by
    unfold C
    simp [show (1417176 * k + 27944) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 13972) = 354294 * k + 6986 := by
    unfold C
    simp [show (708588 * k + 13972) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 6986) = 177147 * k + 3493 := by
    unfold C
    simp [show (354294 * k + 6986) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 5167) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 5167))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard001
