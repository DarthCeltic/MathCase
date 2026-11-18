import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard046

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_351935 : ∀ k : Nat,
    iterate (1048576 * k + 351935) 32 = 531441 * k + 178369 ∧
      531441 * k + 178369 < 1048576 * k + 351935 := by
  intro k
  have h1 : C (1048576 * k + 351935) = 3145728 * k + 1055806 := by
    unfold C
    simp [show (1048576 * k + 351935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1055806) = 1572864 * k + 527903 := by
    unfold C
    simp [show (3145728 * k + 1055806) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 527903) = 4718592 * k + 1583710 := by
    unfold C
    simp [show (1572864 * k + 527903) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1583710) = 2359296 * k + 791855 := by
    unfold C
    simp [show (4718592 * k + 1583710) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 791855) = 7077888 * k + 2375566 := by
    unfold C
    simp [show (2359296 * k + 791855) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2375566) = 3538944 * k + 1187783 := by
    unfold C
    simp [show (7077888 * k + 2375566) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1187783) = 10616832 * k + 3563350 := by
    unfold C
    simp [show (3538944 * k + 1187783) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3563350) = 5308416 * k + 1781675 := by
    unfold C
    simp [show (10616832 * k + 3563350) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1781675) = 15925248 * k + 5345026 := by
    unfold C
    simp [show (5308416 * k + 1781675) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5345026) = 7962624 * k + 2672513 := by
    unfold C
    simp [show (15925248 * k + 5345026) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2672513) = 23887872 * k + 8017540 := by
    unfold C
    simp [show (7962624 * k + 2672513) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 8017540) = 11943936 * k + 4008770 := by
    unfold C
    simp [show (23887872 * k + 8017540) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4008770) = 5971968 * k + 2004385 := by
    unfold C
    simp [show (11943936 * k + 4008770) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2004385) = 17915904 * k + 6013156 := by
    unfold C
    simp [show (5971968 * k + 2004385) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6013156) = 8957952 * k + 3006578 := by
    unfold C
    simp [show (17915904 * k + 6013156) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3006578) = 4478976 * k + 1503289 := by
    unfold C
    simp [show (8957952 * k + 3006578) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1503289) = 13436928 * k + 4509868 := by
    unfold C
    simp [show (4478976 * k + 1503289) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4509868) = 6718464 * k + 2254934 := by
    unfold C
    simp [show (13436928 * k + 4509868) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2254934) = 3359232 * k + 1127467 := by
    unfold C
    simp [show (6718464 * k + 2254934) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1127467) = 10077696 * k + 3382402 := by
    unfold C
    simp [show (3359232 * k + 1127467) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3382402) = 5038848 * k + 1691201 := by
    unfold C
    simp [show (10077696 * k + 3382402) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1691201) = 15116544 * k + 5073604 := by
    unfold C
    simp [show (5038848 * k + 1691201) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5073604) = 7558272 * k + 2536802 := by
    unfold C
    simp [show (15116544 * k + 5073604) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2536802) = 3779136 * k + 1268401 := by
    unfold C
    simp [show (7558272 * k + 2536802) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1268401) = 11337408 * k + 3805204 := by
    unfold C
    simp [show (3779136 * k + 1268401) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3805204) = 5668704 * k + 1902602 := by
    unfold C
    simp [show (11337408 * k + 3805204) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1902602) = 2834352 * k + 951301 := by
    unfold C
    simp [show (5668704 * k + 1902602) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 951301) = 8503056 * k + 2853904 := by
    unfold C
    simp [show (2834352 * k + 951301) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2853904) = 4251528 * k + 1426952 := by
    unfold C
    simp [show (8503056 * k + 2853904) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1426952) = 2125764 * k + 713476 := by
    unfold C
    simp [show (4251528 * k + 1426952) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 713476) = 1062882 * k + 356738 := by
    unfold C
    simp [show (2125764 * k + 713476) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 356738) = 531441 * k + 178369 := by
    unfold C
    simp [show (1062882 * k + 356738) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 351935) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 351935)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_351995 : ∀ k : Nat,
    iterate (1048576 * k + 351995) 32 = 531441 * k + 178400 ∧
      531441 * k + 178400 < 1048576 * k + 351995 := by
  intro k
  have h1 : C (1048576 * k + 351995) = 3145728 * k + 1055986 := by
    unfold C
    simp [show (1048576 * k + 351995) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1055986) = 1572864 * k + 527993 := by
    unfold C
    simp [show (3145728 * k + 1055986) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 527993) = 4718592 * k + 1583980 := by
    unfold C
    simp [show (1572864 * k + 527993) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1583980) = 2359296 * k + 791990 := by
    unfold C
    simp [show (4718592 * k + 1583980) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 791990) = 1179648 * k + 395995 := by
    unfold C
    simp [show (2359296 * k + 791990) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 395995) = 3538944 * k + 1187986 := by
    unfold C
    simp [show (1179648 * k + 395995) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1187986) = 1769472 * k + 593993 := by
    unfold C
    simp [show (3538944 * k + 1187986) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 593993) = 5308416 * k + 1781980 := by
    unfold C
    simp [show (1769472 * k + 593993) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1781980) = 2654208 * k + 890990 := by
    unfold C
    simp [show (5308416 * k + 1781980) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 890990) = 1327104 * k + 445495 := by
    unfold C
    simp [show (2654208 * k + 890990) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 445495) = 3981312 * k + 1336486 := by
    unfold C
    simp [show (1327104 * k + 445495) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1336486) = 1990656 * k + 668243 := by
    unfold C
    simp [show (3981312 * k + 1336486) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 668243) = 5971968 * k + 2004730 := by
    unfold C
    simp [show (1990656 * k + 668243) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2004730) = 2985984 * k + 1002365 := by
    unfold C
    simp [show (5971968 * k + 2004730) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1002365) = 8957952 * k + 3007096 := by
    unfold C
    simp [show (2985984 * k + 1002365) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3007096) = 4478976 * k + 1503548 := by
    unfold C
    simp [show (8957952 * k + 3007096) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1503548) = 2239488 * k + 751774 := by
    unfold C
    simp [show (4478976 * k + 1503548) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 751774) = 1119744 * k + 375887 := by
    unfold C
    simp [show (2239488 * k + 751774) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 375887) = 3359232 * k + 1127662 := by
    unfold C
    simp [show (1119744 * k + 375887) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1127662) = 1679616 * k + 563831 := by
    unfold C
    simp [show (3359232 * k + 1127662) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 563831) = 5038848 * k + 1691494 := by
    unfold C
    simp [show (1679616 * k + 563831) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1691494) = 2519424 * k + 845747 := by
    unfold C
    simp [show (5038848 * k + 1691494) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 845747) = 7558272 * k + 2537242 := by
    unfold C
    simp [show (2519424 * k + 845747) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2537242) = 3779136 * k + 1268621 := by
    unfold C
    simp [show (7558272 * k + 2537242) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1268621) = 11337408 * k + 3805864 := by
    unfold C
    simp [show (3779136 * k + 1268621) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3805864) = 5668704 * k + 1902932 := by
    unfold C
    simp [show (11337408 * k + 3805864) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1902932) = 2834352 * k + 951466 := by
    unfold C
    simp [show (5668704 * k + 1902932) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 951466) = 1417176 * k + 475733 := by
    unfold C
    simp [show (2834352 * k + 951466) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 475733) = 4251528 * k + 1427200 := by
    unfold C
    simp [show (1417176 * k + 475733) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1427200) = 2125764 * k + 713600 := by
    unfold C
    simp [show (4251528 * k + 1427200) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 713600) = 1062882 * k + 356800 := by
    unfold C
    simp [show (2125764 * k + 713600) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 356800) = 531441 * k + 178400 := by
    unfold C
    simp [show (1062882 * k + 356800) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 351995) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 351995)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_354559 : ∀ k : Nat,
    iterate (1048576 * k + 354559) 32 = 531441 * k + 179699 ∧
      531441 * k + 179699 < 1048576 * k + 354559 := by
  intro k
  have h1 : C (1048576 * k + 354559) = 3145728 * k + 1063678 := by
    unfold C
    simp [show (1048576 * k + 354559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1063678) = 1572864 * k + 531839 := by
    unfold C
    simp [show (3145728 * k + 1063678) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 531839) = 4718592 * k + 1595518 := by
    unfold C
    simp [show (1572864 * k + 531839) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1595518) = 2359296 * k + 797759 := by
    unfold C
    simp [show (4718592 * k + 1595518) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 797759) = 7077888 * k + 2393278 := by
    unfold C
    simp [show (2359296 * k + 797759) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2393278) = 3538944 * k + 1196639 := by
    unfold C
    simp [show (7077888 * k + 2393278) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1196639) = 10616832 * k + 3589918 := by
    unfold C
    simp [show (3538944 * k + 1196639) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3589918) = 5308416 * k + 1794959 := by
    unfold C
    simp [show (10616832 * k + 3589918) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1794959) = 15925248 * k + 5384878 := by
    unfold C
    simp [show (5308416 * k + 1794959) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5384878) = 7962624 * k + 2692439 := by
    unfold C
    simp [show (15925248 * k + 5384878) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2692439) = 23887872 * k + 8077318 := by
    unfold C
    simp [show (7962624 * k + 2692439) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 8077318) = 11943936 * k + 4038659 := by
    unfold C
    simp [show (23887872 * k + 8077318) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4038659) = 35831808 * k + 12115978 := by
    unfold C
    simp [show (11943936 * k + 4038659) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 12115978) = 17915904 * k + 6057989 := by
    unfold C
    simp [show (35831808 * k + 12115978) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 6057989) = 53747712 * k + 18173968 := by
    unfold C
    simp [show (17915904 * k + 6057989) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 18173968) = 26873856 * k + 9086984 := by
    unfold C
    simp [show (53747712 * k + 18173968) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 9086984) = 13436928 * k + 4543492 := by
    unfold C
    simp [show (26873856 * k + 9086984) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4543492) = 6718464 * k + 2271746 := by
    unfold C
    simp [show (13436928 * k + 4543492) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2271746) = 3359232 * k + 1135873 := by
    unfold C
    simp [show (6718464 * k + 2271746) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1135873) = 10077696 * k + 3407620 := by
    unfold C
    simp [show (3359232 * k + 1135873) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3407620) = 5038848 * k + 1703810 := by
    unfold C
    simp [show (10077696 * k + 3407620) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1703810) = 2519424 * k + 851905 := by
    unfold C
    simp [show (5038848 * k + 1703810) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 851905) = 7558272 * k + 2555716 := by
    unfold C
    simp [show (2519424 * k + 851905) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2555716) = 3779136 * k + 1277858 := by
    unfold C
    simp [show (7558272 * k + 2555716) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1277858) = 1889568 * k + 638929 := by
    unfold C
    simp [show (3779136 * k + 1277858) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 638929) = 5668704 * k + 1916788 := by
    unfold C
    simp [show (1889568 * k + 638929) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1916788) = 2834352 * k + 958394 := by
    unfold C
    simp [show (5668704 * k + 1916788) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 958394) = 1417176 * k + 479197 := by
    unfold C
    simp [show (2834352 * k + 958394) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 479197) = 4251528 * k + 1437592 := by
    unfold C
    simp [show (1417176 * k + 479197) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1437592) = 2125764 * k + 718796 := by
    unfold C
    simp [show (4251528 * k + 1437592) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 718796) = 1062882 * k + 359398 := by
    unfold C
    simp [show (2125764 * k + 718796) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 359398) = 531441 * k + 179699 := by
    unfold C
    simp [show (1062882 * k + 359398) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 354559) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 354559)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_356263 : ∀ k : Nat,
    iterate (1048576 * k + 356263) 32 = 531441 * k + 180563 ∧
      531441 * k + 180563 < 1048576 * k + 356263 := by
  intro k
  have h1 : C (1048576 * k + 356263) = 3145728 * k + 1068790 := by
    unfold C
    simp [show (1048576 * k + 356263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1068790) = 1572864 * k + 534395 := by
    unfold C
    simp [show (3145728 * k + 1068790) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 534395) = 4718592 * k + 1603186 := by
    unfold C
    simp [show (1572864 * k + 534395) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1603186) = 2359296 * k + 801593 := by
    unfold C
    simp [show (4718592 * k + 1603186) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 801593) = 7077888 * k + 2404780 := by
    unfold C
    simp [show (2359296 * k + 801593) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2404780) = 3538944 * k + 1202390 := by
    unfold C
    simp [show (7077888 * k + 2404780) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1202390) = 1769472 * k + 601195 := by
    unfold C
    simp [show (3538944 * k + 1202390) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 601195) = 5308416 * k + 1803586 := by
    unfold C
    simp [show (1769472 * k + 601195) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1803586) = 2654208 * k + 901793 := by
    unfold C
    simp [show (5308416 * k + 1803586) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 901793) = 7962624 * k + 2705380 := by
    unfold C
    simp [show (2654208 * k + 901793) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2705380) = 3981312 * k + 1352690 := by
    unfold C
    simp [show (7962624 * k + 2705380) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1352690) = 1990656 * k + 676345 := by
    unfold C
    simp [show (3981312 * k + 1352690) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 676345) = 5971968 * k + 2029036 := by
    unfold C
    simp [show (1990656 * k + 676345) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2029036) = 2985984 * k + 1014518 := by
    unfold C
    simp [show (5971968 * k + 2029036) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1014518) = 1492992 * k + 507259 := by
    unfold C
    simp [show (2985984 * k + 1014518) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 507259) = 4478976 * k + 1521778 := by
    unfold C
    simp [show (1492992 * k + 507259) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1521778) = 2239488 * k + 760889 := by
    unfold C
    simp [show (4478976 * k + 1521778) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 760889) = 6718464 * k + 2282668 := by
    unfold C
    simp [show (2239488 * k + 760889) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2282668) = 3359232 * k + 1141334 := by
    unfold C
    simp [show (6718464 * k + 2282668) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1141334) = 1679616 * k + 570667 := by
    unfold C
    simp [show (3359232 * k + 1141334) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 570667) = 5038848 * k + 1712002 := by
    unfold C
    simp [show (1679616 * k + 570667) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1712002) = 2519424 * k + 856001 := by
    unfold C
    simp [show (5038848 * k + 1712002) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 856001) = 7558272 * k + 2568004 := by
    unfold C
    simp [show (2519424 * k + 856001) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2568004) = 3779136 * k + 1284002 := by
    unfold C
    simp [show (7558272 * k + 2568004) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1284002) = 1889568 * k + 642001 := by
    unfold C
    simp [show (3779136 * k + 1284002) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 642001) = 5668704 * k + 1926004 := by
    unfold C
    simp [show (1889568 * k + 642001) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1926004) = 2834352 * k + 963002 := by
    unfold C
    simp [show (5668704 * k + 1926004) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 963002) = 1417176 * k + 481501 := by
    unfold C
    simp [show (2834352 * k + 963002) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 481501) = 4251528 * k + 1444504 := by
    unfold C
    simp [show (1417176 * k + 481501) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1444504) = 2125764 * k + 722252 := by
    unfold C
    simp [show (4251528 * k + 1444504) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 722252) = 1062882 * k + 361126 := by
    unfold C
    simp [show (2125764 * k + 722252) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 361126) = 531441 * k + 180563 := by
    unfold C
    simp [show (1062882 * k + 361126) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 356263) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 356263)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_356423 : ∀ k : Nat,
    iterate (1048576 * k + 356423) 32 = 531441 * k + 180644 ∧
      531441 * k + 180644 < 1048576 * k + 356423 := by
  intro k
  have h1 : C (1048576 * k + 356423) = 3145728 * k + 1069270 := by
    unfold C
    simp [show (1048576 * k + 356423) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1069270) = 1572864 * k + 534635 := by
    unfold C
    simp [show (3145728 * k + 1069270) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 534635) = 4718592 * k + 1603906 := by
    unfold C
    simp [show (1572864 * k + 534635) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1603906) = 2359296 * k + 801953 := by
    unfold C
    simp [show (4718592 * k + 1603906) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 801953) = 7077888 * k + 2405860 := by
    unfold C
    simp [show (2359296 * k + 801953) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2405860) = 3538944 * k + 1202930 := by
    unfold C
    simp [show (7077888 * k + 2405860) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1202930) = 1769472 * k + 601465 := by
    unfold C
    simp [show (3538944 * k + 1202930) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 601465) = 5308416 * k + 1804396 := by
    unfold C
    simp [show (1769472 * k + 601465) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1804396) = 2654208 * k + 902198 := by
    unfold C
    simp [show (5308416 * k + 1804396) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 902198) = 1327104 * k + 451099 := by
    unfold C
    simp [show (2654208 * k + 902198) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 451099) = 3981312 * k + 1353298 := by
    unfold C
    simp [show (1327104 * k + 451099) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1353298) = 1990656 * k + 676649 := by
    unfold C
    simp [show (3981312 * k + 1353298) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 676649) = 5971968 * k + 2029948 := by
    unfold C
    simp [show (1990656 * k + 676649) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2029948) = 2985984 * k + 1014974 := by
    unfold C
    simp [show (5971968 * k + 2029948) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1014974) = 1492992 * k + 507487 := by
    unfold C
    simp [show (2985984 * k + 1014974) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 507487) = 4478976 * k + 1522462 := by
    unfold C
    simp [show (1492992 * k + 507487) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1522462) = 2239488 * k + 761231 := by
    unfold C
    simp [show (4478976 * k + 1522462) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 761231) = 6718464 * k + 2283694 := by
    unfold C
    simp [show (2239488 * k + 761231) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2283694) = 3359232 * k + 1141847 := by
    unfold C
    simp [show (6718464 * k + 2283694) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1141847) = 10077696 * k + 3425542 := by
    unfold C
    simp [show (3359232 * k + 1141847) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3425542) = 5038848 * k + 1712771 := by
    unfold C
    simp [show (10077696 * k + 3425542) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1712771) = 15116544 * k + 5138314 := by
    unfold C
    simp [show (5038848 * k + 1712771) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5138314) = 7558272 * k + 2569157 := by
    unfold C
    simp [show (15116544 * k + 5138314) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2569157) = 22674816 * k + 7707472 := by
    unfold C
    simp [show (7558272 * k + 2569157) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 7707472) = 11337408 * k + 3853736 := by
    unfold C
    simp [show (22674816 * k + 7707472) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3853736) = 5668704 * k + 1926868 := by
    unfold C
    simp [show (11337408 * k + 3853736) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1926868) = 2834352 * k + 963434 := by
    unfold C
    simp [show (5668704 * k + 1926868) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 963434) = 1417176 * k + 481717 := by
    unfold C
    simp [show (2834352 * k + 963434) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 481717) = 4251528 * k + 1445152 := by
    unfold C
    simp [show (1417176 * k + 481717) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1445152) = 2125764 * k + 722576 := by
    unfold C
    simp [show (4251528 * k + 1445152) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 722576) = 1062882 * k + 361288 := by
    unfold C
    simp [show (2125764 * k + 722576) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 361288) = 531441 * k + 180644 := by
    unfold C
    simp [show (1062882 * k + 361288) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 356423) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 356423)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_356575 : ∀ k : Nat,
    iterate (1048576 * k + 356575) 32 = 531441 * k + 180721 ∧
      531441 * k + 180721 < 1048576 * k + 356575 := by
  intro k
  have h1 : C (1048576 * k + 356575) = 3145728 * k + 1069726 := by
    unfold C
    simp [show (1048576 * k + 356575) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1069726) = 1572864 * k + 534863 := by
    unfold C
    simp [show (3145728 * k + 1069726) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 534863) = 4718592 * k + 1604590 := by
    unfold C
    simp [show (1572864 * k + 534863) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1604590) = 2359296 * k + 802295 := by
    unfold C
    simp [show (4718592 * k + 1604590) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 802295) = 7077888 * k + 2406886 := by
    unfold C
    simp [show (2359296 * k + 802295) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2406886) = 3538944 * k + 1203443 := by
    unfold C
    simp [show (7077888 * k + 2406886) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1203443) = 10616832 * k + 3610330 := by
    unfold C
    simp [show (3538944 * k + 1203443) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3610330) = 5308416 * k + 1805165 := by
    unfold C
    simp [show (10616832 * k + 3610330) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1805165) = 15925248 * k + 5415496 := by
    unfold C
    simp [show (5308416 * k + 1805165) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5415496) = 7962624 * k + 2707748 := by
    unfold C
    simp [show (15925248 * k + 5415496) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2707748) = 3981312 * k + 1353874 := by
    unfold C
    simp [show (7962624 * k + 2707748) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1353874) = 1990656 * k + 676937 := by
    unfold C
    simp [show (3981312 * k + 1353874) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 676937) = 5971968 * k + 2030812 := by
    unfold C
    simp [show (1990656 * k + 676937) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2030812) = 2985984 * k + 1015406 := by
    unfold C
    simp [show (5971968 * k + 2030812) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1015406) = 1492992 * k + 507703 := by
    unfold C
    simp [show (2985984 * k + 1015406) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 507703) = 4478976 * k + 1523110 := by
    unfold C
    simp [show (1492992 * k + 507703) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1523110) = 2239488 * k + 761555 := by
    unfold C
    simp [show (4478976 * k + 1523110) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 761555) = 6718464 * k + 2284666 := by
    unfold C
    simp [show (2239488 * k + 761555) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2284666) = 3359232 * k + 1142333 := by
    unfold C
    simp [show (6718464 * k + 2284666) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1142333) = 10077696 * k + 3427000 := by
    unfold C
    simp [show (3359232 * k + 1142333) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3427000) = 5038848 * k + 1713500 := by
    unfold C
    simp [show (10077696 * k + 3427000) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1713500) = 2519424 * k + 856750 := by
    unfold C
    simp [show (5038848 * k + 1713500) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 856750) = 1259712 * k + 428375 := by
    unfold C
    simp [show (2519424 * k + 856750) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 428375) = 3779136 * k + 1285126 := by
    unfold C
    simp [show (1259712 * k + 428375) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1285126) = 1889568 * k + 642563 := by
    unfold C
    simp [show (3779136 * k + 1285126) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 642563) = 5668704 * k + 1927690 := by
    unfold C
    simp [show (1889568 * k + 642563) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1927690) = 2834352 * k + 963845 := by
    unfold C
    simp [show (5668704 * k + 1927690) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 963845) = 8503056 * k + 2891536 := by
    unfold C
    simp [show (2834352 * k + 963845) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2891536) = 4251528 * k + 1445768 := by
    unfold C
    simp [show (8503056 * k + 2891536) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1445768) = 2125764 * k + 722884 := by
    unfold C
    simp [show (4251528 * k + 1445768) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 722884) = 1062882 * k + 361442 := by
    unfold C
    simp [show (2125764 * k + 722884) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 361442) = 531441 * k + 180721 := by
    unfold C
    simp [show (1062882 * k + 361442) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 356575) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 356575)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_357151 : ∀ k : Nat,
    iterate (1048576 * k + 357151) 32 = 531441 * k + 181013 ∧
      531441 * k + 181013 < 1048576 * k + 357151 := by
  intro k
  have h1 : C (1048576 * k + 357151) = 3145728 * k + 1071454 := by
    unfold C
    simp [show (1048576 * k + 357151) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1071454) = 1572864 * k + 535727 := by
    unfold C
    simp [show (3145728 * k + 1071454) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 535727) = 4718592 * k + 1607182 := by
    unfold C
    simp [show (1572864 * k + 535727) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1607182) = 2359296 * k + 803591 := by
    unfold C
    simp [show (4718592 * k + 1607182) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 803591) = 7077888 * k + 2410774 := by
    unfold C
    simp [show (2359296 * k + 803591) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2410774) = 3538944 * k + 1205387 := by
    unfold C
    simp [show (7077888 * k + 2410774) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1205387) = 10616832 * k + 3616162 := by
    unfold C
    simp [show (3538944 * k + 1205387) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3616162) = 5308416 * k + 1808081 := by
    unfold C
    simp [show (10616832 * k + 3616162) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1808081) = 15925248 * k + 5424244 := by
    unfold C
    simp [show (5308416 * k + 1808081) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5424244) = 7962624 * k + 2712122 := by
    unfold C
    simp [show (15925248 * k + 5424244) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2712122) = 3981312 * k + 1356061 := by
    unfold C
    simp [show (7962624 * k + 2712122) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1356061) = 11943936 * k + 4068184 := by
    unfold C
    simp [show (3981312 * k + 1356061) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4068184) = 5971968 * k + 2034092 := by
    unfold C
    simp [show (11943936 * k + 4068184) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2034092) = 2985984 * k + 1017046 := by
    unfold C
    simp [show (5971968 * k + 2034092) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1017046) = 1492992 * k + 508523 := by
    unfold C
    simp [show (2985984 * k + 1017046) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 508523) = 4478976 * k + 1525570 := by
    unfold C
    simp [show (1492992 * k + 508523) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1525570) = 2239488 * k + 762785 := by
    unfold C
    simp [show (4478976 * k + 1525570) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 762785) = 6718464 * k + 2288356 := by
    unfold C
    simp [show (2239488 * k + 762785) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2288356) = 3359232 * k + 1144178 := by
    unfold C
    simp [show (6718464 * k + 2288356) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1144178) = 1679616 * k + 572089 := by
    unfold C
    simp [show (3359232 * k + 1144178) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 572089) = 5038848 * k + 1716268 := by
    unfold C
    simp [show (1679616 * k + 572089) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1716268) = 2519424 * k + 858134 := by
    unfold C
    simp [show (5038848 * k + 1716268) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 858134) = 1259712 * k + 429067 := by
    unfold C
    simp [show (2519424 * k + 858134) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 429067) = 3779136 * k + 1287202 := by
    unfold C
    simp [show (1259712 * k + 429067) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1287202) = 1889568 * k + 643601 := by
    unfold C
    simp [show (3779136 * k + 1287202) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 643601) = 5668704 * k + 1930804 := by
    unfold C
    simp [show (1889568 * k + 643601) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1930804) = 2834352 * k + 965402 := by
    unfold C
    simp [show (5668704 * k + 1930804) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 965402) = 1417176 * k + 482701 := by
    unfold C
    simp [show (2834352 * k + 965402) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 482701) = 4251528 * k + 1448104 := by
    unfold C
    simp [show (1417176 * k + 482701) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1448104) = 2125764 * k + 724052 := by
    unfold C
    simp [show (4251528 * k + 1448104) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 724052) = 1062882 * k + 362026 := by
    unfold C
    simp [show (2125764 * k + 724052) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 362026) = 531441 * k + 181013 := by
    unfold C
    simp [show (1062882 * k + 362026) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 357151) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 357151)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_357599 : ∀ k : Nat,
    iterate (1048576 * k + 357599) 32 = 531441 * k + 181240 ∧
      531441 * k + 181240 < 1048576 * k + 357599 := by
  intro k
  have h1 : C (1048576 * k + 357599) = 3145728 * k + 1072798 := by
    unfold C
    simp [show (1048576 * k + 357599) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1072798) = 1572864 * k + 536399 := by
    unfold C
    simp [show (3145728 * k + 1072798) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 536399) = 4718592 * k + 1609198 := by
    unfold C
    simp [show (1572864 * k + 536399) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1609198) = 2359296 * k + 804599 := by
    unfold C
    simp [show (4718592 * k + 1609198) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 804599) = 7077888 * k + 2413798 := by
    unfold C
    simp [show (2359296 * k + 804599) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2413798) = 3538944 * k + 1206899 := by
    unfold C
    simp [show (7077888 * k + 2413798) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1206899) = 10616832 * k + 3620698 := by
    unfold C
    simp [show (3538944 * k + 1206899) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3620698) = 5308416 * k + 1810349 := by
    unfold C
    simp [show (10616832 * k + 3620698) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1810349) = 15925248 * k + 5431048 := by
    unfold C
    simp [show (5308416 * k + 1810349) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5431048) = 7962624 * k + 2715524 := by
    unfold C
    simp [show (15925248 * k + 5431048) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2715524) = 3981312 * k + 1357762 := by
    unfold C
    simp [show (7962624 * k + 2715524) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1357762) = 1990656 * k + 678881 := by
    unfold C
    simp [show (3981312 * k + 1357762) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 678881) = 5971968 * k + 2036644 := by
    unfold C
    simp [show (1990656 * k + 678881) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2036644) = 2985984 * k + 1018322 := by
    unfold C
    simp [show (5971968 * k + 2036644) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1018322) = 1492992 * k + 509161 := by
    unfold C
    simp [show (2985984 * k + 1018322) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 509161) = 4478976 * k + 1527484 := by
    unfold C
    simp [show (1492992 * k + 509161) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1527484) = 2239488 * k + 763742 := by
    unfold C
    simp [show (4478976 * k + 1527484) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 763742) = 1119744 * k + 381871 := by
    unfold C
    simp [show (2239488 * k + 763742) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 381871) = 3359232 * k + 1145614 := by
    unfold C
    simp [show (1119744 * k + 381871) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1145614) = 1679616 * k + 572807 := by
    unfold C
    simp [show (3359232 * k + 1145614) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 572807) = 5038848 * k + 1718422 := by
    unfold C
    simp [show (1679616 * k + 572807) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1718422) = 2519424 * k + 859211 := by
    unfold C
    simp [show (5038848 * k + 1718422) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 859211) = 7558272 * k + 2577634 := by
    unfold C
    simp [show (2519424 * k + 859211) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2577634) = 3779136 * k + 1288817 := by
    unfold C
    simp [show (7558272 * k + 2577634) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1288817) = 11337408 * k + 3866452 := by
    unfold C
    simp [show (3779136 * k + 1288817) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3866452) = 5668704 * k + 1933226 := by
    unfold C
    simp [show (11337408 * k + 3866452) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1933226) = 2834352 * k + 966613 := by
    unfold C
    simp [show (5668704 * k + 1933226) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 966613) = 8503056 * k + 2899840 := by
    unfold C
    simp [show (2834352 * k + 966613) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2899840) = 4251528 * k + 1449920 := by
    unfold C
    simp [show (8503056 * k + 2899840) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1449920) = 2125764 * k + 724960 := by
    unfold C
    simp [show (4251528 * k + 1449920) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 724960) = 1062882 * k + 362480 := by
    unfold C
    simp [show (2125764 * k + 724960) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 362480) = 531441 * k + 181240 := by
    unfold C
    simp [show (1062882 * k + 362480) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 357599) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 357599)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_357631 : ∀ k : Nat,
    iterate (1048576 * k + 357631) 32 = 531441 * k + 181256 ∧
      531441 * k + 181256 < 1048576 * k + 357631 := by
  intro k
  have h1 : C (1048576 * k + 357631) = 3145728 * k + 1072894 := by
    unfold C
    simp [show (1048576 * k + 357631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1072894) = 1572864 * k + 536447 := by
    unfold C
    simp [show (3145728 * k + 1072894) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 536447) = 4718592 * k + 1609342 := by
    unfold C
    simp [show (1572864 * k + 536447) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1609342) = 2359296 * k + 804671 := by
    unfold C
    simp [show (4718592 * k + 1609342) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 804671) = 7077888 * k + 2414014 := by
    unfold C
    simp [show (2359296 * k + 804671) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2414014) = 3538944 * k + 1207007 := by
    unfold C
    simp [show (7077888 * k + 2414014) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1207007) = 10616832 * k + 3621022 := by
    unfold C
    simp [show (3538944 * k + 1207007) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3621022) = 5308416 * k + 1810511 := by
    unfold C
    simp [show (10616832 * k + 3621022) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1810511) = 15925248 * k + 5431534 := by
    unfold C
    simp [show (5308416 * k + 1810511) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5431534) = 7962624 * k + 2715767 := by
    unfold C
    simp [show (15925248 * k + 5431534) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2715767) = 23887872 * k + 8147302 := by
    unfold C
    simp [show (7962624 * k + 2715767) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 8147302) = 11943936 * k + 4073651 := by
    unfold C
    simp [show (23887872 * k + 8147302) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4073651) = 35831808 * k + 12220954 := by
    unfold C
    simp [show (11943936 * k + 4073651) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 12220954) = 17915904 * k + 6110477 := by
    unfold C
    simp [show (35831808 * k + 12220954) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 6110477) = 53747712 * k + 18331432 := by
    unfold C
    simp [show (17915904 * k + 6110477) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 18331432) = 26873856 * k + 9165716 := by
    unfold C
    simp [show (53747712 * k + 18331432) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 9165716) = 13436928 * k + 4582858 := by
    unfold C
    simp [show (26873856 * k + 9165716) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4582858) = 6718464 * k + 2291429 := by
    unfold C
    simp [show (13436928 * k + 4582858) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2291429) = 20155392 * k + 6874288 := by
    unfold C
    simp [show (6718464 * k + 2291429) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 6874288) = 10077696 * k + 3437144 := by
    unfold C
    simp [show (20155392 * k + 6874288) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3437144) = 5038848 * k + 1718572 := by
    unfold C
    simp [show (10077696 * k + 3437144) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1718572) = 2519424 * k + 859286 := by
    unfold C
    simp [show (5038848 * k + 1718572) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 859286) = 1259712 * k + 429643 := by
    unfold C
    simp [show (2519424 * k + 859286) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 429643) = 3779136 * k + 1288930 := by
    unfold C
    simp [show (1259712 * k + 429643) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1288930) = 1889568 * k + 644465 := by
    unfold C
    simp [show (3779136 * k + 1288930) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 644465) = 5668704 * k + 1933396 := by
    unfold C
    simp [show (1889568 * k + 644465) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1933396) = 2834352 * k + 966698 := by
    unfold C
    simp [show (5668704 * k + 1933396) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 966698) = 1417176 * k + 483349 := by
    unfold C
    simp [show (2834352 * k + 966698) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 483349) = 4251528 * k + 1450048 := by
    unfold C
    simp [show (1417176 * k + 483349) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1450048) = 2125764 * k + 725024 := by
    unfold C
    simp [show (4251528 * k + 1450048) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 725024) = 1062882 * k + 362512 := by
    unfold C
    simp [show (2125764 * k + 725024) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 362512) = 531441 * k + 181256 := by
    unfold C
    simp [show (1062882 * k + 362512) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 357631) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 357631)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_357919 : ∀ k : Nat,
    iterate (1048576 * k + 357919) 32 = 531441 * k + 181402 ∧
      531441 * k + 181402 < 1048576 * k + 357919 := by
  intro k
  have h1 : C (1048576 * k + 357919) = 3145728 * k + 1073758 := by
    unfold C
    simp [show (1048576 * k + 357919) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1073758) = 1572864 * k + 536879 := by
    unfold C
    simp [show (3145728 * k + 1073758) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 536879) = 4718592 * k + 1610638 := by
    unfold C
    simp [show (1572864 * k + 536879) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1610638) = 2359296 * k + 805319 := by
    unfold C
    simp [show (4718592 * k + 1610638) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 805319) = 7077888 * k + 2415958 := by
    unfold C
    simp [show (2359296 * k + 805319) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2415958) = 3538944 * k + 1207979 := by
    unfold C
    simp [show (7077888 * k + 2415958) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1207979) = 10616832 * k + 3623938 := by
    unfold C
    simp [show (3538944 * k + 1207979) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3623938) = 5308416 * k + 1811969 := by
    unfold C
    simp [show (10616832 * k + 3623938) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1811969) = 15925248 * k + 5435908 := by
    unfold C
    simp [show (5308416 * k + 1811969) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5435908) = 7962624 * k + 2717954 := by
    unfold C
    simp [show (15925248 * k + 5435908) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2717954) = 3981312 * k + 1358977 := by
    unfold C
    simp [show (7962624 * k + 2717954) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1358977) = 11943936 * k + 4076932 := by
    unfold C
    simp [show (3981312 * k + 1358977) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4076932) = 5971968 * k + 2038466 := by
    unfold C
    simp [show (11943936 * k + 4076932) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2038466) = 2985984 * k + 1019233 := by
    unfold C
    simp [show (5971968 * k + 2038466) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1019233) = 8957952 * k + 3057700 := by
    unfold C
    simp [show (2985984 * k + 1019233) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3057700) = 4478976 * k + 1528850 := by
    unfold C
    simp [show (8957952 * k + 3057700) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1528850) = 2239488 * k + 764425 := by
    unfold C
    simp [show (4478976 * k + 1528850) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 764425) = 6718464 * k + 2293276 := by
    unfold C
    simp [show (2239488 * k + 764425) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2293276) = 3359232 * k + 1146638 := by
    unfold C
    simp [show (6718464 * k + 2293276) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1146638) = 1679616 * k + 573319 := by
    unfold C
    simp [show (3359232 * k + 1146638) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 573319) = 5038848 * k + 1719958 := by
    unfold C
    simp [show (1679616 * k + 573319) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1719958) = 2519424 * k + 859979 := by
    unfold C
    simp [show (5038848 * k + 1719958) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 859979) = 7558272 * k + 2579938 := by
    unfold C
    simp [show (2519424 * k + 859979) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2579938) = 3779136 * k + 1289969 := by
    unfold C
    simp [show (7558272 * k + 2579938) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1289969) = 11337408 * k + 3869908 := by
    unfold C
    simp [show (3779136 * k + 1289969) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3869908) = 5668704 * k + 1934954 := by
    unfold C
    simp [show (11337408 * k + 3869908) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1934954) = 2834352 * k + 967477 := by
    unfold C
    simp [show (5668704 * k + 1934954) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 967477) = 8503056 * k + 2902432 := by
    unfold C
    simp [show (2834352 * k + 967477) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2902432) = 4251528 * k + 1451216 := by
    unfold C
    simp [show (8503056 * k + 2902432) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1451216) = 2125764 * k + 725608 := by
    unfold C
    simp [show (4251528 * k + 1451216) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 725608) = 1062882 * k + 362804 := by
    unfold C
    simp [show (2125764 * k + 725608) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 362804) = 531441 * k + 181402 := by
    unfold C
    simp [show (1062882 * k + 362804) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 357919) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 357919)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_358079 : ∀ k : Nat,
    iterate (1048576 * k + 358079) 32 = 531441 * k + 181483 ∧
      531441 * k + 181483 < 1048576 * k + 358079 := by
  intro k
  have h1 : C (1048576 * k + 358079) = 3145728 * k + 1074238 := by
    unfold C
    simp [show (1048576 * k + 358079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1074238) = 1572864 * k + 537119 := by
    unfold C
    simp [show (3145728 * k + 1074238) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 537119) = 4718592 * k + 1611358 := by
    unfold C
    simp [show (1572864 * k + 537119) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1611358) = 2359296 * k + 805679 := by
    unfold C
    simp [show (4718592 * k + 1611358) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 805679) = 7077888 * k + 2417038 := by
    unfold C
    simp [show (2359296 * k + 805679) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2417038) = 3538944 * k + 1208519 := by
    unfold C
    simp [show (7077888 * k + 2417038) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1208519) = 10616832 * k + 3625558 := by
    unfold C
    simp [show (3538944 * k + 1208519) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3625558) = 5308416 * k + 1812779 := by
    unfold C
    simp [show (10616832 * k + 3625558) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1812779) = 15925248 * k + 5438338 := by
    unfold C
    simp [show (5308416 * k + 1812779) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5438338) = 7962624 * k + 2719169 := by
    unfold C
    simp [show (15925248 * k + 5438338) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2719169) = 23887872 * k + 8157508 := by
    unfold C
    simp [show (7962624 * k + 2719169) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 8157508) = 11943936 * k + 4078754 := by
    unfold C
    simp [show (23887872 * k + 8157508) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4078754) = 5971968 * k + 2039377 := by
    unfold C
    simp [show (11943936 * k + 4078754) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2039377) = 17915904 * k + 6118132 := by
    unfold C
    simp [show (5971968 * k + 2039377) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6118132) = 8957952 * k + 3059066 := by
    unfold C
    simp [show (17915904 * k + 6118132) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3059066) = 4478976 * k + 1529533 := by
    unfold C
    simp [show (8957952 * k + 3059066) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1529533) = 13436928 * k + 4588600 := by
    unfold C
    simp [show (4478976 * k + 1529533) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4588600) = 6718464 * k + 2294300 := by
    unfold C
    simp [show (13436928 * k + 4588600) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2294300) = 3359232 * k + 1147150 := by
    unfold C
    simp [show (6718464 * k + 2294300) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1147150) = 1679616 * k + 573575 := by
    unfold C
    simp [show (3359232 * k + 1147150) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 573575) = 5038848 * k + 1720726 := by
    unfold C
    simp [show (1679616 * k + 573575) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1720726) = 2519424 * k + 860363 := by
    unfold C
    simp [show (5038848 * k + 1720726) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 860363) = 7558272 * k + 2581090 := by
    unfold C
    simp [show (2519424 * k + 860363) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2581090) = 3779136 * k + 1290545 := by
    unfold C
    simp [show (7558272 * k + 2581090) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1290545) = 11337408 * k + 3871636 := by
    unfold C
    simp [show (3779136 * k + 1290545) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3871636) = 5668704 * k + 1935818 := by
    unfold C
    simp [show (11337408 * k + 3871636) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1935818) = 2834352 * k + 967909 := by
    unfold C
    simp [show (5668704 * k + 1935818) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 967909) = 8503056 * k + 2903728 := by
    unfold C
    simp [show (2834352 * k + 967909) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2903728) = 4251528 * k + 1451864 := by
    unfold C
    simp [show (8503056 * k + 2903728) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1451864) = 2125764 * k + 725932 := by
    unfold C
    simp [show (4251528 * k + 1451864) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 725932) = 1062882 * k + 362966 := by
    unfold C
    simp [show (2125764 * k + 725932) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 362966) = 531441 * k + 181483 := by
    unfold C
    simp [show (1062882 * k + 362966) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 358079) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 358079)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_358511 : ∀ k : Nat,
    iterate (1048576 * k + 358511) 32 = 531441 * k + 181702 ∧
      531441 * k + 181702 < 1048576 * k + 358511 := by
  intro k
  have h1 : C (1048576 * k + 358511) = 3145728 * k + 1075534 := by
    unfold C
    simp [show (1048576 * k + 358511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1075534) = 1572864 * k + 537767 := by
    unfold C
    simp [show (3145728 * k + 1075534) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 537767) = 4718592 * k + 1613302 := by
    unfold C
    simp [show (1572864 * k + 537767) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1613302) = 2359296 * k + 806651 := by
    unfold C
    simp [show (4718592 * k + 1613302) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 806651) = 7077888 * k + 2419954 := by
    unfold C
    simp [show (2359296 * k + 806651) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2419954) = 3538944 * k + 1209977 := by
    unfold C
    simp [show (7077888 * k + 2419954) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1209977) = 10616832 * k + 3629932 := by
    unfold C
    simp [show (3538944 * k + 1209977) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3629932) = 5308416 * k + 1814966 := by
    unfold C
    simp [show (10616832 * k + 3629932) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1814966) = 2654208 * k + 907483 := by
    unfold C
    simp [show (5308416 * k + 1814966) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 907483) = 7962624 * k + 2722450 := by
    unfold C
    simp [show (2654208 * k + 907483) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2722450) = 3981312 * k + 1361225 := by
    unfold C
    simp [show (7962624 * k + 2722450) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1361225) = 11943936 * k + 4083676 := by
    unfold C
    simp [show (3981312 * k + 1361225) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4083676) = 5971968 * k + 2041838 := by
    unfold C
    simp [show (11943936 * k + 4083676) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2041838) = 2985984 * k + 1020919 := by
    unfold C
    simp [show (5971968 * k + 2041838) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1020919) = 8957952 * k + 3062758 := by
    unfold C
    simp [show (2985984 * k + 1020919) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3062758) = 4478976 * k + 1531379 := by
    unfold C
    simp [show (8957952 * k + 3062758) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1531379) = 13436928 * k + 4594138 := by
    unfold C
    simp [show (4478976 * k + 1531379) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4594138) = 6718464 * k + 2297069 := by
    unfold C
    simp [show (13436928 * k + 4594138) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2297069) = 20155392 * k + 6891208 := by
    unfold C
    simp [show (6718464 * k + 2297069) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 6891208) = 10077696 * k + 3445604 := by
    unfold C
    simp [show (20155392 * k + 6891208) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3445604) = 5038848 * k + 1722802 := by
    unfold C
    simp [show (10077696 * k + 3445604) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1722802) = 2519424 * k + 861401 := by
    unfold C
    simp [show (5038848 * k + 1722802) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 861401) = 7558272 * k + 2584204 := by
    unfold C
    simp [show (2519424 * k + 861401) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2584204) = 3779136 * k + 1292102 := by
    unfold C
    simp [show (7558272 * k + 2584204) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1292102) = 1889568 * k + 646051 := by
    unfold C
    simp [show (3779136 * k + 1292102) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 646051) = 5668704 * k + 1938154 := by
    unfold C
    simp [show (1889568 * k + 646051) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1938154) = 2834352 * k + 969077 := by
    unfold C
    simp [show (5668704 * k + 1938154) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 969077) = 8503056 * k + 2907232 := by
    unfold C
    simp [show (2834352 * k + 969077) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2907232) = 4251528 * k + 1453616 := by
    unfold C
    simp [show (8503056 * k + 2907232) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1453616) = 2125764 * k + 726808 := by
    unfold C
    simp [show (4251528 * k + 1453616) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 726808) = 1062882 * k + 363404 := by
    unfold C
    simp [show (2125764 * k + 726808) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 363404) = 531441 * k + 181702 := by
    unfold C
    simp [show (1062882 * k + 363404) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 358511) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 358511)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_359079 : ∀ k : Nat,
    iterate (1048576 * k + 359079) 32 = 531441 * k + 181990 ∧
      531441 * k + 181990 < 1048576 * k + 359079 := by
  intro k
  have h1 : C (1048576 * k + 359079) = 3145728 * k + 1077238 := by
    unfold C
    simp [show (1048576 * k + 359079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1077238) = 1572864 * k + 538619 := by
    unfold C
    simp [show (3145728 * k + 1077238) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 538619) = 4718592 * k + 1615858 := by
    unfold C
    simp [show (1572864 * k + 538619) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1615858) = 2359296 * k + 807929 := by
    unfold C
    simp [show (4718592 * k + 1615858) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 807929) = 7077888 * k + 2423788 := by
    unfold C
    simp [show (2359296 * k + 807929) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2423788) = 3538944 * k + 1211894 := by
    unfold C
    simp [show (7077888 * k + 2423788) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1211894) = 1769472 * k + 605947 := by
    unfold C
    simp [show (3538944 * k + 1211894) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 605947) = 5308416 * k + 1817842 := by
    unfold C
    simp [show (1769472 * k + 605947) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1817842) = 2654208 * k + 908921 := by
    unfold C
    simp [show (5308416 * k + 1817842) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 908921) = 7962624 * k + 2726764 := by
    unfold C
    simp [show (2654208 * k + 908921) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2726764) = 3981312 * k + 1363382 := by
    unfold C
    simp [show (7962624 * k + 2726764) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1363382) = 1990656 * k + 681691 := by
    unfold C
    simp [show (3981312 * k + 1363382) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 681691) = 5971968 * k + 2045074 := by
    unfold C
    simp [show (1990656 * k + 681691) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2045074) = 2985984 * k + 1022537 := by
    unfold C
    simp [show (5971968 * k + 2045074) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1022537) = 8957952 * k + 3067612 := by
    unfold C
    simp [show (2985984 * k + 1022537) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3067612) = 4478976 * k + 1533806 := by
    unfold C
    simp [show (8957952 * k + 3067612) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1533806) = 2239488 * k + 766903 := by
    unfold C
    simp [show (4478976 * k + 1533806) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 766903) = 6718464 * k + 2300710 := by
    unfold C
    simp [show (2239488 * k + 766903) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2300710) = 3359232 * k + 1150355 := by
    unfold C
    simp [show (6718464 * k + 2300710) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1150355) = 10077696 * k + 3451066 := by
    unfold C
    simp [show (3359232 * k + 1150355) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3451066) = 5038848 * k + 1725533 := by
    unfold C
    simp [show (10077696 * k + 3451066) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1725533) = 15116544 * k + 5176600 := by
    unfold C
    simp [show (5038848 * k + 1725533) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5176600) = 7558272 * k + 2588300 := by
    unfold C
    simp [show (15116544 * k + 5176600) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2588300) = 3779136 * k + 1294150 := by
    unfold C
    simp [show (7558272 * k + 2588300) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1294150) = 1889568 * k + 647075 := by
    unfold C
    simp [show (3779136 * k + 1294150) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 647075) = 5668704 * k + 1941226 := by
    unfold C
    simp [show (1889568 * k + 647075) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1941226) = 2834352 * k + 970613 := by
    unfold C
    simp [show (5668704 * k + 1941226) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 970613) = 8503056 * k + 2911840 := by
    unfold C
    simp [show (2834352 * k + 970613) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2911840) = 4251528 * k + 1455920 := by
    unfold C
    simp [show (8503056 * k + 2911840) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1455920) = 2125764 * k + 727960 := by
    unfold C
    simp [show (4251528 * k + 1455920) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 727960) = 1062882 * k + 363980 := by
    unfold C
    simp [show (2125764 * k + 727960) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 363980) = 531441 * k + 181990 := by
    unfold C
    simp [show (1062882 * k + 363980) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 359079) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 359079)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_360091 : ∀ k : Nat,
    iterate (1048576 * k + 360091) 32 = 531441 * k + 182503 ∧
      531441 * k + 182503 < 1048576 * k + 360091 := by
  intro k
  have h1 : C (1048576 * k + 360091) = 3145728 * k + 1080274 := by
    unfold C
    simp [show (1048576 * k + 360091) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1080274) = 1572864 * k + 540137 := by
    unfold C
    simp [show (3145728 * k + 1080274) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 540137) = 4718592 * k + 1620412 := by
    unfold C
    simp [show (1572864 * k + 540137) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1620412) = 2359296 * k + 810206 := by
    unfold C
    simp [show (4718592 * k + 1620412) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 810206) = 1179648 * k + 405103 := by
    unfold C
    simp [show (2359296 * k + 810206) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 405103) = 3538944 * k + 1215310 := by
    unfold C
    simp [show (1179648 * k + 405103) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1215310) = 1769472 * k + 607655 := by
    unfold C
    simp [show (3538944 * k + 1215310) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 607655) = 5308416 * k + 1822966 := by
    unfold C
    simp [show (1769472 * k + 607655) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1822966) = 2654208 * k + 911483 := by
    unfold C
    simp [show (5308416 * k + 1822966) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 911483) = 7962624 * k + 2734450 := by
    unfold C
    simp [show (2654208 * k + 911483) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2734450) = 3981312 * k + 1367225 := by
    unfold C
    simp [show (7962624 * k + 2734450) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1367225) = 11943936 * k + 4101676 := by
    unfold C
    simp [show (3981312 * k + 1367225) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4101676) = 5971968 * k + 2050838 := by
    unfold C
    simp [show (11943936 * k + 4101676) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2050838) = 2985984 * k + 1025419 := by
    unfold C
    simp [show (5971968 * k + 2050838) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1025419) = 8957952 * k + 3076258 := by
    unfold C
    simp [show (2985984 * k + 1025419) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3076258) = 4478976 * k + 1538129 := by
    unfold C
    simp [show (8957952 * k + 3076258) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1538129) = 13436928 * k + 4614388 := by
    unfold C
    simp [show (4478976 * k + 1538129) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4614388) = 6718464 * k + 2307194 := by
    unfold C
    simp [show (13436928 * k + 4614388) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2307194) = 3359232 * k + 1153597 := by
    unfold C
    simp [show (6718464 * k + 2307194) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1153597) = 10077696 * k + 3460792 := by
    unfold C
    simp [show (3359232 * k + 1153597) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3460792) = 5038848 * k + 1730396 := by
    unfold C
    simp [show (10077696 * k + 3460792) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1730396) = 2519424 * k + 865198 := by
    unfold C
    simp [show (5038848 * k + 1730396) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 865198) = 1259712 * k + 432599 := by
    unfold C
    simp [show (2519424 * k + 865198) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 432599) = 3779136 * k + 1297798 := by
    unfold C
    simp [show (1259712 * k + 432599) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1297798) = 1889568 * k + 648899 := by
    unfold C
    simp [show (3779136 * k + 1297798) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 648899) = 5668704 * k + 1946698 := by
    unfold C
    simp [show (1889568 * k + 648899) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1946698) = 2834352 * k + 973349 := by
    unfold C
    simp [show (5668704 * k + 1946698) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 973349) = 8503056 * k + 2920048 := by
    unfold C
    simp [show (2834352 * k + 973349) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2920048) = 4251528 * k + 1460024 := by
    unfold C
    simp [show (8503056 * k + 2920048) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1460024) = 2125764 * k + 730012 := by
    unfold C
    simp [show (4251528 * k + 1460024) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 730012) = 1062882 * k + 365006 := by
    unfold C
    simp [show (2125764 * k + 730012) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 365006) = 531441 * k + 182503 := by
    unfold C
    simp [show (1062882 * k + 365006) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 360091) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 360091)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_360187 : ∀ k : Nat,
    iterate (1048576 * k + 360187) 32 = 531441 * k + 182552 ∧
      531441 * k + 182552 < 1048576 * k + 360187 := by
  intro k
  have h1 : C (1048576 * k + 360187) = 3145728 * k + 1080562 := by
    unfold C
    simp [show (1048576 * k + 360187) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1080562) = 1572864 * k + 540281 := by
    unfold C
    simp [show (3145728 * k + 1080562) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 540281) = 4718592 * k + 1620844 := by
    unfold C
    simp [show (1572864 * k + 540281) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1620844) = 2359296 * k + 810422 := by
    unfold C
    simp [show (4718592 * k + 1620844) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 810422) = 1179648 * k + 405211 := by
    unfold C
    simp [show (2359296 * k + 810422) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 405211) = 3538944 * k + 1215634 := by
    unfold C
    simp [show (1179648 * k + 405211) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1215634) = 1769472 * k + 607817 := by
    unfold C
    simp [show (3538944 * k + 1215634) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 607817) = 5308416 * k + 1823452 := by
    unfold C
    simp [show (1769472 * k + 607817) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1823452) = 2654208 * k + 911726 := by
    unfold C
    simp [show (5308416 * k + 1823452) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 911726) = 1327104 * k + 455863 := by
    unfold C
    simp [show (2654208 * k + 911726) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 455863) = 3981312 * k + 1367590 := by
    unfold C
    simp [show (1327104 * k + 455863) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1367590) = 1990656 * k + 683795 := by
    unfold C
    simp [show (3981312 * k + 1367590) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 683795) = 5971968 * k + 2051386 := by
    unfold C
    simp [show (1990656 * k + 683795) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2051386) = 2985984 * k + 1025693 := by
    unfold C
    simp [show (5971968 * k + 2051386) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1025693) = 8957952 * k + 3077080 := by
    unfold C
    simp [show (2985984 * k + 1025693) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3077080) = 4478976 * k + 1538540 := by
    unfold C
    simp [show (8957952 * k + 3077080) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1538540) = 2239488 * k + 769270 := by
    unfold C
    simp [show (4478976 * k + 1538540) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 769270) = 1119744 * k + 384635 := by
    unfold C
    simp [show (2239488 * k + 769270) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 384635) = 3359232 * k + 1153906 := by
    unfold C
    simp [show (1119744 * k + 384635) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1153906) = 1679616 * k + 576953 := by
    unfold C
    simp [show (3359232 * k + 1153906) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 576953) = 5038848 * k + 1730860 := by
    unfold C
    simp [show (1679616 * k + 576953) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1730860) = 2519424 * k + 865430 := by
    unfold C
    simp [show (5038848 * k + 1730860) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 865430) = 1259712 * k + 432715 := by
    unfold C
    simp [show (2519424 * k + 865430) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 432715) = 3779136 * k + 1298146 := by
    unfold C
    simp [show (1259712 * k + 432715) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1298146) = 1889568 * k + 649073 := by
    unfold C
    simp [show (3779136 * k + 1298146) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 649073) = 5668704 * k + 1947220 := by
    unfold C
    simp [show (1889568 * k + 649073) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1947220) = 2834352 * k + 973610 := by
    unfold C
    simp [show (5668704 * k + 1947220) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 973610) = 1417176 * k + 486805 := by
    unfold C
    simp [show (2834352 * k + 973610) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 486805) = 4251528 * k + 1460416 := by
    unfold C
    simp [show (1417176 * k + 486805) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1460416) = 2125764 * k + 730208 := by
    unfold C
    simp [show (4251528 * k + 1460416) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 730208) = 1062882 * k + 365104 := by
    unfold C
    simp [show (2125764 * k + 730208) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 365104) = 531441 * k + 182552 := by
    unfold C
    simp [show (1062882 * k + 365104) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 360187) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 360187)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_360519 : ∀ k : Nat,
    iterate (1048576 * k + 360519) 32 = 531441 * k + 182720 ∧
      531441 * k + 182720 < 1048576 * k + 360519 := by
  intro k
  have h1 : C (1048576 * k + 360519) = 3145728 * k + 1081558 := by
    unfold C
    simp [show (1048576 * k + 360519) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1081558) = 1572864 * k + 540779 := by
    unfold C
    simp [show (3145728 * k + 1081558) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 540779) = 4718592 * k + 1622338 := by
    unfold C
    simp [show (1572864 * k + 540779) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1622338) = 2359296 * k + 811169 := by
    unfold C
    simp [show (4718592 * k + 1622338) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 811169) = 7077888 * k + 2433508 := by
    unfold C
    simp [show (2359296 * k + 811169) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2433508) = 3538944 * k + 1216754 := by
    unfold C
    simp [show (7077888 * k + 2433508) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1216754) = 1769472 * k + 608377 := by
    unfold C
    simp [show (3538944 * k + 1216754) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 608377) = 5308416 * k + 1825132 := by
    unfold C
    simp [show (1769472 * k + 608377) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1825132) = 2654208 * k + 912566 := by
    unfold C
    simp [show (5308416 * k + 1825132) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 912566) = 1327104 * k + 456283 := by
    unfold C
    simp [show (2654208 * k + 912566) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 456283) = 3981312 * k + 1368850 := by
    unfold C
    simp [show (1327104 * k + 456283) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1368850) = 1990656 * k + 684425 := by
    unfold C
    simp [show (3981312 * k + 1368850) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 684425) = 5971968 * k + 2053276 := by
    unfold C
    simp [show (1990656 * k + 684425) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2053276) = 2985984 * k + 1026638 := by
    unfold C
    simp [show (5971968 * k + 2053276) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1026638) = 1492992 * k + 513319 := by
    unfold C
    simp [show (2985984 * k + 1026638) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 513319) = 4478976 * k + 1539958 := by
    unfold C
    simp [show (1492992 * k + 513319) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1539958) = 2239488 * k + 769979 := by
    unfold C
    simp [show (4478976 * k + 1539958) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 769979) = 6718464 * k + 2309938 := by
    unfold C
    simp [show (2239488 * k + 769979) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2309938) = 3359232 * k + 1154969 := by
    unfold C
    simp [show (6718464 * k + 2309938) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1154969) = 10077696 * k + 3464908 := by
    unfold C
    simp [show (3359232 * k + 1154969) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3464908) = 5038848 * k + 1732454 := by
    unfold C
    simp [show (10077696 * k + 3464908) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1732454) = 2519424 * k + 866227 := by
    unfold C
    simp [show (5038848 * k + 1732454) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 866227) = 7558272 * k + 2598682 := by
    unfold C
    simp [show (2519424 * k + 866227) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2598682) = 3779136 * k + 1299341 := by
    unfold C
    simp [show (7558272 * k + 2598682) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1299341) = 11337408 * k + 3898024 := by
    unfold C
    simp [show (3779136 * k + 1299341) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3898024) = 5668704 * k + 1949012 := by
    unfold C
    simp [show (11337408 * k + 3898024) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1949012) = 2834352 * k + 974506 := by
    unfold C
    simp [show (5668704 * k + 1949012) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 974506) = 1417176 * k + 487253 := by
    unfold C
    simp [show (2834352 * k + 974506) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 487253) = 4251528 * k + 1461760 := by
    unfold C
    simp [show (1417176 * k + 487253) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1461760) = 2125764 * k + 730880 := by
    unfold C
    simp [show (4251528 * k + 1461760) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 730880) = 1062882 * k + 365440 := by
    unfold C
    simp [show (2125764 * k + 730880) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 365440) = 531441 * k + 182720 := by
    unfold C
    simp [show (1062882 * k + 365440) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 360519) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 360519)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_363367 : ∀ k : Nat,
    iterate (1048576 * k + 363367) 32 = 531441 * k + 184163 ∧
      531441 * k + 184163 < 1048576 * k + 363367 := by
  intro k
  have h1 : C (1048576 * k + 363367) = 3145728 * k + 1090102 := by
    unfold C
    simp [show (1048576 * k + 363367) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1090102) = 1572864 * k + 545051 := by
    unfold C
    simp [show (3145728 * k + 1090102) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 545051) = 4718592 * k + 1635154 := by
    unfold C
    simp [show (1572864 * k + 545051) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1635154) = 2359296 * k + 817577 := by
    unfold C
    simp [show (4718592 * k + 1635154) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 817577) = 7077888 * k + 2452732 := by
    unfold C
    simp [show (2359296 * k + 817577) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2452732) = 3538944 * k + 1226366 := by
    unfold C
    simp [show (7077888 * k + 2452732) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1226366) = 1769472 * k + 613183 := by
    unfold C
    simp [show (3538944 * k + 1226366) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 613183) = 5308416 * k + 1839550 := by
    unfold C
    simp [show (1769472 * k + 613183) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1839550) = 2654208 * k + 919775 := by
    unfold C
    simp [show (5308416 * k + 1839550) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 919775) = 7962624 * k + 2759326 := by
    unfold C
    simp [show (2654208 * k + 919775) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2759326) = 3981312 * k + 1379663 := by
    unfold C
    simp [show (7962624 * k + 2759326) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1379663) = 11943936 * k + 4138990 := by
    unfold C
    simp [show (3981312 * k + 1379663) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4138990) = 5971968 * k + 2069495 := by
    unfold C
    simp [show (11943936 * k + 4138990) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2069495) = 17915904 * k + 6208486 := by
    unfold C
    simp [show (5971968 * k + 2069495) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6208486) = 8957952 * k + 3104243 := by
    unfold C
    simp [show (17915904 * k + 6208486) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3104243) = 26873856 * k + 9312730 := by
    unfold C
    simp [show (8957952 * k + 3104243) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 9312730) = 13436928 * k + 4656365 := by
    unfold C
    simp [show (26873856 * k + 9312730) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4656365) = 40310784 * k + 13969096 := by
    unfold C
    simp [show (13436928 * k + 4656365) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 13969096) = 20155392 * k + 6984548 := by
    unfold C
    simp [show (40310784 * k + 13969096) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 6984548) = 10077696 * k + 3492274 := by
    unfold C
    simp [show (20155392 * k + 6984548) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3492274) = 5038848 * k + 1746137 := by
    unfold C
    simp [show (10077696 * k + 3492274) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1746137) = 15116544 * k + 5238412 := by
    unfold C
    simp [show (5038848 * k + 1746137) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5238412) = 7558272 * k + 2619206 := by
    unfold C
    simp [show (15116544 * k + 5238412) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2619206) = 3779136 * k + 1309603 := by
    unfold C
    simp [show (7558272 * k + 2619206) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1309603) = 11337408 * k + 3928810 := by
    unfold C
    simp [show (3779136 * k + 1309603) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3928810) = 5668704 * k + 1964405 := by
    unfold C
    simp [show (11337408 * k + 3928810) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1964405) = 17006112 * k + 5893216 := by
    unfold C
    simp [show (5668704 * k + 1964405) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 5893216) = 8503056 * k + 2946608 := by
    unfold C
    simp [show (17006112 * k + 5893216) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2946608) = 4251528 * k + 1473304 := by
    unfold C
    simp [show (8503056 * k + 2946608) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1473304) = 2125764 * k + 736652 := by
    unfold C
    simp [show (4251528 * k + 1473304) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 736652) = 1062882 * k + 368326 := by
    unfold C
    simp [show (2125764 * k + 736652) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 368326) = 531441 * k + 184163 := by
    unfold C
    simp [show (1062882 * k + 368326) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 363367) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 363367)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_363391 : ∀ k : Nat,
    iterate (1048576 * k + 363391) 32 = 531441 * k + 184175 ∧
      531441 * k + 184175 < 1048576 * k + 363391 := by
  intro k
  have h1 : C (1048576 * k + 363391) = 3145728 * k + 1090174 := by
    unfold C
    simp [show (1048576 * k + 363391) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1090174) = 1572864 * k + 545087 := by
    unfold C
    simp [show (3145728 * k + 1090174) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 545087) = 4718592 * k + 1635262 := by
    unfold C
    simp [show (1572864 * k + 545087) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1635262) = 2359296 * k + 817631 := by
    unfold C
    simp [show (4718592 * k + 1635262) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 817631) = 7077888 * k + 2452894 := by
    unfold C
    simp [show (2359296 * k + 817631) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2452894) = 3538944 * k + 1226447 := by
    unfold C
    simp [show (7077888 * k + 2452894) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1226447) = 10616832 * k + 3679342 := by
    unfold C
    simp [show (3538944 * k + 1226447) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3679342) = 5308416 * k + 1839671 := by
    unfold C
    simp [show (10616832 * k + 3679342) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1839671) = 15925248 * k + 5519014 := by
    unfold C
    simp [show (5308416 * k + 1839671) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5519014) = 7962624 * k + 2759507 := by
    unfold C
    simp [show (15925248 * k + 5519014) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2759507) = 23887872 * k + 8278522 := by
    unfold C
    simp [show (7962624 * k + 2759507) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 8278522) = 11943936 * k + 4139261 := by
    unfold C
    simp [show (23887872 * k + 8278522) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4139261) = 35831808 * k + 12417784 := by
    unfold C
    simp [show (11943936 * k + 4139261) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 12417784) = 17915904 * k + 6208892 := by
    unfold C
    simp [show (35831808 * k + 12417784) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 6208892) = 8957952 * k + 3104446 := by
    unfold C
    simp [show (17915904 * k + 6208892) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3104446) = 4478976 * k + 1552223 := by
    unfold C
    simp [show (8957952 * k + 3104446) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1552223) = 13436928 * k + 4656670 := by
    unfold C
    simp [show (4478976 * k + 1552223) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4656670) = 6718464 * k + 2328335 := by
    unfold C
    simp [show (13436928 * k + 4656670) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2328335) = 20155392 * k + 6985006 := by
    unfold C
    simp [show (6718464 * k + 2328335) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 6985006) = 10077696 * k + 3492503 := by
    unfold C
    simp [show (20155392 * k + 6985006) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3492503) = 30233088 * k + 10477510 := by
    unfold C
    simp [show (10077696 * k + 3492503) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 10477510) = 15116544 * k + 5238755 := by
    unfold C
    simp [show (30233088 * k + 10477510) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5238755) = 45349632 * k + 15716266 := by
    unfold C
    simp [show (15116544 * k + 5238755) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 15716266) = 22674816 * k + 7858133 := by
    unfold C
    simp [show (45349632 * k + 15716266) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 7858133) = 68024448 * k + 23574400 := by
    unfold C
    simp [show (22674816 * k + 7858133) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 23574400) = 34012224 * k + 11787200 := by
    unfold C
    simp [show (68024448 * k + 23574400) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 11787200) = 17006112 * k + 5893600 := by
    unfold C
    simp [show (34012224 * k + 11787200) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 5893600) = 8503056 * k + 2946800 := by
    unfold C
    simp [show (17006112 * k + 5893600) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2946800) = 4251528 * k + 1473400 := by
    unfold C
    simp [show (8503056 * k + 2946800) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1473400) = 2125764 * k + 736700 := by
    unfold C
    simp [show (4251528 * k + 1473400) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 736700) = 1062882 * k + 368350 := by
    unfold C
    simp [show (2125764 * k + 736700) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 368350) = 531441 * k + 184175 := by
    unfold C
    simp [show (1062882 * k + 368350) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 363391) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 363391)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_363935 : ∀ k : Nat,
    iterate (1048576 * k + 363935) 32 = 531441 * k + 184451 ∧
      531441 * k + 184451 < 1048576 * k + 363935 := by
  intro k
  have h1 : C (1048576 * k + 363935) = 3145728 * k + 1091806 := by
    unfold C
    simp [show (1048576 * k + 363935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1091806) = 1572864 * k + 545903 := by
    unfold C
    simp [show (3145728 * k + 1091806) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 545903) = 4718592 * k + 1637710 := by
    unfold C
    simp [show (1572864 * k + 545903) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1637710) = 2359296 * k + 818855 := by
    unfold C
    simp [show (4718592 * k + 1637710) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 818855) = 7077888 * k + 2456566 := by
    unfold C
    simp [show (2359296 * k + 818855) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2456566) = 3538944 * k + 1228283 := by
    unfold C
    simp [show (7077888 * k + 2456566) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1228283) = 10616832 * k + 3684850 := by
    unfold C
    simp [show (3538944 * k + 1228283) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3684850) = 5308416 * k + 1842425 := by
    unfold C
    simp [show (10616832 * k + 3684850) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1842425) = 15925248 * k + 5527276 := by
    unfold C
    simp [show (5308416 * k + 1842425) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5527276) = 7962624 * k + 2763638 := by
    unfold C
    simp [show (15925248 * k + 5527276) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2763638) = 3981312 * k + 1381819 := by
    unfold C
    simp [show (7962624 * k + 2763638) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1381819) = 11943936 * k + 4145458 := by
    unfold C
    simp [show (3981312 * k + 1381819) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4145458) = 5971968 * k + 2072729 := by
    unfold C
    simp [show (11943936 * k + 4145458) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2072729) = 17915904 * k + 6218188 := by
    unfold C
    simp [show (5971968 * k + 2072729) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6218188) = 8957952 * k + 3109094 := by
    unfold C
    simp [show (17915904 * k + 6218188) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3109094) = 4478976 * k + 1554547 := by
    unfold C
    simp [show (8957952 * k + 3109094) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1554547) = 13436928 * k + 4663642 := by
    unfold C
    simp [show (4478976 * k + 1554547) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4663642) = 6718464 * k + 2331821 := by
    unfold C
    simp [show (13436928 * k + 4663642) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2331821) = 20155392 * k + 6995464 := by
    unfold C
    simp [show (6718464 * k + 2331821) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 6995464) = 10077696 * k + 3497732 := by
    unfold C
    simp [show (20155392 * k + 6995464) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3497732) = 5038848 * k + 1748866 := by
    unfold C
    simp [show (10077696 * k + 3497732) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1748866) = 2519424 * k + 874433 := by
    unfold C
    simp [show (5038848 * k + 1748866) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 874433) = 7558272 * k + 2623300 := by
    unfold C
    simp [show (2519424 * k + 874433) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2623300) = 3779136 * k + 1311650 := by
    unfold C
    simp [show (7558272 * k + 2623300) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1311650) = 1889568 * k + 655825 := by
    unfold C
    simp [show (3779136 * k + 1311650) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 655825) = 5668704 * k + 1967476 := by
    unfold C
    simp [show (1889568 * k + 655825) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1967476) = 2834352 * k + 983738 := by
    unfold C
    simp [show (5668704 * k + 1967476) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 983738) = 1417176 * k + 491869 := by
    unfold C
    simp [show (2834352 * k + 983738) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 491869) = 4251528 * k + 1475608 := by
    unfold C
    simp [show (1417176 * k + 491869) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1475608) = 2125764 * k + 737804 := by
    unfold C
    simp [show (4251528 * k + 1475608) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 737804) = 1062882 * k + 368902 := by
    unfold C
    simp [show (2125764 * k + 737804) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 368902) = 531441 * k + 184451 := by
    unfold C
    simp [show (1062882 * k + 368902) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 363935) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 363935)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_364703 : ∀ k : Nat,
    iterate (1048576 * k + 364703) 32 = 531441 * k + 184840 ∧
      531441 * k + 184840 < 1048576 * k + 364703 := by
  intro k
  have h1 : C (1048576 * k + 364703) = 3145728 * k + 1094110 := by
    unfold C
    simp [show (1048576 * k + 364703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1094110) = 1572864 * k + 547055 := by
    unfold C
    simp [show (3145728 * k + 1094110) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 547055) = 4718592 * k + 1641166 := by
    unfold C
    simp [show (1572864 * k + 547055) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1641166) = 2359296 * k + 820583 := by
    unfold C
    simp [show (4718592 * k + 1641166) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 820583) = 7077888 * k + 2461750 := by
    unfold C
    simp [show (2359296 * k + 820583) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2461750) = 3538944 * k + 1230875 := by
    unfold C
    simp [show (7077888 * k + 2461750) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1230875) = 10616832 * k + 3692626 := by
    unfold C
    simp [show (3538944 * k + 1230875) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3692626) = 5308416 * k + 1846313 := by
    unfold C
    simp [show (10616832 * k + 3692626) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1846313) = 15925248 * k + 5538940 := by
    unfold C
    simp [show (5308416 * k + 1846313) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5538940) = 7962624 * k + 2769470 := by
    unfold C
    simp [show (15925248 * k + 5538940) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2769470) = 3981312 * k + 1384735 := by
    unfold C
    simp [show (7962624 * k + 2769470) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1384735) = 11943936 * k + 4154206 := by
    unfold C
    simp [show (3981312 * k + 1384735) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4154206) = 5971968 * k + 2077103 := by
    unfold C
    simp [show (11943936 * k + 4154206) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2077103) = 17915904 * k + 6231310 := by
    unfold C
    simp [show (5971968 * k + 2077103) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6231310) = 8957952 * k + 3115655 := by
    unfold C
    simp [show (17915904 * k + 6231310) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3115655) = 26873856 * k + 9346966 := by
    unfold C
    simp [show (8957952 * k + 3115655) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 9346966) = 13436928 * k + 4673483 := by
    unfold C
    simp [show (26873856 * k + 9346966) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4673483) = 40310784 * k + 14020450 := by
    unfold C
    simp [show (13436928 * k + 4673483) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 14020450) = 20155392 * k + 7010225 := by
    unfold C
    simp [show (40310784 * k + 14020450) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 7010225) = 60466176 * k + 21030676 := by
    unfold C
    simp [show (20155392 * k + 7010225) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 21030676) = 30233088 * k + 10515338 := by
    unfold C
    simp [show (60466176 * k + 21030676) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 10515338) = 15116544 * k + 5257669 := by
    unfold C
    simp [show (30233088 * k + 10515338) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5257669) = 45349632 * k + 15773008 := by
    unfold C
    simp [show (15116544 * k + 5257669) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 15773008) = 22674816 * k + 7886504 := by
    unfold C
    simp [show (45349632 * k + 15773008) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 7886504) = 11337408 * k + 3943252 := by
    unfold C
    simp [show (22674816 * k + 7886504) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3943252) = 5668704 * k + 1971626 := by
    unfold C
    simp [show (11337408 * k + 3943252) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1971626) = 2834352 * k + 985813 := by
    unfold C
    simp [show (5668704 * k + 1971626) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 985813) = 8503056 * k + 2957440 := by
    unfold C
    simp [show (2834352 * k + 985813) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2957440) = 4251528 * k + 1478720 := by
    unfold C
    simp [show (8503056 * k + 2957440) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1478720) = 2125764 * k + 739360 := by
    unfold C
    simp [show (4251528 * k + 1478720) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 739360) = 1062882 * k + 369680 := by
    unfold C
    simp [show (2125764 * k + 739360) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 369680) = 531441 * k + 184840 := by
    unfold C
    simp [show (1062882 * k + 369680) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 364703) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 364703)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard046
