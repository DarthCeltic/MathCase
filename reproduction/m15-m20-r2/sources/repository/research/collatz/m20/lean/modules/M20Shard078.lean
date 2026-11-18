import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard078

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_603647 : ∀ k : Nat,
    iterate (1048576 * k + 603647) 32 = 531441 * k + 305942 ∧
      531441 * k + 305942 < 1048576 * k + 603647 := by
  intro k
  have h1 : C (1048576 * k + 603647) = 3145728 * k + 1810942 := by
    unfold C
    simp [show (1048576 * k + 603647) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1810942) = 1572864 * k + 905471 := by
    unfold C
    simp [show (3145728 * k + 1810942) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 905471) = 4718592 * k + 2716414 := by
    unfold C
    simp [show (1572864 * k + 905471) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2716414) = 2359296 * k + 1358207 := by
    unfold C
    simp [show (4718592 * k + 2716414) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1358207) = 7077888 * k + 4074622 := by
    unfold C
    simp [show (2359296 * k + 1358207) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4074622) = 3538944 * k + 2037311 := by
    unfold C
    simp [show (7077888 * k + 4074622) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2037311) = 10616832 * k + 6111934 := by
    unfold C
    simp [show (3538944 * k + 2037311) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6111934) = 5308416 * k + 3055967 := by
    unfold C
    simp [show (10616832 * k + 6111934) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3055967) = 15925248 * k + 9167902 := by
    unfold C
    simp [show (5308416 * k + 3055967) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9167902) = 7962624 * k + 4583951 := by
    unfold C
    simp [show (15925248 * k + 9167902) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4583951) = 23887872 * k + 13751854 := by
    unfold C
    simp [show (7962624 * k + 4583951) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 13751854) = 11943936 * k + 6875927 := by
    unfold C
    simp [show (23887872 * k + 13751854) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6875927) = 35831808 * k + 20627782 := by
    unfold C
    simp [show (11943936 * k + 6875927) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 20627782) = 17915904 * k + 10313891 := by
    unfold C
    simp [show (35831808 * k + 20627782) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 10313891) = 53747712 * k + 30941674 := by
    unfold C
    simp [show (17915904 * k + 10313891) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 30941674) = 26873856 * k + 15470837 := by
    unfold C
    simp [show (53747712 * k + 30941674) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 15470837) = 80621568 * k + 46412512 := by
    unfold C
    simp [show (26873856 * k + 15470837) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 46412512) = 40310784 * k + 23206256 := by
    unfold C
    simp [show (80621568 * k + 46412512) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 23206256) = 20155392 * k + 11603128 := by
    unfold C
    simp [show (40310784 * k + 23206256) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 11603128) = 10077696 * k + 5801564 := by
    unfold C
    simp [show (20155392 * k + 11603128) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5801564) = 5038848 * k + 2900782 := by
    unfold C
    simp [show (10077696 * k + 5801564) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2900782) = 2519424 * k + 1450391 := by
    unfold C
    simp [show (5038848 * k + 2900782) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1450391) = 7558272 * k + 4351174 := by
    unfold C
    simp [show (2519424 * k + 1450391) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4351174) = 3779136 * k + 2175587 := by
    unfold C
    simp [show (7558272 * k + 4351174) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2175587) = 11337408 * k + 6526762 := by
    unfold C
    simp [show (3779136 * k + 2175587) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6526762) = 5668704 * k + 3263381 := by
    unfold C
    simp [show (11337408 * k + 6526762) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3263381) = 17006112 * k + 9790144 := by
    unfold C
    simp [show (5668704 * k + 3263381) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9790144) = 8503056 * k + 4895072 := by
    unfold C
    simp [show (17006112 * k + 9790144) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4895072) = 4251528 * k + 2447536 := by
    unfold C
    simp [show (8503056 * k + 4895072) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2447536) = 2125764 * k + 1223768 := by
    unfold C
    simp [show (4251528 * k + 2447536) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1223768) = 1062882 * k + 611884 := by
    unfold C
    simp [show (2125764 * k + 1223768) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 611884) = 531441 * k + 305942 := by
    unfold C
    simp [show (1062882 * k + 611884) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 603647) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 603647)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_604191 : ∀ k : Nat,
    iterate (1048576 * k + 604191) 32 = 531441 * k + 306218 ∧
      531441 * k + 306218 < 1048576 * k + 604191 := by
  intro k
  have h1 : C (1048576 * k + 604191) = 3145728 * k + 1812574 := by
    unfold C
    simp [show (1048576 * k + 604191) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1812574) = 1572864 * k + 906287 := by
    unfold C
    simp [show (3145728 * k + 1812574) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 906287) = 4718592 * k + 2718862 := by
    unfold C
    simp [show (1572864 * k + 906287) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2718862) = 2359296 * k + 1359431 := by
    unfold C
    simp [show (4718592 * k + 2718862) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1359431) = 7077888 * k + 4078294 := by
    unfold C
    simp [show (2359296 * k + 1359431) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4078294) = 3538944 * k + 2039147 := by
    unfold C
    simp [show (7077888 * k + 4078294) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2039147) = 10616832 * k + 6117442 := by
    unfold C
    simp [show (3538944 * k + 2039147) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6117442) = 5308416 * k + 3058721 := by
    unfold C
    simp [show (10616832 * k + 6117442) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3058721) = 15925248 * k + 9176164 := by
    unfold C
    simp [show (5308416 * k + 3058721) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9176164) = 7962624 * k + 4588082 := by
    unfold C
    simp [show (15925248 * k + 9176164) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4588082) = 3981312 * k + 2294041 := by
    unfold C
    simp [show (7962624 * k + 4588082) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2294041) = 11943936 * k + 6882124 := by
    unfold C
    simp [show (3981312 * k + 2294041) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6882124) = 5971968 * k + 3441062 := by
    unfold C
    simp [show (11943936 * k + 6882124) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3441062) = 2985984 * k + 1720531 := by
    unfold C
    simp [show (5971968 * k + 3441062) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1720531) = 8957952 * k + 5161594 := by
    unfold C
    simp [show (2985984 * k + 1720531) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5161594) = 4478976 * k + 2580797 := by
    unfold C
    simp [show (8957952 * k + 5161594) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2580797) = 13436928 * k + 7742392 := by
    unfold C
    simp [show (4478976 * k + 2580797) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7742392) = 6718464 * k + 3871196 := by
    unfold C
    simp [show (13436928 * k + 7742392) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3871196) = 3359232 * k + 1935598 := by
    unfold C
    simp [show (6718464 * k + 3871196) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1935598) = 1679616 * k + 967799 := by
    unfold C
    simp [show (3359232 * k + 1935598) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 967799) = 5038848 * k + 2903398 := by
    unfold C
    simp [show (1679616 * k + 967799) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2903398) = 2519424 * k + 1451699 := by
    unfold C
    simp [show (5038848 * k + 2903398) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1451699) = 7558272 * k + 4355098 := by
    unfold C
    simp [show (2519424 * k + 1451699) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4355098) = 3779136 * k + 2177549 := by
    unfold C
    simp [show (7558272 * k + 4355098) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2177549) = 11337408 * k + 6532648 := by
    unfold C
    simp [show (3779136 * k + 2177549) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6532648) = 5668704 * k + 3266324 := by
    unfold C
    simp [show (11337408 * k + 6532648) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3266324) = 2834352 * k + 1633162 := by
    unfold C
    simp [show (5668704 * k + 3266324) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1633162) = 1417176 * k + 816581 := by
    unfold C
    simp [show (2834352 * k + 1633162) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 816581) = 4251528 * k + 2449744 := by
    unfold C
    simp [show (1417176 * k + 816581) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2449744) = 2125764 * k + 1224872 := by
    unfold C
    simp [show (4251528 * k + 2449744) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1224872) = 1062882 * k + 612436 := by
    unfold C
    simp [show (2125764 * k + 1224872) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 612436) = 531441 * k + 306218 := by
    unfold C
    simp [show (1062882 * k + 612436) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 604191) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 604191)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_604783 : ∀ k : Nat,
    iterate (1048576 * k + 604783) 32 = 531441 * k + 306518 ∧
      531441 * k + 306518 < 1048576 * k + 604783 := by
  intro k
  have h1 : C (1048576 * k + 604783) = 3145728 * k + 1814350 := by
    unfold C
    simp [show (1048576 * k + 604783) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1814350) = 1572864 * k + 907175 := by
    unfold C
    simp [show (3145728 * k + 1814350) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 907175) = 4718592 * k + 2721526 := by
    unfold C
    simp [show (1572864 * k + 907175) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2721526) = 2359296 * k + 1360763 := by
    unfold C
    simp [show (4718592 * k + 2721526) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1360763) = 7077888 * k + 4082290 := by
    unfold C
    simp [show (2359296 * k + 1360763) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4082290) = 3538944 * k + 2041145 := by
    unfold C
    simp [show (7077888 * k + 4082290) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2041145) = 10616832 * k + 6123436 := by
    unfold C
    simp [show (3538944 * k + 2041145) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6123436) = 5308416 * k + 3061718 := by
    unfold C
    simp [show (10616832 * k + 6123436) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3061718) = 2654208 * k + 1530859 := by
    unfold C
    simp [show (5308416 * k + 3061718) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1530859) = 7962624 * k + 4592578 := by
    unfold C
    simp [show (2654208 * k + 1530859) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4592578) = 3981312 * k + 2296289 := by
    unfold C
    simp [show (7962624 * k + 4592578) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2296289) = 11943936 * k + 6888868 := by
    unfold C
    simp [show (3981312 * k + 2296289) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6888868) = 5971968 * k + 3444434 := by
    unfold C
    simp [show (11943936 * k + 6888868) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3444434) = 2985984 * k + 1722217 := by
    unfold C
    simp [show (5971968 * k + 3444434) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1722217) = 8957952 * k + 5166652 := by
    unfold C
    simp [show (2985984 * k + 1722217) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5166652) = 4478976 * k + 2583326 := by
    unfold C
    simp [show (8957952 * k + 5166652) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2583326) = 2239488 * k + 1291663 := by
    unfold C
    simp [show (4478976 * k + 2583326) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1291663) = 6718464 * k + 3874990 := by
    unfold C
    simp [show (2239488 * k + 1291663) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3874990) = 3359232 * k + 1937495 := by
    unfold C
    simp [show (6718464 * k + 3874990) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1937495) = 10077696 * k + 5812486 := by
    unfold C
    simp [show (3359232 * k + 1937495) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5812486) = 5038848 * k + 2906243 := by
    unfold C
    simp [show (10077696 * k + 5812486) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2906243) = 15116544 * k + 8718730 := by
    unfold C
    simp [show (5038848 * k + 2906243) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8718730) = 7558272 * k + 4359365 := by
    unfold C
    simp [show (15116544 * k + 8718730) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4359365) = 22674816 * k + 13078096 := by
    unfold C
    simp [show (7558272 * k + 4359365) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 13078096) = 11337408 * k + 6539048 := by
    unfold C
    simp [show (22674816 * k + 13078096) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6539048) = 5668704 * k + 3269524 := by
    unfold C
    simp [show (11337408 * k + 6539048) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3269524) = 2834352 * k + 1634762 := by
    unfold C
    simp [show (5668704 * k + 3269524) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1634762) = 1417176 * k + 817381 := by
    unfold C
    simp [show (2834352 * k + 1634762) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 817381) = 4251528 * k + 2452144 := by
    unfold C
    simp [show (1417176 * k + 817381) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2452144) = 2125764 * k + 1226072 := by
    unfold C
    simp [show (4251528 * k + 2452144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1226072) = 1062882 * k + 613036 := by
    unfold C
    simp [show (2125764 * k + 1226072) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 613036) = 531441 * k + 306518 := by
    unfold C
    simp [show (1062882 * k + 613036) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 604783) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 604783)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_605351 : ∀ k : Nat,
    iterate (1048576 * k + 605351) 32 = 531441 * k + 306806 ∧
      531441 * k + 306806 < 1048576 * k + 605351 := by
  intro k
  have h1 : C (1048576 * k + 605351) = 3145728 * k + 1816054 := by
    unfold C
    simp [show (1048576 * k + 605351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1816054) = 1572864 * k + 908027 := by
    unfold C
    simp [show (3145728 * k + 1816054) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 908027) = 4718592 * k + 2724082 := by
    unfold C
    simp [show (1572864 * k + 908027) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2724082) = 2359296 * k + 1362041 := by
    unfold C
    simp [show (4718592 * k + 2724082) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1362041) = 7077888 * k + 4086124 := by
    unfold C
    simp [show (2359296 * k + 1362041) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4086124) = 3538944 * k + 2043062 := by
    unfold C
    simp [show (7077888 * k + 4086124) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2043062) = 1769472 * k + 1021531 := by
    unfold C
    simp [show (3538944 * k + 2043062) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1021531) = 5308416 * k + 3064594 := by
    unfold C
    simp [show (1769472 * k + 1021531) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3064594) = 2654208 * k + 1532297 := by
    unfold C
    simp [show (5308416 * k + 3064594) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1532297) = 7962624 * k + 4596892 := by
    unfold C
    simp [show (2654208 * k + 1532297) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4596892) = 3981312 * k + 2298446 := by
    unfold C
    simp [show (7962624 * k + 4596892) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2298446) = 1990656 * k + 1149223 := by
    unfold C
    simp [show (3981312 * k + 2298446) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1149223) = 5971968 * k + 3447670 := by
    unfold C
    simp [show (1990656 * k + 1149223) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3447670) = 2985984 * k + 1723835 := by
    unfold C
    simp [show (5971968 * k + 3447670) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1723835) = 8957952 * k + 5171506 := by
    unfold C
    simp [show (2985984 * k + 1723835) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5171506) = 4478976 * k + 2585753 := by
    unfold C
    simp [show (8957952 * k + 5171506) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2585753) = 13436928 * k + 7757260 := by
    unfold C
    simp [show (4478976 * k + 2585753) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7757260) = 6718464 * k + 3878630 := by
    unfold C
    simp [show (13436928 * k + 7757260) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3878630) = 3359232 * k + 1939315 := by
    unfold C
    simp [show (6718464 * k + 3878630) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1939315) = 10077696 * k + 5817946 := by
    unfold C
    simp [show (3359232 * k + 1939315) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5817946) = 5038848 * k + 2908973 := by
    unfold C
    simp [show (10077696 * k + 5817946) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2908973) = 15116544 * k + 8726920 := by
    unfold C
    simp [show (5038848 * k + 2908973) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8726920) = 7558272 * k + 4363460 := by
    unfold C
    simp [show (15116544 * k + 8726920) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4363460) = 3779136 * k + 2181730 := by
    unfold C
    simp [show (7558272 * k + 4363460) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2181730) = 1889568 * k + 1090865 := by
    unfold C
    simp [show (3779136 * k + 2181730) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1090865) = 5668704 * k + 3272596 := by
    unfold C
    simp [show (1889568 * k + 1090865) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3272596) = 2834352 * k + 1636298 := by
    unfold C
    simp [show (5668704 * k + 3272596) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1636298) = 1417176 * k + 818149 := by
    unfold C
    simp [show (2834352 * k + 1636298) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 818149) = 4251528 * k + 2454448 := by
    unfold C
    simp [show (1417176 * k + 818149) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2454448) = 2125764 * k + 1227224 := by
    unfold C
    simp [show (4251528 * k + 2454448) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1227224) = 1062882 * k + 613612 := by
    unfold C
    simp [show (2125764 * k + 1227224) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 613612) = 531441 * k + 306806 := by
    unfold C
    simp [show (1062882 * k + 613612) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 605351) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 605351)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_605799 : ∀ k : Nat,
    iterate (1048576 * k + 605799) 32 = 531441 * k + 307033 ∧
      531441 * k + 307033 < 1048576 * k + 605799 := by
  intro k
  have h1 : C (1048576 * k + 605799) = 3145728 * k + 1817398 := by
    unfold C
    simp [show (1048576 * k + 605799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1817398) = 1572864 * k + 908699 := by
    unfold C
    simp [show (3145728 * k + 1817398) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 908699) = 4718592 * k + 2726098 := by
    unfold C
    simp [show (1572864 * k + 908699) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2726098) = 2359296 * k + 1363049 := by
    unfold C
    simp [show (4718592 * k + 2726098) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1363049) = 7077888 * k + 4089148 := by
    unfold C
    simp [show (2359296 * k + 1363049) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4089148) = 3538944 * k + 2044574 := by
    unfold C
    simp [show (7077888 * k + 4089148) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2044574) = 1769472 * k + 1022287 := by
    unfold C
    simp [show (3538944 * k + 2044574) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1022287) = 5308416 * k + 3066862 := by
    unfold C
    simp [show (1769472 * k + 1022287) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3066862) = 2654208 * k + 1533431 := by
    unfold C
    simp [show (5308416 * k + 3066862) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1533431) = 7962624 * k + 4600294 := by
    unfold C
    simp [show (2654208 * k + 1533431) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4600294) = 3981312 * k + 2300147 := by
    unfold C
    simp [show (7962624 * k + 4600294) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2300147) = 11943936 * k + 6900442 := by
    unfold C
    simp [show (3981312 * k + 2300147) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6900442) = 5971968 * k + 3450221 := by
    unfold C
    simp [show (11943936 * k + 6900442) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3450221) = 17915904 * k + 10350664 := by
    unfold C
    simp [show (5971968 * k + 3450221) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10350664) = 8957952 * k + 5175332 := by
    unfold C
    simp [show (17915904 * k + 10350664) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5175332) = 4478976 * k + 2587666 := by
    unfold C
    simp [show (8957952 * k + 5175332) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2587666) = 2239488 * k + 1293833 := by
    unfold C
    simp [show (4478976 * k + 2587666) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1293833) = 6718464 * k + 3881500 := by
    unfold C
    simp [show (2239488 * k + 1293833) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3881500) = 3359232 * k + 1940750 := by
    unfold C
    simp [show (6718464 * k + 3881500) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1940750) = 1679616 * k + 970375 := by
    unfold C
    simp [show (3359232 * k + 1940750) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 970375) = 5038848 * k + 2911126 := by
    unfold C
    simp [show (1679616 * k + 970375) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2911126) = 2519424 * k + 1455563 := by
    unfold C
    simp [show (5038848 * k + 2911126) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1455563) = 7558272 * k + 4366690 := by
    unfold C
    simp [show (2519424 * k + 1455563) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4366690) = 3779136 * k + 2183345 := by
    unfold C
    simp [show (7558272 * k + 4366690) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2183345) = 11337408 * k + 6550036 := by
    unfold C
    simp [show (3779136 * k + 2183345) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6550036) = 5668704 * k + 3275018 := by
    unfold C
    simp [show (11337408 * k + 6550036) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3275018) = 2834352 * k + 1637509 := by
    unfold C
    simp [show (5668704 * k + 3275018) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1637509) = 8503056 * k + 4912528 := by
    unfold C
    simp [show (2834352 * k + 1637509) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4912528) = 4251528 * k + 2456264 := by
    unfold C
    simp [show (8503056 * k + 4912528) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2456264) = 2125764 * k + 1228132 := by
    unfold C
    simp [show (4251528 * k + 2456264) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1228132) = 1062882 * k + 614066 := by
    unfold C
    simp [show (2125764 * k + 1228132) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 614066) = 531441 * k + 307033 := by
    unfold C
    simp [show (1062882 * k + 614066) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 605799) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 605799)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_605979 : ∀ k : Nat,
    iterate (1048576 * k + 605979) 32 = 531441 * k + 307124 ∧
      531441 * k + 307124 < 1048576 * k + 605979 := by
  intro k
  have h1 : C (1048576 * k + 605979) = 3145728 * k + 1817938 := by
    unfold C
    simp [show (1048576 * k + 605979) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1817938) = 1572864 * k + 908969 := by
    unfold C
    simp [show (3145728 * k + 1817938) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 908969) = 4718592 * k + 2726908 := by
    unfold C
    simp [show (1572864 * k + 908969) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2726908) = 2359296 * k + 1363454 := by
    unfold C
    simp [show (4718592 * k + 2726908) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1363454) = 1179648 * k + 681727 := by
    unfold C
    simp [show (2359296 * k + 1363454) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 681727) = 3538944 * k + 2045182 := by
    unfold C
    simp [show (1179648 * k + 681727) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2045182) = 1769472 * k + 1022591 := by
    unfold C
    simp [show (3538944 * k + 2045182) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1022591) = 5308416 * k + 3067774 := by
    unfold C
    simp [show (1769472 * k + 1022591) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3067774) = 2654208 * k + 1533887 := by
    unfold C
    simp [show (5308416 * k + 3067774) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1533887) = 7962624 * k + 4601662 := by
    unfold C
    simp [show (2654208 * k + 1533887) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4601662) = 3981312 * k + 2300831 := by
    unfold C
    simp [show (7962624 * k + 4601662) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2300831) = 11943936 * k + 6902494 := by
    unfold C
    simp [show (3981312 * k + 2300831) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6902494) = 5971968 * k + 3451247 := by
    unfold C
    simp [show (11943936 * k + 6902494) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3451247) = 17915904 * k + 10353742 := by
    unfold C
    simp [show (5971968 * k + 3451247) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10353742) = 8957952 * k + 5176871 := by
    unfold C
    simp [show (17915904 * k + 10353742) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5176871) = 26873856 * k + 15530614 := by
    unfold C
    simp [show (8957952 * k + 5176871) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 15530614) = 13436928 * k + 7765307 := by
    unfold C
    simp [show (26873856 * k + 15530614) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7765307) = 40310784 * k + 23295922 := by
    unfold C
    simp [show (13436928 * k + 7765307) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 23295922) = 20155392 * k + 11647961 := by
    unfold C
    simp [show (40310784 * k + 23295922) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 11647961) = 60466176 * k + 34943884 := by
    unfold C
    simp [show (20155392 * k + 11647961) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 34943884) = 30233088 * k + 17471942 := by
    unfold C
    simp [show (60466176 * k + 34943884) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 17471942) = 15116544 * k + 8735971 := by
    unfold C
    simp [show (30233088 * k + 17471942) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8735971) = 45349632 * k + 26207914 := by
    unfold C
    simp [show (15116544 * k + 8735971) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 26207914) = 22674816 * k + 13103957 := by
    unfold C
    simp [show (45349632 * k + 26207914) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 13103957) = 68024448 * k + 39311872 := by
    unfold C
    simp [show (22674816 * k + 13103957) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 39311872) = 34012224 * k + 19655936 := by
    unfold C
    simp [show (68024448 * k + 39311872) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 19655936) = 17006112 * k + 9827968 := by
    unfold C
    simp [show (34012224 * k + 19655936) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 9827968) = 8503056 * k + 4913984 := by
    unfold C
    simp [show (17006112 * k + 9827968) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4913984) = 4251528 * k + 2456992 := by
    unfold C
    simp [show (8503056 * k + 4913984) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2456992) = 2125764 * k + 1228496 := by
    unfold C
    simp [show (4251528 * k + 2456992) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1228496) = 1062882 * k + 614248 := by
    unfold C
    simp [show (2125764 * k + 1228496) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 614248) = 531441 * k + 307124 := by
    unfold C
    simp [show (1062882 * k + 614248) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 605979) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 605979)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_606043 : ∀ k : Nat,
    iterate (1048576 * k + 606043) 32 = 531441 * k + 307157 ∧
      531441 * k + 307157 < 1048576 * k + 606043 := by
  intro k
  have h1 : C (1048576 * k + 606043) = 3145728 * k + 1818130 := by
    unfold C
    simp [show (1048576 * k + 606043) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1818130) = 1572864 * k + 909065 := by
    unfold C
    simp [show (3145728 * k + 1818130) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 909065) = 4718592 * k + 2727196 := by
    unfold C
    simp [show (1572864 * k + 909065) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2727196) = 2359296 * k + 1363598 := by
    unfold C
    simp [show (4718592 * k + 2727196) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1363598) = 1179648 * k + 681799 := by
    unfold C
    simp [show (2359296 * k + 1363598) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 681799) = 3538944 * k + 2045398 := by
    unfold C
    simp [show (1179648 * k + 681799) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2045398) = 1769472 * k + 1022699 := by
    unfold C
    simp [show (3538944 * k + 2045398) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1022699) = 5308416 * k + 3068098 := by
    unfold C
    simp [show (1769472 * k + 1022699) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3068098) = 2654208 * k + 1534049 := by
    unfold C
    simp [show (5308416 * k + 3068098) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1534049) = 7962624 * k + 4602148 := by
    unfold C
    simp [show (2654208 * k + 1534049) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4602148) = 3981312 * k + 2301074 := by
    unfold C
    simp [show (7962624 * k + 4602148) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2301074) = 1990656 * k + 1150537 := by
    unfold C
    simp [show (3981312 * k + 2301074) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1150537) = 5971968 * k + 3451612 := by
    unfold C
    simp [show (1990656 * k + 1150537) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3451612) = 2985984 * k + 1725806 := by
    unfold C
    simp [show (5971968 * k + 3451612) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1725806) = 1492992 * k + 862903 := by
    unfold C
    simp [show (2985984 * k + 1725806) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 862903) = 4478976 * k + 2588710 := by
    unfold C
    simp [show (1492992 * k + 862903) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2588710) = 2239488 * k + 1294355 := by
    unfold C
    simp [show (4478976 * k + 2588710) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1294355) = 6718464 * k + 3883066 := by
    unfold C
    simp [show (2239488 * k + 1294355) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3883066) = 3359232 * k + 1941533 := by
    unfold C
    simp [show (6718464 * k + 3883066) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1941533) = 10077696 * k + 5824600 := by
    unfold C
    simp [show (3359232 * k + 1941533) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5824600) = 5038848 * k + 2912300 := by
    unfold C
    simp [show (10077696 * k + 5824600) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2912300) = 2519424 * k + 1456150 := by
    unfold C
    simp [show (5038848 * k + 2912300) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1456150) = 1259712 * k + 728075 := by
    unfold C
    simp [show (2519424 * k + 1456150) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 728075) = 3779136 * k + 2184226 := by
    unfold C
    simp [show (1259712 * k + 728075) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2184226) = 1889568 * k + 1092113 := by
    unfold C
    simp [show (3779136 * k + 2184226) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1092113) = 5668704 * k + 3276340 := by
    unfold C
    simp [show (1889568 * k + 1092113) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3276340) = 2834352 * k + 1638170 := by
    unfold C
    simp [show (5668704 * k + 3276340) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1638170) = 1417176 * k + 819085 := by
    unfold C
    simp [show (2834352 * k + 1638170) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 819085) = 4251528 * k + 2457256 := by
    unfold C
    simp [show (1417176 * k + 819085) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2457256) = 2125764 * k + 1228628 := by
    unfold C
    simp [show (4251528 * k + 2457256) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1228628) = 1062882 * k + 614314 := by
    unfold C
    simp [show (2125764 * k + 1228628) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 614314) = 531441 * k + 307157 := by
    unfold C
    simp [show (1062882 * k + 614314) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 606043) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 606043)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_606203 : ∀ k : Nat,
    iterate (1048576 * k + 606203) 32 = 531441 * k + 307238 ∧
      531441 * k + 307238 < 1048576 * k + 606203 := by
  intro k
  have h1 : C (1048576 * k + 606203) = 3145728 * k + 1818610 := by
    unfold C
    simp [show (1048576 * k + 606203) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1818610) = 1572864 * k + 909305 := by
    unfold C
    simp [show (3145728 * k + 1818610) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 909305) = 4718592 * k + 2727916 := by
    unfold C
    simp [show (1572864 * k + 909305) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2727916) = 2359296 * k + 1363958 := by
    unfold C
    simp [show (4718592 * k + 2727916) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1363958) = 1179648 * k + 681979 := by
    unfold C
    simp [show (2359296 * k + 1363958) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 681979) = 3538944 * k + 2045938 := by
    unfold C
    simp [show (1179648 * k + 681979) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2045938) = 1769472 * k + 1022969 := by
    unfold C
    simp [show (3538944 * k + 2045938) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1022969) = 5308416 * k + 3068908 := by
    unfold C
    simp [show (1769472 * k + 1022969) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3068908) = 2654208 * k + 1534454 := by
    unfold C
    simp [show (5308416 * k + 3068908) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1534454) = 1327104 * k + 767227 := by
    unfold C
    simp [show (2654208 * k + 1534454) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 767227) = 3981312 * k + 2301682 := by
    unfold C
    simp [show (1327104 * k + 767227) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2301682) = 1990656 * k + 1150841 := by
    unfold C
    simp [show (3981312 * k + 2301682) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1150841) = 5971968 * k + 3452524 := by
    unfold C
    simp [show (1990656 * k + 1150841) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3452524) = 2985984 * k + 1726262 := by
    unfold C
    simp [show (5971968 * k + 3452524) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1726262) = 1492992 * k + 863131 := by
    unfold C
    simp [show (2985984 * k + 1726262) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 863131) = 4478976 * k + 2589394 := by
    unfold C
    simp [show (1492992 * k + 863131) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2589394) = 2239488 * k + 1294697 := by
    unfold C
    simp [show (4478976 * k + 2589394) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1294697) = 6718464 * k + 3884092 := by
    unfold C
    simp [show (2239488 * k + 1294697) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3884092) = 3359232 * k + 1942046 := by
    unfold C
    simp [show (6718464 * k + 3884092) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1942046) = 1679616 * k + 971023 := by
    unfold C
    simp [show (3359232 * k + 1942046) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 971023) = 5038848 * k + 2913070 := by
    unfold C
    simp [show (1679616 * k + 971023) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2913070) = 2519424 * k + 1456535 := by
    unfold C
    simp [show (5038848 * k + 2913070) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1456535) = 7558272 * k + 4369606 := by
    unfold C
    simp [show (2519424 * k + 1456535) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4369606) = 3779136 * k + 2184803 := by
    unfold C
    simp [show (7558272 * k + 4369606) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2184803) = 11337408 * k + 6554410 := by
    unfold C
    simp [show (3779136 * k + 2184803) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6554410) = 5668704 * k + 3277205 := by
    unfold C
    simp [show (11337408 * k + 6554410) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3277205) = 17006112 * k + 9831616 := by
    unfold C
    simp [show (5668704 * k + 3277205) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9831616) = 8503056 * k + 4915808 := by
    unfold C
    simp [show (17006112 * k + 9831616) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4915808) = 4251528 * k + 2457904 := by
    unfold C
    simp [show (8503056 * k + 4915808) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2457904) = 2125764 * k + 1228952 := by
    unfold C
    simp [show (4251528 * k + 2457904) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1228952) = 1062882 * k + 614476 := by
    unfold C
    simp [show (2125764 * k + 1228952) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 614476) = 531441 * k + 307238 := by
    unfold C
    simp [show (1062882 * k + 614476) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 606203) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 606203)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_606363 : ∀ k : Nat,
    iterate (1048576 * k + 606363) 32 = 531441 * k + 307319 ∧
      531441 * k + 307319 < 1048576 * k + 606363 := by
  intro k
  have h1 : C (1048576 * k + 606363) = 3145728 * k + 1819090 := by
    unfold C
    simp [show (1048576 * k + 606363) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1819090) = 1572864 * k + 909545 := by
    unfold C
    simp [show (3145728 * k + 1819090) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 909545) = 4718592 * k + 2728636 := by
    unfold C
    simp [show (1572864 * k + 909545) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2728636) = 2359296 * k + 1364318 := by
    unfold C
    simp [show (4718592 * k + 2728636) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1364318) = 1179648 * k + 682159 := by
    unfold C
    simp [show (2359296 * k + 1364318) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 682159) = 3538944 * k + 2046478 := by
    unfold C
    simp [show (1179648 * k + 682159) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2046478) = 1769472 * k + 1023239 := by
    unfold C
    simp [show (3538944 * k + 2046478) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1023239) = 5308416 * k + 3069718 := by
    unfold C
    simp [show (1769472 * k + 1023239) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3069718) = 2654208 * k + 1534859 := by
    unfold C
    simp [show (5308416 * k + 3069718) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1534859) = 7962624 * k + 4604578 := by
    unfold C
    simp [show (2654208 * k + 1534859) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4604578) = 3981312 * k + 2302289 := by
    unfold C
    simp [show (7962624 * k + 4604578) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2302289) = 11943936 * k + 6906868 := by
    unfold C
    simp [show (3981312 * k + 2302289) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6906868) = 5971968 * k + 3453434 := by
    unfold C
    simp [show (11943936 * k + 6906868) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3453434) = 2985984 * k + 1726717 := by
    unfold C
    simp [show (5971968 * k + 3453434) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1726717) = 8957952 * k + 5180152 := by
    unfold C
    simp [show (2985984 * k + 1726717) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5180152) = 4478976 * k + 2590076 := by
    unfold C
    simp [show (8957952 * k + 5180152) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2590076) = 2239488 * k + 1295038 := by
    unfold C
    simp [show (4478976 * k + 2590076) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1295038) = 1119744 * k + 647519 := by
    unfold C
    simp [show (2239488 * k + 1295038) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 647519) = 3359232 * k + 1942558 := by
    unfold C
    simp [show (1119744 * k + 647519) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1942558) = 1679616 * k + 971279 := by
    unfold C
    simp [show (3359232 * k + 1942558) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 971279) = 5038848 * k + 2913838 := by
    unfold C
    simp [show (1679616 * k + 971279) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2913838) = 2519424 * k + 1456919 := by
    unfold C
    simp [show (5038848 * k + 2913838) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1456919) = 7558272 * k + 4370758 := by
    unfold C
    simp [show (2519424 * k + 1456919) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4370758) = 3779136 * k + 2185379 := by
    unfold C
    simp [show (7558272 * k + 4370758) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2185379) = 11337408 * k + 6556138 := by
    unfold C
    simp [show (3779136 * k + 2185379) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6556138) = 5668704 * k + 3278069 := by
    unfold C
    simp [show (11337408 * k + 6556138) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3278069) = 17006112 * k + 9834208 := by
    unfold C
    simp [show (5668704 * k + 3278069) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9834208) = 8503056 * k + 4917104 := by
    unfold C
    simp [show (17006112 * k + 9834208) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4917104) = 4251528 * k + 2458552 := by
    unfold C
    simp [show (8503056 * k + 4917104) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2458552) = 2125764 * k + 1229276 := by
    unfold C
    simp [show (4251528 * k + 2458552) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1229276) = 1062882 * k + 614638 := by
    unfold C
    simp [show (2125764 * k + 1229276) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 614638) = 531441 * k + 307319 := by
    unfold C
    simp [show (1062882 * k + 614638) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 606363) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 606363)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_606811 : ∀ k : Nat,
    iterate (1048576 * k + 606811) 32 = 531441 * k + 307546 ∧
      531441 * k + 307546 < 1048576 * k + 606811 := by
  intro k
  have h1 : C (1048576 * k + 606811) = 3145728 * k + 1820434 := by
    unfold C
    simp [show (1048576 * k + 606811) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1820434) = 1572864 * k + 910217 := by
    unfold C
    simp [show (3145728 * k + 1820434) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 910217) = 4718592 * k + 2730652 := by
    unfold C
    simp [show (1572864 * k + 910217) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2730652) = 2359296 * k + 1365326 := by
    unfold C
    simp [show (4718592 * k + 2730652) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1365326) = 1179648 * k + 682663 := by
    unfold C
    simp [show (2359296 * k + 1365326) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 682663) = 3538944 * k + 2047990 := by
    unfold C
    simp [show (1179648 * k + 682663) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2047990) = 1769472 * k + 1023995 := by
    unfold C
    simp [show (3538944 * k + 2047990) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1023995) = 5308416 * k + 3071986 := by
    unfold C
    simp [show (1769472 * k + 1023995) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3071986) = 2654208 * k + 1535993 := by
    unfold C
    simp [show (5308416 * k + 3071986) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1535993) = 7962624 * k + 4607980 := by
    unfold C
    simp [show (2654208 * k + 1535993) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4607980) = 3981312 * k + 2303990 := by
    unfold C
    simp [show (7962624 * k + 4607980) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2303990) = 1990656 * k + 1151995 := by
    unfold C
    simp [show (3981312 * k + 2303990) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1151995) = 5971968 * k + 3455986 := by
    unfold C
    simp [show (1990656 * k + 1151995) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3455986) = 2985984 * k + 1727993 := by
    unfold C
    simp [show (5971968 * k + 3455986) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1727993) = 8957952 * k + 5183980 := by
    unfold C
    simp [show (2985984 * k + 1727993) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5183980) = 4478976 * k + 2591990 := by
    unfold C
    simp [show (8957952 * k + 5183980) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2591990) = 2239488 * k + 1295995 := by
    unfold C
    simp [show (4478976 * k + 2591990) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1295995) = 6718464 * k + 3887986 := by
    unfold C
    simp [show (2239488 * k + 1295995) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3887986) = 3359232 * k + 1943993 := by
    unfold C
    simp [show (6718464 * k + 3887986) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1943993) = 10077696 * k + 5831980 := by
    unfold C
    simp [show (3359232 * k + 1943993) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5831980) = 5038848 * k + 2915990 := by
    unfold C
    simp [show (10077696 * k + 5831980) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2915990) = 2519424 * k + 1457995 := by
    unfold C
    simp [show (5038848 * k + 2915990) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1457995) = 7558272 * k + 4373986 := by
    unfold C
    simp [show (2519424 * k + 1457995) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4373986) = 3779136 * k + 2186993 := by
    unfold C
    simp [show (7558272 * k + 4373986) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2186993) = 11337408 * k + 6560980 := by
    unfold C
    simp [show (3779136 * k + 2186993) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6560980) = 5668704 * k + 3280490 := by
    unfold C
    simp [show (11337408 * k + 6560980) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3280490) = 2834352 * k + 1640245 := by
    unfold C
    simp [show (5668704 * k + 3280490) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1640245) = 8503056 * k + 4920736 := by
    unfold C
    simp [show (2834352 * k + 1640245) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4920736) = 4251528 * k + 2460368 := by
    unfold C
    simp [show (8503056 * k + 4920736) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2460368) = 2125764 * k + 1230184 := by
    unfold C
    simp [show (4251528 * k + 2460368) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1230184) = 1062882 * k + 615092 := by
    unfold C
    simp [show (2125764 * k + 1230184) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 615092) = 531441 * k + 307546 := by
    unfold C
    simp [show (1062882 * k + 615092) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 606811) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 606811)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_607067 : ∀ k : Nat,
    iterate (1048576 * k + 607067) 32 = 531441 * k + 307676 ∧
      531441 * k + 307676 < 1048576 * k + 607067 := by
  intro k
  have h1 : C (1048576 * k + 607067) = 3145728 * k + 1821202 := by
    unfold C
    simp [show (1048576 * k + 607067) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1821202) = 1572864 * k + 910601 := by
    unfold C
    simp [show (3145728 * k + 1821202) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 910601) = 4718592 * k + 2731804 := by
    unfold C
    simp [show (1572864 * k + 910601) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2731804) = 2359296 * k + 1365902 := by
    unfold C
    simp [show (4718592 * k + 2731804) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1365902) = 1179648 * k + 682951 := by
    unfold C
    simp [show (2359296 * k + 1365902) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 682951) = 3538944 * k + 2048854 := by
    unfold C
    simp [show (1179648 * k + 682951) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2048854) = 1769472 * k + 1024427 := by
    unfold C
    simp [show (3538944 * k + 2048854) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1024427) = 5308416 * k + 3073282 := by
    unfold C
    simp [show (1769472 * k + 1024427) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3073282) = 2654208 * k + 1536641 := by
    unfold C
    simp [show (5308416 * k + 3073282) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1536641) = 7962624 * k + 4609924 := by
    unfold C
    simp [show (2654208 * k + 1536641) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4609924) = 3981312 * k + 2304962 := by
    unfold C
    simp [show (7962624 * k + 4609924) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2304962) = 1990656 * k + 1152481 := by
    unfold C
    simp [show (3981312 * k + 2304962) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1152481) = 5971968 * k + 3457444 := by
    unfold C
    simp [show (1990656 * k + 1152481) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3457444) = 2985984 * k + 1728722 := by
    unfold C
    simp [show (5971968 * k + 3457444) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1728722) = 1492992 * k + 864361 := by
    unfold C
    simp [show (2985984 * k + 1728722) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 864361) = 4478976 * k + 2593084 := by
    unfold C
    simp [show (1492992 * k + 864361) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2593084) = 2239488 * k + 1296542 := by
    unfold C
    simp [show (4478976 * k + 2593084) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1296542) = 1119744 * k + 648271 := by
    unfold C
    simp [show (2239488 * k + 1296542) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 648271) = 3359232 * k + 1944814 := by
    unfold C
    simp [show (1119744 * k + 648271) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1944814) = 1679616 * k + 972407 := by
    unfold C
    simp [show (3359232 * k + 1944814) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 972407) = 5038848 * k + 2917222 := by
    unfold C
    simp [show (1679616 * k + 972407) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2917222) = 2519424 * k + 1458611 := by
    unfold C
    simp [show (5038848 * k + 2917222) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1458611) = 7558272 * k + 4375834 := by
    unfold C
    simp [show (2519424 * k + 1458611) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4375834) = 3779136 * k + 2187917 := by
    unfold C
    simp [show (7558272 * k + 4375834) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2187917) = 11337408 * k + 6563752 := by
    unfold C
    simp [show (3779136 * k + 2187917) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6563752) = 5668704 * k + 3281876 := by
    unfold C
    simp [show (11337408 * k + 6563752) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3281876) = 2834352 * k + 1640938 := by
    unfold C
    simp [show (5668704 * k + 3281876) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1640938) = 1417176 * k + 820469 := by
    unfold C
    simp [show (2834352 * k + 1640938) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 820469) = 4251528 * k + 2461408 := by
    unfold C
    simp [show (1417176 * k + 820469) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2461408) = 2125764 * k + 1230704 := by
    unfold C
    simp [show (4251528 * k + 2461408) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1230704) = 1062882 * k + 615352 := by
    unfold C
    simp [show (2125764 * k + 1230704) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 615352) = 531441 * k + 307676 := by
    unfold C
    simp [show (1062882 * k + 615352) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 607067) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 607067)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_607167 : ∀ k : Nat,
    iterate (1048576 * k + 607167) 32 = 531441 * k + 307726 ∧
      531441 * k + 307726 < 1048576 * k + 607167 := by
  intro k
  have h1 : C (1048576 * k + 607167) = 3145728 * k + 1821502 := by
    unfold C
    simp [show (1048576 * k + 607167) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1821502) = 1572864 * k + 910751 := by
    unfold C
    simp [show (3145728 * k + 1821502) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 910751) = 4718592 * k + 2732254 := by
    unfold C
    simp [show (1572864 * k + 910751) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2732254) = 2359296 * k + 1366127 := by
    unfold C
    simp [show (4718592 * k + 2732254) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1366127) = 7077888 * k + 4098382 := by
    unfold C
    simp [show (2359296 * k + 1366127) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4098382) = 3538944 * k + 2049191 := by
    unfold C
    simp [show (7077888 * k + 4098382) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2049191) = 10616832 * k + 6147574 := by
    unfold C
    simp [show (3538944 * k + 2049191) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6147574) = 5308416 * k + 3073787 := by
    unfold C
    simp [show (10616832 * k + 6147574) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3073787) = 15925248 * k + 9221362 := by
    unfold C
    simp [show (5308416 * k + 3073787) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9221362) = 7962624 * k + 4610681 := by
    unfold C
    simp [show (15925248 * k + 9221362) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4610681) = 23887872 * k + 13832044 := by
    unfold C
    simp [show (7962624 * k + 4610681) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 13832044) = 11943936 * k + 6916022 := by
    unfold C
    simp [show (23887872 * k + 13832044) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6916022) = 5971968 * k + 3458011 := by
    unfold C
    simp [show (11943936 * k + 6916022) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3458011) = 17915904 * k + 10374034 := by
    unfold C
    simp [show (5971968 * k + 3458011) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10374034) = 8957952 * k + 5187017 := by
    unfold C
    simp [show (17915904 * k + 10374034) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5187017) = 26873856 * k + 15561052 := by
    unfold C
    simp [show (8957952 * k + 5187017) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 15561052) = 13436928 * k + 7780526 := by
    unfold C
    simp [show (26873856 * k + 15561052) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7780526) = 6718464 * k + 3890263 := by
    unfold C
    simp [show (13436928 * k + 7780526) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3890263) = 20155392 * k + 11670790 := by
    unfold C
    simp [show (6718464 * k + 3890263) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 11670790) = 10077696 * k + 5835395 := by
    unfold C
    simp [show (20155392 * k + 11670790) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5835395) = 30233088 * k + 17506186 := by
    unfold C
    simp [show (10077696 * k + 5835395) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 17506186) = 15116544 * k + 8753093 := by
    unfold C
    simp [show (30233088 * k + 17506186) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8753093) = 45349632 * k + 26259280 := by
    unfold C
    simp [show (15116544 * k + 8753093) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 26259280) = 22674816 * k + 13129640 := by
    unfold C
    simp [show (45349632 * k + 26259280) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 13129640) = 11337408 * k + 6564820 := by
    unfold C
    simp [show (22674816 * k + 13129640) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6564820) = 5668704 * k + 3282410 := by
    unfold C
    simp [show (11337408 * k + 6564820) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3282410) = 2834352 * k + 1641205 := by
    unfold C
    simp [show (5668704 * k + 3282410) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1641205) = 8503056 * k + 4923616 := by
    unfold C
    simp [show (2834352 * k + 1641205) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4923616) = 4251528 * k + 2461808 := by
    unfold C
    simp [show (8503056 * k + 4923616) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2461808) = 2125764 * k + 1230904 := by
    unfold C
    simp [show (4251528 * k + 2461808) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1230904) = 1062882 * k + 615452 := by
    unfold C
    simp [show (2125764 * k + 1230904) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 615452) = 531441 * k + 307726 := by
    unfold C
    simp [show (1062882 * k + 615452) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 607167) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 607167)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_607387 : ∀ k : Nat,
    iterate (1048576 * k + 607387) 32 = 531441 * k + 307838 ∧
      531441 * k + 307838 < 1048576 * k + 607387 := by
  intro k
  have h1 : C (1048576 * k + 607387) = 3145728 * k + 1822162 := by
    unfold C
    simp [show (1048576 * k + 607387) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1822162) = 1572864 * k + 911081 := by
    unfold C
    simp [show (3145728 * k + 1822162) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 911081) = 4718592 * k + 2733244 := by
    unfold C
    simp [show (1572864 * k + 911081) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2733244) = 2359296 * k + 1366622 := by
    unfold C
    simp [show (4718592 * k + 2733244) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1366622) = 1179648 * k + 683311 := by
    unfold C
    simp [show (2359296 * k + 1366622) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 683311) = 3538944 * k + 2049934 := by
    unfold C
    simp [show (1179648 * k + 683311) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2049934) = 1769472 * k + 1024967 := by
    unfold C
    simp [show (3538944 * k + 2049934) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1024967) = 5308416 * k + 3074902 := by
    unfold C
    simp [show (1769472 * k + 1024967) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3074902) = 2654208 * k + 1537451 := by
    unfold C
    simp [show (5308416 * k + 3074902) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1537451) = 7962624 * k + 4612354 := by
    unfold C
    simp [show (2654208 * k + 1537451) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4612354) = 3981312 * k + 2306177 := by
    unfold C
    simp [show (7962624 * k + 4612354) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2306177) = 11943936 * k + 6918532 := by
    unfold C
    simp [show (3981312 * k + 2306177) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6918532) = 5971968 * k + 3459266 := by
    unfold C
    simp [show (11943936 * k + 6918532) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3459266) = 2985984 * k + 1729633 := by
    unfold C
    simp [show (5971968 * k + 3459266) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1729633) = 8957952 * k + 5188900 := by
    unfold C
    simp [show (2985984 * k + 1729633) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5188900) = 4478976 * k + 2594450 := by
    unfold C
    simp [show (8957952 * k + 5188900) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2594450) = 2239488 * k + 1297225 := by
    unfold C
    simp [show (4478976 * k + 2594450) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1297225) = 6718464 * k + 3891676 := by
    unfold C
    simp [show (2239488 * k + 1297225) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3891676) = 3359232 * k + 1945838 := by
    unfold C
    simp [show (6718464 * k + 3891676) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1945838) = 1679616 * k + 972919 := by
    unfold C
    simp [show (3359232 * k + 1945838) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 972919) = 5038848 * k + 2918758 := by
    unfold C
    simp [show (1679616 * k + 972919) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2918758) = 2519424 * k + 1459379 := by
    unfold C
    simp [show (5038848 * k + 2918758) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1459379) = 7558272 * k + 4378138 := by
    unfold C
    simp [show (2519424 * k + 1459379) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4378138) = 3779136 * k + 2189069 := by
    unfold C
    simp [show (7558272 * k + 4378138) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2189069) = 11337408 * k + 6567208 := by
    unfold C
    simp [show (3779136 * k + 2189069) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6567208) = 5668704 * k + 3283604 := by
    unfold C
    simp [show (11337408 * k + 6567208) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3283604) = 2834352 * k + 1641802 := by
    unfold C
    simp [show (5668704 * k + 3283604) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1641802) = 1417176 * k + 820901 := by
    unfold C
    simp [show (2834352 * k + 1641802) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 820901) = 4251528 * k + 2462704 := by
    unfold C
    simp [show (1417176 * k + 820901) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2462704) = 2125764 * k + 1231352 := by
    unfold C
    simp [show (4251528 * k + 2462704) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1231352) = 1062882 * k + 615676 := by
    unfold C
    simp [show (2125764 * k + 1231352) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 615676) = 531441 * k + 307838 := by
    unfold C
    simp [show (1062882 * k + 615676) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 607387) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 607387)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_607695 : ∀ k : Nat,
    iterate (1048576 * k + 607695) 32 = 531441 * k + 307994 ∧
      531441 * k + 307994 < 1048576 * k + 607695 := by
  intro k
  have h1 : C (1048576 * k + 607695) = 3145728 * k + 1823086 := by
    unfold C
    simp [show (1048576 * k + 607695) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1823086) = 1572864 * k + 911543 := by
    unfold C
    simp [show (3145728 * k + 1823086) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 911543) = 4718592 * k + 2734630 := by
    unfold C
    simp [show (1572864 * k + 911543) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2734630) = 2359296 * k + 1367315 := by
    unfold C
    simp [show (4718592 * k + 2734630) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1367315) = 7077888 * k + 4101946 := by
    unfold C
    simp [show (2359296 * k + 1367315) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4101946) = 3538944 * k + 2050973 := by
    unfold C
    simp [show (7077888 * k + 4101946) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2050973) = 10616832 * k + 6152920 := by
    unfold C
    simp [show (3538944 * k + 2050973) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6152920) = 5308416 * k + 3076460 := by
    unfold C
    simp [show (10616832 * k + 6152920) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3076460) = 2654208 * k + 1538230 := by
    unfold C
    simp [show (5308416 * k + 3076460) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1538230) = 1327104 * k + 769115 := by
    unfold C
    simp [show (2654208 * k + 1538230) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 769115) = 3981312 * k + 2307346 := by
    unfold C
    simp [show (1327104 * k + 769115) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2307346) = 1990656 * k + 1153673 := by
    unfold C
    simp [show (3981312 * k + 2307346) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1153673) = 5971968 * k + 3461020 := by
    unfold C
    simp [show (1990656 * k + 1153673) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3461020) = 2985984 * k + 1730510 := by
    unfold C
    simp [show (5971968 * k + 3461020) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1730510) = 1492992 * k + 865255 := by
    unfold C
    simp [show (2985984 * k + 1730510) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 865255) = 4478976 * k + 2595766 := by
    unfold C
    simp [show (1492992 * k + 865255) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2595766) = 2239488 * k + 1297883 := by
    unfold C
    simp [show (4478976 * k + 2595766) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1297883) = 6718464 * k + 3893650 := by
    unfold C
    simp [show (2239488 * k + 1297883) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3893650) = 3359232 * k + 1946825 := by
    unfold C
    simp [show (6718464 * k + 3893650) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1946825) = 10077696 * k + 5840476 := by
    unfold C
    simp [show (3359232 * k + 1946825) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5840476) = 5038848 * k + 2920238 := by
    unfold C
    simp [show (10077696 * k + 5840476) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2920238) = 2519424 * k + 1460119 := by
    unfold C
    simp [show (5038848 * k + 2920238) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1460119) = 7558272 * k + 4380358 := by
    unfold C
    simp [show (2519424 * k + 1460119) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4380358) = 3779136 * k + 2190179 := by
    unfold C
    simp [show (7558272 * k + 4380358) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2190179) = 11337408 * k + 6570538 := by
    unfold C
    simp [show (3779136 * k + 2190179) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6570538) = 5668704 * k + 3285269 := by
    unfold C
    simp [show (11337408 * k + 6570538) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3285269) = 17006112 * k + 9855808 := by
    unfold C
    simp [show (5668704 * k + 3285269) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9855808) = 8503056 * k + 4927904 := by
    unfold C
    simp [show (17006112 * k + 9855808) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4927904) = 4251528 * k + 2463952 := by
    unfold C
    simp [show (8503056 * k + 4927904) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2463952) = 2125764 * k + 1231976 := by
    unfold C
    simp [show (4251528 * k + 2463952) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1231976) = 1062882 * k + 615988 := by
    unfold C
    simp [show (2125764 * k + 1231976) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 615988) = 531441 * k + 307994 := by
    unfold C
    simp [show (1062882 * k + 615988) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 607695) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 607695)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_607743 : ∀ k : Nat,
    iterate (1048576 * k + 607743) 32 = 531441 * k + 308018 ∧
      531441 * k + 308018 < 1048576 * k + 607743 := by
  intro k
  have h1 : C (1048576 * k + 607743) = 3145728 * k + 1823230 := by
    unfold C
    simp [show (1048576 * k + 607743) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1823230) = 1572864 * k + 911615 := by
    unfold C
    simp [show (3145728 * k + 1823230) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 911615) = 4718592 * k + 2734846 := by
    unfold C
    simp [show (1572864 * k + 911615) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2734846) = 2359296 * k + 1367423 := by
    unfold C
    simp [show (4718592 * k + 2734846) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1367423) = 7077888 * k + 4102270 := by
    unfold C
    simp [show (2359296 * k + 1367423) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4102270) = 3538944 * k + 2051135 := by
    unfold C
    simp [show (7077888 * k + 4102270) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2051135) = 10616832 * k + 6153406 := by
    unfold C
    simp [show (3538944 * k + 2051135) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6153406) = 5308416 * k + 3076703 := by
    unfold C
    simp [show (10616832 * k + 6153406) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3076703) = 15925248 * k + 9230110 := by
    unfold C
    simp [show (5308416 * k + 3076703) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9230110) = 7962624 * k + 4615055 := by
    unfold C
    simp [show (15925248 * k + 9230110) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4615055) = 23887872 * k + 13845166 := by
    unfold C
    simp [show (7962624 * k + 4615055) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 13845166) = 11943936 * k + 6922583 := by
    unfold C
    simp [show (23887872 * k + 13845166) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6922583) = 35831808 * k + 20767750 := by
    unfold C
    simp [show (11943936 * k + 6922583) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 20767750) = 17915904 * k + 10383875 := by
    unfold C
    simp [show (35831808 * k + 20767750) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 10383875) = 53747712 * k + 31151626 := by
    unfold C
    simp [show (17915904 * k + 10383875) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 31151626) = 26873856 * k + 15575813 := by
    unfold C
    simp [show (53747712 * k + 31151626) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 15575813) = 80621568 * k + 46727440 := by
    unfold C
    simp [show (26873856 * k + 15575813) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 46727440) = 40310784 * k + 23363720 := by
    unfold C
    simp [show (80621568 * k + 46727440) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 23363720) = 20155392 * k + 11681860 := by
    unfold C
    simp [show (40310784 * k + 23363720) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 11681860) = 10077696 * k + 5840930 := by
    unfold C
    simp [show (20155392 * k + 11681860) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5840930) = 5038848 * k + 2920465 := by
    unfold C
    simp [show (10077696 * k + 5840930) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2920465) = 15116544 * k + 8761396 := by
    unfold C
    simp [show (5038848 * k + 2920465) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8761396) = 7558272 * k + 4380698 := by
    unfold C
    simp [show (15116544 * k + 8761396) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4380698) = 3779136 * k + 2190349 := by
    unfold C
    simp [show (7558272 * k + 4380698) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2190349) = 11337408 * k + 6571048 := by
    unfold C
    simp [show (3779136 * k + 2190349) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6571048) = 5668704 * k + 3285524 := by
    unfold C
    simp [show (11337408 * k + 6571048) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3285524) = 2834352 * k + 1642762 := by
    unfold C
    simp [show (5668704 * k + 3285524) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1642762) = 1417176 * k + 821381 := by
    unfold C
    simp [show (2834352 * k + 1642762) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 821381) = 4251528 * k + 2464144 := by
    unfold C
    simp [show (1417176 * k + 821381) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2464144) = 2125764 * k + 1232072 := by
    unfold C
    simp [show (4251528 * k + 2464144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1232072) = 1062882 * k + 616036 := by
    unfold C
    simp [show (2125764 * k + 1232072) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 616036) = 531441 * k + 308018 := by
    unfold C
    simp [show (1062882 * k + 616036) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 607743) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 607743)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_608583 : ∀ k : Nat,
    iterate (1048576 * k + 608583) 32 = 531441 * k + 308444 ∧
      531441 * k + 308444 < 1048576 * k + 608583 := by
  intro k
  have h1 : C (1048576 * k + 608583) = 3145728 * k + 1825750 := by
    unfold C
    simp [show (1048576 * k + 608583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1825750) = 1572864 * k + 912875 := by
    unfold C
    simp [show (3145728 * k + 1825750) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 912875) = 4718592 * k + 2738626 := by
    unfold C
    simp [show (1572864 * k + 912875) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2738626) = 2359296 * k + 1369313 := by
    unfold C
    simp [show (4718592 * k + 2738626) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1369313) = 7077888 * k + 4107940 := by
    unfold C
    simp [show (2359296 * k + 1369313) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4107940) = 3538944 * k + 2053970 := by
    unfold C
    simp [show (7077888 * k + 4107940) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2053970) = 1769472 * k + 1026985 := by
    unfold C
    simp [show (3538944 * k + 2053970) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1026985) = 5308416 * k + 3080956 := by
    unfold C
    simp [show (1769472 * k + 1026985) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3080956) = 2654208 * k + 1540478 := by
    unfold C
    simp [show (5308416 * k + 3080956) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1540478) = 1327104 * k + 770239 := by
    unfold C
    simp [show (2654208 * k + 1540478) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 770239) = 3981312 * k + 2310718 := by
    unfold C
    simp [show (1327104 * k + 770239) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2310718) = 1990656 * k + 1155359 := by
    unfold C
    simp [show (3981312 * k + 2310718) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1155359) = 5971968 * k + 3466078 := by
    unfold C
    simp [show (1990656 * k + 1155359) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3466078) = 2985984 * k + 1733039 := by
    unfold C
    simp [show (5971968 * k + 3466078) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1733039) = 8957952 * k + 5199118 := by
    unfold C
    simp [show (2985984 * k + 1733039) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5199118) = 4478976 * k + 2599559 := by
    unfold C
    simp [show (8957952 * k + 5199118) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2599559) = 13436928 * k + 7798678 := by
    unfold C
    simp [show (4478976 * k + 2599559) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7798678) = 6718464 * k + 3899339 := by
    unfold C
    simp [show (13436928 * k + 7798678) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3899339) = 20155392 * k + 11698018 := by
    unfold C
    simp [show (6718464 * k + 3899339) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 11698018) = 10077696 * k + 5849009 := by
    unfold C
    simp [show (20155392 * k + 11698018) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5849009) = 30233088 * k + 17547028 := by
    unfold C
    simp [show (10077696 * k + 5849009) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 17547028) = 15116544 * k + 8773514 := by
    unfold C
    simp [show (30233088 * k + 17547028) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8773514) = 7558272 * k + 4386757 := by
    unfold C
    simp [show (15116544 * k + 8773514) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4386757) = 22674816 * k + 13160272 := by
    unfold C
    simp [show (7558272 * k + 4386757) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 13160272) = 11337408 * k + 6580136 := by
    unfold C
    simp [show (22674816 * k + 13160272) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6580136) = 5668704 * k + 3290068 := by
    unfold C
    simp [show (11337408 * k + 6580136) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3290068) = 2834352 * k + 1645034 := by
    unfold C
    simp [show (5668704 * k + 3290068) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1645034) = 1417176 * k + 822517 := by
    unfold C
    simp [show (2834352 * k + 1645034) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 822517) = 4251528 * k + 2467552 := by
    unfold C
    simp [show (1417176 * k + 822517) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2467552) = 2125764 * k + 1233776 := by
    unfold C
    simp [show (4251528 * k + 2467552) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1233776) = 1062882 * k + 616888 := by
    unfold C
    simp [show (2125764 * k + 1233776) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 616888) = 531441 * k + 308444 := by
    unfold C
    simp [show (1062882 * k + 616888) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 608583) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 608583)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_608879 : ∀ k : Nat,
    iterate (1048576 * k + 608879) 32 = 531441 * k + 308594 ∧
      531441 * k + 308594 < 1048576 * k + 608879 := by
  intro k
  have h1 : C (1048576 * k + 608879) = 3145728 * k + 1826638 := by
    unfold C
    simp [show (1048576 * k + 608879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1826638) = 1572864 * k + 913319 := by
    unfold C
    simp [show (3145728 * k + 1826638) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 913319) = 4718592 * k + 2739958 := by
    unfold C
    simp [show (1572864 * k + 913319) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2739958) = 2359296 * k + 1369979 := by
    unfold C
    simp [show (4718592 * k + 2739958) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1369979) = 7077888 * k + 4109938 := by
    unfold C
    simp [show (2359296 * k + 1369979) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4109938) = 3538944 * k + 2054969 := by
    unfold C
    simp [show (7077888 * k + 4109938) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2054969) = 10616832 * k + 6164908 := by
    unfold C
    simp [show (3538944 * k + 2054969) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6164908) = 5308416 * k + 3082454 := by
    unfold C
    simp [show (10616832 * k + 6164908) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3082454) = 2654208 * k + 1541227 := by
    unfold C
    simp [show (5308416 * k + 3082454) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1541227) = 7962624 * k + 4623682 := by
    unfold C
    simp [show (2654208 * k + 1541227) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4623682) = 3981312 * k + 2311841 := by
    unfold C
    simp [show (7962624 * k + 4623682) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2311841) = 11943936 * k + 6935524 := by
    unfold C
    simp [show (3981312 * k + 2311841) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6935524) = 5971968 * k + 3467762 := by
    unfold C
    simp [show (11943936 * k + 6935524) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3467762) = 2985984 * k + 1733881 := by
    unfold C
    simp [show (5971968 * k + 3467762) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1733881) = 8957952 * k + 5201644 := by
    unfold C
    simp [show (2985984 * k + 1733881) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5201644) = 4478976 * k + 2600822 := by
    unfold C
    simp [show (8957952 * k + 5201644) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2600822) = 2239488 * k + 1300411 := by
    unfold C
    simp [show (4478976 * k + 2600822) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1300411) = 6718464 * k + 3901234 := by
    unfold C
    simp [show (2239488 * k + 1300411) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3901234) = 3359232 * k + 1950617 := by
    unfold C
    simp [show (6718464 * k + 3901234) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1950617) = 10077696 * k + 5851852 := by
    unfold C
    simp [show (3359232 * k + 1950617) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5851852) = 5038848 * k + 2925926 := by
    unfold C
    simp [show (10077696 * k + 5851852) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2925926) = 2519424 * k + 1462963 := by
    unfold C
    simp [show (5038848 * k + 2925926) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1462963) = 7558272 * k + 4388890 := by
    unfold C
    simp [show (2519424 * k + 1462963) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4388890) = 3779136 * k + 2194445 := by
    unfold C
    simp [show (7558272 * k + 4388890) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2194445) = 11337408 * k + 6583336 := by
    unfold C
    simp [show (3779136 * k + 2194445) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6583336) = 5668704 * k + 3291668 := by
    unfold C
    simp [show (11337408 * k + 6583336) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3291668) = 2834352 * k + 1645834 := by
    unfold C
    simp [show (5668704 * k + 3291668) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1645834) = 1417176 * k + 822917 := by
    unfold C
    simp [show (2834352 * k + 1645834) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 822917) = 4251528 * k + 2468752 := by
    unfold C
    simp [show (1417176 * k + 822917) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2468752) = 2125764 * k + 1234376 := by
    unfold C
    simp [show (4251528 * k + 2468752) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1234376) = 1062882 * k + 617188 := by
    unfold C
    simp [show (2125764 * k + 1234376) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 617188) = 531441 * k + 308594 := by
    unfold C
    simp [show (1062882 * k + 617188) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 608879) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 608879)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_609051 : ∀ k : Nat,
    iterate (1048576 * k + 609051) 32 = 531441 * k + 308681 ∧
      531441 * k + 308681 < 1048576 * k + 609051 := by
  intro k
  have h1 : C (1048576 * k + 609051) = 3145728 * k + 1827154 := by
    unfold C
    simp [show (1048576 * k + 609051) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1827154) = 1572864 * k + 913577 := by
    unfold C
    simp [show (3145728 * k + 1827154) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 913577) = 4718592 * k + 2740732 := by
    unfold C
    simp [show (1572864 * k + 913577) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2740732) = 2359296 * k + 1370366 := by
    unfold C
    simp [show (4718592 * k + 2740732) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1370366) = 1179648 * k + 685183 := by
    unfold C
    simp [show (2359296 * k + 1370366) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 685183) = 3538944 * k + 2055550 := by
    unfold C
    simp [show (1179648 * k + 685183) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2055550) = 1769472 * k + 1027775 := by
    unfold C
    simp [show (3538944 * k + 2055550) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1027775) = 5308416 * k + 3083326 := by
    unfold C
    simp [show (1769472 * k + 1027775) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3083326) = 2654208 * k + 1541663 := by
    unfold C
    simp [show (5308416 * k + 3083326) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1541663) = 7962624 * k + 4624990 := by
    unfold C
    simp [show (2654208 * k + 1541663) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4624990) = 3981312 * k + 2312495 := by
    unfold C
    simp [show (7962624 * k + 4624990) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2312495) = 11943936 * k + 6937486 := by
    unfold C
    simp [show (3981312 * k + 2312495) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6937486) = 5971968 * k + 3468743 := by
    unfold C
    simp [show (11943936 * k + 6937486) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3468743) = 17915904 * k + 10406230 := by
    unfold C
    simp [show (5971968 * k + 3468743) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10406230) = 8957952 * k + 5203115 := by
    unfold C
    simp [show (17915904 * k + 10406230) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5203115) = 26873856 * k + 15609346 := by
    unfold C
    simp [show (8957952 * k + 5203115) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 15609346) = 13436928 * k + 7804673 := by
    unfold C
    simp [show (26873856 * k + 15609346) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7804673) = 40310784 * k + 23414020 := by
    unfold C
    simp [show (13436928 * k + 7804673) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 23414020) = 20155392 * k + 11707010 := by
    unfold C
    simp [show (40310784 * k + 23414020) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 11707010) = 10077696 * k + 5853505 := by
    unfold C
    simp [show (20155392 * k + 11707010) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5853505) = 30233088 * k + 17560516 := by
    unfold C
    simp [show (10077696 * k + 5853505) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 17560516) = 15116544 * k + 8780258 := by
    unfold C
    simp [show (30233088 * k + 17560516) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8780258) = 7558272 * k + 4390129 := by
    unfold C
    simp [show (15116544 * k + 8780258) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4390129) = 22674816 * k + 13170388 := by
    unfold C
    simp [show (7558272 * k + 4390129) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 13170388) = 11337408 * k + 6585194 := by
    unfold C
    simp [show (22674816 * k + 13170388) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6585194) = 5668704 * k + 3292597 := by
    unfold C
    simp [show (11337408 * k + 6585194) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3292597) = 17006112 * k + 9877792 := by
    unfold C
    simp [show (5668704 * k + 3292597) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9877792) = 8503056 * k + 4938896 := by
    unfold C
    simp [show (17006112 * k + 9877792) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4938896) = 4251528 * k + 2469448 := by
    unfold C
    simp [show (8503056 * k + 4938896) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2469448) = 2125764 * k + 1234724 := by
    unfold C
    simp [show (4251528 * k + 2469448) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1234724) = 1062882 * k + 617362 := by
    unfold C
    simp [show (2125764 * k + 1234724) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 617362) = 531441 * k + 308681 := by
    unfold C
    simp [show (1062882 * k + 617362) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 609051) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 609051)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_609215 : ∀ k : Nat,
    iterate (1048576 * k + 609215) 32 = 531441 * k + 308764 ∧
      531441 * k + 308764 < 1048576 * k + 609215 := by
  intro k
  have h1 : C (1048576 * k + 609215) = 3145728 * k + 1827646 := by
    unfold C
    simp [show (1048576 * k + 609215) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1827646) = 1572864 * k + 913823 := by
    unfold C
    simp [show (3145728 * k + 1827646) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 913823) = 4718592 * k + 2741470 := by
    unfold C
    simp [show (1572864 * k + 913823) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2741470) = 2359296 * k + 1370735 := by
    unfold C
    simp [show (4718592 * k + 2741470) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1370735) = 7077888 * k + 4112206 := by
    unfold C
    simp [show (2359296 * k + 1370735) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4112206) = 3538944 * k + 2056103 := by
    unfold C
    simp [show (7077888 * k + 4112206) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2056103) = 10616832 * k + 6168310 := by
    unfold C
    simp [show (3538944 * k + 2056103) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6168310) = 5308416 * k + 3084155 := by
    unfold C
    simp [show (10616832 * k + 6168310) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3084155) = 15925248 * k + 9252466 := by
    unfold C
    simp [show (5308416 * k + 3084155) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9252466) = 7962624 * k + 4626233 := by
    unfold C
    simp [show (15925248 * k + 9252466) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4626233) = 23887872 * k + 13878700 := by
    unfold C
    simp [show (7962624 * k + 4626233) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 13878700) = 11943936 * k + 6939350 := by
    unfold C
    simp [show (23887872 * k + 13878700) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6939350) = 5971968 * k + 3469675 := by
    unfold C
    simp [show (11943936 * k + 6939350) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3469675) = 17915904 * k + 10409026 := by
    unfold C
    simp [show (5971968 * k + 3469675) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10409026) = 8957952 * k + 5204513 := by
    unfold C
    simp [show (17915904 * k + 10409026) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5204513) = 26873856 * k + 15613540 := by
    unfold C
    simp [show (8957952 * k + 5204513) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 15613540) = 13436928 * k + 7806770 := by
    unfold C
    simp [show (26873856 * k + 15613540) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7806770) = 6718464 * k + 3903385 := by
    unfold C
    simp [show (13436928 * k + 7806770) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3903385) = 20155392 * k + 11710156 := by
    unfold C
    simp [show (6718464 * k + 3903385) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 11710156) = 10077696 * k + 5855078 := by
    unfold C
    simp [show (20155392 * k + 11710156) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5855078) = 5038848 * k + 2927539 := by
    unfold C
    simp [show (10077696 * k + 5855078) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2927539) = 15116544 * k + 8782618 := by
    unfold C
    simp [show (5038848 * k + 2927539) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8782618) = 7558272 * k + 4391309 := by
    unfold C
    simp [show (15116544 * k + 8782618) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4391309) = 22674816 * k + 13173928 := by
    unfold C
    simp [show (7558272 * k + 4391309) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 13173928) = 11337408 * k + 6586964 := by
    unfold C
    simp [show (22674816 * k + 13173928) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6586964) = 5668704 * k + 3293482 := by
    unfold C
    simp [show (11337408 * k + 6586964) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3293482) = 2834352 * k + 1646741 := by
    unfold C
    simp [show (5668704 * k + 3293482) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1646741) = 8503056 * k + 4940224 := by
    unfold C
    simp [show (2834352 * k + 1646741) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4940224) = 4251528 * k + 2470112 := by
    unfold C
    simp [show (8503056 * k + 4940224) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2470112) = 2125764 * k + 1235056 := by
    unfold C
    simp [show (4251528 * k + 2470112) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1235056) = 1062882 * k + 617528 := by
    unfold C
    simp [show (2125764 * k + 1235056) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 617528) = 531441 * k + 308764 := by
    unfold C
    simp [show (1062882 * k + 617528) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 609215) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 609215)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_609471 : ∀ k : Nat,
    iterate (1048576 * k + 609471) 32 = 531441 * k + 308894 ∧
      531441 * k + 308894 < 1048576 * k + 609471 := by
  intro k
  have h1 : C (1048576 * k + 609471) = 3145728 * k + 1828414 := by
    unfold C
    simp [show (1048576 * k + 609471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1828414) = 1572864 * k + 914207 := by
    unfold C
    simp [show (3145728 * k + 1828414) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 914207) = 4718592 * k + 2742622 := by
    unfold C
    simp [show (1572864 * k + 914207) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2742622) = 2359296 * k + 1371311 := by
    unfold C
    simp [show (4718592 * k + 2742622) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1371311) = 7077888 * k + 4113934 := by
    unfold C
    simp [show (2359296 * k + 1371311) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4113934) = 3538944 * k + 2056967 := by
    unfold C
    simp [show (7077888 * k + 4113934) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2056967) = 10616832 * k + 6170902 := by
    unfold C
    simp [show (3538944 * k + 2056967) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6170902) = 5308416 * k + 3085451 := by
    unfold C
    simp [show (10616832 * k + 6170902) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3085451) = 15925248 * k + 9256354 := by
    unfold C
    simp [show (5308416 * k + 3085451) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9256354) = 7962624 * k + 4628177 := by
    unfold C
    simp [show (15925248 * k + 9256354) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4628177) = 23887872 * k + 13884532 := by
    unfold C
    simp [show (7962624 * k + 4628177) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 13884532) = 11943936 * k + 6942266 := by
    unfold C
    simp [show (23887872 * k + 13884532) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6942266) = 5971968 * k + 3471133 := by
    unfold C
    simp [show (11943936 * k + 6942266) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3471133) = 17915904 * k + 10413400 := by
    unfold C
    simp [show (5971968 * k + 3471133) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10413400) = 8957952 * k + 5206700 := by
    unfold C
    simp [show (17915904 * k + 10413400) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5206700) = 4478976 * k + 2603350 := by
    unfold C
    simp [show (8957952 * k + 5206700) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2603350) = 2239488 * k + 1301675 := by
    unfold C
    simp [show (4478976 * k + 2603350) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1301675) = 6718464 * k + 3905026 := by
    unfold C
    simp [show (2239488 * k + 1301675) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3905026) = 3359232 * k + 1952513 := by
    unfold C
    simp [show (6718464 * k + 3905026) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1952513) = 10077696 * k + 5857540 := by
    unfold C
    simp [show (3359232 * k + 1952513) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5857540) = 5038848 * k + 2928770 := by
    unfold C
    simp [show (10077696 * k + 5857540) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2928770) = 2519424 * k + 1464385 := by
    unfold C
    simp [show (5038848 * k + 2928770) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1464385) = 7558272 * k + 4393156 := by
    unfold C
    simp [show (2519424 * k + 1464385) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4393156) = 3779136 * k + 2196578 := by
    unfold C
    simp [show (7558272 * k + 4393156) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2196578) = 1889568 * k + 1098289 := by
    unfold C
    simp [show (3779136 * k + 2196578) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1098289) = 5668704 * k + 3294868 := by
    unfold C
    simp [show (1889568 * k + 1098289) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3294868) = 2834352 * k + 1647434 := by
    unfold C
    simp [show (5668704 * k + 3294868) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1647434) = 1417176 * k + 823717 := by
    unfold C
    simp [show (2834352 * k + 1647434) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 823717) = 4251528 * k + 2471152 := by
    unfold C
    simp [show (1417176 * k + 823717) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2471152) = 2125764 * k + 1235576 := by
    unfold C
    simp [show (4251528 * k + 2471152) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1235576) = 1062882 * k + 617788 := by
    unfold C
    simp [show (2125764 * k + 1235576) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 617788) = 531441 * k + 308894 := by
    unfold C
    simp [show (1062882 * k + 617788) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 609471) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 609471)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard078
