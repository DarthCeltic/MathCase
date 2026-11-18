import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard045

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_344287 : ∀ k : Nat,
    iterate (1048576 * k + 344287) 32 = 531441 * k + 174493 ∧
      531441 * k + 174493 < 1048576 * k + 344287 := by
  intro k
  have h1 : C (1048576 * k + 344287) = 3145728 * k + 1032862 := by
    unfold C
    simp [show (1048576 * k + 344287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1032862) = 1572864 * k + 516431 := by
    unfold C
    simp [show (3145728 * k + 1032862) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 516431) = 4718592 * k + 1549294 := by
    unfold C
    simp [show (1572864 * k + 516431) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1549294) = 2359296 * k + 774647 := by
    unfold C
    simp [show (4718592 * k + 1549294) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 774647) = 7077888 * k + 2323942 := by
    unfold C
    simp [show (2359296 * k + 774647) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2323942) = 3538944 * k + 1161971 := by
    unfold C
    simp [show (7077888 * k + 2323942) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1161971) = 10616832 * k + 3485914 := by
    unfold C
    simp [show (3538944 * k + 1161971) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3485914) = 5308416 * k + 1742957 := by
    unfold C
    simp [show (10616832 * k + 3485914) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1742957) = 15925248 * k + 5228872 := by
    unfold C
    simp [show (5308416 * k + 1742957) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5228872) = 7962624 * k + 2614436 := by
    unfold C
    simp [show (15925248 * k + 5228872) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2614436) = 3981312 * k + 1307218 := by
    unfold C
    simp [show (7962624 * k + 2614436) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1307218) = 1990656 * k + 653609 := by
    unfold C
    simp [show (3981312 * k + 1307218) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 653609) = 5971968 * k + 1960828 := by
    unfold C
    simp [show (1990656 * k + 653609) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1960828) = 2985984 * k + 980414 := by
    unfold C
    simp [show (5971968 * k + 1960828) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 980414) = 1492992 * k + 490207 := by
    unfold C
    simp [show (2985984 * k + 980414) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 490207) = 4478976 * k + 1470622 := by
    unfold C
    simp [show (1492992 * k + 490207) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1470622) = 2239488 * k + 735311 := by
    unfold C
    simp [show (4478976 * k + 1470622) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 735311) = 6718464 * k + 2205934 := by
    unfold C
    simp [show (2239488 * k + 735311) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2205934) = 3359232 * k + 1102967 := by
    unfold C
    simp [show (6718464 * k + 2205934) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1102967) = 10077696 * k + 3308902 := by
    unfold C
    simp [show (3359232 * k + 1102967) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3308902) = 5038848 * k + 1654451 := by
    unfold C
    simp [show (10077696 * k + 3308902) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1654451) = 15116544 * k + 4963354 := by
    unfold C
    simp [show (5038848 * k + 1654451) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4963354) = 7558272 * k + 2481677 := by
    unfold C
    simp [show (15116544 * k + 4963354) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2481677) = 22674816 * k + 7445032 := by
    unfold C
    simp [show (7558272 * k + 2481677) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 7445032) = 11337408 * k + 3722516 := by
    unfold C
    simp [show (22674816 * k + 7445032) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3722516) = 5668704 * k + 1861258 := by
    unfold C
    simp [show (11337408 * k + 3722516) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1861258) = 2834352 * k + 930629 := by
    unfold C
    simp [show (5668704 * k + 1861258) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 930629) = 8503056 * k + 2791888 := by
    unfold C
    simp [show (2834352 * k + 930629) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2791888) = 4251528 * k + 1395944 := by
    unfold C
    simp [show (8503056 * k + 2791888) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1395944) = 2125764 * k + 697972 := by
    unfold C
    simp [show (4251528 * k + 1395944) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 697972) = 1062882 * k + 348986 := by
    unfold C
    simp [show (2125764 * k + 697972) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 348986) = 531441 * k + 174493 := by
    unfold C
    simp [show (1062882 * k + 348986) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 344287) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 344287)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_344731 : ∀ k : Nat,
    iterate (1048576 * k + 344731) 32 = 531441 * k + 174718 ∧
      531441 * k + 174718 < 1048576 * k + 344731 := by
  intro k
  have h1 : C (1048576 * k + 344731) = 3145728 * k + 1034194 := by
    unfold C
    simp [show (1048576 * k + 344731) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1034194) = 1572864 * k + 517097 := by
    unfold C
    simp [show (3145728 * k + 1034194) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 517097) = 4718592 * k + 1551292 := by
    unfold C
    simp [show (1572864 * k + 517097) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1551292) = 2359296 * k + 775646 := by
    unfold C
    simp [show (4718592 * k + 1551292) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 775646) = 1179648 * k + 387823 := by
    unfold C
    simp [show (2359296 * k + 775646) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 387823) = 3538944 * k + 1163470 := by
    unfold C
    simp [show (1179648 * k + 387823) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1163470) = 1769472 * k + 581735 := by
    unfold C
    simp [show (3538944 * k + 1163470) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 581735) = 5308416 * k + 1745206 := by
    unfold C
    simp [show (1769472 * k + 581735) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1745206) = 2654208 * k + 872603 := by
    unfold C
    simp [show (5308416 * k + 1745206) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 872603) = 7962624 * k + 2617810 := by
    unfold C
    simp [show (2654208 * k + 872603) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2617810) = 3981312 * k + 1308905 := by
    unfold C
    simp [show (7962624 * k + 2617810) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1308905) = 11943936 * k + 3926716 := by
    unfold C
    simp [show (3981312 * k + 1308905) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3926716) = 5971968 * k + 1963358 := by
    unfold C
    simp [show (11943936 * k + 3926716) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1963358) = 2985984 * k + 981679 := by
    unfold C
    simp [show (5971968 * k + 1963358) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 981679) = 8957952 * k + 2945038 := by
    unfold C
    simp [show (2985984 * k + 981679) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2945038) = 4478976 * k + 1472519 := by
    unfold C
    simp [show (8957952 * k + 2945038) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1472519) = 13436928 * k + 4417558 := by
    unfold C
    simp [show (4478976 * k + 1472519) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4417558) = 6718464 * k + 2208779 := by
    unfold C
    simp [show (13436928 * k + 4417558) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2208779) = 20155392 * k + 6626338 := by
    unfold C
    simp [show (6718464 * k + 2208779) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 6626338) = 10077696 * k + 3313169 := by
    unfold C
    simp [show (20155392 * k + 6626338) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3313169) = 30233088 * k + 9939508 := by
    unfold C
    simp [show (10077696 * k + 3313169) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 9939508) = 15116544 * k + 4969754 := by
    unfold C
    simp [show (30233088 * k + 9939508) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4969754) = 7558272 * k + 2484877 := by
    unfold C
    simp [show (15116544 * k + 4969754) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2484877) = 22674816 * k + 7454632 := by
    unfold C
    simp [show (7558272 * k + 2484877) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 7454632) = 11337408 * k + 3727316 := by
    unfold C
    simp [show (22674816 * k + 7454632) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3727316) = 5668704 * k + 1863658 := by
    unfold C
    simp [show (11337408 * k + 3727316) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1863658) = 2834352 * k + 931829 := by
    unfold C
    simp [show (5668704 * k + 1863658) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 931829) = 8503056 * k + 2795488 := by
    unfold C
    simp [show (2834352 * k + 931829) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2795488) = 4251528 * k + 1397744 := by
    unfold C
    simp [show (8503056 * k + 2795488) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1397744) = 2125764 * k + 698872 := by
    unfold C
    simp [show (4251528 * k + 1397744) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 698872) = 1062882 * k + 349436 := by
    unfold C
    simp [show (2125764 * k + 698872) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 349436) = 531441 * k + 174718 := by
    unfold C
    simp [show (1062882 * k + 349436) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 344731) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 344731)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_345343 : ∀ k : Nat,
    iterate (1048576 * k + 345343) 32 = 531441 * k + 175028 ∧
      531441 * k + 175028 < 1048576 * k + 345343 := by
  intro k
  have h1 : C (1048576 * k + 345343) = 3145728 * k + 1036030 := by
    unfold C
    simp [show (1048576 * k + 345343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1036030) = 1572864 * k + 518015 := by
    unfold C
    simp [show (3145728 * k + 1036030) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 518015) = 4718592 * k + 1554046 := by
    unfold C
    simp [show (1572864 * k + 518015) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1554046) = 2359296 * k + 777023 := by
    unfold C
    simp [show (4718592 * k + 1554046) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 777023) = 7077888 * k + 2331070 := by
    unfold C
    simp [show (2359296 * k + 777023) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2331070) = 3538944 * k + 1165535 := by
    unfold C
    simp [show (7077888 * k + 2331070) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1165535) = 10616832 * k + 3496606 := by
    unfold C
    simp [show (3538944 * k + 1165535) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3496606) = 5308416 * k + 1748303 := by
    unfold C
    simp [show (10616832 * k + 3496606) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1748303) = 15925248 * k + 5244910 := by
    unfold C
    simp [show (5308416 * k + 1748303) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5244910) = 7962624 * k + 2622455 := by
    unfold C
    simp [show (15925248 * k + 5244910) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2622455) = 23887872 * k + 7867366 := by
    unfold C
    simp [show (7962624 * k + 2622455) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 7867366) = 11943936 * k + 3933683 := by
    unfold C
    simp [show (23887872 * k + 7867366) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3933683) = 35831808 * k + 11801050 := by
    unfold C
    simp [show (11943936 * k + 3933683) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 11801050) = 17915904 * k + 5900525 := by
    unfold C
    simp [show (35831808 * k + 11801050) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 5900525) = 53747712 * k + 17701576 := by
    unfold C
    simp [show (17915904 * k + 5900525) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 17701576) = 26873856 * k + 8850788 := by
    unfold C
    simp [show (53747712 * k + 17701576) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 8850788) = 13436928 * k + 4425394 := by
    unfold C
    simp [show (26873856 * k + 8850788) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4425394) = 6718464 * k + 2212697 := by
    unfold C
    simp [show (13436928 * k + 4425394) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2212697) = 20155392 * k + 6638092 := by
    unfold C
    simp [show (6718464 * k + 2212697) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 6638092) = 10077696 * k + 3319046 := by
    unfold C
    simp [show (20155392 * k + 6638092) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3319046) = 5038848 * k + 1659523 := by
    unfold C
    simp [show (10077696 * k + 3319046) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1659523) = 15116544 * k + 4978570 := by
    unfold C
    simp [show (5038848 * k + 1659523) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4978570) = 7558272 * k + 2489285 := by
    unfold C
    simp [show (15116544 * k + 4978570) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2489285) = 22674816 * k + 7467856 := by
    unfold C
    simp [show (7558272 * k + 2489285) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 7467856) = 11337408 * k + 3733928 := by
    unfold C
    simp [show (22674816 * k + 7467856) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3733928) = 5668704 * k + 1866964 := by
    unfold C
    simp [show (11337408 * k + 3733928) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1866964) = 2834352 * k + 933482 := by
    unfold C
    simp [show (5668704 * k + 1866964) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 933482) = 1417176 * k + 466741 := by
    unfold C
    simp [show (2834352 * k + 933482) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 466741) = 4251528 * k + 1400224 := by
    unfold C
    simp [show (1417176 * k + 466741) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1400224) = 2125764 * k + 700112 := by
    unfold C
    simp [show (4251528 * k + 1400224) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 700112) = 1062882 * k + 350056 := by
    unfold C
    simp [show (2125764 * k + 700112) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 350056) = 531441 * k + 175028 := by
    unfold C
    simp [show (1062882 * k + 350056) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 345343) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 345343)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_347803 : ∀ k : Nat,
    iterate (1048576 * k + 347803) 32 = 531441 * k + 176275 ∧
      531441 * k + 176275 < 1048576 * k + 347803 := by
  intro k
  have h1 : C (1048576 * k + 347803) = 3145728 * k + 1043410 := by
    unfold C
    simp [show (1048576 * k + 347803) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1043410) = 1572864 * k + 521705 := by
    unfold C
    simp [show (3145728 * k + 1043410) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 521705) = 4718592 * k + 1565116 := by
    unfold C
    simp [show (1572864 * k + 521705) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1565116) = 2359296 * k + 782558 := by
    unfold C
    simp [show (4718592 * k + 1565116) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 782558) = 1179648 * k + 391279 := by
    unfold C
    simp [show (2359296 * k + 782558) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 391279) = 3538944 * k + 1173838 := by
    unfold C
    simp [show (1179648 * k + 391279) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1173838) = 1769472 * k + 586919 := by
    unfold C
    simp [show (3538944 * k + 1173838) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 586919) = 5308416 * k + 1760758 := by
    unfold C
    simp [show (1769472 * k + 586919) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1760758) = 2654208 * k + 880379 := by
    unfold C
    simp [show (5308416 * k + 1760758) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 880379) = 7962624 * k + 2641138 := by
    unfold C
    simp [show (2654208 * k + 880379) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2641138) = 3981312 * k + 1320569 := by
    unfold C
    simp [show (7962624 * k + 2641138) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1320569) = 11943936 * k + 3961708 := by
    unfold C
    simp [show (3981312 * k + 1320569) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3961708) = 5971968 * k + 1980854 := by
    unfold C
    simp [show (11943936 * k + 3961708) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1980854) = 2985984 * k + 990427 := by
    unfold C
    simp [show (5971968 * k + 1980854) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 990427) = 8957952 * k + 2971282 := by
    unfold C
    simp [show (2985984 * k + 990427) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2971282) = 4478976 * k + 1485641 := by
    unfold C
    simp [show (8957952 * k + 2971282) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1485641) = 13436928 * k + 4456924 := by
    unfold C
    simp [show (4478976 * k + 1485641) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4456924) = 6718464 * k + 2228462 := by
    unfold C
    simp [show (13436928 * k + 4456924) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2228462) = 3359232 * k + 1114231 := by
    unfold C
    simp [show (6718464 * k + 2228462) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1114231) = 10077696 * k + 3342694 := by
    unfold C
    simp [show (3359232 * k + 1114231) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3342694) = 5038848 * k + 1671347 := by
    unfold C
    simp [show (10077696 * k + 3342694) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1671347) = 15116544 * k + 5014042 := by
    unfold C
    simp [show (5038848 * k + 1671347) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5014042) = 7558272 * k + 2507021 := by
    unfold C
    simp [show (15116544 * k + 5014042) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2507021) = 22674816 * k + 7521064 := by
    unfold C
    simp [show (7558272 * k + 2507021) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 7521064) = 11337408 * k + 3760532 := by
    unfold C
    simp [show (22674816 * k + 7521064) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3760532) = 5668704 * k + 1880266 := by
    unfold C
    simp [show (11337408 * k + 3760532) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1880266) = 2834352 * k + 940133 := by
    unfold C
    simp [show (5668704 * k + 1880266) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 940133) = 8503056 * k + 2820400 := by
    unfold C
    simp [show (2834352 * k + 940133) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2820400) = 4251528 * k + 1410200 := by
    unfold C
    simp [show (8503056 * k + 2820400) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1410200) = 2125764 * k + 705100 := by
    unfold C
    simp [show (4251528 * k + 1410200) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 705100) = 1062882 * k + 352550 := by
    unfold C
    simp [show (2125764 * k + 705100) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 352550) = 531441 * k + 176275 := by
    unfold C
    simp [show (1062882 * k + 352550) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 347803) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 347803)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_347935 : ∀ k : Nat,
    iterate (1048576 * k + 347935) 32 = 531441 * k + 176342 ∧
      531441 * k + 176342 < 1048576 * k + 347935 := by
  intro k
  have h1 : C (1048576 * k + 347935) = 3145728 * k + 1043806 := by
    unfold C
    simp [show (1048576 * k + 347935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1043806) = 1572864 * k + 521903 := by
    unfold C
    simp [show (3145728 * k + 1043806) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 521903) = 4718592 * k + 1565710 := by
    unfold C
    simp [show (1572864 * k + 521903) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1565710) = 2359296 * k + 782855 := by
    unfold C
    simp [show (4718592 * k + 1565710) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 782855) = 7077888 * k + 2348566 := by
    unfold C
    simp [show (2359296 * k + 782855) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2348566) = 3538944 * k + 1174283 := by
    unfold C
    simp [show (7077888 * k + 2348566) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1174283) = 10616832 * k + 3522850 := by
    unfold C
    simp [show (3538944 * k + 1174283) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3522850) = 5308416 * k + 1761425 := by
    unfold C
    simp [show (10616832 * k + 3522850) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1761425) = 15925248 * k + 5284276 := by
    unfold C
    simp [show (5308416 * k + 1761425) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5284276) = 7962624 * k + 2642138 := by
    unfold C
    simp [show (15925248 * k + 5284276) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2642138) = 3981312 * k + 1321069 := by
    unfold C
    simp [show (7962624 * k + 2642138) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1321069) = 11943936 * k + 3963208 := by
    unfold C
    simp [show (3981312 * k + 1321069) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3963208) = 5971968 * k + 1981604 := by
    unfold C
    simp [show (11943936 * k + 3963208) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1981604) = 2985984 * k + 990802 := by
    unfold C
    simp [show (5971968 * k + 1981604) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 990802) = 1492992 * k + 495401 := by
    unfold C
    simp [show (2985984 * k + 990802) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 495401) = 4478976 * k + 1486204 := by
    unfold C
    simp [show (1492992 * k + 495401) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1486204) = 2239488 * k + 743102 := by
    unfold C
    simp [show (4478976 * k + 1486204) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 743102) = 1119744 * k + 371551 := by
    unfold C
    simp [show (2239488 * k + 743102) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 371551) = 3359232 * k + 1114654 := by
    unfold C
    simp [show (1119744 * k + 371551) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1114654) = 1679616 * k + 557327 := by
    unfold C
    simp [show (3359232 * k + 1114654) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 557327) = 5038848 * k + 1671982 := by
    unfold C
    simp [show (1679616 * k + 557327) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1671982) = 2519424 * k + 835991 := by
    unfold C
    simp [show (5038848 * k + 1671982) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 835991) = 7558272 * k + 2507974 := by
    unfold C
    simp [show (2519424 * k + 835991) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2507974) = 3779136 * k + 1253987 := by
    unfold C
    simp [show (7558272 * k + 2507974) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1253987) = 11337408 * k + 3761962 := by
    unfold C
    simp [show (3779136 * k + 1253987) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3761962) = 5668704 * k + 1880981 := by
    unfold C
    simp [show (11337408 * k + 3761962) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1880981) = 17006112 * k + 5642944 := by
    unfold C
    simp [show (5668704 * k + 1880981) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 5642944) = 8503056 * k + 2821472 := by
    unfold C
    simp [show (17006112 * k + 5642944) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2821472) = 4251528 * k + 1410736 := by
    unfold C
    simp [show (8503056 * k + 2821472) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1410736) = 2125764 * k + 705368 := by
    unfold C
    simp [show (4251528 * k + 1410736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 705368) = 1062882 * k + 352684 := by
    unfold C
    simp [show (2125764 * k + 705368) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 352684) = 531441 * k + 176342 := by
    unfold C
    simp [show (1062882 * k + 352684) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 347935) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 347935)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_348095 : ∀ k : Nat,
    iterate (1048576 * k + 348095) 32 = 531441 * k + 176423 ∧
      531441 * k + 176423 < 1048576 * k + 348095 := by
  intro k
  have h1 : C (1048576 * k + 348095) = 3145728 * k + 1044286 := by
    unfold C
    simp [show (1048576 * k + 348095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1044286) = 1572864 * k + 522143 := by
    unfold C
    simp [show (3145728 * k + 1044286) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 522143) = 4718592 * k + 1566430 := by
    unfold C
    simp [show (1572864 * k + 522143) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1566430) = 2359296 * k + 783215 := by
    unfold C
    simp [show (4718592 * k + 1566430) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 783215) = 7077888 * k + 2349646 := by
    unfold C
    simp [show (2359296 * k + 783215) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2349646) = 3538944 * k + 1174823 := by
    unfold C
    simp [show (7077888 * k + 2349646) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1174823) = 10616832 * k + 3524470 := by
    unfold C
    simp [show (3538944 * k + 1174823) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3524470) = 5308416 * k + 1762235 := by
    unfold C
    simp [show (10616832 * k + 3524470) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1762235) = 15925248 * k + 5286706 := by
    unfold C
    simp [show (5308416 * k + 1762235) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5286706) = 7962624 * k + 2643353 := by
    unfold C
    simp [show (15925248 * k + 5286706) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2643353) = 23887872 * k + 7930060 := by
    unfold C
    simp [show (7962624 * k + 2643353) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 7930060) = 11943936 * k + 3965030 := by
    unfold C
    simp [show (23887872 * k + 7930060) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3965030) = 5971968 * k + 1982515 := by
    unfold C
    simp [show (11943936 * k + 3965030) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1982515) = 17915904 * k + 5947546 := by
    unfold C
    simp [show (5971968 * k + 1982515) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5947546) = 8957952 * k + 2973773 := by
    unfold C
    simp [show (17915904 * k + 5947546) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2973773) = 26873856 * k + 8921320 := by
    unfold C
    simp [show (8957952 * k + 2973773) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 8921320) = 13436928 * k + 4460660 := by
    unfold C
    simp [show (26873856 * k + 8921320) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4460660) = 6718464 * k + 2230330 := by
    unfold C
    simp [show (13436928 * k + 4460660) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2230330) = 3359232 * k + 1115165 := by
    unfold C
    simp [show (6718464 * k + 2230330) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1115165) = 10077696 * k + 3345496 := by
    unfold C
    simp [show (3359232 * k + 1115165) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3345496) = 5038848 * k + 1672748 := by
    unfold C
    simp [show (10077696 * k + 3345496) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1672748) = 2519424 * k + 836374 := by
    unfold C
    simp [show (5038848 * k + 1672748) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 836374) = 1259712 * k + 418187 := by
    unfold C
    simp [show (2519424 * k + 836374) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 418187) = 3779136 * k + 1254562 := by
    unfold C
    simp [show (1259712 * k + 418187) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1254562) = 1889568 * k + 627281 := by
    unfold C
    simp [show (3779136 * k + 1254562) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 627281) = 5668704 * k + 1881844 := by
    unfold C
    simp [show (1889568 * k + 627281) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1881844) = 2834352 * k + 940922 := by
    unfold C
    simp [show (5668704 * k + 1881844) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 940922) = 1417176 * k + 470461 := by
    unfold C
    simp [show (2834352 * k + 940922) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 470461) = 4251528 * k + 1411384 := by
    unfold C
    simp [show (1417176 * k + 470461) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1411384) = 2125764 * k + 705692 := by
    unfold C
    simp [show (4251528 * k + 1411384) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 705692) = 1062882 * k + 352846 := by
    unfold C
    simp [show (2125764 * k + 705692) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 352846) = 531441 * k + 176423 := by
    unfold C
    simp [show (1062882 * k + 352846) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 348095) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 348095)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_348383 : ∀ k : Nat,
    iterate (1048576 * k + 348383) 32 = 531441 * k + 176569 ∧
      531441 * k + 176569 < 1048576 * k + 348383 := by
  intro k
  have h1 : C (1048576 * k + 348383) = 3145728 * k + 1045150 := by
    unfold C
    simp [show (1048576 * k + 348383) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1045150) = 1572864 * k + 522575 := by
    unfold C
    simp [show (3145728 * k + 1045150) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 522575) = 4718592 * k + 1567726 := by
    unfold C
    simp [show (1572864 * k + 522575) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1567726) = 2359296 * k + 783863 := by
    unfold C
    simp [show (4718592 * k + 1567726) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 783863) = 7077888 * k + 2351590 := by
    unfold C
    simp [show (2359296 * k + 783863) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2351590) = 3538944 * k + 1175795 := by
    unfold C
    simp [show (7077888 * k + 2351590) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1175795) = 10616832 * k + 3527386 := by
    unfold C
    simp [show (3538944 * k + 1175795) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3527386) = 5308416 * k + 1763693 := by
    unfold C
    simp [show (10616832 * k + 3527386) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1763693) = 15925248 * k + 5291080 := by
    unfold C
    simp [show (5308416 * k + 1763693) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5291080) = 7962624 * k + 2645540 := by
    unfold C
    simp [show (15925248 * k + 5291080) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2645540) = 3981312 * k + 1322770 := by
    unfold C
    simp [show (7962624 * k + 2645540) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1322770) = 1990656 * k + 661385 := by
    unfold C
    simp [show (3981312 * k + 1322770) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 661385) = 5971968 * k + 1984156 := by
    unfold C
    simp [show (1990656 * k + 661385) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1984156) = 2985984 * k + 992078 := by
    unfold C
    simp [show (5971968 * k + 1984156) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 992078) = 1492992 * k + 496039 := by
    unfold C
    simp [show (2985984 * k + 992078) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 496039) = 4478976 * k + 1488118 := by
    unfold C
    simp [show (1492992 * k + 496039) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1488118) = 2239488 * k + 744059 := by
    unfold C
    simp [show (4478976 * k + 1488118) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 744059) = 6718464 * k + 2232178 := by
    unfold C
    simp [show (2239488 * k + 744059) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2232178) = 3359232 * k + 1116089 := by
    unfold C
    simp [show (6718464 * k + 2232178) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1116089) = 10077696 * k + 3348268 := by
    unfold C
    simp [show (3359232 * k + 1116089) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3348268) = 5038848 * k + 1674134 := by
    unfold C
    simp [show (10077696 * k + 3348268) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1674134) = 2519424 * k + 837067 := by
    unfold C
    simp [show (5038848 * k + 1674134) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 837067) = 7558272 * k + 2511202 := by
    unfold C
    simp [show (2519424 * k + 837067) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2511202) = 3779136 * k + 1255601 := by
    unfold C
    simp [show (7558272 * k + 2511202) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1255601) = 11337408 * k + 3766804 := by
    unfold C
    simp [show (3779136 * k + 1255601) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3766804) = 5668704 * k + 1883402 := by
    unfold C
    simp [show (11337408 * k + 3766804) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1883402) = 2834352 * k + 941701 := by
    unfold C
    simp [show (5668704 * k + 1883402) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 941701) = 8503056 * k + 2825104 := by
    unfold C
    simp [show (2834352 * k + 941701) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2825104) = 4251528 * k + 1412552 := by
    unfold C
    simp [show (8503056 * k + 2825104) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1412552) = 2125764 * k + 706276 := by
    unfold C
    simp [show (4251528 * k + 1412552) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 706276) = 1062882 * k + 353138 := by
    unfold C
    simp [show (2125764 * k + 706276) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 353138) = 531441 * k + 176569 := by
    unfold C
    simp [show (1062882 * k + 353138) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 348383) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 348383)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_348415 : ∀ k : Nat,
    iterate (1048576 * k + 348415) 32 = 531441 * k + 176585 ∧
      531441 * k + 176585 < 1048576 * k + 348415 := by
  intro k
  have h1 : C (1048576 * k + 348415) = 3145728 * k + 1045246 := by
    unfold C
    simp [show (1048576 * k + 348415) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1045246) = 1572864 * k + 522623 := by
    unfold C
    simp [show (3145728 * k + 1045246) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 522623) = 4718592 * k + 1567870 := by
    unfold C
    simp [show (1572864 * k + 522623) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1567870) = 2359296 * k + 783935 := by
    unfold C
    simp [show (4718592 * k + 1567870) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 783935) = 7077888 * k + 2351806 := by
    unfold C
    simp [show (2359296 * k + 783935) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2351806) = 3538944 * k + 1175903 := by
    unfold C
    simp [show (7077888 * k + 2351806) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1175903) = 10616832 * k + 3527710 := by
    unfold C
    simp [show (3538944 * k + 1175903) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3527710) = 5308416 * k + 1763855 := by
    unfold C
    simp [show (10616832 * k + 3527710) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1763855) = 15925248 * k + 5291566 := by
    unfold C
    simp [show (5308416 * k + 1763855) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5291566) = 7962624 * k + 2645783 := by
    unfold C
    simp [show (15925248 * k + 5291566) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2645783) = 23887872 * k + 7937350 := by
    unfold C
    simp [show (7962624 * k + 2645783) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 7937350) = 11943936 * k + 3968675 := by
    unfold C
    simp [show (23887872 * k + 7937350) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3968675) = 35831808 * k + 11906026 := by
    unfold C
    simp [show (11943936 * k + 3968675) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 11906026) = 17915904 * k + 5953013 := by
    unfold C
    simp [show (35831808 * k + 11906026) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 5953013) = 53747712 * k + 17859040 := by
    unfold C
    simp [show (17915904 * k + 5953013) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 17859040) = 26873856 * k + 8929520 := by
    unfold C
    simp [show (53747712 * k + 17859040) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 8929520) = 13436928 * k + 4464760 := by
    unfold C
    simp [show (26873856 * k + 8929520) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4464760) = 6718464 * k + 2232380 := by
    unfold C
    simp [show (13436928 * k + 4464760) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2232380) = 3359232 * k + 1116190 := by
    unfold C
    simp [show (6718464 * k + 2232380) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1116190) = 1679616 * k + 558095 := by
    unfold C
    simp [show (3359232 * k + 1116190) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 558095) = 5038848 * k + 1674286 := by
    unfold C
    simp [show (1679616 * k + 558095) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1674286) = 2519424 * k + 837143 := by
    unfold C
    simp [show (5038848 * k + 1674286) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 837143) = 7558272 * k + 2511430 := by
    unfold C
    simp [show (2519424 * k + 837143) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2511430) = 3779136 * k + 1255715 := by
    unfold C
    simp [show (7558272 * k + 2511430) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1255715) = 11337408 * k + 3767146 := by
    unfold C
    simp [show (3779136 * k + 1255715) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3767146) = 5668704 * k + 1883573 := by
    unfold C
    simp [show (11337408 * k + 3767146) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1883573) = 17006112 * k + 5650720 := by
    unfold C
    simp [show (5668704 * k + 1883573) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 5650720) = 8503056 * k + 2825360 := by
    unfold C
    simp [show (17006112 * k + 5650720) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2825360) = 4251528 * k + 1412680 := by
    unfold C
    simp [show (8503056 * k + 2825360) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1412680) = 2125764 * k + 706340 := by
    unfold C
    simp [show (4251528 * k + 1412680) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 706340) = 1062882 * k + 353170 := by
    unfold C
    simp [show (2125764 * k + 706340) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 353170) = 531441 * k + 176585 := by
    unfold C
    simp [show (1062882 * k + 353170) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 348415) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 348415)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_348863 : ∀ k : Nat,
    iterate (1048576 * k + 348863) 32 = 531441 * k + 176812 ∧
      531441 * k + 176812 < 1048576 * k + 348863 := by
  intro k
  have h1 : C (1048576 * k + 348863) = 3145728 * k + 1046590 := by
    unfold C
    simp [show (1048576 * k + 348863) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1046590) = 1572864 * k + 523295 := by
    unfold C
    simp [show (3145728 * k + 1046590) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 523295) = 4718592 * k + 1569886 := by
    unfold C
    simp [show (1572864 * k + 523295) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1569886) = 2359296 * k + 784943 := by
    unfold C
    simp [show (4718592 * k + 1569886) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 784943) = 7077888 * k + 2354830 := by
    unfold C
    simp [show (2359296 * k + 784943) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2354830) = 3538944 * k + 1177415 := by
    unfold C
    simp [show (7077888 * k + 2354830) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1177415) = 10616832 * k + 3532246 := by
    unfold C
    simp [show (3538944 * k + 1177415) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3532246) = 5308416 * k + 1766123 := by
    unfold C
    simp [show (10616832 * k + 3532246) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1766123) = 15925248 * k + 5298370 := by
    unfold C
    simp [show (5308416 * k + 1766123) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5298370) = 7962624 * k + 2649185 := by
    unfold C
    simp [show (15925248 * k + 5298370) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2649185) = 23887872 * k + 7947556 := by
    unfold C
    simp [show (7962624 * k + 2649185) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 7947556) = 11943936 * k + 3973778 := by
    unfold C
    simp [show (23887872 * k + 7947556) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3973778) = 5971968 * k + 1986889 := by
    unfold C
    simp [show (11943936 * k + 3973778) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1986889) = 17915904 * k + 5960668 := by
    unfold C
    simp [show (5971968 * k + 1986889) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5960668) = 8957952 * k + 2980334 := by
    unfold C
    simp [show (17915904 * k + 5960668) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2980334) = 4478976 * k + 1490167 := by
    unfold C
    simp [show (8957952 * k + 2980334) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1490167) = 13436928 * k + 4470502 := by
    unfold C
    simp [show (4478976 * k + 1490167) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4470502) = 6718464 * k + 2235251 := by
    unfold C
    simp [show (13436928 * k + 4470502) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2235251) = 20155392 * k + 6705754 := by
    unfold C
    simp [show (6718464 * k + 2235251) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 6705754) = 10077696 * k + 3352877 := by
    unfold C
    simp [show (20155392 * k + 6705754) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3352877) = 30233088 * k + 10058632 := by
    unfold C
    simp [show (10077696 * k + 3352877) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 10058632) = 15116544 * k + 5029316 := by
    unfold C
    simp [show (30233088 * k + 10058632) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5029316) = 7558272 * k + 2514658 := by
    unfold C
    simp [show (15116544 * k + 5029316) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2514658) = 3779136 * k + 1257329 := by
    unfold C
    simp [show (7558272 * k + 2514658) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1257329) = 11337408 * k + 3771988 := by
    unfold C
    simp [show (3779136 * k + 1257329) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3771988) = 5668704 * k + 1885994 := by
    unfold C
    simp [show (11337408 * k + 3771988) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1885994) = 2834352 * k + 942997 := by
    unfold C
    simp [show (5668704 * k + 1885994) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 942997) = 8503056 * k + 2828992 := by
    unfold C
    simp [show (2834352 * k + 942997) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2828992) = 4251528 * k + 1414496 := by
    unfold C
    simp [show (8503056 * k + 2828992) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1414496) = 2125764 * k + 707248 := by
    unfold C
    simp [show (4251528 * k + 1414496) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 707248) = 1062882 * k + 353624 := by
    unfold C
    simp [show (2125764 * k + 707248) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 353624) = 531441 * k + 176812 := by
    unfold C
    simp [show (1062882 * k + 353624) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 348863) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 348863)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_348959 : ∀ k : Nat,
    iterate (1048576 * k + 348959) 32 = 531441 * k + 176861 ∧
      531441 * k + 176861 < 1048576 * k + 348959 := by
  intro k
  have h1 : C (1048576 * k + 348959) = 3145728 * k + 1046878 := by
    unfold C
    simp [show (1048576 * k + 348959) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1046878) = 1572864 * k + 523439 := by
    unfold C
    simp [show (3145728 * k + 1046878) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 523439) = 4718592 * k + 1570318 := by
    unfold C
    simp [show (1572864 * k + 523439) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1570318) = 2359296 * k + 785159 := by
    unfold C
    simp [show (4718592 * k + 1570318) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 785159) = 7077888 * k + 2355478 := by
    unfold C
    simp [show (2359296 * k + 785159) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2355478) = 3538944 * k + 1177739 := by
    unfold C
    simp [show (7077888 * k + 2355478) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1177739) = 10616832 * k + 3533218 := by
    unfold C
    simp [show (3538944 * k + 1177739) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3533218) = 5308416 * k + 1766609 := by
    unfold C
    simp [show (10616832 * k + 3533218) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1766609) = 15925248 * k + 5299828 := by
    unfold C
    simp [show (5308416 * k + 1766609) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5299828) = 7962624 * k + 2649914 := by
    unfold C
    simp [show (15925248 * k + 5299828) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2649914) = 3981312 * k + 1324957 := by
    unfold C
    simp [show (7962624 * k + 2649914) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1324957) = 11943936 * k + 3974872 := by
    unfold C
    simp [show (3981312 * k + 1324957) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3974872) = 5971968 * k + 1987436 := by
    unfold C
    simp [show (11943936 * k + 3974872) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1987436) = 2985984 * k + 993718 := by
    unfold C
    simp [show (5971968 * k + 1987436) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 993718) = 1492992 * k + 496859 := by
    unfold C
    simp [show (2985984 * k + 993718) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 496859) = 4478976 * k + 1490578 := by
    unfold C
    simp [show (1492992 * k + 496859) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1490578) = 2239488 * k + 745289 := by
    unfold C
    simp [show (4478976 * k + 1490578) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 745289) = 6718464 * k + 2235868 := by
    unfold C
    simp [show (2239488 * k + 745289) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2235868) = 3359232 * k + 1117934 := by
    unfold C
    simp [show (6718464 * k + 2235868) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1117934) = 1679616 * k + 558967 := by
    unfold C
    simp [show (3359232 * k + 1117934) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 558967) = 5038848 * k + 1676902 := by
    unfold C
    simp [show (1679616 * k + 558967) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1676902) = 2519424 * k + 838451 := by
    unfold C
    simp [show (5038848 * k + 1676902) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 838451) = 7558272 * k + 2515354 := by
    unfold C
    simp [show (2519424 * k + 838451) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2515354) = 3779136 * k + 1257677 := by
    unfold C
    simp [show (7558272 * k + 2515354) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1257677) = 11337408 * k + 3773032 := by
    unfold C
    simp [show (3779136 * k + 1257677) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3773032) = 5668704 * k + 1886516 := by
    unfold C
    simp [show (11337408 * k + 3773032) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1886516) = 2834352 * k + 943258 := by
    unfold C
    simp [show (5668704 * k + 1886516) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 943258) = 1417176 * k + 471629 := by
    unfold C
    simp [show (2834352 * k + 943258) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 471629) = 4251528 * k + 1414888 := by
    unfold C
    simp [show (1417176 * k + 471629) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1414888) = 2125764 * k + 707444 := by
    unfold C
    simp [show (4251528 * k + 1414888) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 707444) = 1062882 * k + 353722 := by
    unfold C
    simp [show (2125764 * k + 707444) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 353722) = 531441 * k + 176861 := by
    unfold C
    simp [show (1062882 * k + 353722) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 348959) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 348959)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_349231 : ∀ k : Nat,
    iterate (1048576 * k + 349231) 32 = 531441 * k + 176999 ∧
      531441 * k + 176999 < 1048576 * k + 349231 := by
  intro k
  have h1 : C (1048576 * k + 349231) = 3145728 * k + 1047694 := by
    unfold C
    simp [show (1048576 * k + 349231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1047694) = 1572864 * k + 523847 := by
    unfold C
    simp [show (3145728 * k + 1047694) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 523847) = 4718592 * k + 1571542 := by
    unfold C
    simp [show (1572864 * k + 523847) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1571542) = 2359296 * k + 785771 := by
    unfold C
    simp [show (4718592 * k + 1571542) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 785771) = 7077888 * k + 2357314 := by
    unfold C
    simp [show (2359296 * k + 785771) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2357314) = 3538944 * k + 1178657 := by
    unfold C
    simp [show (7077888 * k + 2357314) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1178657) = 10616832 * k + 3535972 := by
    unfold C
    simp [show (3538944 * k + 1178657) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3535972) = 5308416 * k + 1767986 := by
    unfold C
    simp [show (10616832 * k + 3535972) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1767986) = 2654208 * k + 883993 := by
    unfold C
    simp [show (5308416 * k + 1767986) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 883993) = 7962624 * k + 2651980 := by
    unfold C
    simp [show (2654208 * k + 883993) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2651980) = 3981312 * k + 1325990 := by
    unfold C
    simp [show (7962624 * k + 2651980) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1325990) = 1990656 * k + 662995 := by
    unfold C
    simp [show (3981312 * k + 1325990) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 662995) = 5971968 * k + 1988986 := by
    unfold C
    simp [show (1990656 * k + 662995) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1988986) = 2985984 * k + 994493 := by
    unfold C
    simp [show (5971968 * k + 1988986) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 994493) = 8957952 * k + 2983480 := by
    unfold C
    simp [show (2985984 * k + 994493) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2983480) = 4478976 * k + 1491740 := by
    unfold C
    simp [show (8957952 * k + 2983480) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1491740) = 2239488 * k + 745870 := by
    unfold C
    simp [show (4478976 * k + 1491740) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 745870) = 1119744 * k + 372935 := by
    unfold C
    simp [show (2239488 * k + 745870) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 372935) = 3359232 * k + 1118806 := by
    unfold C
    simp [show (1119744 * k + 372935) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1118806) = 1679616 * k + 559403 := by
    unfold C
    simp [show (3359232 * k + 1118806) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 559403) = 5038848 * k + 1678210 := by
    unfold C
    simp [show (1679616 * k + 559403) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1678210) = 2519424 * k + 839105 := by
    unfold C
    simp [show (5038848 * k + 1678210) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 839105) = 7558272 * k + 2517316 := by
    unfold C
    simp [show (2519424 * k + 839105) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2517316) = 3779136 * k + 1258658 := by
    unfold C
    simp [show (7558272 * k + 2517316) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1258658) = 1889568 * k + 629329 := by
    unfold C
    simp [show (3779136 * k + 1258658) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 629329) = 5668704 * k + 1887988 := by
    unfold C
    simp [show (1889568 * k + 629329) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1887988) = 2834352 * k + 943994 := by
    unfold C
    simp [show (5668704 * k + 1887988) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 943994) = 1417176 * k + 471997 := by
    unfold C
    simp [show (2834352 * k + 943994) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 471997) = 4251528 * k + 1415992 := by
    unfold C
    simp [show (1417176 * k + 471997) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1415992) = 2125764 * k + 707996 := by
    unfold C
    simp [show (4251528 * k + 1415992) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 707996) = 1062882 * k + 353998 := by
    unfold C
    simp [show (2125764 * k + 707996) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 353998) = 531441 * k + 176999 := by
    unfold C
    simp [show (1062882 * k + 353998) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 349231) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 349231)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_349439 : ∀ k : Nat,
    iterate (1048576 * k + 349439) 32 = 531441 * k + 177104 ∧
      531441 * k + 177104 < 1048576 * k + 349439 := by
  intro k
  have h1 : C (1048576 * k + 349439) = 3145728 * k + 1048318 := by
    unfold C
    simp [show (1048576 * k + 349439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1048318) = 1572864 * k + 524159 := by
    unfold C
    simp [show (3145728 * k + 1048318) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 524159) = 4718592 * k + 1572478 := by
    unfold C
    simp [show (1572864 * k + 524159) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1572478) = 2359296 * k + 786239 := by
    unfold C
    simp [show (4718592 * k + 1572478) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 786239) = 7077888 * k + 2358718 := by
    unfold C
    simp [show (2359296 * k + 786239) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2358718) = 3538944 * k + 1179359 := by
    unfold C
    simp [show (7077888 * k + 2358718) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1179359) = 10616832 * k + 3538078 := by
    unfold C
    simp [show (3538944 * k + 1179359) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3538078) = 5308416 * k + 1769039 := by
    unfold C
    simp [show (10616832 * k + 3538078) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1769039) = 15925248 * k + 5307118 := by
    unfold C
    simp [show (5308416 * k + 1769039) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5307118) = 7962624 * k + 2653559 := by
    unfold C
    simp [show (15925248 * k + 5307118) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2653559) = 23887872 * k + 7960678 := by
    unfold C
    simp [show (7962624 * k + 2653559) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 7960678) = 11943936 * k + 3980339 := by
    unfold C
    simp [show (23887872 * k + 7960678) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3980339) = 35831808 * k + 11941018 := by
    unfold C
    simp [show (11943936 * k + 3980339) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 11941018) = 17915904 * k + 5970509 := by
    unfold C
    simp [show (35831808 * k + 11941018) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 5970509) = 53747712 * k + 17911528 := by
    unfold C
    simp [show (17915904 * k + 5970509) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 17911528) = 26873856 * k + 8955764 := by
    unfold C
    simp [show (53747712 * k + 17911528) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 8955764) = 13436928 * k + 4477882 := by
    unfold C
    simp [show (26873856 * k + 8955764) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4477882) = 6718464 * k + 2238941 := by
    unfold C
    simp [show (13436928 * k + 4477882) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2238941) = 20155392 * k + 6716824 := by
    unfold C
    simp [show (6718464 * k + 2238941) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 6716824) = 10077696 * k + 3358412 := by
    unfold C
    simp [show (20155392 * k + 6716824) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3358412) = 5038848 * k + 1679206 := by
    unfold C
    simp [show (10077696 * k + 3358412) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1679206) = 2519424 * k + 839603 := by
    unfold C
    simp [show (5038848 * k + 1679206) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 839603) = 7558272 * k + 2518810 := by
    unfold C
    simp [show (2519424 * k + 839603) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2518810) = 3779136 * k + 1259405 := by
    unfold C
    simp [show (7558272 * k + 2518810) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1259405) = 11337408 * k + 3778216 := by
    unfold C
    simp [show (3779136 * k + 1259405) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3778216) = 5668704 * k + 1889108 := by
    unfold C
    simp [show (11337408 * k + 3778216) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1889108) = 2834352 * k + 944554 := by
    unfold C
    simp [show (5668704 * k + 1889108) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 944554) = 1417176 * k + 472277 := by
    unfold C
    simp [show (2834352 * k + 944554) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 472277) = 4251528 * k + 1416832 := by
    unfold C
    simp [show (1417176 * k + 472277) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1416832) = 2125764 * k + 708416 := by
    unfold C
    simp [show (4251528 * k + 1416832) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 708416) = 1062882 * k + 354208 := by
    unfold C
    simp [show (2125764 * k + 708416) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 354208) = 531441 * k + 177104 := by
    unfold C
    simp [show (1062882 * k + 354208) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 349439) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 349439)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_350119 : ∀ k : Nat,
    iterate (1048576 * k + 350119) 32 = 531441 * k + 177449 ∧
      531441 * k + 177449 < 1048576 * k + 350119 := by
  intro k
  have h1 : C (1048576 * k + 350119) = 3145728 * k + 1050358 := by
    unfold C
    simp [show (1048576 * k + 350119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1050358) = 1572864 * k + 525179 := by
    unfold C
    simp [show (3145728 * k + 1050358) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 525179) = 4718592 * k + 1575538 := by
    unfold C
    simp [show (1572864 * k + 525179) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1575538) = 2359296 * k + 787769 := by
    unfold C
    simp [show (4718592 * k + 1575538) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 787769) = 7077888 * k + 2363308 := by
    unfold C
    simp [show (2359296 * k + 787769) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2363308) = 3538944 * k + 1181654 := by
    unfold C
    simp [show (7077888 * k + 2363308) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1181654) = 1769472 * k + 590827 := by
    unfold C
    simp [show (3538944 * k + 1181654) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 590827) = 5308416 * k + 1772482 := by
    unfold C
    simp [show (1769472 * k + 590827) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1772482) = 2654208 * k + 886241 := by
    unfold C
    simp [show (5308416 * k + 1772482) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 886241) = 7962624 * k + 2658724 := by
    unfold C
    simp [show (2654208 * k + 886241) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2658724) = 3981312 * k + 1329362 := by
    unfold C
    simp [show (7962624 * k + 2658724) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1329362) = 1990656 * k + 664681 := by
    unfold C
    simp [show (3981312 * k + 1329362) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 664681) = 5971968 * k + 1994044 := by
    unfold C
    simp [show (1990656 * k + 664681) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1994044) = 2985984 * k + 997022 := by
    unfold C
    simp [show (5971968 * k + 1994044) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 997022) = 1492992 * k + 498511 := by
    unfold C
    simp [show (2985984 * k + 997022) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 498511) = 4478976 * k + 1495534 := by
    unfold C
    simp [show (1492992 * k + 498511) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1495534) = 2239488 * k + 747767 := by
    unfold C
    simp [show (4478976 * k + 1495534) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 747767) = 6718464 * k + 2243302 := by
    unfold C
    simp [show (2239488 * k + 747767) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2243302) = 3359232 * k + 1121651 := by
    unfold C
    simp [show (6718464 * k + 2243302) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1121651) = 10077696 * k + 3364954 := by
    unfold C
    simp [show (3359232 * k + 1121651) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3364954) = 5038848 * k + 1682477 := by
    unfold C
    simp [show (10077696 * k + 3364954) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1682477) = 15116544 * k + 5047432 := by
    unfold C
    simp [show (5038848 * k + 1682477) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5047432) = 7558272 * k + 2523716 := by
    unfold C
    simp [show (15116544 * k + 5047432) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2523716) = 3779136 * k + 1261858 := by
    unfold C
    simp [show (7558272 * k + 2523716) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1261858) = 1889568 * k + 630929 := by
    unfold C
    simp [show (3779136 * k + 1261858) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 630929) = 5668704 * k + 1892788 := by
    unfold C
    simp [show (1889568 * k + 630929) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1892788) = 2834352 * k + 946394 := by
    unfold C
    simp [show (5668704 * k + 1892788) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 946394) = 1417176 * k + 473197 := by
    unfold C
    simp [show (2834352 * k + 946394) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 473197) = 4251528 * k + 1419592 := by
    unfold C
    simp [show (1417176 * k + 473197) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1419592) = 2125764 * k + 709796 := by
    unfold C
    simp [show (4251528 * k + 1419592) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 709796) = 1062882 * k + 354898 := by
    unfold C
    simp [show (2125764 * k + 709796) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 354898) = 531441 * k + 177449 := by
    unfold C
    simp [show (1062882 * k + 354898) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 350119) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 350119)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_350207 : ∀ k : Nat,
    iterate (1048576 * k + 350207) 32 = 531441 * k + 177493 ∧
      531441 * k + 177493 < 1048576 * k + 350207 := by
  intro k
  have h1 : C (1048576 * k + 350207) = 3145728 * k + 1050622 := by
    unfold C
    simp [show (1048576 * k + 350207) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1050622) = 1572864 * k + 525311 := by
    unfold C
    simp [show (3145728 * k + 1050622) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 525311) = 4718592 * k + 1575934 := by
    unfold C
    simp [show (1572864 * k + 525311) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1575934) = 2359296 * k + 787967 := by
    unfold C
    simp [show (4718592 * k + 1575934) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 787967) = 7077888 * k + 2363902 := by
    unfold C
    simp [show (2359296 * k + 787967) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2363902) = 3538944 * k + 1181951 := by
    unfold C
    simp [show (7077888 * k + 2363902) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1181951) = 10616832 * k + 3545854 := by
    unfold C
    simp [show (3538944 * k + 1181951) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3545854) = 5308416 * k + 1772927 := by
    unfold C
    simp [show (10616832 * k + 3545854) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1772927) = 15925248 * k + 5318782 := by
    unfold C
    simp [show (5308416 * k + 1772927) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5318782) = 7962624 * k + 2659391 := by
    unfold C
    simp [show (15925248 * k + 5318782) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2659391) = 23887872 * k + 7978174 := by
    unfold C
    simp [show (7962624 * k + 2659391) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 7978174) = 11943936 * k + 3989087 := by
    unfold C
    simp [show (23887872 * k + 7978174) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3989087) = 35831808 * k + 11967262 := by
    unfold C
    simp [show (11943936 * k + 3989087) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 11967262) = 17915904 * k + 5983631 := by
    unfold C
    simp [show (35831808 * k + 11967262) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 5983631) = 53747712 * k + 17950894 := by
    unfold C
    simp [show (17915904 * k + 5983631) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 17950894) = 26873856 * k + 8975447 := by
    unfold C
    simp [show (53747712 * k + 17950894) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 8975447) = 80621568 * k + 26926342 := by
    unfold C
    simp [show (26873856 * k + 8975447) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 26926342) = 40310784 * k + 13463171 := by
    unfold C
    simp [show (80621568 * k + 26926342) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 13463171) = 120932352 * k + 40389514 := by
    unfold C
    simp [show (40310784 * k + 13463171) % 2 ≠ 0 by omega]
    omega
  have h20 : C (120932352 * k + 40389514) = 60466176 * k + 20194757 := by
    unfold C
    simp [show (120932352 * k + 40389514) % 2 = 0 by omega]
    omega
  have h21 : C (60466176 * k + 20194757) = 181398528 * k + 60584272 := by
    unfold C
    simp [show (60466176 * k + 20194757) % 2 ≠ 0 by omega]
    omega
  have h22 : C (181398528 * k + 60584272) = 90699264 * k + 30292136 := by
    unfold C
    simp [show (181398528 * k + 60584272) % 2 = 0 by omega]
    omega
  have h23 : C (90699264 * k + 30292136) = 45349632 * k + 15146068 := by
    unfold C
    simp [show (90699264 * k + 30292136) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 15146068) = 22674816 * k + 7573034 := by
    unfold C
    simp [show (45349632 * k + 15146068) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 7573034) = 11337408 * k + 3786517 := by
    unfold C
    simp [show (22674816 * k + 7573034) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3786517) = 34012224 * k + 11359552 := by
    unfold C
    simp [show (11337408 * k + 3786517) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 11359552) = 17006112 * k + 5679776 := by
    unfold C
    simp [show (34012224 * k + 11359552) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 5679776) = 8503056 * k + 2839888 := by
    unfold C
    simp [show (17006112 * k + 5679776) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2839888) = 4251528 * k + 1419944 := by
    unfold C
    simp [show (8503056 * k + 2839888) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1419944) = 2125764 * k + 709972 := by
    unfold C
    simp [show (4251528 * k + 1419944) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 709972) = 1062882 * k + 354986 := by
    unfold C
    simp [show (2125764 * k + 709972) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 354986) = 531441 * k + 177493 := by
    unfold C
    simp [show (1062882 * k + 354986) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 350207) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 350207)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_350875 : ∀ k : Nat,
    iterate (1048576 * k + 350875) 32 = 531441 * k + 177832 ∧
      531441 * k + 177832 < 1048576 * k + 350875 := by
  intro k
  have h1 : C (1048576 * k + 350875) = 3145728 * k + 1052626 := by
    unfold C
    simp [show (1048576 * k + 350875) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1052626) = 1572864 * k + 526313 := by
    unfold C
    simp [show (3145728 * k + 1052626) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 526313) = 4718592 * k + 1578940 := by
    unfold C
    simp [show (1572864 * k + 526313) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1578940) = 2359296 * k + 789470 := by
    unfold C
    simp [show (4718592 * k + 1578940) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 789470) = 1179648 * k + 394735 := by
    unfold C
    simp [show (2359296 * k + 789470) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 394735) = 3538944 * k + 1184206 := by
    unfold C
    simp [show (1179648 * k + 394735) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1184206) = 1769472 * k + 592103 := by
    unfold C
    simp [show (3538944 * k + 1184206) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 592103) = 5308416 * k + 1776310 := by
    unfold C
    simp [show (1769472 * k + 592103) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1776310) = 2654208 * k + 888155 := by
    unfold C
    simp [show (5308416 * k + 1776310) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 888155) = 7962624 * k + 2664466 := by
    unfold C
    simp [show (2654208 * k + 888155) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2664466) = 3981312 * k + 1332233 := by
    unfold C
    simp [show (7962624 * k + 2664466) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1332233) = 11943936 * k + 3996700 := by
    unfold C
    simp [show (3981312 * k + 1332233) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3996700) = 5971968 * k + 1998350 := by
    unfold C
    simp [show (11943936 * k + 3996700) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1998350) = 2985984 * k + 999175 := by
    unfold C
    simp [show (5971968 * k + 1998350) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 999175) = 8957952 * k + 2997526 := by
    unfold C
    simp [show (2985984 * k + 999175) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2997526) = 4478976 * k + 1498763 := by
    unfold C
    simp [show (8957952 * k + 2997526) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1498763) = 13436928 * k + 4496290 := by
    unfold C
    simp [show (4478976 * k + 1498763) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4496290) = 6718464 * k + 2248145 := by
    unfold C
    simp [show (13436928 * k + 4496290) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2248145) = 20155392 * k + 6744436 := by
    unfold C
    simp [show (6718464 * k + 2248145) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 6744436) = 10077696 * k + 3372218 := by
    unfold C
    simp [show (20155392 * k + 6744436) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3372218) = 5038848 * k + 1686109 := by
    unfold C
    simp [show (10077696 * k + 3372218) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1686109) = 15116544 * k + 5058328 := by
    unfold C
    simp [show (5038848 * k + 1686109) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5058328) = 7558272 * k + 2529164 := by
    unfold C
    simp [show (15116544 * k + 5058328) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2529164) = 3779136 * k + 1264582 := by
    unfold C
    simp [show (7558272 * k + 2529164) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1264582) = 1889568 * k + 632291 := by
    unfold C
    simp [show (3779136 * k + 1264582) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 632291) = 5668704 * k + 1896874 := by
    unfold C
    simp [show (1889568 * k + 632291) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1896874) = 2834352 * k + 948437 := by
    unfold C
    simp [show (5668704 * k + 1896874) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 948437) = 8503056 * k + 2845312 := by
    unfold C
    simp [show (2834352 * k + 948437) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2845312) = 4251528 * k + 1422656 := by
    unfold C
    simp [show (8503056 * k + 2845312) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1422656) = 2125764 * k + 711328 := by
    unfold C
    simp [show (4251528 * k + 1422656) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 711328) = 1062882 * k + 355664 := by
    unfold C
    simp [show (2125764 * k + 711328) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 355664) = 531441 * k + 177832 := by
    unfold C
    simp [show (1062882 * k + 355664) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 350875) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 350875)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_350887 : ∀ k : Nat,
    iterate (1048576 * k + 350887) 32 = 531441 * k + 177838 ∧
      531441 * k + 177838 < 1048576 * k + 350887 := by
  intro k
  have h1 : C (1048576 * k + 350887) = 3145728 * k + 1052662 := by
    unfold C
    simp [show (1048576 * k + 350887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1052662) = 1572864 * k + 526331 := by
    unfold C
    simp [show (3145728 * k + 1052662) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 526331) = 4718592 * k + 1578994 := by
    unfold C
    simp [show (1572864 * k + 526331) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1578994) = 2359296 * k + 789497 := by
    unfold C
    simp [show (4718592 * k + 1578994) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 789497) = 7077888 * k + 2368492 := by
    unfold C
    simp [show (2359296 * k + 789497) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2368492) = 3538944 * k + 1184246 := by
    unfold C
    simp [show (7077888 * k + 2368492) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1184246) = 1769472 * k + 592123 := by
    unfold C
    simp [show (3538944 * k + 1184246) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 592123) = 5308416 * k + 1776370 := by
    unfold C
    simp [show (1769472 * k + 592123) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1776370) = 2654208 * k + 888185 := by
    unfold C
    simp [show (5308416 * k + 1776370) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 888185) = 7962624 * k + 2664556 := by
    unfold C
    simp [show (2654208 * k + 888185) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2664556) = 3981312 * k + 1332278 := by
    unfold C
    simp [show (7962624 * k + 2664556) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1332278) = 1990656 * k + 666139 := by
    unfold C
    simp [show (3981312 * k + 1332278) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 666139) = 5971968 * k + 1998418 := by
    unfold C
    simp [show (1990656 * k + 666139) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1998418) = 2985984 * k + 999209 := by
    unfold C
    simp [show (5971968 * k + 1998418) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 999209) = 8957952 * k + 2997628 := by
    unfold C
    simp [show (2985984 * k + 999209) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2997628) = 4478976 * k + 1498814 := by
    unfold C
    simp [show (8957952 * k + 2997628) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1498814) = 2239488 * k + 749407 := by
    unfold C
    simp [show (4478976 * k + 1498814) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 749407) = 6718464 * k + 2248222 := by
    unfold C
    simp [show (2239488 * k + 749407) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2248222) = 3359232 * k + 1124111 := by
    unfold C
    simp [show (6718464 * k + 2248222) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1124111) = 10077696 * k + 3372334 := by
    unfold C
    simp [show (3359232 * k + 1124111) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3372334) = 5038848 * k + 1686167 := by
    unfold C
    simp [show (10077696 * k + 3372334) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1686167) = 15116544 * k + 5058502 := by
    unfold C
    simp [show (5038848 * k + 1686167) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5058502) = 7558272 * k + 2529251 := by
    unfold C
    simp [show (15116544 * k + 5058502) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2529251) = 22674816 * k + 7587754 := by
    unfold C
    simp [show (7558272 * k + 2529251) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 7587754) = 11337408 * k + 3793877 := by
    unfold C
    simp [show (22674816 * k + 7587754) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3793877) = 34012224 * k + 11381632 := by
    unfold C
    simp [show (11337408 * k + 3793877) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 11381632) = 17006112 * k + 5690816 := by
    unfold C
    simp [show (34012224 * k + 11381632) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 5690816) = 8503056 * k + 2845408 := by
    unfold C
    simp [show (17006112 * k + 5690816) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2845408) = 4251528 * k + 1422704 := by
    unfold C
    simp [show (8503056 * k + 2845408) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1422704) = 2125764 * k + 711352 := by
    unfold C
    simp [show (4251528 * k + 1422704) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 711352) = 1062882 * k + 355676 := by
    unfold C
    simp [show (2125764 * k + 711352) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 355676) = 531441 * k + 177838 := by
    unfold C
    simp [show (1062882 * k + 355676) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 350887) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 350887)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_350971 : ∀ k : Nat,
    iterate (1048576 * k + 350971) 32 = 531441 * k + 177881 ∧
      531441 * k + 177881 < 1048576 * k + 350971 := by
  intro k
  have h1 : C (1048576 * k + 350971) = 3145728 * k + 1052914 := by
    unfold C
    simp [show (1048576 * k + 350971) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1052914) = 1572864 * k + 526457 := by
    unfold C
    simp [show (3145728 * k + 1052914) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 526457) = 4718592 * k + 1579372 := by
    unfold C
    simp [show (1572864 * k + 526457) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1579372) = 2359296 * k + 789686 := by
    unfold C
    simp [show (4718592 * k + 1579372) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 789686) = 1179648 * k + 394843 := by
    unfold C
    simp [show (2359296 * k + 789686) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 394843) = 3538944 * k + 1184530 := by
    unfold C
    simp [show (1179648 * k + 394843) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1184530) = 1769472 * k + 592265 := by
    unfold C
    simp [show (3538944 * k + 1184530) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 592265) = 5308416 * k + 1776796 := by
    unfold C
    simp [show (1769472 * k + 592265) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1776796) = 2654208 * k + 888398 := by
    unfold C
    simp [show (5308416 * k + 1776796) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 888398) = 1327104 * k + 444199 := by
    unfold C
    simp [show (2654208 * k + 888398) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 444199) = 3981312 * k + 1332598 := by
    unfold C
    simp [show (1327104 * k + 444199) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1332598) = 1990656 * k + 666299 := by
    unfold C
    simp [show (3981312 * k + 1332598) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 666299) = 5971968 * k + 1998898 := by
    unfold C
    simp [show (1990656 * k + 666299) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1998898) = 2985984 * k + 999449 := by
    unfold C
    simp [show (5971968 * k + 1998898) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 999449) = 8957952 * k + 2998348 := by
    unfold C
    simp [show (2985984 * k + 999449) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2998348) = 4478976 * k + 1499174 := by
    unfold C
    simp [show (8957952 * k + 2998348) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1499174) = 2239488 * k + 749587 := by
    unfold C
    simp [show (4478976 * k + 1499174) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 749587) = 6718464 * k + 2248762 := by
    unfold C
    simp [show (2239488 * k + 749587) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2248762) = 3359232 * k + 1124381 := by
    unfold C
    simp [show (6718464 * k + 2248762) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1124381) = 10077696 * k + 3373144 := by
    unfold C
    simp [show (3359232 * k + 1124381) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3373144) = 5038848 * k + 1686572 := by
    unfold C
    simp [show (10077696 * k + 3373144) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1686572) = 2519424 * k + 843286 := by
    unfold C
    simp [show (5038848 * k + 1686572) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 843286) = 1259712 * k + 421643 := by
    unfold C
    simp [show (2519424 * k + 843286) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 421643) = 3779136 * k + 1264930 := by
    unfold C
    simp [show (1259712 * k + 421643) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1264930) = 1889568 * k + 632465 := by
    unfold C
    simp [show (3779136 * k + 1264930) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 632465) = 5668704 * k + 1897396 := by
    unfold C
    simp [show (1889568 * k + 632465) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1897396) = 2834352 * k + 948698 := by
    unfold C
    simp [show (5668704 * k + 1897396) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 948698) = 1417176 * k + 474349 := by
    unfold C
    simp [show (2834352 * k + 948698) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 474349) = 4251528 * k + 1423048 := by
    unfold C
    simp [show (1417176 * k + 474349) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1423048) = 2125764 * k + 711524 := by
    unfold C
    simp [show (4251528 * k + 1423048) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 711524) = 1062882 * k + 355762 := by
    unfold C
    simp [show (2125764 * k + 711524) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 355762) = 531441 * k + 177881 := by
    unfold C
    simp [show (1062882 * k + 355762) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 350971) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 350971)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_351647 : ∀ k : Nat,
    iterate (1048576 * k + 351647) 32 = 531441 * k + 178223 ∧
      531441 * k + 178223 < 1048576 * k + 351647 := by
  intro k
  have h1 : C (1048576 * k + 351647) = 3145728 * k + 1054942 := by
    unfold C
    simp [show (1048576 * k + 351647) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1054942) = 1572864 * k + 527471 := by
    unfold C
    simp [show (3145728 * k + 1054942) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 527471) = 4718592 * k + 1582414 := by
    unfold C
    simp [show (1572864 * k + 527471) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1582414) = 2359296 * k + 791207 := by
    unfold C
    simp [show (4718592 * k + 1582414) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 791207) = 7077888 * k + 2373622 := by
    unfold C
    simp [show (2359296 * k + 791207) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2373622) = 3538944 * k + 1186811 := by
    unfold C
    simp [show (7077888 * k + 2373622) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1186811) = 10616832 * k + 3560434 := by
    unfold C
    simp [show (3538944 * k + 1186811) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3560434) = 5308416 * k + 1780217 := by
    unfold C
    simp [show (10616832 * k + 3560434) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1780217) = 15925248 * k + 5340652 := by
    unfold C
    simp [show (5308416 * k + 1780217) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5340652) = 7962624 * k + 2670326 := by
    unfold C
    simp [show (15925248 * k + 5340652) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2670326) = 3981312 * k + 1335163 := by
    unfold C
    simp [show (7962624 * k + 2670326) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1335163) = 11943936 * k + 4005490 := by
    unfold C
    simp [show (3981312 * k + 1335163) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4005490) = 5971968 * k + 2002745 := by
    unfold C
    simp [show (11943936 * k + 4005490) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2002745) = 17915904 * k + 6008236 := by
    unfold C
    simp [show (5971968 * k + 2002745) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6008236) = 8957952 * k + 3004118 := by
    unfold C
    simp [show (17915904 * k + 6008236) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3004118) = 4478976 * k + 1502059 := by
    unfold C
    simp [show (8957952 * k + 3004118) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1502059) = 13436928 * k + 4506178 := by
    unfold C
    simp [show (4478976 * k + 1502059) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4506178) = 6718464 * k + 2253089 := by
    unfold C
    simp [show (13436928 * k + 4506178) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2253089) = 20155392 * k + 6759268 := by
    unfold C
    simp [show (6718464 * k + 2253089) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 6759268) = 10077696 * k + 3379634 := by
    unfold C
    simp [show (20155392 * k + 6759268) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3379634) = 5038848 * k + 1689817 := by
    unfold C
    simp [show (10077696 * k + 3379634) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1689817) = 15116544 * k + 5069452 := by
    unfold C
    simp [show (5038848 * k + 1689817) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5069452) = 7558272 * k + 2534726 := by
    unfold C
    simp [show (15116544 * k + 5069452) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2534726) = 3779136 * k + 1267363 := by
    unfold C
    simp [show (7558272 * k + 2534726) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1267363) = 11337408 * k + 3802090 := by
    unfold C
    simp [show (3779136 * k + 1267363) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3802090) = 5668704 * k + 1901045 := by
    unfold C
    simp [show (11337408 * k + 3802090) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1901045) = 17006112 * k + 5703136 := by
    unfold C
    simp [show (5668704 * k + 1901045) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 5703136) = 8503056 * k + 2851568 := by
    unfold C
    simp [show (17006112 * k + 5703136) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2851568) = 4251528 * k + 1425784 := by
    unfold C
    simp [show (8503056 * k + 2851568) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1425784) = 2125764 * k + 712892 := by
    unfold C
    simp [show (4251528 * k + 1425784) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 712892) = 1062882 * k + 356446 := by
    unfold C
    simp [show (2125764 * k + 712892) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 356446) = 531441 * k + 178223 := by
    unfold C
    simp [show (1062882 * k + 356446) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 351647) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 351647)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_351775 : ∀ k : Nat,
    iterate (1048576 * k + 351775) 32 = 531441 * k + 178288 ∧
      531441 * k + 178288 < 1048576 * k + 351775 := by
  intro k
  have h1 : C (1048576 * k + 351775) = 3145728 * k + 1055326 := by
    unfold C
    simp [show (1048576 * k + 351775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1055326) = 1572864 * k + 527663 := by
    unfold C
    simp [show (3145728 * k + 1055326) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 527663) = 4718592 * k + 1582990 := by
    unfold C
    simp [show (1572864 * k + 527663) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1582990) = 2359296 * k + 791495 := by
    unfold C
    simp [show (4718592 * k + 1582990) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 791495) = 7077888 * k + 2374486 := by
    unfold C
    simp [show (2359296 * k + 791495) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2374486) = 3538944 * k + 1187243 := by
    unfold C
    simp [show (7077888 * k + 2374486) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1187243) = 10616832 * k + 3561730 := by
    unfold C
    simp [show (3538944 * k + 1187243) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3561730) = 5308416 * k + 1780865 := by
    unfold C
    simp [show (10616832 * k + 3561730) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1780865) = 15925248 * k + 5342596 := by
    unfold C
    simp [show (5308416 * k + 1780865) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5342596) = 7962624 * k + 2671298 := by
    unfold C
    simp [show (15925248 * k + 5342596) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2671298) = 3981312 * k + 1335649 := by
    unfold C
    simp [show (7962624 * k + 2671298) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1335649) = 11943936 * k + 4006948 := by
    unfold C
    simp [show (3981312 * k + 1335649) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4006948) = 5971968 * k + 2003474 := by
    unfold C
    simp [show (11943936 * k + 4006948) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2003474) = 2985984 * k + 1001737 := by
    unfold C
    simp [show (5971968 * k + 2003474) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1001737) = 8957952 * k + 3005212 := by
    unfold C
    simp [show (2985984 * k + 1001737) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3005212) = 4478976 * k + 1502606 := by
    unfold C
    simp [show (8957952 * k + 3005212) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1502606) = 2239488 * k + 751303 := by
    unfold C
    simp [show (4478976 * k + 1502606) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 751303) = 6718464 * k + 2253910 := by
    unfold C
    simp [show (2239488 * k + 751303) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2253910) = 3359232 * k + 1126955 := by
    unfold C
    simp [show (6718464 * k + 2253910) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1126955) = 10077696 * k + 3380866 := by
    unfold C
    simp [show (3359232 * k + 1126955) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3380866) = 5038848 * k + 1690433 := by
    unfold C
    simp [show (10077696 * k + 3380866) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1690433) = 15116544 * k + 5071300 := by
    unfold C
    simp [show (5038848 * k + 1690433) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5071300) = 7558272 * k + 2535650 := by
    unfold C
    simp [show (15116544 * k + 5071300) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2535650) = 3779136 * k + 1267825 := by
    unfold C
    simp [show (7558272 * k + 2535650) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1267825) = 11337408 * k + 3803476 := by
    unfold C
    simp [show (3779136 * k + 1267825) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3803476) = 5668704 * k + 1901738 := by
    unfold C
    simp [show (11337408 * k + 3803476) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1901738) = 2834352 * k + 950869 := by
    unfold C
    simp [show (5668704 * k + 1901738) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 950869) = 8503056 * k + 2852608 := by
    unfold C
    simp [show (2834352 * k + 950869) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2852608) = 4251528 * k + 1426304 := by
    unfold C
    simp [show (8503056 * k + 2852608) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1426304) = 2125764 * k + 713152 := by
    unfold C
    simp [show (4251528 * k + 1426304) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 713152) = 1062882 * k + 356576 := by
    unfold C
    simp [show (2125764 * k + 713152) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 356576) = 531441 * k + 178288 := by
    unfold C
    simp [show (1062882 * k + 356576) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 351775) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 351775)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_351899 : ∀ k : Nat,
    iterate (1048576 * k + 351899) 32 = 531441 * k + 178351 ∧
      531441 * k + 178351 < 1048576 * k + 351899 := by
  intro k
  have h1 : C (1048576 * k + 351899) = 3145728 * k + 1055698 := by
    unfold C
    simp [show (1048576 * k + 351899) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1055698) = 1572864 * k + 527849 := by
    unfold C
    simp [show (3145728 * k + 1055698) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 527849) = 4718592 * k + 1583548 := by
    unfold C
    simp [show (1572864 * k + 527849) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1583548) = 2359296 * k + 791774 := by
    unfold C
    simp [show (4718592 * k + 1583548) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 791774) = 1179648 * k + 395887 := by
    unfold C
    simp [show (2359296 * k + 791774) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 395887) = 3538944 * k + 1187662 := by
    unfold C
    simp [show (1179648 * k + 395887) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1187662) = 1769472 * k + 593831 := by
    unfold C
    simp [show (3538944 * k + 1187662) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 593831) = 5308416 * k + 1781494 := by
    unfold C
    simp [show (1769472 * k + 593831) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1781494) = 2654208 * k + 890747 := by
    unfold C
    simp [show (5308416 * k + 1781494) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 890747) = 7962624 * k + 2672242 := by
    unfold C
    simp [show (2654208 * k + 890747) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2672242) = 3981312 * k + 1336121 := by
    unfold C
    simp [show (7962624 * k + 2672242) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1336121) = 11943936 * k + 4008364 := by
    unfold C
    simp [show (3981312 * k + 1336121) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4008364) = 5971968 * k + 2004182 := by
    unfold C
    simp [show (11943936 * k + 4008364) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2004182) = 2985984 * k + 1002091 := by
    unfold C
    simp [show (5971968 * k + 2004182) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1002091) = 8957952 * k + 3006274 := by
    unfold C
    simp [show (2985984 * k + 1002091) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3006274) = 4478976 * k + 1503137 := by
    unfold C
    simp [show (8957952 * k + 3006274) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1503137) = 13436928 * k + 4509412 := by
    unfold C
    simp [show (4478976 * k + 1503137) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4509412) = 6718464 * k + 2254706 := by
    unfold C
    simp [show (13436928 * k + 4509412) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2254706) = 3359232 * k + 1127353 := by
    unfold C
    simp [show (6718464 * k + 2254706) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1127353) = 10077696 * k + 3382060 := by
    unfold C
    simp [show (3359232 * k + 1127353) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3382060) = 5038848 * k + 1691030 := by
    unfold C
    simp [show (10077696 * k + 3382060) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1691030) = 2519424 * k + 845515 := by
    unfold C
    simp [show (5038848 * k + 1691030) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 845515) = 7558272 * k + 2536546 := by
    unfold C
    simp [show (2519424 * k + 845515) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2536546) = 3779136 * k + 1268273 := by
    unfold C
    simp [show (7558272 * k + 2536546) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1268273) = 11337408 * k + 3804820 := by
    unfold C
    simp [show (3779136 * k + 1268273) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3804820) = 5668704 * k + 1902410 := by
    unfold C
    simp [show (11337408 * k + 3804820) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1902410) = 2834352 * k + 951205 := by
    unfold C
    simp [show (5668704 * k + 1902410) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 951205) = 8503056 * k + 2853616 := by
    unfold C
    simp [show (2834352 * k + 951205) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2853616) = 4251528 * k + 1426808 := by
    unfold C
    simp [show (8503056 * k + 2853616) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1426808) = 2125764 * k + 713404 := by
    unfold C
    simp [show (4251528 * k + 1426808) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 713404) = 1062882 * k + 356702 := by
    unfold C
    simp [show (2125764 * k + 713404) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 356702) = 531441 * k + 178351 := by
    unfold C
    simp [show (1062882 * k + 356702) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 351899) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 351899)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard045
