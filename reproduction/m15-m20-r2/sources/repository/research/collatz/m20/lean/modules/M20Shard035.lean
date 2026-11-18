import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard035

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_255771 : ∀ k : Nat,
    iterate (1048576 * k + 255771) 32 = 531441 * k + 129631 ∧
      531441 * k + 129631 < 1048576 * k + 255771 := by
  intro k
  have h1 : C (1048576 * k + 255771) = 3145728 * k + 767314 := by
    unfold C
    simp [show (1048576 * k + 255771) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 767314) = 1572864 * k + 383657 := by
    unfold C
    simp [show (3145728 * k + 767314) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 383657) = 4718592 * k + 1150972 := by
    unfold C
    simp [show (1572864 * k + 383657) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1150972) = 2359296 * k + 575486 := by
    unfold C
    simp [show (4718592 * k + 1150972) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 575486) = 1179648 * k + 287743 := by
    unfold C
    simp [show (2359296 * k + 575486) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 287743) = 3538944 * k + 863230 := by
    unfold C
    simp [show (1179648 * k + 287743) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 863230) = 1769472 * k + 431615 := by
    unfold C
    simp [show (3538944 * k + 863230) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 431615) = 5308416 * k + 1294846 := by
    unfold C
    simp [show (1769472 * k + 431615) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1294846) = 2654208 * k + 647423 := by
    unfold C
    simp [show (5308416 * k + 1294846) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 647423) = 7962624 * k + 1942270 := by
    unfold C
    simp [show (2654208 * k + 647423) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1942270) = 3981312 * k + 971135 := by
    unfold C
    simp [show (7962624 * k + 1942270) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 971135) = 11943936 * k + 2913406 := by
    unfold C
    simp [show (3981312 * k + 971135) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2913406) = 5971968 * k + 1456703 := by
    unfold C
    simp [show (11943936 * k + 2913406) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1456703) = 17915904 * k + 4370110 := by
    unfold C
    simp [show (5971968 * k + 1456703) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4370110) = 8957952 * k + 2185055 := by
    unfold C
    simp [show (17915904 * k + 4370110) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2185055) = 26873856 * k + 6555166 := by
    unfold C
    simp [show (8957952 * k + 2185055) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 6555166) = 13436928 * k + 3277583 := by
    unfold C
    simp [show (26873856 * k + 6555166) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3277583) = 40310784 * k + 9832750 := by
    unfold C
    simp [show (13436928 * k + 3277583) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 9832750) = 20155392 * k + 4916375 := by
    unfold C
    simp [show (40310784 * k + 9832750) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 4916375) = 60466176 * k + 14749126 := by
    unfold C
    simp [show (20155392 * k + 4916375) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 14749126) = 30233088 * k + 7374563 := by
    unfold C
    simp [show (60466176 * k + 14749126) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 7374563) = 90699264 * k + 22123690 := by
    unfold C
    simp [show (30233088 * k + 7374563) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 22123690) = 45349632 * k + 11061845 := by
    unfold C
    simp [show (90699264 * k + 22123690) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 11061845) = 136048896 * k + 33185536 := by
    unfold C
    simp [show (45349632 * k + 11061845) % 2 ≠ 0 by omega]
    omega
  have h25 : C (136048896 * k + 33185536) = 68024448 * k + 16592768 := by
    unfold C
    simp [show (136048896 * k + 33185536) % 2 = 0 by omega]
    omega
  have h26 : C (68024448 * k + 16592768) = 34012224 * k + 8296384 := by
    unfold C
    simp [show (68024448 * k + 16592768) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 8296384) = 17006112 * k + 4148192 := by
    unfold C
    simp [show (34012224 * k + 8296384) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 4148192) = 8503056 * k + 2074096 := by
    unfold C
    simp [show (17006112 * k + 4148192) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2074096) = 4251528 * k + 1037048 := by
    unfold C
    simp [show (8503056 * k + 2074096) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1037048) = 2125764 * k + 518524 := by
    unfold C
    simp [show (4251528 * k + 1037048) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 518524) = 1062882 * k + 259262 := by
    unfold C
    simp [show (2125764 * k + 518524) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 259262) = 531441 * k + 129631 := by
    unfold C
    simp [show (1062882 * k + 259262) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 255771) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 255771)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_255835 : ∀ k : Nat,
    iterate (1048576 * k + 255835) 32 = 531441 * k + 129664 ∧
      531441 * k + 129664 < 1048576 * k + 255835 := by
  intro k
  have h1 : C (1048576 * k + 255835) = 3145728 * k + 767506 := by
    unfold C
    simp [show (1048576 * k + 255835) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 767506) = 1572864 * k + 383753 := by
    unfold C
    simp [show (3145728 * k + 767506) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 383753) = 4718592 * k + 1151260 := by
    unfold C
    simp [show (1572864 * k + 383753) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1151260) = 2359296 * k + 575630 := by
    unfold C
    simp [show (4718592 * k + 1151260) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 575630) = 1179648 * k + 287815 := by
    unfold C
    simp [show (2359296 * k + 575630) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 287815) = 3538944 * k + 863446 := by
    unfold C
    simp [show (1179648 * k + 287815) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 863446) = 1769472 * k + 431723 := by
    unfold C
    simp [show (3538944 * k + 863446) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 431723) = 5308416 * k + 1295170 := by
    unfold C
    simp [show (1769472 * k + 431723) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1295170) = 2654208 * k + 647585 := by
    unfold C
    simp [show (5308416 * k + 1295170) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 647585) = 7962624 * k + 1942756 := by
    unfold C
    simp [show (2654208 * k + 647585) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1942756) = 3981312 * k + 971378 := by
    unfold C
    simp [show (7962624 * k + 1942756) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 971378) = 1990656 * k + 485689 := by
    unfold C
    simp [show (3981312 * k + 971378) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 485689) = 5971968 * k + 1457068 := by
    unfold C
    simp [show (1990656 * k + 485689) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1457068) = 2985984 * k + 728534 := by
    unfold C
    simp [show (5971968 * k + 1457068) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 728534) = 1492992 * k + 364267 := by
    unfold C
    simp [show (2985984 * k + 728534) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 364267) = 4478976 * k + 1092802 := by
    unfold C
    simp [show (1492992 * k + 364267) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1092802) = 2239488 * k + 546401 := by
    unfold C
    simp [show (4478976 * k + 1092802) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 546401) = 6718464 * k + 1639204 := by
    unfold C
    simp [show (2239488 * k + 546401) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1639204) = 3359232 * k + 819602 := by
    unfold C
    simp [show (6718464 * k + 1639204) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 819602) = 1679616 * k + 409801 := by
    unfold C
    simp [show (3359232 * k + 819602) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 409801) = 5038848 * k + 1229404 := by
    unfold C
    simp [show (1679616 * k + 409801) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1229404) = 2519424 * k + 614702 := by
    unfold C
    simp [show (5038848 * k + 1229404) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 614702) = 1259712 * k + 307351 := by
    unfold C
    simp [show (2519424 * k + 614702) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 307351) = 3779136 * k + 922054 := by
    unfold C
    simp [show (1259712 * k + 307351) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 922054) = 1889568 * k + 461027 := by
    unfold C
    simp [show (3779136 * k + 922054) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 461027) = 5668704 * k + 1383082 := by
    unfold C
    simp [show (1889568 * k + 461027) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1383082) = 2834352 * k + 691541 := by
    unfold C
    simp [show (5668704 * k + 1383082) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 691541) = 8503056 * k + 2074624 := by
    unfold C
    simp [show (2834352 * k + 691541) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2074624) = 4251528 * k + 1037312 := by
    unfold C
    simp [show (8503056 * k + 2074624) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1037312) = 2125764 * k + 518656 := by
    unfold C
    simp [show (4251528 * k + 1037312) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 518656) = 1062882 * k + 259328 := by
    unfold C
    simp [show (2125764 * k + 518656) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 259328) = 531441 * k + 129664 := by
    unfold C
    simp [show (1062882 * k + 259328) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 255835) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 255835)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_255995 : ∀ k : Nat,
    iterate (1048576 * k + 255995) 32 = 531441 * k + 129745 ∧
      531441 * k + 129745 < 1048576 * k + 255995 := by
  intro k
  have h1 : C (1048576 * k + 255995) = 3145728 * k + 767986 := by
    unfold C
    simp [show (1048576 * k + 255995) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 767986) = 1572864 * k + 383993 := by
    unfold C
    simp [show (3145728 * k + 767986) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 383993) = 4718592 * k + 1151980 := by
    unfold C
    simp [show (1572864 * k + 383993) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1151980) = 2359296 * k + 575990 := by
    unfold C
    simp [show (4718592 * k + 1151980) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 575990) = 1179648 * k + 287995 := by
    unfold C
    simp [show (2359296 * k + 575990) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 287995) = 3538944 * k + 863986 := by
    unfold C
    simp [show (1179648 * k + 287995) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 863986) = 1769472 * k + 431993 := by
    unfold C
    simp [show (3538944 * k + 863986) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 431993) = 5308416 * k + 1295980 := by
    unfold C
    simp [show (1769472 * k + 431993) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1295980) = 2654208 * k + 647990 := by
    unfold C
    simp [show (5308416 * k + 1295980) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 647990) = 1327104 * k + 323995 := by
    unfold C
    simp [show (2654208 * k + 647990) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 323995) = 3981312 * k + 971986 := by
    unfold C
    simp [show (1327104 * k + 323995) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 971986) = 1990656 * k + 485993 := by
    unfold C
    simp [show (3981312 * k + 971986) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 485993) = 5971968 * k + 1457980 := by
    unfold C
    simp [show (1990656 * k + 485993) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1457980) = 2985984 * k + 728990 := by
    unfold C
    simp [show (5971968 * k + 1457980) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 728990) = 1492992 * k + 364495 := by
    unfold C
    simp [show (2985984 * k + 728990) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 364495) = 4478976 * k + 1093486 := by
    unfold C
    simp [show (1492992 * k + 364495) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1093486) = 2239488 * k + 546743 := by
    unfold C
    simp [show (4478976 * k + 1093486) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 546743) = 6718464 * k + 1640230 := by
    unfold C
    simp [show (2239488 * k + 546743) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1640230) = 3359232 * k + 820115 := by
    unfold C
    simp [show (6718464 * k + 1640230) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 820115) = 10077696 * k + 2460346 := by
    unfold C
    simp [show (3359232 * k + 820115) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2460346) = 5038848 * k + 1230173 := by
    unfold C
    simp [show (10077696 * k + 2460346) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1230173) = 15116544 * k + 3690520 := by
    unfold C
    simp [show (5038848 * k + 1230173) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3690520) = 7558272 * k + 1845260 := by
    unfold C
    simp [show (15116544 * k + 3690520) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1845260) = 3779136 * k + 922630 := by
    unfold C
    simp [show (7558272 * k + 1845260) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 922630) = 1889568 * k + 461315 := by
    unfold C
    simp [show (3779136 * k + 922630) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 461315) = 5668704 * k + 1383946 := by
    unfold C
    simp [show (1889568 * k + 461315) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1383946) = 2834352 * k + 691973 := by
    unfold C
    simp [show (5668704 * k + 1383946) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 691973) = 8503056 * k + 2075920 := by
    unfold C
    simp [show (2834352 * k + 691973) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2075920) = 4251528 * k + 1037960 := by
    unfold C
    simp [show (8503056 * k + 2075920) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1037960) = 2125764 * k + 518980 := by
    unfold C
    simp [show (4251528 * k + 1037960) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 518980) = 1062882 * k + 259490 := by
    unfold C
    simp [show (2125764 * k + 518980) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 259490) = 531441 * k + 129745 := by
    unfold C
    simp [show (1062882 * k + 259490) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 255995) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 255995)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_256327 : ∀ k : Nat,
    iterate (1048576 * k + 256327) 32 = 531441 * k + 129913 ∧
      531441 * k + 129913 < 1048576 * k + 256327 := by
  intro k
  have h1 : C (1048576 * k + 256327) = 3145728 * k + 768982 := by
    unfold C
    simp [show (1048576 * k + 256327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 768982) = 1572864 * k + 384491 := by
    unfold C
    simp [show (3145728 * k + 768982) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 384491) = 4718592 * k + 1153474 := by
    unfold C
    simp [show (1572864 * k + 384491) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1153474) = 2359296 * k + 576737 := by
    unfold C
    simp [show (4718592 * k + 1153474) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 576737) = 7077888 * k + 1730212 := by
    unfold C
    simp [show (2359296 * k + 576737) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1730212) = 3538944 * k + 865106 := by
    unfold C
    simp [show (7077888 * k + 1730212) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 865106) = 1769472 * k + 432553 := by
    unfold C
    simp [show (3538944 * k + 865106) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 432553) = 5308416 * k + 1297660 := by
    unfold C
    simp [show (1769472 * k + 432553) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1297660) = 2654208 * k + 648830 := by
    unfold C
    simp [show (5308416 * k + 1297660) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 648830) = 1327104 * k + 324415 := by
    unfold C
    simp [show (2654208 * k + 648830) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 324415) = 3981312 * k + 973246 := by
    unfold C
    simp [show (1327104 * k + 324415) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 973246) = 1990656 * k + 486623 := by
    unfold C
    simp [show (3981312 * k + 973246) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 486623) = 5971968 * k + 1459870 := by
    unfold C
    simp [show (1990656 * k + 486623) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1459870) = 2985984 * k + 729935 := by
    unfold C
    simp [show (5971968 * k + 1459870) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 729935) = 8957952 * k + 2189806 := by
    unfold C
    simp [show (2985984 * k + 729935) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2189806) = 4478976 * k + 1094903 := by
    unfold C
    simp [show (8957952 * k + 2189806) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1094903) = 13436928 * k + 3284710 := by
    unfold C
    simp [show (4478976 * k + 1094903) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3284710) = 6718464 * k + 1642355 := by
    unfold C
    simp [show (13436928 * k + 3284710) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1642355) = 20155392 * k + 4927066 := by
    unfold C
    simp [show (6718464 * k + 1642355) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4927066) = 10077696 * k + 2463533 := by
    unfold C
    simp [show (20155392 * k + 4927066) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2463533) = 30233088 * k + 7390600 := by
    unfold C
    simp [show (10077696 * k + 2463533) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 7390600) = 15116544 * k + 3695300 := by
    unfold C
    simp [show (30233088 * k + 7390600) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3695300) = 7558272 * k + 1847650 := by
    unfold C
    simp [show (15116544 * k + 3695300) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1847650) = 3779136 * k + 923825 := by
    unfold C
    simp [show (7558272 * k + 1847650) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 923825) = 11337408 * k + 2771476 := by
    unfold C
    simp [show (3779136 * k + 923825) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2771476) = 5668704 * k + 1385738 := by
    unfold C
    simp [show (11337408 * k + 2771476) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1385738) = 2834352 * k + 692869 := by
    unfold C
    simp [show (5668704 * k + 1385738) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 692869) = 8503056 * k + 2078608 := by
    unfold C
    simp [show (2834352 * k + 692869) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2078608) = 4251528 * k + 1039304 := by
    unfold C
    simp [show (8503056 * k + 2078608) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1039304) = 2125764 * k + 519652 := by
    unfold C
    simp [show (4251528 * k + 1039304) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 519652) = 1062882 * k + 259826 := by
    unfold C
    simp [show (2125764 * k + 519652) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 259826) = 531441 * k + 129913 := by
    unfold C
    simp [show (1062882 * k + 259826) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 256327) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 256327)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_257051 : ∀ k : Nat,
    iterate (1048576 * k + 257051) 32 = 531441 * k + 130280 ∧
      531441 * k + 130280 < 1048576 * k + 257051 := by
  intro k
  have h1 : C (1048576 * k + 257051) = 3145728 * k + 771154 := by
    unfold C
    simp [show (1048576 * k + 257051) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 771154) = 1572864 * k + 385577 := by
    unfold C
    simp [show (3145728 * k + 771154) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 385577) = 4718592 * k + 1156732 := by
    unfold C
    simp [show (1572864 * k + 385577) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1156732) = 2359296 * k + 578366 := by
    unfold C
    simp [show (4718592 * k + 1156732) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 578366) = 1179648 * k + 289183 := by
    unfold C
    simp [show (2359296 * k + 578366) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 289183) = 3538944 * k + 867550 := by
    unfold C
    simp [show (1179648 * k + 289183) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 867550) = 1769472 * k + 433775 := by
    unfold C
    simp [show (3538944 * k + 867550) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 433775) = 5308416 * k + 1301326 := by
    unfold C
    simp [show (1769472 * k + 433775) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1301326) = 2654208 * k + 650663 := by
    unfold C
    simp [show (5308416 * k + 1301326) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 650663) = 7962624 * k + 1951990 := by
    unfold C
    simp [show (2654208 * k + 650663) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1951990) = 3981312 * k + 975995 := by
    unfold C
    simp [show (7962624 * k + 1951990) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 975995) = 11943936 * k + 2927986 := by
    unfold C
    simp [show (3981312 * k + 975995) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2927986) = 5971968 * k + 1463993 := by
    unfold C
    simp [show (11943936 * k + 2927986) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1463993) = 17915904 * k + 4391980 := by
    unfold C
    simp [show (5971968 * k + 1463993) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4391980) = 8957952 * k + 2195990 := by
    unfold C
    simp [show (17915904 * k + 4391980) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2195990) = 4478976 * k + 1097995 := by
    unfold C
    simp [show (8957952 * k + 2195990) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1097995) = 13436928 * k + 3293986 := by
    unfold C
    simp [show (4478976 * k + 1097995) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3293986) = 6718464 * k + 1646993 := by
    unfold C
    simp [show (13436928 * k + 3293986) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1646993) = 20155392 * k + 4940980 := by
    unfold C
    simp [show (6718464 * k + 1646993) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4940980) = 10077696 * k + 2470490 := by
    unfold C
    simp [show (20155392 * k + 4940980) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2470490) = 5038848 * k + 1235245 := by
    unfold C
    simp [show (10077696 * k + 2470490) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1235245) = 15116544 * k + 3705736 := by
    unfold C
    simp [show (5038848 * k + 1235245) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3705736) = 7558272 * k + 1852868 := by
    unfold C
    simp [show (15116544 * k + 3705736) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1852868) = 3779136 * k + 926434 := by
    unfold C
    simp [show (7558272 * k + 1852868) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 926434) = 1889568 * k + 463217 := by
    unfold C
    simp [show (3779136 * k + 926434) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 463217) = 5668704 * k + 1389652 := by
    unfold C
    simp [show (1889568 * k + 463217) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1389652) = 2834352 * k + 694826 := by
    unfold C
    simp [show (5668704 * k + 1389652) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 694826) = 1417176 * k + 347413 := by
    unfold C
    simp [show (2834352 * k + 694826) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 347413) = 4251528 * k + 1042240 := by
    unfold C
    simp [show (1417176 * k + 347413) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1042240) = 2125764 * k + 521120 := by
    unfold C
    simp [show (4251528 * k + 1042240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 521120) = 1062882 * k + 260560 := by
    unfold C
    simp [show (2125764 * k + 521120) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 260560) = 531441 * k + 130280 := by
    unfold C
    simp [show (1062882 * k + 260560) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 257051) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 257051)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_257327 : ∀ k : Nat,
    iterate (1048576 * k + 257327) 32 = 531441 * k + 130420 ∧
      531441 * k + 130420 < 1048576 * k + 257327 := by
  intro k
  have h1 : C (1048576 * k + 257327) = 3145728 * k + 771982 := by
    unfold C
    simp [show (1048576 * k + 257327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 771982) = 1572864 * k + 385991 := by
    unfold C
    simp [show (3145728 * k + 771982) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 385991) = 4718592 * k + 1157974 := by
    unfold C
    simp [show (1572864 * k + 385991) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1157974) = 2359296 * k + 578987 := by
    unfold C
    simp [show (4718592 * k + 1157974) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 578987) = 7077888 * k + 1736962 := by
    unfold C
    simp [show (2359296 * k + 578987) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1736962) = 3538944 * k + 868481 := by
    unfold C
    simp [show (7077888 * k + 1736962) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 868481) = 10616832 * k + 2605444 := by
    unfold C
    simp [show (3538944 * k + 868481) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2605444) = 5308416 * k + 1302722 := by
    unfold C
    simp [show (10616832 * k + 2605444) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1302722) = 2654208 * k + 651361 := by
    unfold C
    simp [show (5308416 * k + 1302722) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 651361) = 7962624 * k + 1954084 := by
    unfold C
    simp [show (2654208 * k + 651361) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1954084) = 3981312 * k + 977042 := by
    unfold C
    simp [show (7962624 * k + 1954084) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 977042) = 1990656 * k + 488521 := by
    unfold C
    simp [show (3981312 * k + 977042) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 488521) = 5971968 * k + 1465564 := by
    unfold C
    simp [show (1990656 * k + 488521) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1465564) = 2985984 * k + 732782 := by
    unfold C
    simp [show (5971968 * k + 1465564) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 732782) = 1492992 * k + 366391 := by
    unfold C
    simp [show (2985984 * k + 732782) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 366391) = 4478976 * k + 1099174 := by
    unfold C
    simp [show (1492992 * k + 366391) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1099174) = 2239488 * k + 549587 := by
    unfold C
    simp [show (4478976 * k + 1099174) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 549587) = 6718464 * k + 1648762 := by
    unfold C
    simp [show (2239488 * k + 549587) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1648762) = 3359232 * k + 824381 := by
    unfold C
    simp [show (6718464 * k + 1648762) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 824381) = 10077696 * k + 2473144 := by
    unfold C
    simp [show (3359232 * k + 824381) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2473144) = 5038848 * k + 1236572 := by
    unfold C
    simp [show (10077696 * k + 2473144) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1236572) = 2519424 * k + 618286 := by
    unfold C
    simp [show (5038848 * k + 1236572) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 618286) = 1259712 * k + 309143 := by
    unfold C
    simp [show (2519424 * k + 618286) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 309143) = 3779136 * k + 927430 := by
    unfold C
    simp [show (1259712 * k + 309143) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 927430) = 1889568 * k + 463715 := by
    unfold C
    simp [show (3779136 * k + 927430) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 463715) = 5668704 * k + 1391146 := by
    unfold C
    simp [show (1889568 * k + 463715) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1391146) = 2834352 * k + 695573 := by
    unfold C
    simp [show (5668704 * k + 1391146) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 695573) = 8503056 * k + 2086720 := by
    unfold C
    simp [show (2834352 * k + 695573) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2086720) = 4251528 * k + 1043360 := by
    unfold C
    simp [show (8503056 * k + 2086720) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1043360) = 2125764 * k + 521680 := by
    unfold C
    simp [show (4251528 * k + 1043360) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 521680) = 1062882 * k + 260840 := by
    unfold C
    simp [show (2125764 * k + 521680) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 260840) = 531441 * k + 130420 := by
    unfold C
    simp [show (1062882 * k + 260840) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 257327) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 257327)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_257819 : ∀ k : Nat,
    iterate (1048576 * k + 257819) 32 = 531441 * k + 130669 ∧
      531441 * k + 130669 < 1048576 * k + 257819 := by
  intro k
  have h1 : C (1048576 * k + 257819) = 3145728 * k + 773458 := by
    unfold C
    simp [show (1048576 * k + 257819) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 773458) = 1572864 * k + 386729 := by
    unfold C
    simp [show (3145728 * k + 773458) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 386729) = 4718592 * k + 1160188 := by
    unfold C
    simp [show (1572864 * k + 386729) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1160188) = 2359296 * k + 580094 := by
    unfold C
    simp [show (4718592 * k + 1160188) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 580094) = 1179648 * k + 290047 := by
    unfold C
    simp [show (2359296 * k + 580094) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 290047) = 3538944 * k + 870142 := by
    unfold C
    simp [show (1179648 * k + 290047) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 870142) = 1769472 * k + 435071 := by
    unfold C
    simp [show (3538944 * k + 870142) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 435071) = 5308416 * k + 1305214 := by
    unfold C
    simp [show (1769472 * k + 435071) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1305214) = 2654208 * k + 652607 := by
    unfold C
    simp [show (5308416 * k + 1305214) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 652607) = 7962624 * k + 1957822 := by
    unfold C
    simp [show (2654208 * k + 652607) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1957822) = 3981312 * k + 978911 := by
    unfold C
    simp [show (7962624 * k + 1957822) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 978911) = 11943936 * k + 2936734 := by
    unfold C
    simp [show (3981312 * k + 978911) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2936734) = 5971968 * k + 1468367 := by
    unfold C
    simp [show (11943936 * k + 2936734) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1468367) = 17915904 * k + 4405102 := by
    unfold C
    simp [show (5971968 * k + 1468367) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4405102) = 8957952 * k + 2202551 := by
    unfold C
    simp [show (17915904 * k + 4405102) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2202551) = 26873856 * k + 6607654 := by
    unfold C
    simp [show (8957952 * k + 2202551) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 6607654) = 13436928 * k + 3303827 := by
    unfold C
    simp [show (26873856 * k + 6607654) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3303827) = 40310784 * k + 9911482 := by
    unfold C
    simp [show (13436928 * k + 3303827) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 9911482) = 20155392 * k + 4955741 := by
    unfold C
    simp [show (40310784 * k + 9911482) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 4955741) = 60466176 * k + 14867224 := by
    unfold C
    simp [show (20155392 * k + 4955741) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 14867224) = 30233088 * k + 7433612 := by
    unfold C
    simp [show (60466176 * k + 14867224) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 7433612) = 15116544 * k + 3716806 := by
    unfold C
    simp [show (30233088 * k + 7433612) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3716806) = 7558272 * k + 1858403 := by
    unfold C
    simp [show (15116544 * k + 3716806) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1858403) = 22674816 * k + 5575210 := by
    unfold C
    simp [show (7558272 * k + 1858403) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 5575210) = 11337408 * k + 2787605 := by
    unfold C
    simp [show (22674816 * k + 5575210) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2787605) = 34012224 * k + 8362816 := by
    unfold C
    simp [show (11337408 * k + 2787605) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 8362816) = 17006112 * k + 4181408 := by
    unfold C
    simp [show (34012224 * k + 8362816) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 4181408) = 8503056 * k + 2090704 := by
    unfold C
    simp [show (17006112 * k + 4181408) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2090704) = 4251528 * k + 1045352 := by
    unfold C
    simp [show (8503056 * k + 2090704) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1045352) = 2125764 * k + 522676 := by
    unfold C
    simp [show (4251528 * k + 1045352) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 522676) = 1062882 * k + 261338 := by
    unfold C
    simp [show (2125764 * k + 522676) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 261338) = 531441 * k + 130669 := by
    unfold C
    simp [show (1062882 * k + 261338) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 257819) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 257819)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_257903 : ∀ k : Nat,
    iterate (1048576 * k + 257903) 32 = 531441 * k + 130712 ∧
      531441 * k + 130712 < 1048576 * k + 257903 := by
  intro k
  have h1 : C (1048576 * k + 257903) = 3145728 * k + 773710 := by
    unfold C
    simp [show (1048576 * k + 257903) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 773710) = 1572864 * k + 386855 := by
    unfold C
    simp [show (3145728 * k + 773710) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 386855) = 4718592 * k + 1160566 := by
    unfold C
    simp [show (1572864 * k + 386855) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1160566) = 2359296 * k + 580283 := by
    unfold C
    simp [show (4718592 * k + 1160566) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 580283) = 7077888 * k + 1740850 := by
    unfold C
    simp [show (2359296 * k + 580283) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1740850) = 3538944 * k + 870425 := by
    unfold C
    simp [show (7077888 * k + 1740850) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 870425) = 10616832 * k + 2611276 := by
    unfold C
    simp [show (3538944 * k + 870425) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2611276) = 5308416 * k + 1305638 := by
    unfold C
    simp [show (10616832 * k + 2611276) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1305638) = 2654208 * k + 652819 := by
    unfold C
    simp [show (5308416 * k + 1305638) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 652819) = 7962624 * k + 1958458 := by
    unfold C
    simp [show (2654208 * k + 652819) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1958458) = 3981312 * k + 979229 := by
    unfold C
    simp [show (7962624 * k + 1958458) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 979229) = 11943936 * k + 2937688 := by
    unfold C
    simp [show (3981312 * k + 979229) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2937688) = 5971968 * k + 1468844 := by
    unfold C
    simp [show (11943936 * k + 2937688) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1468844) = 2985984 * k + 734422 := by
    unfold C
    simp [show (5971968 * k + 1468844) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 734422) = 1492992 * k + 367211 := by
    unfold C
    simp [show (2985984 * k + 734422) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 367211) = 4478976 * k + 1101634 := by
    unfold C
    simp [show (1492992 * k + 367211) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1101634) = 2239488 * k + 550817 := by
    unfold C
    simp [show (4478976 * k + 1101634) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 550817) = 6718464 * k + 1652452 := by
    unfold C
    simp [show (2239488 * k + 550817) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1652452) = 3359232 * k + 826226 := by
    unfold C
    simp [show (6718464 * k + 1652452) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 826226) = 1679616 * k + 413113 := by
    unfold C
    simp [show (3359232 * k + 826226) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 413113) = 5038848 * k + 1239340 := by
    unfold C
    simp [show (1679616 * k + 413113) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1239340) = 2519424 * k + 619670 := by
    unfold C
    simp [show (5038848 * k + 1239340) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 619670) = 1259712 * k + 309835 := by
    unfold C
    simp [show (2519424 * k + 619670) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 309835) = 3779136 * k + 929506 := by
    unfold C
    simp [show (1259712 * k + 309835) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 929506) = 1889568 * k + 464753 := by
    unfold C
    simp [show (3779136 * k + 929506) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 464753) = 5668704 * k + 1394260 := by
    unfold C
    simp [show (1889568 * k + 464753) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1394260) = 2834352 * k + 697130 := by
    unfold C
    simp [show (5668704 * k + 1394260) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 697130) = 1417176 * k + 348565 := by
    unfold C
    simp [show (2834352 * k + 697130) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 348565) = 4251528 * k + 1045696 := by
    unfold C
    simp [show (1417176 * k + 348565) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1045696) = 2125764 * k + 522848 := by
    unfold C
    simp [show (4251528 * k + 1045696) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 522848) = 1062882 * k + 261424 := by
    unfold C
    simp [show (2125764 * k + 522848) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 261424) = 531441 * k + 130712 := by
    unfold C
    simp [show (1062882 * k + 261424) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 257903) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 257903)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_257951 : ∀ k : Nat,
    iterate (1048576 * k + 257951) 32 = 531441 * k + 130736 ∧
      531441 * k + 130736 < 1048576 * k + 257951 := by
  intro k
  have h1 : C (1048576 * k + 257951) = 3145728 * k + 773854 := by
    unfold C
    simp [show (1048576 * k + 257951) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 773854) = 1572864 * k + 386927 := by
    unfold C
    simp [show (3145728 * k + 773854) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 386927) = 4718592 * k + 1160782 := by
    unfold C
    simp [show (1572864 * k + 386927) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1160782) = 2359296 * k + 580391 := by
    unfold C
    simp [show (4718592 * k + 1160782) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 580391) = 7077888 * k + 1741174 := by
    unfold C
    simp [show (2359296 * k + 580391) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1741174) = 3538944 * k + 870587 := by
    unfold C
    simp [show (7077888 * k + 1741174) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 870587) = 10616832 * k + 2611762 := by
    unfold C
    simp [show (3538944 * k + 870587) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2611762) = 5308416 * k + 1305881 := by
    unfold C
    simp [show (10616832 * k + 2611762) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1305881) = 15925248 * k + 3917644 := by
    unfold C
    simp [show (5308416 * k + 1305881) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3917644) = 7962624 * k + 1958822 := by
    unfold C
    simp [show (15925248 * k + 3917644) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1958822) = 3981312 * k + 979411 := by
    unfold C
    simp [show (7962624 * k + 1958822) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 979411) = 11943936 * k + 2938234 := by
    unfold C
    simp [show (3981312 * k + 979411) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2938234) = 5971968 * k + 1469117 := by
    unfold C
    simp [show (11943936 * k + 2938234) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1469117) = 17915904 * k + 4407352 := by
    unfold C
    simp [show (5971968 * k + 1469117) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4407352) = 8957952 * k + 2203676 := by
    unfold C
    simp [show (17915904 * k + 4407352) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2203676) = 4478976 * k + 1101838 := by
    unfold C
    simp [show (8957952 * k + 2203676) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1101838) = 2239488 * k + 550919 := by
    unfold C
    simp [show (4478976 * k + 1101838) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 550919) = 6718464 * k + 1652758 := by
    unfold C
    simp [show (2239488 * k + 550919) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1652758) = 3359232 * k + 826379 := by
    unfold C
    simp [show (6718464 * k + 1652758) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 826379) = 10077696 * k + 2479138 := by
    unfold C
    simp [show (3359232 * k + 826379) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2479138) = 5038848 * k + 1239569 := by
    unfold C
    simp [show (10077696 * k + 2479138) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1239569) = 15116544 * k + 3718708 := by
    unfold C
    simp [show (5038848 * k + 1239569) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3718708) = 7558272 * k + 1859354 := by
    unfold C
    simp [show (15116544 * k + 3718708) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1859354) = 3779136 * k + 929677 := by
    unfold C
    simp [show (7558272 * k + 1859354) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 929677) = 11337408 * k + 2789032 := by
    unfold C
    simp [show (3779136 * k + 929677) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2789032) = 5668704 * k + 1394516 := by
    unfold C
    simp [show (11337408 * k + 2789032) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1394516) = 2834352 * k + 697258 := by
    unfold C
    simp [show (5668704 * k + 1394516) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 697258) = 1417176 * k + 348629 := by
    unfold C
    simp [show (2834352 * k + 697258) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 348629) = 4251528 * k + 1045888 := by
    unfold C
    simp [show (1417176 * k + 348629) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1045888) = 2125764 * k + 522944 := by
    unfold C
    simp [show (4251528 * k + 1045888) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 522944) = 1062882 * k + 261472 := by
    unfold C
    simp [show (2125764 * k + 522944) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 261472) = 531441 * k + 130736 := by
    unfold C
    simp [show (1062882 * k + 261472) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 257951) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 257951)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_258075 : ∀ k : Nat,
    iterate (1048576 * k + 258075) 32 = 531441 * k + 130799 ∧
      531441 * k + 130799 < 1048576 * k + 258075 := by
  intro k
  have h1 : C (1048576 * k + 258075) = 3145728 * k + 774226 := by
    unfold C
    simp [show (1048576 * k + 258075) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 774226) = 1572864 * k + 387113 := by
    unfold C
    simp [show (3145728 * k + 774226) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 387113) = 4718592 * k + 1161340 := by
    unfold C
    simp [show (1572864 * k + 387113) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1161340) = 2359296 * k + 580670 := by
    unfold C
    simp [show (4718592 * k + 1161340) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 580670) = 1179648 * k + 290335 := by
    unfold C
    simp [show (2359296 * k + 580670) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 290335) = 3538944 * k + 871006 := by
    unfold C
    simp [show (1179648 * k + 290335) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 871006) = 1769472 * k + 435503 := by
    unfold C
    simp [show (3538944 * k + 871006) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 435503) = 5308416 * k + 1306510 := by
    unfold C
    simp [show (1769472 * k + 435503) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1306510) = 2654208 * k + 653255 := by
    unfold C
    simp [show (5308416 * k + 1306510) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 653255) = 7962624 * k + 1959766 := by
    unfold C
    simp [show (2654208 * k + 653255) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1959766) = 3981312 * k + 979883 := by
    unfold C
    simp [show (7962624 * k + 1959766) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 979883) = 11943936 * k + 2939650 := by
    unfold C
    simp [show (3981312 * k + 979883) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2939650) = 5971968 * k + 1469825 := by
    unfold C
    simp [show (11943936 * k + 2939650) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1469825) = 17915904 * k + 4409476 := by
    unfold C
    simp [show (5971968 * k + 1469825) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4409476) = 8957952 * k + 2204738 := by
    unfold C
    simp [show (17915904 * k + 4409476) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2204738) = 4478976 * k + 1102369 := by
    unfold C
    simp [show (8957952 * k + 2204738) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1102369) = 13436928 * k + 3307108 := by
    unfold C
    simp [show (4478976 * k + 1102369) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3307108) = 6718464 * k + 1653554 := by
    unfold C
    simp [show (13436928 * k + 3307108) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1653554) = 3359232 * k + 826777 := by
    unfold C
    simp [show (6718464 * k + 1653554) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 826777) = 10077696 * k + 2480332 := by
    unfold C
    simp [show (3359232 * k + 826777) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2480332) = 5038848 * k + 1240166 := by
    unfold C
    simp [show (10077696 * k + 2480332) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1240166) = 2519424 * k + 620083 := by
    unfold C
    simp [show (5038848 * k + 1240166) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 620083) = 7558272 * k + 1860250 := by
    unfold C
    simp [show (2519424 * k + 620083) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1860250) = 3779136 * k + 930125 := by
    unfold C
    simp [show (7558272 * k + 1860250) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 930125) = 11337408 * k + 2790376 := by
    unfold C
    simp [show (3779136 * k + 930125) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2790376) = 5668704 * k + 1395188 := by
    unfold C
    simp [show (11337408 * k + 2790376) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1395188) = 2834352 * k + 697594 := by
    unfold C
    simp [show (5668704 * k + 1395188) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 697594) = 1417176 * k + 348797 := by
    unfold C
    simp [show (2834352 * k + 697594) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 348797) = 4251528 * k + 1046392 := by
    unfold C
    simp [show (1417176 * k + 348797) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1046392) = 2125764 * k + 523196 := by
    unfold C
    simp [show (4251528 * k + 1046392) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 523196) = 1062882 * k + 261598 := by
    unfold C
    simp [show (2125764 * k + 523196) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 261598) = 531441 * k + 130799 := by
    unfold C
    simp [show (1062882 * k + 261598) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 258075) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 258075)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_258351 : ∀ k : Nat,
    iterate (1048576 * k + 258351) 32 = 531441 * k + 130939 ∧
      531441 * k + 130939 < 1048576 * k + 258351 := by
  intro k
  have h1 : C (1048576 * k + 258351) = 3145728 * k + 775054 := by
    unfold C
    simp [show (1048576 * k + 258351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 775054) = 1572864 * k + 387527 := by
    unfold C
    simp [show (3145728 * k + 775054) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 387527) = 4718592 * k + 1162582 := by
    unfold C
    simp [show (1572864 * k + 387527) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1162582) = 2359296 * k + 581291 := by
    unfold C
    simp [show (4718592 * k + 1162582) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 581291) = 7077888 * k + 1743874 := by
    unfold C
    simp [show (2359296 * k + 581291) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1743874) = 3538944 * k + 871937 := by
    unfold C
    simp [show (7077888 * k + 1743874) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 871937) = 10616832 * k + 2615812 := by
    unfold C
    simp [show (3538944 * k + 871937) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2615812) = 5308416 * k + 1307906 := by
    unfold C
    simp [show (10616832 * k + 2615812) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1307906) = 2654208 * k + 653953 := by
    unfold C
    simp [show (5308416 * k + 1307906) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 653953) = 7962624 * k + 1961860 := by
    unfold C
    simp [show (2654208 * k + 653953) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1961860) = 3981312 * k + 980930 := by
    unfold C
    simp [show (7962624 * k + 1961860) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 980930) = 1990656 * k + 490465 := by
    unfold C
    simp [show (3981312 * k + 980930) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 490465) = 5971968 * k + 1471396 := by
    unfold C
    simp [show (1990656 * k + 490465) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1471396) = 2985984 * k + 735698 := by
    unfold C
    simp [show (5971968 * k + 1471396) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 735698) = 1492992 * k + 367849 := by
    unfold C
    simp [show (2985984 * k + 735698) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 367849) = 4478976 * k + 1103548 := by
    unfold C
    simp [show (1492992 * k + 367849) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1103548) = 2239488 * k + 551774 := by
    unfold C
    simp [show (4478976 * k + 1103548) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 551774) = 1119744 * k + 275887 := by
    unfold C
    simp [show (2239488 * k + 551774) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 275887) = 3359232 * k + 827662 := by
    unfold C
    simp [show (1119744 * k + 275887) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 827662) = 1679616 * k + 413831 := by
    unfold C
    simp [show (3359232 * k + 827662) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 413831) = 5038848 * k + 1241494 := by
    unfold C
    simp [show (1679616 * k + 413831) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1241494) = 2519424 * k + 620747 := by
    unfold C
    simp [show (5038848 * k + 1241494) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 620747) = 7558272 * k + 1862242 := by
    unfold C
    simp [show (2519424 * k + 620747) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1862242) = 3779136 * k + 931121 := by
    unfold C
    simp [show (7558272 * k + 1862242) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 931121) = 11337408 * k + 2793364 := by
    unfold C
    simp [show (3779136 * k + 931121) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2793364) = 5668704 * k + 1396682 := by
    unfold C
    simp [show (11337408 * k + 2793364) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1396682) = 2834352 * k + 698341 := by
    unfold C
    simp [show (5668704 * k + 1396682) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 698341) = 8503056 * k + 2095024 := by
    unfold C
    simp [show (2834352 * k + 698341) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2095024) = 4251528 * k + 1047512 := by
    unfold C
    simp [show (8503056 * k + 2095024) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1047512) = 2125764 * k + 523756 := by
    unfold C
    simp [show (4251528 * k + 1047512) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 523756) = 1062882 * k + 261878 := by
    unfold C
    simp [show (2125764 * k + 523756) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 261878) = 531441 * k + 130939 := by
    unfold C
    simp [show (1062882 * k + 261878) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 258351) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 258351)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_258671 : ∀ k : Nat,
    iterate (1048576 * k + 258671) 32 = 531441 * k + 131101 ∧
      531441 * k + 131101 < 1048576 * k + 258671 := by
  intro k
  have h1 : C (1048576 * k + 258671) = 3145728 * k + 776014 := by
    unfold C
    simp [show (1048576 * k + 258671) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 776014) = 1572864 * k + 388007 := by
    unfold C
    simp [show (3145728 * k + 776014) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 388007) = 4718592 * k + 1164022 := by
    unfold C
    simp [show (1572864 * k + 388007) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1164022) = 2359296 * k + 582011 := by
    unfold C
    simp [show (4718592 * k + 1164022) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 582011) = 7077888 * k + 1746034 := by
    unfold C
    simp [show (2359296 * k + 582011) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1746034) = 3538944 * k + 873017 := by
    unfold C
    simp [show (7077888 * k + 1746034) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 873017) = 10616832 * k + 2619052 := by
    unfold C
    simp [show (3538944 * k + 873017) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2619052) = 5308416 * k + 1309526 := by
    unfold C
    simp [show (10616832 * k + 2619052) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1309526) = 2654208 * k + 654763 := by
    unfold C
    simp [show (5308416 * k + 1309526) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 654763) = 7962624 * k + 1964290 := by
    unfold C
    simp [show (2654208 * k + 654763) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1964290) = 3981312 * k + 982145 := by
    unfold C
    simp [show (7962624 * k + 1964290) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 982145) = 11943936 * k + 2946436 := by
    unfold C
    simp [show (3981312 * k + 982145) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2946436) = 5971968 * k + 1473218 := by
    unfold C
    simp [show (11943936 * k + 2946436) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1473218) = 2985984 * k + 736609 := by
    unfold C
    simp [show (5971968 * k + 1473218) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 736609) = 8957952 * k + 2209828 := by
    unfold C
    simp [show (2985984 * k + 736609) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2209828) = 4478976 * k + 1104914 := by
    unfold C
    simp [show (8957952 * k + 2209828) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1104914) = 2239488 * k + 552457 := by
    unfold C
    simp [show (4478976 * k + 1104914) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 552457) = 6718464 * k + 1657372 := by
    unfold C
    simp [show (2239488 * k + 552457) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1657372) = 3359232 * k + 828686 := by
    unfold C
    simp [show (6718464 * k + 1657372) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 828686) = 1679616 * k + 414343 := by
    unfold C
    simp [show (3359232 * k + 828686) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 414343) = 5038848 * k + 1243030 := by
    unfold C
    simp [show (1679616 * k + 414343) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1243030) = 2519424 * k + 621515 := by
    unfold C
    simp [show (5038848 * k + 1243030) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 621515) = 7558272 * k + 1864546 := by
    unfold C
    simp [show (2519424 * k + 621515) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1864546) = 3779136 * k + 932273 := by
    unfold C
    simp [show (7558272 * k + 1864546) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 932273) = 11337408 * k + 2796820 := by
    unfold C
    simp [show (3779136 * k + 932273) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2796820) = 5668704 * k + 1398410 := by
    unfold C
    simp [show (11337408 * k + 2796820) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1398410) = 2834352 * k + 699205 := by
    unfold C
    simp [show (5668704 * k + 1398410) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 699205) = 8503056 * k + 2097616 := by
    unfold C
    simp [show (2834352 * k + 699205) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2097616) = 4251528 * k + 1048808 := by
    unfold C
    simp [show (8503056 * k + 2097616) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1048808) = 2125764 * k + 524404 := by
    unfold C
    simp [show (4251528 * k + 1048808) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 524404) = 1062882 * k + 262202 := by
    unfold C
    simp [show (2125764 * k + 524404) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 262202) = 531441 * k + 131101 := by
    unfold C
    simp [show (1062882 * k + 262202) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 258671) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 258671)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_259263 : ∀ k : Nat,
    iterate (1048576 * k + 259263) 32 = 531441 * k + 131401 ∧
      531441 * k + 131401 < 1048576 * k + 259263 := by
  intro k
  have h1 : C (1048576 * k + 259263) = 3145728 * k + 777790 := by
    unfold C
    simp [show (1048576 * k + 259263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 777790) = 1572864 * k + 388895 := by
    unfold C
    simp [show (3145728 * k + 777790) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 388895) = 4718592 * k + 1166686 := by
    unfold C
    simp [show (1572864 * k + 388895) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1166686) = 2359296 * k + 583343 := by
    unfold C
    simp [show (4718592 * k + 1166686) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 583343) = 7077888 * k + 1750030 := by
    unfold C
    simp [show (2359296 * k + 583343) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1750030) = 3538944 * k + 875015 := by
    unfold C
    simp [show (7077888 * k + 1750030) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 875015) = 10616832 * k + 2625046 := by
    unfold C
    simp [show (3538944 * k + 875015) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2625046) = 5308416 * k + 1312523 := by
    unfold C
    simp [show (10616832 * k + 2625046) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1312523) = 15925248 * k + 3937570 := by
    unfold C
    simp [show (5308416 * k + 1312523) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3937570) = 7962624 * k + 1968785 := by
    unfold C
    simp [show (15925248 * k + 3937570) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1968785) = 23887872 * k + 5906356 := by
    unfold C
    simp [show (7962624 * k + 1968785) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 5906356) = 11943936 * k + 2953178 := by
    unfold C
    simp [show (23887872 * k + 5906356) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2953178) = 5971968 * k + 1476589 := by
    unfold C
    simp [show (11943936 * k + 2953178) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1476589) = 17915904 * k + 4429768 := by
    unfold C
    simp [show (5971968 * k + 1476589) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4429768) = 8957952 * k + 2214884 := by
    unfold C
    simp [show (17915904 * k + 4429768) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2214884) = 4478976 * k + 1107442 := by
    unfold C
    simp [show (8957952 * k + 2214884) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1107442) = 2239488 * k + 553721 := by
    unfold C
    simp [show (4478976 * k + 1107442) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 553721) = 6718464 * k + 1661164 := by
    unfold C
    simp [show (2239488 * k + 553721) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1661164) = 3359232 * k + 830582 := by
    unfold C
    simp [show (6718464 * k + 1661164) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 830582) = 1679616 * k + 415291 := by
    unfold C
    simp [show (3359232 * k + 830582) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 415291) = 5038848 * k + 1245874 := by
    unfold C
    simp [show (1679616 * k + 415291) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1245874) = 2519424 * k + 622937 := by
    unfold C
    simp [show (5038848 * k + 1245874) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 622937) = 7558272 * k + 1868812 := by
    unfold C
    simp [show (2519424 * k + 622937) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1868812) = 3779136 * k + 934406 := by
    unfold C
    simp [show (7558272 * k + 1868812) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 934406) = 1889568 * k + 467203 := by
    unfold C
    simp [show (3779136 * k + 934406) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 467203) = 5668704 * k + 1401610 := by
    unfold C
    simp [show (1889568 * k + 467203) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1401610) = 2834352 * k + 700805 := by
    unfold C
    simp [show (5668704 * k + 1401610) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 700805) = 8503056 * k + 2102416 := by
    unfold C
    simp [show (2834352 * k + 700805) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2102416) = 4251528 * k + 1051208 := by
    unfold C
    simp [show (8503056 * k + 2102416) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1051208) = 2125764 * k + 525604 := by
    unfold C
    simp [show (4251528 * k + 1051208) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 525604) = 1062882 * k + 262802 := by
    unfold C
    simp [show (2125764 * k + 525604) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 262802) = 531441 * k + 131401 := by
    unfold C
    simp [show (1062882 * k + 262802) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 259263) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 259263)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_259399 : ∀ k : Nat,
    iterate (1048576 * k + 259399) 32 = 531441 * k + 131470 ∧
      531441 * k + 131470 < 1048576 * k + 259399 := by
  intro k
  have h1 : C (1048576 * k + 259399) = 3145728 * k + 778198 := by
    unfold C
    simp [show (1048576 * k + 259399) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 778198) = 1572864 * k + 389099 := by
    unfold C
    simp [show (3145728 * k + 778198) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 389099) = 4718592 * k + 1167298 := by
    unfold C
    simp [show (1572864 * k + 389099) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1167298) = 2359296 * k + 583649 := by
    unfold C
    simp [show (4718592 * k + 1167298) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 583649) = 7077888 * k + 1750948 := by
    unfold C
    simp [show (2359296 * k + 583649) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1750948) = 3538944 * k + 875474 := by
    unfold C
    simp [show (7077888 * k + 1750948) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 875474) = 1769472 * k + 437737 := by
    unfold C
    simp [show (3538944 * k + 875474) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 437737) = 5308416 * k + 1313212 := by
    unfold C
    simp [show (1769472 * k + 437737) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1313212) = 2654208 * k + 656606 := by
    unfold C
    simp [show (5308416 * k + 1313212) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 656606) = 1327104 * k + 328303 := by
    unfold C
    simp [show (2654208 * k + 656606) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 328303) = 3981312 * k + 984910 := by
    unfold C
    simp [show (1327104 * k + 328303) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 984910) = 1990656 * k + 492455 := by
    unfold C
    simp [show (3981312 * k + 984910) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 492455) = 5971968 * k + 1477366 := by
    unfold C
    simp [show (1990656 * k + 492455) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1477366) = 2985984 * k + 738683 := by
    unfold C
    simp [show (5971968 * k + 1477366) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 738683) = 8957952 * k + 2216050 := by
    unfold C
    simp [show (2985984 * k + 738683) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2216050) = 4478976 * k + 1108025 := by
    unfold C
    simp [show (8957952 * k + 2216050) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1108025) = 13436928 * k + 3324076 := by
    unfold C
    simp [show (4478976 * k + 1108025) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3324076) = 6718464 * k + 1662038 := by
    unfold C
    simp [show (13436928 * k + 3324076) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1662038) = 3359232 * k + 831019 := by
    unfold C
    simp [show (6718464 * k + 1662038) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 831019) = 10077696 * k + 2493058 := by
    unfold C
    simp [show (3359232 * k + 831019) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2493058) = 5038848 * k + 1246529 := by
    unfold C
    simp [show (10077696 * k + 2493058) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1246529) = 15116544 * k + 3739588 := by
    unfold C
    simp [show (5038848 * k + 1246529) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3739588) = 7558272 * k + 1869794 := by
    unfold C
    simp [show (15116544 * k + 3739588) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1869794) = 3779136 * k + 934897 := by
    unfold C
    simp [show (7558272 * k + 1869794) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 934897) = 11337408 * k + 2804692 := by
    unfold C
    simp [show (3779136 * k + 934897) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2804692) = 5668704 * k + 1402346 := by
    unfold C
    simp [show (11337408 * k + 2804692) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1402346) = 2834352 * k + 701173 := by
    unfold C
    simp [show (5668704 * k + 1402346) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 701173) = 8503056 * k + 2103520 := by
    unfold C
    simp [show (2834352 * k + 701173) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2103520) = 4251528 * k + 1051760 := by
    unfold C
    simp [show (8503056 * k + 2103520) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1051760) = 2125764 * k + 525880 := by
    unfold C
    simp [show (4251528 * k + 1051760) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 525880) = 1062882 * k + 262940 := by
    unfold C
    simp [show (2125764 * k + 525880) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 262940) = 531441 * k + 131470 := by
    unfold C
    simp [show (1062882 * k + 262940) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 259399) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 259399)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_259431 : ∀ k : Nat,
    iterate (1048576 * k + 259431) 32 = 531441 * k + 131486 ∧
      531441 * k + 131486 < 1048576 * k + 259431 := by
  intro k
  have h1 : C (1048576 * k + 259431) = 3145728 * k + 778294 := by
    unfold C
    simp [show (1048576 * k + 259431) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 778294) = 1572864 * k + 389147 := by
    unfold C
    simp [show (3145728 * k + 778294) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 389147) = 4718592 * k + 1167442 := by
    unfold C
    simp [show (1572864 * k + 389147) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1167442) = 2359296 * k + 583721 := by
    unfold C
    simp [show (4718592 * k + 1167442) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 583721) = 7077888 * k + 1751164 := by
    unfold C
    simp [show (2359296 * k + 583721) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1751164) = 3538944 * k + 875582 := by
    unfold C
    simp [show (7077888 * k + 1751164) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 875582) = 1769472 * k + 437791 := by
    unfold C
    simp [show (3538944 * k + 875582) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 437791) = 5308416 * k + 1313374 := by
    unfold C
    simp [show (1769472 * k + 437791) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1313374) = 2654208 * k + 656687 := by
    unfold C
    simp [show (5308416 * k + 1313374) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 656687) = 7962624 * k + 1970062 := by
    unfold C
    simp [show (2654208 * k + 656687) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1970062) = 3981312 * k + 985031 := by
    unfold C
    simp [show (7962624 * k + 1970062) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 985031) = 11943936 * k + 2955094 := by
    unfold C
    simp [show (3981312 * k + 985031) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2955094) = 5971968 * k + 1477547 := by
    unfold C
    simp [show (11943936 * k + 2955094) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1477547) = 17915904 * k + 4432642 := by
    unfold C
    simp [show (5971968 * k + 1477547) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4432642) = 8957952 * k + 2216321 := by
    unfold C
    simp [show (17915904 * k + 4432642) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2216321) = 26873856 * k + 6648964 := by
    unfold C
    simp [show (8957952 * k + 2216321) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 6648964) = 13436928 * k + 3324482 := by
    unfold C
    simp [show (26873856 * k + 6648964) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3324482) = 6718464 * k + 1662241 := by
    unfold C
    simp [show (13436928 * k + 3324482) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1662241) = 20155392 * k + 4986724 := by
    unfold C
    simp [show (6718464 * k + 1662241) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4986724) = 10077696 * k + 2493362 := by
    unfold C
    simp [show (20155392 * k + 4986724) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2493362) = 5038848 * k + 1246681 := by
    unfold C
    simp [show (10077696 * k + 2493362) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1246681) = 15116544 * k + 3740044 := by
    unfold C
    simp [show (5038848 * k + 1246681) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3740044) = 7558272 * k + 1870022 := by
    unfold C
    simp [show (15116544 * k + 3740044) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1870022) = 3779136 * k + 935011 := by
    unfold C
    simp [show (7558272 * k + 1870022) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 935011) = 11337408 * k + 2805034 := by
    unfold C
    simp [show (3779136 * k + 935011) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2805034) = 5668704 * k + 1402517 := by
    unfold C
    simp [show (11337408 * k + 2805034) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1402517) = 17006112 * k + 4207552 := by
    unfold C
    simp [show (5668704 * k + 1402517) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 4207552) = 8503056 * k + 2103776 := by
    unfold C
    simp [show (17006112 * k + 4207552) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2103776) = 4251528 * k + 1051888 := by
    unfold C
    simp [show (8503056 * k + 2103776) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1051888) = 2125764 * k + 525944 := by
    unfold C
    simp [show (4251528 * k + 1051888) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 525944) = 1062882 * k + 262972 := by
    unfold C
    simp [show (2125764 * k + 525944) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 262972) = 531441 * k + 131486 := by
    unfold C
    simp [show (1062882 * k + 262972) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 259431) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 259431)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_259583 : ∀ k : Nat,
    iterate (1048576 * k + 259583) 32 = 531441 * k + 131563 ∧
      531441 * k + 131563 < 1048576 * k + 259583 := by
  intro k
  have h1 : C (1048576 * k + 259583) = 3145728 * k + 778750 := by
    unfold C
    simp [show (1048576 * k + 259583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 778750) = 1572864 * k + 389375 := by
    unfold C
    simp [show (3145728 * k + 778750) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 389375) = 4718592 * k + 1168126 := by
    unfold C
    simp [show (1572864 * k + 389375) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1168126) = 2359296 * k + 584063 := by
    unfold C
    simp [show (4718592 * k + 1168126) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 584063) = 7077888 * k + 1752190 := by
    unfold C
    simp [show (2359296 * k + 584063) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1752190) = 3538944 * k + 876095 := by
    unfold C
    simp [show (7077888 * k + 1752190) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 876095) = 10616832 * k + 2628286 := by
    unfold C
    simp [show (3538944 * k + 876095) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2628286) = 5308416 * k + 1314143 := by
    unfold C
    simp [show (10616832 * k + 2628286) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1314143) = 15925248 * k + 3942430 := by
    unfold C
    simp [show (5308416 * k + 1314143) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3942430) = 7962624 * k + 1971215 := by
    unfold C
    simp [show (15925248 * k + 3942430) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1971215) = 23887872 * k + 5913646 := by
    unfold C
    simp [show (7962624 * k + 1971215) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 5913646) = 11943936 * k + 2956823 := by
    unfold C
    simp [show (23887872 * k + 5913646) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2956823) = 35831808 * k + 8870470 := by
    unfold C
    simp [show (11943936 * k + 2956823) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 8870470) = 17915904 * k + 4435235 := by
    unfold C
    simp [show (35831808 * k + 8870470) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 4435235) = 53747712 * k + 13305706 := by
    unfold C
    simp [show (17915904 * k + 4435235) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 13305706) = 26873856 * k + 6652853 := by
    unfold C
    simp [show (53747712 * k + 13305706) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 6652853) = 80621568 * k + 19958560 := by
    unfold C
    simp [show (26873856 * k + 6652853) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 19958560) = 40310784 * k + 9979280 := by
    unfold C
    simp [show (80621568 * k + 19958560) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 9979280) = 20155392 * k + 4989640 := by
    unfold C
    simp [show (40310784 * k + 9979280) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 4989640) = 10077696 * k + 2494820 := by
    unfold C
    simp [show (20155392 * k + 4989640) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2494820) = 5038848 * k + 1247410 := by
    unfold C
    simp [show (10077696 * k + 2494820) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1247410) = 2519424 * k + 623705 := by
    unfold C
    simp [show (5038848 * k + 1247410) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 623705) = 7558272 * k + 1871116 := by
    unfold C
    simp [show (2519424 * k + 623705) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1871116) = 3779136 * k + 935558 := by
    unfold C
    simp [show (7558272 * k + 1871116) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 935558) = 1889568 * k + 467779 := by
    unfold C
    simp [show (3779136 * k + 935558) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 467779) = 5668704 * k + 1403338 := by
    unfold C
    simp [show (1889568 * k + 467779) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1403338) = 2834352 * k + 701669 := by
    unfold C
    simp [show (5668704 * k + 1403338) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 701669) = 8503056 * k + 2105008 := by
    unfold C
    simp [show (2834352 * k + 701669) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2105008) = 4251528 * k + 1052504 := by
    unfold C
    simp [show (8503056 * k + 2105008) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1052504) = 2125764 * k + 526252 := by
    unfold C
    simp [show (4251528 * k + 1052504) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 526252) = 1062882 * k + 263126 := by
    unfold C
    simp [show (2125764 * k + 526252) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 263126) = 531441 * k + 131563 := by
    unfold C
    simp [show (1062882 * k + 263126) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 259583) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 259583)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_259867 : ∀ k : Nat,
    iterate (1048576 * k + 259867) 32 = 531441 * k + 131707 ∧
      531441 * k + 131707 < 1048576 * k + 259867 := by
  intro k
  have h1 : C (1048576 * k + 259867) = 3145728 * k + 779602 := by
    unfold C
    simp [show (1048576 * k + 259867) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 779602) = 1572864 * k + 389801 := by
    unfold C
    simp [show (3145728 * k + 779602) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 389801) = 4718592 * k + 1169404 := by
    unfold C
    simp [show (1572864 * k + 389801) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1169404) = 2359296 * k + 584702 := by
    unfold C
    simp [show (4718592 * k + 1169404) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 584702) = 1179648 * k + 292351 := by
    unfold C
    simp [show (2359296 * k + 584702) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 292351) = 3538944 * k + 877054 := by
    unfold C
    simp [show (1179648 * k + 292351) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 877054) = 1769472 * k + 438527 := by
    unfold C
    simp [show (3538944 * k + 877054) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 438527) = 5308416 * k + 1315582 := by
    unfold C
    simp [show (1769472 * k + 438527) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1315582) = 2654208 * k + 657791 := by
    unfold C
    simp [show (5308416 * k + 1315582) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 657791) = 7962624 * k + 1973374 := by
    unfold C
    simp [show (2654208 * k + 657791) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1973374) = 3981312 * k + 986687 := by
    unfold C
    simp [show (7962624 * k + 1973374) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 986687) = 11943936 * k + 2960062 := by
    unfold C
    simp [show (3981312 * k + 986687) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2960062) = 5971968 * k + 1480031 := by
    unfold C
    simp [show (11943936 * k + 2960062) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1480031) = 17915904 * k + 4440094 := by
    unfold C
    simp [show (5971968 * k + 1480031) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4440094) = 8957952 * k + 2220047 := by
    unfold C
    simp [show (17915904 * k + 4440094) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2220047) = 26873856 * k + 6660142 := by
    unfold C
    simp [show (8957952 * k + 2220047) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 6660142) = 13436928 * k + 3330071 := by
    unfold C
    simp [show (26873856 * k + 6660142) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3330071) = 40310784 * k + 9990214 := by
    unfold C
    simp [show (13436928 * k + 3330071) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 9990214) = 20155392 * k + 4995107 := by
    unfold C
    simp [show (40310784 * k + 9990214) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 4995107) = 60466176 * k + 14985322 := by
    unfold C
    simp [show (20155392 * k + 4995107) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 14985322) = 30233088 * k + 7492661 := by
    unfold C
    simp [show (60466176 * k + 14985322) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 7492661) = 90699264 * k + 22477984 := by
    unfold C
    simp [show (30233088 * k + 7492661) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 22477984) = 45349632 * k + 11238992 := by
    unfold C
    simp [show (90699264 * k + 22477984) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 11238992) = 22674816 * k + 5619496 := by
    unfold C
    simp [show (45349632 * k + 11238992) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 5619496) = 11337408 * k + 2809748 := by
    unfold C
    simp [show (22674816 * k + 5619496) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2809748) = 5668704 * k + 1404874 := by
    unfold C
    simp [show (11337408 * k + 2809748) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1404874) = 2834352 * k + 702437 := by
    unfold C
    simp [show (5668704 * k + 1404874) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 702437) = 8503056 * k + 2107312 := by
    unfold C
    simp [show (2834352 * k + 702437) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2107312) = 4251528 * k + 1053656 := by
    unfold C
    simp [show (8503056 * k + 2107312) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1053656) = 2125764 * k + 526828 := by
    unfold C
    simp [show (4251528 * k + 1053656) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 526828) = 1062882 * k + 263414 := by
    unfold C
    simp [show (2125764 * k + 526828) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 263414) = 531441 * k + 131707 := by
    unfold C
    simp [show (1062882 * k + 263414) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 259867) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 259867)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_260891 : ∀ k : Nat,
    iterate (1048576 * k + 260891) 32 = 531441 * k + 132226 ∧
      531441 * k + 132226 < 1048576 * k + 260891 := by
  intro k
  have h1 : C (1048576 * k + 260891) = 3145728 * k + 782674 := by
    unfold C
    simp [show (1048576 * k + 260891) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 782674) = 1572864 * k + 391337 := by
    unfold C
    simp [show (3145728 * k + 782674) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 391337) = 4718592 * k + 1174012 := by
    unfold C
    simp [show (1572864 * k + 391337) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1174012) = 2359296 * k + 587006 := by
    unfold C
    simp [show (4718592 * k + 1174012) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 587006) = 1179648 * k + 293503 := by
    unfold C
    simp [show (2359296 * k + 587006) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 293503) = 3538944 * k + 880510 := by
    unfold C
    simp [show (1179648 * k + 293503) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 880510) = 1769472 * k + 440255 := by
    unfold C
    simp [show (3538944 * k + 880510) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 440255) = 5308416 * k + 1320766 := by
    unfold C
    simp [show (1769472 * k + 440255) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1320766) = 2654208 * k + 660383 := by
    unfold C
    simp [show (5308416 * k + 1320766) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 660383) = 7962624 * k + 1981150 := by
    unfold C
    simp [show (2654208 * k + 660383) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1981150) = 3981312 * k + 990575 := by
    unfold C
    simp [show (7962624 * k + 1981150) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 990575) = 11943936 * k + 2971726 := by
    unfold C
    simp [show (3981312 * k + 990575) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2971726) = 5971968 * k + 1485863 := by
    unfold C
    simp [show (11943936 * k + 2971726) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1485863) = 17915904 * k + 4457590 := by
    unfold C
    simp [show (5971968 * k + 1485863) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4457590) = 8957952 * k + 2228795 := by
    unfold C
    simp [show (17915904 * k + 4457590) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2228795) = 26873856 * k + 6686386 := by
    unfold C
    simp [show (8957952 * k + 2228795) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 6686386) = 13436928 * k + 3343193 := by
    unfold C
    simp [show (26873856 * k + 6686386) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3343193) = 40310784 * k + 10029580 := by
    unfold C
    simp [show (13436928 * k + 3343193) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 10029580) = 20155392 * k + 5014790 := by
    unfold C
    simp [show (40310784 * k + 10029580) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 5014790) = 10077696 * k + 2507395 := by
    unfold C
    simp [show (20155392 * k + 5014790) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2507395) = 30233088 * k + 7522186 := by
    unfold C
    simp [show (10077696 * k + 2507395) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 7522186) = 15116544 * k + 3761093 := by
    unfold C
    simp [show (30233088 * k + 7522186) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3761093) = 45349632 * k + 11283280 := by
    unfold C
    simp [show (15116544 * k + 3761093) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 11283280) = 22674816 * k + 5641640 := by
    unfold C
    simp [show (45349632 * k + 11283280) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 5641640) = 11337408 * k + 2820820 := by
    unfold C
    simp [show (22674816 * k + 5641640) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2820820) = 5668704 * k + 1410410 := by
    unfold C
    simp [show (11337408 * k + 2820820) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1410410) = 2834352 * k + 705205 := by
    unfold C
    simp [show (5668704 * k + 1410410) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 705205) = 8503056 * k + 2115616 := by
    unfold C
    simp [show (2834352 * k + 705205) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2115616) = 4251528 * k + 1057808 := by
    unfold C
    simp [show (8503056 * k + 2115616) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1057808) = 2125764 * k + 528904 := by
    unfold C
    simp [show (4251528 * k + 1057808) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 528904) = 1062882 * k + 264452 := by
    unfold C
    simp [show (2125764 * k + 528904) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 264452) = 531441 * k + 132226 := by
    unfold C
    simp [show (1062882 * k + 264452) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 260891) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 260891)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_262139 : ∀ k : Nat,
    iterate (1048576 * k + 262139) 32 = 531441 * k + 132859 ∧
      531441 * k + 132859 < 1048576 * k + 262139 := by
  intro k
  have h1 : C (1048576 * k + 262139) = 3145728 * k + 786418 := by
    unfold C
    simp [show (1048576 * k + 262139) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 786418) = 1572864 * k + 393209 := by
    unfold C
    simp [show (3145728 * k + 786418) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 393209) = 4718592 * k + 1179628 := by
    unfold C
    simp [show (1572864 * k + 393209) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1179628) = 2359296 * k + 589814 := by
    unfold C
    simp [show (4718592 * k + 1179628) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 589814) = 1179648 * k + 294907 := by
    unfold C
    simp [show (2359296 * k + 589814) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 294907) = 3538944 * k + 884722 := by
    unfold C
    simp [show (1179648 * k + 294907) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 884722) = 1769472 * k + 442361 := by
    unfold C
    simp [show (3538944 * k + 884722) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 442361) = 5308416 * k + 1327084 := by
    unfold C
    simp [show (1769472 * k + 442361) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1327084) = 2654208 * k + 663542 := by
    unfold C
    simp [show (5308416 * k + 1327084) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 663542) = 1327104 * k + 331771 := by
    unfold C
    simp [show (2654208 * k + 663542) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 331771) = 3981312 * k + 995314 := by
    unfold C
    simp [show (1327104 * k + 331771) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 995314) = 1990656 * k + 497657 := by
    unfold C
    simp [show (3981312 * k + 995314) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 497657) = 5971968 * k + 1492972 := by
    unfold C
    simp [show (1990656 * k + 497657) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1492972) = 2985984 * k + 746486 := by
    unfold C
    simp [show (5971968 * k + 1492972) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 746486) = 1492992 * k + 373243 := by
    unfold C
    simp [show (2985984 * k + 746486) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 373243) = 4478976 * k + 1119730 := by
    unfold C
    simp [show (1492992 * k + 373243) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1119730) = 2239488 * k + 559865 := by
    unfold C
    simp [show (4478976 * k + 1119730) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 559865) = 6718464 * k + 1679596 := by
    unfold C
    simp [show (2239488 * k + 559865) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1679596) = 3359232 * k + 839798 := by
    unfold C
    simp [show (6718464 * k + 1679596) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 839798) = 1679616 * k + 419899 := by
    unfold C
    simp [show (3359232 * k + 839798) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 419899) = 5038848 * k + 1259698 := by
    unfold C
    simp [show (1679616 * k + 419899) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1259698) = 2519424 * k + 629849 := by
    unfold C
    simp [show (5038848 * k + 1259698) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 629849) = 7558272 * k + 1889548 := by
    unfold C
    simp [show (2519424 * k + 629849) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1889548) = 3779136 * k + 944774 := by
    unfold C
    simp [show (7558272 * k + 1889548) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 944774) = 1889568 * k + 472387 := by
    unfold C
    simp [show (3779136 * k + 944774) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 472387) = 5668704 * k + 1417162 := by
    unfold C
    simp [show (1889568 * k + 472387) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1417162) = 2834352 * k + 708581 := by
    unfold C
    simp [show (5668704 * k + 1417162) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 708581) = 8503056 * k + 2125744 := by
    unfold C
    simp [show (2834352 * k + 708581) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2125744) = 4251528 * k + 1062872 := by
    unfold C
    simp [show (8503056 * k + 2125744) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1062872) = 2125764 * k + 531436 := by
    unfold C
    simp [show (4251528 * k + 1062872) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 531436) = 1062882 * k + 265718 := by
    unfold C
    simp [show (2125764 * k + 531436) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 265718) = 531441 * k + 132859 := by
    unfold C
    simp [show (1062882 * k + 265718) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 262139) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 262139)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_262299 : ∀ k : Nat,
    iterate (1048576 * k + 262299) 32 = 531441 * k + 132940 ∧
      531441 * k + 132940 < 1048576 * k + 262299 := by
  intro k
  have h1 : C (1048576 * k + 262299) = 3145728 * k + 786898 := by
    unfold C
    simp [show (1048576 * k + 262299) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 786898) = 1572864 * k + 393449 := by
    unfold C
    simp [show (3145728 * k + 786898) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 393449) = 4718592 * k + 1180348 := by
    unfold C
    simp [show (1572864 * k + 393449) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1180348) = 2359296 * k + 590174 := by
    unfold C
    simp [show (4718592 * k + 1180348) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 590174) = 1179648 * k + 295087 := by
    unfold C
    simp [show (2359296 * k + 590174) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 295087) = 3538944 * k + 885262 := by
    unfold C
    simp [show (1179648 * k + 295087) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 885262) = 1769472 * k + 442631 := by
    unfold C
    simp [show (3538944 * k + 885262) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 442631) = 5308416 * k + 1327894 := by
    unfold C
    simp [show (1769472 * k + 442631) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1327894) = 2654208 * k + 663947 := by
    unfold C
    simp [show (5308416 * k + 1327894) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 663947) = 7962624 * k + 1991842 := by
    unfold C
    simp [show (2654208 * k + 663947) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1991842) = 3981312 * k + 995921 := by
    unfold C
    simp [show (7962624 * k + 1991842) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 995921) = 11943936 * k + 2987764 := by
    unfold C
    simp [show (3981312 * k + 995921) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2987764) = 5971968 * k + 1493882 := by
    unfold C
    simp [show (11943936 * k + 2987764) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1493882) = 2985984 * k + 746941 := by
    unfold C
    simp [show (5971968 * k + 1493882) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 746941) = 8957952 * k + 2240824 := by
    unfold C
    simp [show (2985984 * k + 746941) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2240824) = 4478976 * k + 1120412 := by
    unfold C
    simp [show (8957952 * k + 2240824) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1120412) = 2239488 * k + 560206 := by
    unfold C
    simp [show (4478976 * k + 1120412) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 560206) = 1119744 * k + 280103 := by
    unfold C
    simp [show (2239488 * k + 560206) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 280103) = 3359232 * k + 840310 := by
    unfold C
    simp [show (1119744 * k + 280103) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 840310) = 1679616 * k + 420155 := by
    unfold C
    simp [show (3359232 * k + 840310) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 420155) = 5038848 * k + 1260466 := by
    unfold C
    simp [show (1679616 * k + 420155) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1260466) = 2519424 * k + 630233 := by
    unfold C
    simp [show (5038848 * k + 1260466) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 630233) = 7558272 * k + 1890700 := by
    unfold C
    simp [show (2519424 * k + 630233) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1890700) = 3779136 * k + 945350 := by
    unfold C
    simp [show (7558272 * k + 1890700) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 945350) = 1889568 * k + 472675 := by
    unfold C
    simp [show (3779136 * k + 945350) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 472675) = 5668704 * k + 1418026 := by
    unfold C
    simp [show (1889568 * k + 472675) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1418026) = 2834352 * k + 709013 := by
    unfold C
    simp [show (5668704 * k + 1418026) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 709013) = 8503056 * k + 2127040 := by
    unfold C
    simp [show (2834352 * k + 709013) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2127040) = 4251528 * k + 1063520 := by
    unfold C
    simp [show (8503056 * k + 2127040) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1063520) = 2125764 * k + 531760 := by
    unfold C
    simp [show (4251528 * k + 1063520) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 531760) = 1062882 * k + 265880 := by
    unfold C
    simp [show (2125764 * k + 531760) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 265880) = 531441 * k + 132940 := by
    unfold C
    simp [show (1062882 * k + 265880) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 262299) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 262299)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard035
