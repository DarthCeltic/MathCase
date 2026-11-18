import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard031

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_224127 : ∀ k : Nat,
    iterate (1048576 * k + 224127) 32 = 531441 * k + 113593 ∧
      531441 * k + 113593 < 1048576 * k + 224127 := by
  intro k
  have h1 : C (1048576 * k + 224127) = 3145728 * k + 672382 := by
    unfold C
    simp [show (1048576 * k + 224127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 672382) = 1572864 * k + 336191 := by
    unfold C
    simp [show (3145728 * k + 672382) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 336191) = 4718592 * k + 1008574 := by
    unfold C
    simp [show (1572864 * k + 336191) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1008574) = 2359296 * k + 504287 := by
    unfold C
    simp [show (4718592 * k + 1008574) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 504287) = 7077888 * k + 1512862 := by
    unfold C
    simp [show (2359296 * k + 504287) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1512862) = 3538944 * k + 756431 := by
    unfold C
    simp [show (7077888 * k + 1512862) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 756431) = 10616832 * k + 2269294 := by
    unfold C
    simp [show (3538944 * k + 756431) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2269294) = 5308416 * k + 1134647 := by
    unfold C
    simp [show (10616832 * k + 2269294) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1134647) = 15925248 * k + 3403942 := by
    unfold C
    simp [show (5308416 * k + 1134647) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3403942) = 7962624 * k + 1701971 := by
    unfold C
    simp [show (15925248 * k + 3403942) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1701971) = 23887872 * k + 5105914 := by
    unfold C
    simp [show (7962624 * k + 1701971) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 5105914) = 11943936 * k + 2552957 := by
    unfold C
    simp [show (23887872 * k + 5105914) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2552957) = 35831808 * k + 7658872 := by
    unfold C
    simp [show (11943936 * k + 2552957) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 7658872) = 17915904 * k + 3829436 := by
    unfold C
    simp [show (35831808 * k + 7658872) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 3829436) = 8957952 * k + 1914718 := by
    unfold C
    simp [show (17915904 * k + 3829436) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1914718) = 4478976 * k + 957359 := by
    unfold C
    simp [show (8957952 * k + 1914718) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 957359) = 13436928 * k + 2872078 := by
    unfold C
    simp [show (4478976 * k + 957359) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2872078) = 6718464 * k + 1436039 := by
    unfold C
    simp [show (13436928 * k + 2872078) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1436039) = 20155392 * k + 4308118 := by
    unfold C
    simp [show (6718464 * k + 1436039) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4308118) = 10077696 * k + 2154059 := by
    unfold C
    simp [show (20155392 * k + 4308118) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2154059) = 30233088 * k + 6462178 := by
    unfold C
    simp [show (10077696 * k + 2154059) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 6462178) = 15116544 * k + 3231089 := by
    unfold C
    simp [show (30233088 * k + 6462178) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3231089) = 45349632 * k + 9693268 := by
    unfold C
    simp [show (15116544 * k + 3231089) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 9693268) = 22674816 * k + 4846634 := by
    unfold C
    simp [show (45349632 * k + 9693268) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 4846634) = 11337408 * k + 2423317 := by
    unfold C
    simp [show (22674816 * k + 4846634) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2423317) = 34012224 * k + 7269952 := by
    unfold C
    simp [show (11337408 * k + 2423317) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 7269952) = 17006112 * k + 3634976 := by
    unfold C
    simp [show (34012224 * k + 7269952) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 3634976) = 8503056 * k + 1817488 := by
    unfold C
    simp [show (17006112 * k + 3634976) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1817488) = 4251528 * k + 908744 := by
    unfold C
    simp [show (8503056 * k + 1817488) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 908744) = 2125764 * k + 454372 := by
    unfold C
    simp [show (4251528 * k + 908744) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 454372) = 1062882 * k + 227186 := by
    unfold C
    simp [show (2125764 * k + 454372) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 227186) = 531441 * k + 113593 := by
    unfold C
    simp [show (1062882 * k + 227186) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 224127) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 224127)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_224239 : ∀ k : Nat,
    iterate (1048576 * k + 224239) 32 = 531441 * k + 113650 ∧
      531441 * k + 113650 < 1048576 * k + 224239 := by
  intro k
  have h1 : C (1048576 * k + 224239) = 3145728 * k + 672718 := by
    unfold C
    simp [show (1048576 * k + 224239) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 672718) = 1572864 * k + 336359 := by
    unfold C
    simp [show (3145728 * k + 672718) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 336359) = 4718592 * k + 1009078 := by
    unfold C
    simp [show (1572864 * k + 336359) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1009078) = 2359296 * k + 504539 := by
    unfold C
    simp [show (4718592 * k + 1009078) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 504539) = 7077888 * k + 1513618 := by
    unfold C
    simp [show (2359296 * k + 504539) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1513618) = 3538944 * k + 756809 := by
    unfold C
    simp [show (7077888 * k + 1513618) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 756809) = 10616832 * k + 2270428 := by
    unfold C
    simp [show (3538944 * k + 756809) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2270428) = 5308416 * k + 1135214 := by
    unfold C
    simp [show (10616832 * k + 2270428) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1135214) = 2654208 * k + 567607 := by
    unfold C
    simp [show (5308416 * k + 1135214) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 567607) = 7962624 * k + 1702822 := by
    unfold C
    simp [show (2654208 * k + 567607) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1702822) = 3981312 * k + 851411 := by
    unfold C
    simp [show (7962624 * k + 1702822) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 851411) = 11943936 * k + 2554234 := by
    unfold C
    simp [show (3981312 * k + 851411) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2554234) = 5971968 * k + 1277117 := by
    unfold C
    simp [show (11943936 * k + 2554234) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1277117) = 17915904 * k + 3831352 := by
    unfold C
    simp [show (5971968 * k + 1277117) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3831352) = 8957952 * k + 1915676 := by
    unfold C
    simp [show (17915904 * k + 3831352) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1915676) = 4478976 * k + 957838 := by
    unfold C
    simp [show (8957952 * k + 1915676) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 957838) = 2239488 * k + 478919 := by
    unfold C
    simp [show (4478976 * k + 957838) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 478919) = 6718464 * k + 1436758 := by
    unfold C
    simp [show (2239488 * k + 478919) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1436758) = 3359232 * k + 718379 := by
    unfold C
    simp [show (6718464 * k + 1436758) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 718379) = 10077696 * k + 2155138 := by
    unfold C
    simp [show (3359232 * k + 718379) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2155138) = 5038848 * k + 1077569 := by
    unfold C
    simp [show (10077696 * k + 2155138) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1077569) = 15116544 * k + 3232708 := by
    unfold C
    simp [show (5038848 * k + 1077569) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3232708) = 7558272 * k + 1616354 := by
    unfold C
    simp [show (15116544 * k + 3232708) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1616354) = 3779136 * k + 808177 := by
    unfold C
    simp [show (7558272 * k + 1616354) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 808177) = 11337408 * k + 2424532 := by
    unfold C
    simp [show (3779136 * k + 808177) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2424532) = 5668704 * k + 1212266 := by
    unfold C
    simp [show (11337408 * k + 2424532) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1212266) = 2834352 * k + 606133 := by
    unfold C
    simp [show (5668704 * k + 1212266) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 606133) = 8503056 * k + 1818400 := by
    unfold C
    simp [show (2834352 * k + 606133) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1818400) = 4251528 * k + 909200 := by
    unfold C
    simp [show (8503056 * k + 1818400) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 909200) = 2125764 * k + 454600 := by
    unfold C
    simp [show (4251528 * k + 909200) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 454600) = 1062882 * k + 227300 := by
    unfold C
    simp [show (2125764 * k + 454600) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 227300) = 531441 * k + 113650 := by
    unfold C
    simp [show (1062882 * k + 227300) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 224239) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 224239)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_224507 : ∀ k : Nat,
    iterate (1048576 * k + 224507) 32 = 531441 * k + 113786 ∧
      531441 * k + 113786 < 1048576 * k + 224507 := by
  intro k
  have h1 : C (1048576 * k + 224507) = 3145728 * k + 673522 := by
    unfold C
    simp [show (1048576 * k + 224507) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 673522) = 1572864 * k + 336761 := by
    unfold C
    simp [show (3145728 * k + 673522) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 336761) = 4718592 * k + 1010284 := by
    unfold C
    simp [show (1572864 * k + 336761) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1010284) = 2359296 * k + 505142 := by
    unfold C
    simp [show (4718592 * k + 1010284) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 505142) = 1179648 * k + 252571 := by
    unfold C
    simp [show (2359296 * k + 505142) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 252571) = 3538944 * k + 757714 := by
    unfold C
    simp [show (1179648 * k + 252571) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 757714) = 1769472 * k + 378857 := by
    unfold C
    simp [show (3538944 * k + 757714) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 378857) = 5308416 * k + 1136572 := by
    unfold C
    simp [show (1769472 * k + 378857) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1136572) = 2654208 * k + 568286 := by
    unfold C
    simp [show (5308416 * k + 1136572) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 568286) = 1327104 * k + 284143 := by
    unfold C
    simp [show (2654208 * k + 568286) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 284143) = 3981312 * k + 852430 := by
    unfold C
    simp [show (1327104 * k + 284143) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 852430) = 1990656 * k + 426215 := by
    unfold C
    simp [show (3981312 * k + 852430) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 426215) = 5971968 * k + 1278646 := by
    unfold C
    simp [show (1990656 * k + 426215) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1278646) = 2985984 * k + 639323 := by
    unfold C
    simp [show (5971968 * k + 1278646) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 639323) = 8957952 * k + 1917970 := by
    unfold C
    simp [show (2985984 * k + 639323) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1917970) = 4478976 * k + 958985 := by
    unfold C
    simp [show (8957952 * k + 1917970) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 958985) = 13436928 * k + 2876956 := by
    unfold C
    simp [show (4478976 * k + 958985) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2876956) = 6718464 * k + 1438478 := by
    unfold C
    simp [show (13436928 * k + 2876956) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1438478) = 3359232 * k + 719239 := by
    unfold C
    simp [show (6718464 * k + 1438478) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 719239) = 10077696 * k + 2157718 := by
    unfold C
    simp [show (3359232 * k + 719239) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2157718) = 5038848 * k + 1078859 := by
    unfold C
    simp [show (10077696 * k + 2157718) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1078859) = 15116544 * k + 3236578 := by
    unfold C
    simp [show (5038848 * k + 1078859) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3236578) = 7558272 * k + 1618289 := by
    unfold C
    simp [show (15116544 * k + 3236578) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1618289) = 22674816 * k + 4854868 := by
    unfold C
    simp [show (7558272 * k + 1618289) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 4854868) = 11337408 * k + 2427434 := by
    unfold C
    simp [show (22674816 * k + 4854868) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2427434) = 5668704 * k + 1213717 := by
    unfold C
    simp [show (11337408 * k + 2427434) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1213717) = 17006112 * k + 3641152 := by
    unfold C
    simp [show (5668704 * k + 1213717) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3641152) = 8503056 * k + 1820576 := by
    unfold C
    simp [show (17006112 * k + 3641152) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1820576) = 4251528 * k + 910288 := by
    unfold C
    simp [show (8503056 * k + 1820576) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 910288) = 2125764 * k + 455144 := by
    unfold C
    simp [show (4251528 * k + 910288) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 455144) = 1062882 * k + 227572 := by
    unfold C
    simp [show (2125764 * k + 455144) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 227572) = 531441 * k + 113786 := by
    unfold C
    simp [show (1062882 * k + 227572) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 224507) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 224507)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_224671 : ∀ k : Nat,
    iterate (1048576 * k + 224671) 32 = 531441 * k + 113869 ∧
      531441 * k + 113869 < 1048576 * k + 224671 := by
  intro k
  have h1 : C (1048576 * k + 224671) = 3145728 * k + 674014 := by
    unfold C
    simp [show (1048576 * k + 224671) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 674014) = 1572864 * k + 337007 := by
    unfold C
    simp [show (3145728 * k + 674014) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 337007) = 4718592 * k + 1011022 := by
    unfold C
    simp [show (1572864 * k + 337007) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1011022) = 2359296 * k + 505511 := by
    unfold C
    simp [show (4718592 * k + 1011022) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 505511) = 7077888 * k + 1516534 := by
    unfold C
    simp [show (2359296 * k + 505511) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1516534) = 3538944 * k + 758267 := by
    unfold C
    simp [show (7077888 * k + 1516534) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 758267) = 10616832 * k + 2274802 := by
    unfold C
    simp [show (3538944 * k + 758267) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2274802) = 5308416 * k + 1137401 := by
    unfold C
    simp [show (10616832 * k + 2274802) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1137401) = 15925248 * k + 3412204 := by
    unfold C
    simp [show (5308416 * k + 1137401) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3412204) = 7962624 * k + 1706102 := by
    unfold C
    simp [show (15925248 * k + 3412204) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1706102) = 3981312 * k + 853051 := by
    unfold C
    simp [show (7962624 * k + 1706102) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 853051) = 11943936 * k + 2559154 := by
    unfold C
    simp [show (3981312 * k + 853051) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2559154) = 5971968 * k + 1279577 := by
    unfold C
    simp [show (11943936 * k + 2559154) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1279577) = 17915904 * k + 3838732 := by
    unfold C
    simp [show (5971968 * k + 1279577) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3838732) = 8957952 * k + 1919366 := by
    unfold C
    simp [show (17915904 * k + 3838732) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1919366) = 4478976 * k + 959683 := by
    unfold C
    simp [show (8957952 * k + 1919366) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 959683) = 13436928 * k + 2879050 := by
    unfold C
    simp [show (4478976 * k + 959683) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2879050) = 6718464 * k + 1439525 := by
    unfold C
    simp [show (13436928 * k + 2879050) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1439525) = 20155392 * k + 4318576 := by
    unfold C
    simp [show (6718464 * k + 1439525) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4318576) = 10077696 * k + 2159288 := by
    unfold C
    simp [show (20155392 * k + 4318576) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2159288) = 5038848 * k + 1079644 := by
    unfold C
    simp [show (10077696 * k + 2159288) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1079644) = 2519424 * k + 539822 := by
    unfold C
    simp [show (5038848 * k + 1079644) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 539822) = 1259712 * k + 269911 := by
    unfold C
    simp [show (2519424 * k + 539822) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 269911) = 3779136 * k + 809734 := by
    unfold C
    simp [show (1259712 * k + 269911) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 809734) = 1889568 * k + 404867 := by
    unfold C
    simp [show (3779136 * k + 809734) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 404867) = 5668704 * k + 1214602 := by
    unfold C
    simp [show (1889568 * k + 404867) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1214602) = 2834352 * k + 607301 := by
    unfold C
    simp [show (5668704 * k + 1214602) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 607301) = 8503056 * k + 1821904 := by
    unfold C
    simp [show (2834352 * k + 607301) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1821904) = 4251528 * k + 910952 := by
    unfold C
    simp [show (8503056 * k + 1821904) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 910952) = 2125764 * k + 455476 := by
    unfold C
    simp [show (4251528 * k + 910952) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 455476) = 1062882 * k + 227738 := by
    unfold C
    simp [show (2125764 * k + 455476) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 227738) = 531441 * k + 113869 := by
    unfold C
    simp [show (1062882 * k + 227738) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 224671) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 224671)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_224795 : ∀ k : Nat,
    iterate (1048576 * k + 224795) 32 = 531441 * k + 113932 ∧
      531441 * k + 113932 < 1048576 * k + 224795 := by
  intro k
  have h1 : C (1048576 * k + 224795) = 3145728 * k + 674386 := by
    unfold C
    simp [show (1048576 * k + 224795) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 674386) = 1572864 * k + 337193 := by
    unfold C
    simp [show (3145728 * k + 674386) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 337193) = 4718592 * k + 1011580 := by
    unfold C
    simp [show (1572864 * k + 337193) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1011580) = 2359296 * k + 505790 := by
    unfold C
    simp [show (4718592 * k + 1011580) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 505790) = 1179648 * k + 252895 := by
    unfold C
    simp [show (2359296 * k + 505790) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 252895) = 3538944 * k + 758686 := by
    unfold C
    simp [show (1179648 * k + 252895) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 758686) = 1769472 * k + 379343 := by
    unfold C
    simp [show (3538944 * k + 758686) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 379343) = 5308416 * k + 1138030 := by
    unfold C
    simp [show (1769472 * k + 379343) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1138030) = 2654208 * k + 569015 := by
    unfold C
    simp [show (5308416 * k + 1138030) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 569015) = 7962624 * k + 1707046 := by
    unfold C
    simp [show (2654208 * k + 569015) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1707046) = 3981312 * k + 853523 := by
    unfold C
    simp [show (7962624 * k + 1707046) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 853523) = 11943936 * k + 2560570 := by
    unfold C
    simp [show (3981312 * k + 853523) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2560570) = 5971968 * k + 1280285 := by
    unfold C
    simp [show (11943936 * k + 2560570) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1280285) = 17915904 * k + 3840856 := by
    unfold C
    simp [show (5971968 * k + 1280285) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3840856) = 8957952 * k + 1920428 := by
    unfold C
    simp [show (17915904 * k + 3840856) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1920428) = 4478976 * k + 960214 := by
    unfold C
    simp [show (8957952 * k + 1920428) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 960214) = 2239488 * k + 480107 := by
    unfold C
    simp [show (4478976 * k + 960214) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 480107) = 6718464 * k + 1440322 := by
    unfold C
    simp [show (2239488 * k + 480107) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1440322) = 3359232 * k + 720161 := by
    unfold C
    simp [show (6718464 * k + 1440322) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 720161) = 10077696 * k + 2160484 := by
    unfold C
    simp [show (3359232 * k + 720161) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2160484) = 5038848 * k + 1080242 := by
    unfold C
    simp [show (10077696 * k + 2160484) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1080242) = 2519424 * k + 540121 := by
    unfold C
    simp [show (5038848 * k + 1080242) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 540121) = 7558272 * k + 1620364 := by
    unfold C
    simp [show (2519424 * k + 540121) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1620364) = 3779136 * k + 810182 := by
    unfold C
    simp [show (7558272 * k + 1620364) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 810182) = 1889568 * k + 405091 := by
    unfold C
    simp [show (3779136 * k + 810182) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 405091) = 5668704 * k + 1215274 := by
    unfold C
    simp [show (1889568 * k + 405091) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1215274) = 2834352 * k + 607637 := by
    unfold C
    simp [show (5668704 * k + 1215274) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 607637) = 8503056 * k + 1822912 := by
    unfold C
    simp [show (2834352 * k + 607637) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1822912) = 4251528 * k + 911456 := by
    unfold C
    simp [show (8503056 * k + 1822912) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 911456) = 2125764 * k + 455728 := by
    unfold C
    simp [show (4251528 * k + 911456) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 455728) = 1062882 * k + 227864 := by
    unfold C
    simp [show (2125764 * k + 455728) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 227864) = 531441 * k + 113932 := by
    unfold C
    simp [show (1062882 * k + 227864) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 224795) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 224795)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_224815 : ∀ k : Nat,
    iterate (1048576 * k + 224815) 32 = 531441 * k + 113942 ∧
      531441 * k + 113942 < 1048576 * k + 224815 := by
  intro k
  have h1 : C (1048576 * k + 224815) = 3145728 * k + 674446 := by
    unfold C
    simp [show (1048576 * k + 224815) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 674446) = 1572864 * k + 337223 := by
    unfold C
    simp [show (3145728 * k + 674446) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 337223) = 4718592 * k + 1011670 := by
    unfold C
    simp [show (1572864 * k + 337223) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1011670) = 2359296 * k + 505835 := by
    unfold C
    simp [show (4718592 * k + 1011670) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 505835) = 7077888 * k + 1517506 := by
    unfold C
    simp [show (2359296 * k + 505835) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1517506) = 3538944 * k + 758753 := by
    unfold C
    simp [show (7077888 * k + 1517506) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 758753) = 10616832 * k + 2276260 := by
    unfold C
    simp [show (3538944 * k + 758753) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2276260) = 5308416 * k + 1138130 := by
    unfold C
    simp [show (10616832 * k + 2276260) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1138130) = 2654208 * k + 569065 := by
    unfold C
    simp [show (5308416 * k + 1138130) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 569065) = 7962624 * k + 1707196 := by
    unfold C
    simp [show (2654208 * k + 569065) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1707196) = 3981312 * k + 853598 := by
    unfold C
    simp [show (7962624 * k + 1707196) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 853598) = 1990656 * k + 426799 := by
    unfold C
    simp [show (3981312 * k + 853598) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 426799) = 5971968 * k + 1280398 := by
    unfold C
    simp [show (1990656 * k + 426799) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1280398) = 2985984 * k + 640199 := by
    unfold C
    simp [show (5971968 * k + 1280398) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 640199) = 8957952 * k + 1920598 := by
    unfold C
    simp [show (2985984 * k + 640199) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1920598) = 4478976 * k + 960299 := by
    unfold C
    simp [show (8957952 * k + 1920598) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 960299) = 13436928 * k + 2880898 := by
    unfold C
    simp [show (4478976 * k + 960299) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2880898) = 6718464 * k + 1440449 := by
    unfold C
    simp [show (13436928 * k + 2880898) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1440449) = 20155392 * k + 4321348 := by
    unfold C
    simp [show (6718464 * k + 1440449) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4321348) = 10077696 * k + 2160674 := by
    unfold C
    simp [show (20155392 * k + 4321348) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2160674) = 5038848 * k + 1080337 := by
    unfold C
    simp [show (10077696 * k + 2160674) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1080337) = 15116544 * k + 3241012 := by
    unfold C
    simp [show (5038848 * k + 1080337) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3241012) = 7558272 * k + 1620506 := by
    unfold C
    simp [show (15116544 * k + 3241012) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1620506) = 3779136 * k + 810253 := by
    unfold C
    simp [show (7558272 * k + 1620506) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 810253) = 11337408 * k + 2430760 := by
    unfold C
    simp [show (3779136 * k + 810253) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2430760) = 5668704 * k + 1215380 := by
    unfold C
    simp [show (11337408 * k + 2430760) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1215380) = 2834352 * k + 607690 := by
    unfold C
    simp [show (5668704 * k + 1215380) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 607690) = 1417176 * k + 303845 := by
    unfold C
    simp [show (2834352 * k + 607690) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 303845) = 4251528 * k + 911536 := by
    unfold C
    simp [show (1417176 * k + 303845) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 911536) = 2125764 * k + 455768 := by
    unfold C
    simp [show (4251528 * k + 911536) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 455768) = 1062882 * k + 227884 := by
    unfold C
    simp [show (2125764 * k + 455768) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 227884) = 531441 * k + 113942 := by
    unfold C
    simp [show (1062882 * k + 227884) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 224815) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 224815)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_225371 : ∀ k : Nat,
    iterate (1048576 * k + 225371) 32 = 531441 * k + 114224 ∧
      531441 * k + 114224 < 1048576 * k + 225371 := by
  intro k
  have h1 : C (1048576 * k + 225371) = 3145728 * k + 676114 := by
    unfold C
    simp [show (1048576 * k + 225371) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 676114) = 1572864 * k + 338057 := by
    unfold C
    simp [show (3145728 * k + 676114) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 338057) = 4718592 * k + 1014172 := by
    unfold C
    simp [show (1572864 * k + 338057) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1014172) = 2359296 * k + 507086 := by
    unfold C
    simp [show (4718592 * k + 1014172) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 507086) = 1179648 * k + 253543 := by
    unfold C
    simp [show (2359296 * k + 507086) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 253543) = 3538944 * k + 760630 := by
    unfold C
    simp [show (1179648 * k + 253543) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 760630) = 1769472 * k + 380315 := by
    unfold C
    simp [show (3538944 * k + 760630) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 380315) = 5308416 * k + 1140946 := by
    unfold C
    simp [show (1769472 * k + 380315) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1140946) = 2654208 * k + 570473 := by
    unfold C
    simp [show (5308416 * k + 1140946) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 570473) = 7962624 * k + 1711420 := by
    unfold C
    simp [show (2654208 * k + 570473) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1711420) = 3981312 * k + 855710 := by
    unfold C
    simp [show (7962624 * k + 1711420) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 855710) = 1990656 * k + 427855 := by
    unfold C
    simp [show (3981312 * k + 855710) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 427855) = 5971968 * k + 1283566 := by
    unfold C
    simp [show (1990656 * k + 427855) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1283566) = 2985984 * k + 641783 := by
    unfold C
    simp [show (5971968 * k + 1283566) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 641783) = 8957952 * k + 1925350 := by
    unfold C
    simp [show (2985984 * k + 641783) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1925350) = 4478976 * k + 962675 := by
    unfold C
    simp [show (8957952 * k + 1925350) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 962675) = 13436928 * k + 2888026 := by
    unfold C
    simp [show (4478976 * k + 962675) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2888026) = 6718464 * k + 1444013 := by
    unfold C
    simp [show (13436928 * k + 2888026) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1444013) = 20155392 * k + 4332040 := by
    unfold C
    simp [show (6718464 * k + 1444013) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4332040) = 10077696 * k + 2166020 := by
    unfold C
    simp [show (20155392 * k + 4332040) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2166020) = 5038848 * k + 1083010 := by
    unfold C
    simp [show (10077696 * k + 2166020) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1083010) = 2519424 * k + 541505 := by
    unfold C
    simp [show (5038848 * k + 1083010) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 541505) = 7558272 * k + 1624516 := by
    unfold C
    simp [show (2519424 * k + 541505) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1624516) = 3779136 * k + 812258 := by
    unfold C
    simp [show (7558272 * k + 1624516) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 812258) = 1889568 * k + 406129 := by
    unfold C
    simp [show (3779136 * k + 812258) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 406129) = 5668704 * k + 1218388 := by
    unfold C
    simp [show (1889568 * k + 406129) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1218388) = 2834352 * k + 609194 := by
    unfold C
    simp [show (5668704 * k + 1218388) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 609194) = 1417176 * k + 304597 := by
    unfold C
    simp [show (2834352 * k + 609194) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 304597) = 4251528 * k + 913792 := by
    unfold C
    simp [show (1417176 * k + 304597) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 913792) = 2125764 * k + 456896 := by
    unfold C
    simp [show (4251528 * k + 913792) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 456896) = 1062882 * k + 228448 := by
    unfold C
    simp [show (2125764 * k + 456896) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 228448) = 531441 * k + 114224 := by
    unfold C
    simp [show (1062882 * k + 228448) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 225371) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 225371)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_225727 : ∀ k : Nat,
    iterate (1048576 * k + 225727) 32 = 531441 * k + 114404 ∧
      531441 * k + 114404 < 1048576 * k + 225727 := by
  intro k
  have h1 : C (1048576 * k + 225727) = 3145728 * k + 677182 := by
    unfold C
    simp [show (1048576 * k + 225727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 677182) = 1572864 * k + 338591 := by
    unfold C
    simp [show (3145728 * k + 677182) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 338591) = 4718592 * k + 1015774 := by
    unfold C
    simp [show (1572864 * k + 338591) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1015774) = 2359296 * k + 507887 := by
    unfold C
    simp [show (4718592 * k + 1015774) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 507887) = 7077888 * k + 1523662 := by
    unfold C
    simp [show (2359296 * k + 507887) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1523662) = 3538944 * k + 761831 := by
    unfold C
    simp [show (7077888 * k + 1523662) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 761831) = 10616832 * k + 2285494 := by
    unfold C
    simp [show (3538944 * k + 761831) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2285494) = 5308416 * k + 1142747 := by
    unfold C
    simp [show (10616832 * k + 2285494) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1142747) = 15925248 * k + 3428242 := by
    unfold C
    simp [show (5308416 * k + 1142747) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3428242) = 7962624 * k + 1714121 := by
    unfold C
    simp [show (15925248 * k + 3428242) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1714121) = 23887872 * k + 5142364 := by
    unfold C
    simp [show (7962624 * k + 1714121) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 5142364) = 11943936 * k + 2571182 := by
    unfold C
    simp [show (23887872 * k + 5142364) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2571182) = 5971968 * k + 1285591 := by
    unfold C
    simp [show (11943936 * k + 2571182) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1285591) = 17915904 * k + 3856774 := by
    unfold C
    simp [show (5971968 * k + 1285591) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3856774) = 8957952 * k + 1928387 := by
    unfold C
    simp [show (17915904 * k + 3856774) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1928387) = 26873856 * k + 5785162 := by
    unfold C
    simp [show (8957952 * k + 1928387) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5785162) = 13436928 * k + 2892581 := by
    unfold C
    simp [show (26873856 * k + 5785162) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2892581) = 40310784 * k + 8677744 := by
    unfold C
    simp [show (13436928 * k + 2892581) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 8677744) = 20155392 * k + 4338872 := by
    unfold C
    simp [show (40310784 * k + 8677744) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 4338872) = 10077696 * k + 2169436 := by
    unfold C
    simp [show (20155392 * k + 4338872) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2169436) = 5038848 * k + 1084718 := by
    unfold C
    simp [show (10077696 * k + 2169436) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1084718) = 2519424 * k + 542359 := by
    unfold C
    simp [show (5038848 * k + 1084718) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 542359) = 7558272 * k + 1627078 := by
    unfold C
    simp [show (2519424 * k + 542359) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1627078) = 3779136 * k + 813539 := by
    unfold C
    simp [show (7558272 * k + 1627078) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 813539) = 11337408 * k + 2440618 := by
    unfold C
    simp [show (3779136 * k + 813539) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2440618) = 5668704 * k + 1220309 := by
    unfold C
    simp [show (11337408 * k + 2440618) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1220309) = 17006112 * k + 3660928 := by
    unfold C
    simp [show (5668704 * k + 1220309) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3660928) = 8503056 * k + 1830464 := by
    unfold C
    simp [show (17006112 * k + 3660928) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1830464) = 4251528 * k + 915232 := by
    unfold C
    simp [show (8503056 * k + 1830464) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 915232) = 2125764 * k + 457616 := by
    unfold C
    simp [show (4251528 * k + 915232) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 457616) = 1062882 * k + 228808 := by
    unfold C
    simp [show (2125764 * k + 457616) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 228808) = 531441 * k + 114404 := by
    unfold C
    simp [show (1062882 * k + 228808) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 225727) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 225727)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_226175 : ∀ k : Nat,
    iterate (1048576 * k + 226175) 32 = 531441 * k + 114631 ∧
      531441 * k + 114631 < 1048576 * k + 226175 := by
  intro k
  have h1 : C (1048576 * k + 226175) = 3145728 * k + 678526 := by
    unfold C
    simp [show (1048576 * k + 226175) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 678526) = 1572864 * k + 339263 := by
    unfold C
    simp [show (3145728 * k + 678526) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 339263) = 4718592 * k + 1017790 := by
    unfold C
    simp [show (1572864 * k + 339263) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1017790) = 2359296 * k + 508895 := by
    unfold C
    simp [show (4718592 * k + 1017790) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 508895) = 7077888 * k + 1526686 := by
    unfold C
    simp [show (2359296 * k + 508895) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1526686) = 3538944 * k + 763343 := by
    unfold C
    simp [show (7077888 * k + 1526686) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 763343) = 10616832 * k + 2290030 := by
    unfold C
    simp [show (3538944 * k + 763343) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2290030) = 5308416 * k + 1145015 := by
    unfold C
    simp [show (10616832 * k + 2290030) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1145015) = 15925248 * k + 3435046 := by
    unfold C
    simp [show (5308416 * k + 1145015) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3435046) = 7962624 * k + 1717523 := by
    unfold C
    simp [show (15925248 * k + 3435046) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1717523) = 23887872 * k + 5152570 := by
    unfold C
    simp [show (7962624 * k + 1717523) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 5152570) = 11943936 * k + 2576285 := by
    unfold C
    simp [show (23887872 * k + 5152570) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2576285) = 35831808 * k + 7728856 := by
    unfold C
    simp [show (11943936 * k + 2576285) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 7728856) = 17915904 * k + 3864428 := by
    unfold C
    simp [show (35831808 * k + 7728856) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 3864428) = 8957952 * k + 1932214 := by
    unfold C
    simp [show (17915904 * k + 3864428) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1932214) = 4478976 * k + 966107 := by
    unfold C
    simp [show (8957952 * k + 1932214) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 966107) = 13436928 * k + 2898322 := by
    unfold C
    simp [show (4478976 * k + 966107) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2898322) = 6718464 * k + 1449161 := by
    unfold C
    simp [show (13436928 * k + 2898322) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1449161) = 20155392 * k + 4347484 := by
    unfold C
    simp [show (6718464 * k + 1449161) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4347484) = 10077696 * k + 2173742 := by
    unfold C
    simp [show (20155392 * k + 4347484) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2173742) = 5038848 * k + 1086871 := by
    unfold C
    simp [show (10077696 * k + 2173742) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1086871) = 15116544 * k + 3260614 := by
    unfold C
    simp [show (5038848 * k + 1086871) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3260614) = 7558272 * k + 1630307 := by
    unfold C
    simp [show (15116544 * k + 3260614) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1630307) = 22674816 * k + 4890922 := by
    unfold C
    simp [show (7558272 * k + 1630307) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 4890922) = 11337408 * k + 2445461 := by
    unfold C
    simp [show (22674816 * k + 4890922) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2445461) = 34012224 * k + 7336384 := by
    unfold C
    simp [show (11337408 * k + 2445461) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 7336384) = 17006112 * k + 3668192 := by
    unfold C
    simp [show (34012224 * k + 7336384) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 3668192) = 8503056 * k + 1834096 := by
    unfold C
    simp [show (17006112 * k + 3668192) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1834096) = 4251528 * k + 917048 := by
    unfold C
    simp [show (8503056 * k + 1834096) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 917048) = 2125764 * k + 458524 := by
    unfold C
    simp [show (4251528 * k + 917048) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 458524) = 1062882 * k + 229262 := by
    unfold C
    simp [show (2125764 * k + 458524) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 229262) = 531441 * k + 114631 := by
    unfold C
    simp [show (1062882 * k + 229262) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 226175) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 226175)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_226271 : ∀ k : Nat,
    iterate (1048576 * k + 226271) 32 = 531441 * k + 114680 ∧
      531441 * k + 114680 < 1048576 * k + 226271 := by
  intro k
  have h1 : C (1048576 * k + 226271) = 3145728 * k + 678814 := by
    unfold C
    simp [show (1048576 * k + 226271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 678814) = 1572864 * k + 339407 := by
    unfold C
    simp [show (3145728 * k + 678814) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 339407) = 4718592 * k + 1018222 := by
    unfold C
    simp [show (1572864 * k + 339407) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1018222) = 2359296 * k + 509111 := by
    unfold C
    simp [show (4718592 * k + 1018222) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 509111) = 7077888 * k + 1527334 := by
    unfold C
    simp [show (2359296 * k + 509111) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1527334) = 3538944 * k + 763667 := by
    unfold C
    simp [show (7077888 * k + 1527334) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 763667) = 10616832 * k + 2291002 := by
    unfold C
    simp [show (3538944 * k + 763667) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2291002) = 5308416 * k + 1145501 := by
    unfold C
    simp [show (10616832 * k + 2291002) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1145501) = 15925248 * k + 3436504 := by
    unfold C
    simp [show (5308416 * k + 1145501) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3436504) = 7962624 * k + 1718252 := by
    unfold C
    simp [show (15925248 * k + 3436504) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1718252) = 3981312 * k + 859126 := by
    unfold C
    simp [show (7962624 * k + 1718252) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 859126) = 1990656 * k + 429563 := by
    unfold C
    simp [show (3981312 * k + 859126) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 429563) = 5971968 * k + 1288690 := by
    unfold C
    simp [show (1990656 * k + 429563) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1288690) = 2985984 * k + 644345 := by
    unfold C
    simp [show (5971968 * k + 1288690) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 644345) = 8957952 * k + 1933036 := by
    unfold C
    simp [show (2985984 * k + 644345) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1933036) = 4478976 * k + 966518 := by
    unfold C
    simp [show (8957952 * k + 1933036) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 966518) = 2239488 * k + 483259 := by
    unfold C
    simp [show (4478976 * k + 966518) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 483259) = 6718464 * k + 1449778 := by
    unfold C
    simp [show (2239488 * k + 483259) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1449778) = 3359232 * k + 724889 := by
    unfold C
    simp [show (6718464 * k + 1449778) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 724889) = 10077696 * k + 2174668 := by
    unfold C
    simp [show (3359232 * k + 724889) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2174668) = 5038848 * k + 1087334 := by
    unfold C
    simp [show (10077696 * k + 2174668) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1087334) = 2519424 * k + 543667 := by
    unfold C
    simp [show (5038848 * k + 1087334) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 543667) = 7558272 * k + 1631002 := by
    unfold C
    simp [show (2519424 * k + 543667) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1631002) = 3779136 * k + 815501 := by
    unfold C
    simp [show (7558272 * k + 1631002) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 815501) = 11337408 * k + 2446504 := by
    unfold C
    simp [show (3779136 * k + 815501) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2446504) = 5668704 * k + 1223252 := by
    unfold C
    simp [show (11337408 * k + 2446504) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1223252) = 2834352 * k + 611626 := by
    unfold C
    simp [show (5668704 * k + 1223252) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 611626) = 1417176 * k + 305813 := by
    unfold C
    simp [show (2834352 * k + 611626) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 305813) = 4251528 * k + 917440 := by
    unfold C
    simp [show (1417176 * k + 305813) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 917440) = 2125764 * k + 458720 := by
    unfold C
    simp [show (4251528 * k + 917440) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 458720) = 1062882 * k + 229360 := by
    unfold C
    simp [show (2125764 * k + 458720) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 229360) = 531441 * k + 114680 := by
    unfold C
    simp [show (1062882 * k + 229360) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 226271) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 226271)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_226863 : ∀ k : Nat,
    iterate (1048576 * k + 226863) 32 = 531441 * k + 114980 ∧
      531441 * k + 114980 < 1048576 * k + 226863 := by
  intro k
  have h1 : C (1048576 * k + 226863) = 3145728 * k + 680590 := by
    unfold C
    simp [show (1048576 * k + 226863) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 680590) = 1572864 * k + 340295 := by
    unfold C
    simp [show (3145728 * k + 680590) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 340295) = 4718592 * k + 1020886 := by
    unfold C
    simp [show (1572864 * k + 340295) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1020886) = 2359296 * k + 510443 := by
    unfold C
    simp [show (4718592 * k + 1020886) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 510443) = 7077888 * k + 1531330 := by
    unfold C
    simp [show (2359296 * k + 510443) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1531330) = 3538944 * k + 765665 := by
    unfold C
    simp [show (7077888 * k + 1531330) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 765665) = 10616832 * k + 2296996 := by
    unfold C
    simp [show (3538944 * k + 765665) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2296996) = 5308416 * k + 1148498 := by
    unfold C
    simp [show (10616832 * k + 2296996) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1148498) = 2654208 * k + 574249 := by
    unfold C
    simp [show (5308416 * k + 1148498) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 574249) = 7962624 * k + 1722748 := by
    unfold C
    simp [show (2654208 * k + 574249) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1722748) = 3981312 * k + 861374 := by
    unfold C
    simp [show (7962624 * k + 1722748) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 861374) = 1990656 * k + 430687 := by
    unfold C
    simp [show (3981312 * k + 861374) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 430687) = 5971968 * k + 1292062 := by
    unfold C
    simp [show (1990656 * k + 430687) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1292062) = 2985984 * k + 646031 := by
    unfold C
    simp [show (5971968 * k + 1292062) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 646031) = 8957952 * k + 1938094 := by
    unfold C
    simp [show (2985984 * k + 646031) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1938094) = 4478976 * k + 969047 := by
    unfold C
    simp [show (8957952 * k + 1938094) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 969047) = 13436928 * k + 2907142 := by
    unfold C
    simp [show (4478976 * k + 969047) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2907142) = 6718464 * k + 1453571 := by
    unfold C
    simp [show (13436928 * k + 2907142) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1453571) = 20155392 * k + 4360714 := by
    unfold C
    simp [show (6718464 * k + 1453571) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4360714) = 10077696 * k + 2180357 := by
    unfold C
    simp [show (20155392 * k + 4360714) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2180357) = 30233088 * k + 6541072 := by
    unfold C
    simp [show (10077696 * k + 2180357) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 6541072) = 15116544 * k + 3270536 := by
    unfold C
    simp [show (30233088 * k + 6541072) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3270536) = 7558272 * k + 1635268 := by
    unfold C
    simp [show (15116544 * k + 3270536) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1635268) = 3779136 * k + 817634 := by
    unfold C
    simp [show (7558272 * k + 1635268) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 817634) = 1889568 * k + 408817 := by
    unfold C
    simp [show (3779136 * k + 817634) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 408817) = 5668704 * k + 1226452 := by
    unfold C
    simp [show (1889568 * k + 408817) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1226452) = 2834352 * k + 613226 := by
    unfold C
    simp [show (5668704 * k + 1226452) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 613226) = 1417176 * k + 306613 := by
    unfold C
    simp [show (2834352 * k + 613226) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 306613) = 4251528 * k + 919840 := by
    unfold C
    simp [show (1417176 * k + 306613) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 919840) = 2125764 * k + 459920 := by
    unfold C
    simp [show (4251528 * k + 919840) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 459920) = 1062882 * k + 229960 := by
    unfold C
    simp [show (2125764 * k + 459920) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 229960) = 531441 * k + 114980 := by
    unfold C
    simp [show (1062882 * k + 229960) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 226863) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 226863)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_227175 : ∀ k : Nat,
    iterate (1048576 * k + 227175) 32 = 531441 * k + 115138 ∧
      531441 * k + 115138 < 1048576 * k + 227175 := by
  intro k
  have h1 : C (1048576 * k + 227175) = 3145728 * k + 681526 := by
    unfold C
    simp [show (1048576 * k + 227175) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 681526) = 1572864 * k + 340763 := by
    unfold C
    simp [show (3145728 * k + 681526) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 340763) = 4718592 * k + 1022290 := by
    unfold C
    simp [show (1572864 * k + 340763) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1022290) = 2359296 * k + 511145 := by
    unfold C
    simp [show (4718592 * k + 1022290) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 511145) = 7077888 * k + 1533436 := by
    unfold C
    simp [show (2359296 * k + 511145) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1533436) = 3538944 * k + 766718 := by
    unfold C
    simp [show (7077888 * k + 1533436) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 766718) = 1769472 * k + 383359 := by
    unfold C
    simp [show (3538944 * k + 766718) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 383359) = 5308416 * k + 1150078 := by
    unfold C
    simp [show (1769472 * k + 383359) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1150078) = 2654208 * k + 575039 := by
    unfold C
    simp [show (5308416 * k + 1150078) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 575039) = 7962624 * k + 1725118 := by
    unfold C
    simp [show (2654208 * k + 575039) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1725118) = 3981312 * k + 862559 := by
    unfold C
    simp [show (7962624 * k + 1725118) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 862559) = 11943936 * k + 2587678 := by
    unfold C
    simp [show (3981312 * k + 862559) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2587678) = 5971968 * k + 1293839 := by
    unfold C
    simp [show (11943936 * k + 2587678) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1293839) = 17915904 * k + 3881518 := by
    unfold C
    simp [show (5971968 * k + 1293839) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3881518) = 8957952 * k + 1940759 := by
    unfold C
    simp [show (17915904 * k + 3881518) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1940759) = 26873856 * k + 5822278 := by
    unfold C
    simp [show (8957952 * k + 1940759) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5822278) = 13436928 * k + 2911139 := by
    unfold C
    simp [show (26873856 * k + 5822278) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2911139) = 40310784 * k + 8733418 := by
    unfold C
    simp [show (13436928 * k + 2911139) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 8733418) = 20155392 * k + 4366709 := by
    unfold C
    simp [show (40310784 * k + 8733418) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 4366709) = 60466176 * k + 13100128 := by
    unfold C
    simp [show (20155392 * k + 4366709) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 13100128) = 30233088 * k + 6550064 := by
    unfold C
    simp [show (60466176 * k + 13100128) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 6550064) = 15116544 * k + 3275032 := by
    unfold C
    simp [show (30233088 * k + 6550064) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3275032) = 7558272 * k + 1637516 := by
    unfold C
    simp [show (15116544 * k + 3275032) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1637516) = 3779136 * k + 818758 := by
    unfold C
    simp [show (7558272 * k + 1637516) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 818758) = 1889568 * k + 409379 := by
    unfold C
    simp [show (3779136 * k + 818758) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 409379) = 5668704 * k + 1228138 := by
    unfold C
    simp [show (1889568 * k + 409379) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1228138) = 2834352 * k + 614069 := by
    unfold C
    simp [show (5668704 * k + 1228138) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 614069) = 8503056 * k + 1842208 := by
    unfold C
    simp [show (2834352 * k + 614069) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1842208) = 4251528 * k + 921104 := by
    unfold C
    simp [show (8503056 * k + 1842208) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 921104) = 2125764 * k + 460552 := by
    unfold C
    simp [show (4251528 * k + 921104) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 460552) = 1062882 * k + 230276 := by
    unfold C
    simp [show (2125764 * k + 460552) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 230276) = 531441 * k + 115138 := by
    unfold C
    simp [show (1062882 * k + 230276) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 227175) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 227175)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_227431 : ∀ k : Nat,
    iterate (1048576 * k + 227431) 32 = 531441 * k + 115268 ∧
      531441 * k + 115268 < 1048576 * k + 227431 := by
  intro k
  have h1 : C (1048576 * k + 227431) = 3145728 * k + 682294 := by
    unfold C
    simp [show (1048576 * k + 227431) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 682294) = 1572864 * k + 341147 := by
    unfold C
    simp [show (3145728 * k + 682294) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 341147) = 4718592 * k + 1023442 := by
    unfold C
    simp [show (1572864 * k + 341147) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1023442) = 2359296 * k + 511721 := by
    unfold C
    simp [show (4718592 * k + 1023442) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 511721) = 7077888 * k + 1535164 := by
    unfold C
    simp [show (2359296 * k + 511721) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1535164) = 3538944 * k + 767582 := by
    unfold C
    simp [show (7077888 * k + 1535164) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 767582) = 1769472 * k + 383791 := by
    unfold C
    simp [show (3538944 * k + 767582) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 383791) = 5308416 * k + 1151374 := by
    unfold C
    simp [show (1769472 * k + 383791) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1151374) = 2654208 * k + 575687 := by
    unfold C
    simp [show (5308416 * k + 1151374) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 575687) = 7962624 * k + 1727062 := by
    unfold C
    simp [show (2654208 * k + 575687) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1727062) = 3981312 * k + 863531 := by
    unfold C
    simp [show (7962624 * k + 1727062) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 863531) = 11943936 * k + 2590594 := by
    unfold C
    simp [show (3981312 * k + 863531) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2590594) = 5971968 * k + 1295297 := by
    unfold C
    simp [show (11943936 * k + 2590594) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1295297) = 17915904 * k + 3885892 := by
    unfold C
    simp [show (5971968 * k + 1295297) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3885892) = 8957952 * k + 1942946 := by
    unfold C
    simp [show (17915904 * k + 3885892) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1942946) = 4478976 * k + 971473 := by
    unfold C
    simp [show (8957952 * k + 1942946) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 971473) = 13436928 * k + 2914420 := by
    unfold C
    simp [show (4478976 * k + 971473) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2914420) = 6718464 * k + 1457210 := by
    unfold C
    simp [show (13436928 * k + 2914420) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1457210) = 3359232 * k + 728605 := by
    unfold C
    simp [show (6718464 * k + 1457210) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 728605) = 10077696 * k + 2185816 := by
    unfold C
    simp [show (3359232 * k + 728605) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2185816) = 5038848 * k + 1092908 := by
    unfold C
    simp [show (10077696 * k + 2185816) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1092908) = 2519424 * k + 546454 := by
    unfold C
    simp [show (5038848 * k + 1092908) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 546454) = 1259712 * k + 273227 := by
    unfold C
    simp [show (2519424 * k + 546454) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 273227) = 3779136 * k + 819682 := by
    unfold C
    simp [show (1259712 * k + 273227) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 819682) = 1889568 * k + 409841 := by
    unfold C
    simp [show (3779136 * k + 819682) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 409841) = 5668704 * k + 1229524 := by
    unfold C
    simp [show (1889568 * k + 409841) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1229524) = 2834352 * k + 614762 := by
    unfold C
    simp [show (5668704 * k + 1229524) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 614762) = 1417176 * k + 307381 := by
    unfold C
    simp [show (2834352 * k + 614762) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 307381) = 4251528 * k + 922144 := by
    unfold C
    simp [show (1417176 * k + 307381) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 922144) = 2125764 * k + 461072 := by
    unfold C
    simp [show (4251528 * k + 922144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 461072) = 1062882 * k + 230536 := by
    unfold C
    simp [show (2125764 * k + 461072) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 230536) = 531441 * k + 115268 := by
    unfold C
    simp [show (1062882 * k + 230536) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 227431) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 227431)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_228199 : ∀ k : Nat,
    iterate (1048576 * k + 228199) 32 = 531441 * k + 115657 ∧
      531441 * k + 115657 < 1048576 * k + 228199 := by
  intro k
  have h1 : C (1048576 * k + 228199) = 3145728 * k + 684598 := by
    unfold C
    simp [show (1048576 * k + 228199) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 684598) = 1572864 * k + 342299 := by
    unfold C
    simp [show (3145728 * k + 684598) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 342299) = 4718592 * k + 1026898 := by
    unfold C
    simp [show (1572864 * k + 342299) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1026898) = 2359296 * k + 513449 := by
    unfold C
    simp [show (4718592 * k + 1026898) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 513449) = 7077888 * k + 1540348 := by
    unfold C
    simp [show (2359296 * k + 513449) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1540348) = 3538944 * k + 770174 := by
    unfold C
    simp [show (7077888 * k + 1540348) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 770174) = 1769472 * k + 385087 := by
    unfold C
    simp [show (3538944 * k + 770174) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 385087) = 5308416 * k + 1155262 := by
    unfold C
    simp [show (1769472 * k + 385087) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1155262) = 2654208 * k + 577631 := by
    unfold C
    simp [show (5308416 * k + 1155262) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 577631) = 7962624 * k + 1732894 := by
    unfold C
    simp [show (2654208 * k + 577631) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1732894) = 3981312 * k + 866447 := by
    unfold C
    simp [show (7962624 * k + 1732894) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 866447) = 11943936 * k + 2599342 := by
    unfold C
    simp [show (3981312 * k + 866447) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2599342) = 5971968 * k + 1299671 := by
    unfold C
    simp [show (11943936 * k + 2599342) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1299671) = 17915904 * k + 3899014 := by
    unfold C
    simp [show (5971968 * k + 1299671) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3899014) = 8957952 * k + 1949507 := by
    unfold C
    simp [show (17915904 * k + 3899014) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1949507) = 26873856 * k + 5848522 := by
    unfold C
    simp [show (8957952 * k + 1949507) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5848522) = 13436928 * k + 2924261 := by
    unfold C
    simp [show (26873856 * k + 5848522) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2924261) = 40310784 * k + 8772784 := by
    unfold C
    simp [show (13436928 * k + 2924261) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 8772784) = 20155392 * k + 4386392 := by
    unfold C
    simp [show (40310784 * k + 8772784) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 4386392) = 10077696 * k + 2193196 := by
    unfold C
    simp [show (20155392 * k + 4386392) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2193196) = 5038848 * k + 1096598 := by
    unfold C
    simp [show (10077696 * k + 2193196) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1096598) = 2519424 * k + 548299 := by
    unfold C
    simp [show (5038848 * k + 1096598) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 548299) = 7558272 * k + 1644898 := by
    unfold C
    simp [show (2519424 * k + 548299) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1644898) = 3779136 * k + 822449 := by
    unfold C
    simp [show (7558272 * k + 1644898) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 822449) = 11337408 * k + 2467348 := by
    unfold C
    simp [show (3779136 * k + 822449) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2467348) = 5668704 * k + 1233674 := by
    unfold C
    simp [show (11337408 * k + 2467348) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1233674) = 2834352 * k + 616837 := by
    unfold C
    simp [show (5668704 * k + 1233674) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 616837) = 8503056 * k + 1850512 := by
    unfold C
    simp [show (2834352 * k + 616837) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1850512) = 4251528 * k + 925256 := by
    unfold C
    simp [show (8503056 * k + 1850512) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 925256) = 2125764 * k + 462628 := by
    unfold C
    simp [show (4251528 * k + 925256) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 462628) = 1062882 * k + 231314 := by
    unfold C
    simp [show (2125764 * k + 462628) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 231314) = 531441 * k + 115657 := by
    unfold C
    simp [show (1062882 * k + 231314) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 228199) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 228199)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_228223 : ∀ k : Nat,
    iterate (1048576 * k + 228223) 32 = 531441 * k + 115669 ∧
      531441 * k + 115669 < 1048576 * k + 228223 := by
  intro k
  have h1 : C (1048576 * k + 228223) = 3145728 * k + 684670 := by
    unfold C
    simp [show (1048576 * k + 228223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 684670) = 1572864 * k + 342335 := by
    unfold C
    simp [show (3145728 * k + 684670) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 342335) = 4718592 * k + 1027006 := by
    unfold C
    simp [show (1572864 * k + 342335) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1027006) = 2359296 * k + 513503 := by
    unfold C
    simp [show (4718592 * k + 1027006) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 513503) = 7077888 * k + 1540510 := by
    unfold C
    simp [show (2359296 * k + 513503) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1540510) = 3538944 * k + 770255 := by
    unfold C
    simp [show (7077888 * k + 1540510) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 770255) = 10616832 * k + 2310766 := by
    unfold C
    simp [show (3538944 * k + 770255) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2310766) = 5308416 * k + 1155383 := by
    unfold C
    simp [show (10616832 * k + 2310766) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1155383) = 15925248 * k + 3466150 := by
    unfold C
    simp [show (5308416 * k + 1155383) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3466150) = 7962624 * k + 1733075 := by
    unfold C
    simp [show (15925248 * k + 3466150) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1733075) = 23887872 * k + 5199226 := by
    unfold C
    simp [show (7962624 * k + 1733075) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 5199226) = 11943936 * k + 2599613 := by
    unfold C
    simp [show (23887872 * k + 5199226) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2599613) = 35831808 * k + 7798840 := by
    unfold C
    simp [show (11943936 * k + 2599613) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 7798840) = 17915904 * k + 3899420 := by
    unfold C
    simp [show (35831808 * k + 7798840) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 3899420) = 8957952 * k + 1949710 := by
    unfold C
    simp [show (17915904 * k + 3899420) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1949710) = 4478976 * k + 974855 := by
    unfold C
    simp [show (8957952 * k + 1949710) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 974855) = 13436928 * k + 2924566 := by
    unfold C
    simp [show (4478976 * k + 974855) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2924566) = 6718464 * k + 1462283 := by
    unfold C
    simp [show (13436928 * k + 2924566) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1462283) = 20155392 * k + 4386850 := by
    unfold C
    simp [show (6718464 * k + 1462283) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4386850) = 10077696 * k + 2193425 := by
    unfold C
    simp [show (20155392 * k + 4386850) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2193425) = 30233088 * k + 6580276 := by
    unfold C
    simp [show (10077696 * k + 2193425) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 6580276) = 15116544 * k + 3290138 := by
    unfold C
    simp [show (30233088 * k + 6580276) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3290138) = 7558272 * k + 1645069 := by
    unfold C
    simp [show (15116544 * k + 3290138) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1645069) = 22674816 * k + 4935208 := by
    unfold C
    simp [show (7558272 * k + 1645069) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 4935208) = 11337408 * k + 2467604 := by
    unfold C
    simp [show (22674816 * k + 4935208) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2467604) = 5668704 * k + 1233802 := by
    unfold C
    simp [show (11337408 * k + 2467604) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1233802) = 2834352 * k + 616901 := by
    unfold C
    simp [show (5668704 * k + 1233802) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 616901) = 8503056 * k + 1850704 := by
    unfold C
    simp [show (2834352 * k + 616901) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1850704) = 4251528 * k + 925352 := by
    unfold C
    simp [show (8503056 * k + 1850704) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 925352) = 2125764 * k + 462676 := by
    unfold C
    simp [show (4251528 * k + 925352) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 462676) = 1062882 * k + 231338 := by
    unfold C
    simp [show (2125764 * k + 462676) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 231338) = 531441 * k + 115669 := by
    unfold C
    simp [show (1062882 * k + 231338) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 228223) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 228223)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_228603 : ∀ k : Nat,
    iterate (1048576 * k + 228603) 32 = 531441 * k + 115862 ∧
      531441 * k + 115862 < 1048576 * k + 228603 := by
  intro k
  have h1 : C (1048576 * k + 228603) = 3145728 * k + 685810 := by
    unfold C
    simp [show (1048576 * k + 228603) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 685810) = 1572864 * k + 342905 := by
    unfold C
    simp [show (3145728 * k + 685810) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 342905) = 4718592 * k + 1028716 := by
    unfold C
    simp [show (1572864 * k + 342905) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1028716) = 2359296 * k + 514358 := by
    unfold C
    simp [show (4718592 * k + 1028716) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 514358) = 1179648 * k + 257179 := by
    unfold C
    simp [show (2359296 * k + 514358) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 257179) = 3538944 * k + 771538 := by
    unfold C
    simp [show (1179648 * k + 257179) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 771538) = 1769472 * k + 385769 := by
    unfold C
    simp [show (3538944 * k + 771538) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 385769) = 5308416 * k + 1157308 := by
    unfold C
    simp [show (1769472 * k + 385769) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1157308) = 2654208 * k + 578654 := by
    unfold C
    simp [show (5308416 * k + 1157308) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 578654) = 1327104 * k + 289327 := by
    unfold C
    simp [show (2654208 * k + 578654) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 289327) = 3981312 * k + 867982 := by
    unfold C
    simp [show (1327104 * k + 289327) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 867982) = 1990656 * k + 433991 := by
    unfold C
    simp [show (3981312 * k + 867982) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 433991) = 5971968 * k + 1301974 := by
    unfold C
    simp [show (1990656 * k + 433991) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1301974) = 2985984 * k + 650987 := by
    unfold C
    simp [show (5971968 * k + 1301974) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 650987) = 8957952 * k + 1952962 := by
    unfold C
    simp [show (2985984 * k + 650987) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1952962) = 4478976 * k + 976481 := by
    unfold C
    simp [show (8957952 * k + 1952962) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 976481) = 13436928 * k + 2929444 := by
    unfold C
    simp [show (4478976 * k + 976481) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2929444) = 6718464 * k + 1464722 := by
    unfold C
    simp [show (13436928 * k + 2929444) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1464722) = 3359232 * k + 732361 := by
    unfold C
    simp [show (6718464 * k + 1464722) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 732361) = 10077696 * k + 2197084 := by
    unfold C
    simp [show (3359232 * k + 732361) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2197084) = 5038848 * k + 1098542 := by
    unfold C
    simp [show (10077696 * k + 2197084) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1098542) = 2519424 * k + 549271 := by
    unfold C
    simp [show (5038848 * k + 1098542) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 549271) = 7558272 * k + 1647814 := by
    unfold C
    simp [show (2519424 * k + 549271) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1647814) = 3779136 * k + 823907 := by
    unfold C
    simp [show (7558272 * k + 1647814) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 823907) = 11337408 * k + 2471722 := by
    unfold C
    simp [show (3779136 * k + 823907) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2471722) = 5668704 * k + 1235861 := by
    unfold C
    simp [show (11337408 * k + 2471722) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1235861) = 17006112 * k + 3707584 := by
    unfold C
    simp [show (5668704 * k + 1235861) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3707584) = 8503056 * k + 1853792 := by
    unfold C
    simp [show (17006112 * k + 3707584) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1853792) = 4251528 * k + 926896 := by
    unfold C
    simp [show (8503056 * k + 1853792) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 926896) = 2125764 * k + 463448 := by
    unfold C
    simp [show (4251528 * k + 926896) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 463448) = 1062882 * k + 231724 := by
    unfold C
    simp [show (2125764 * k + 463448) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 231724) = 531441 * k + 115862 := by
    unfold C
    simp [show (1062882 * k + 231724) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 228603) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 228603)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_229627 : ∀ k : Nat,
    iterate (1048576 * k + 229627) 32 = 531441 * k + 116381 ∧
      531441 * k + 116381 < 1048576 * k + 229627 := by
  intro k
  have h1 : C (1048576 * k + 229627) = 3145728 * k + 688882 := by
    unfold C
    simp [show (1048576 * k + 229627) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 688882) = 1572864 * k + 344441 := by
    unfold C
    simp [show (3145728 * k + 688882) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 344441) = 4718592 * k + 1033324 := by
    unfold C
    simp [show (1572864 * k + 344441) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1033324) = 2359296 * k + 516662 := by
    unfold C
    simp [show (4718592 * k + 1033324) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 516662) = 1179648 * k + 258331 := by
    unfold C
    simp [show (2359296 * k + 516662) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 258331) = 3538944 * k + 774994 := by
    unfold C
    simp [show (1179648 * k + 258331) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 774994) = 1769472 * k + 387497 := by
    unfold C
    simp [show (3538944 * k + 774994) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 387497) = 5308416 * k + 1162492 := by
    unfold C
    simp [show (1769472 * k + 387497) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1162492) = 2654208 * k + 581246 := by
    unfold C
    simp [show (5308416 * k + 1162492) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 581246) = 1327104 * k + 290623 := by
    unfold C
    simp [show (2654208 * k + 581246) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 290623) = 3981312 * k + 871870 := by
    unfold C
    simp [show (1327104 * k + 290623) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 871870) = 1990656 * k + 435935 := by
    unfold C
    simp [show (3981312 * k + 871870) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 435935) = 5971968 * k + 1307806 := by
    unfold C
    simp [show (1990656 * k + 435935) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1307806) = 2985984 * k + 653903 := by
    unfold C
    simp [show (5971968 * k + 1307806) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 653903) = 8957952 * k + 1961710 := by
    unfold C
    simp [show (2985984 * k + 653903) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1961710) = 4478976 * k + 980855 := by
    unfold C
    simp [show (8957952 * k + 1961710) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 980855) = 13436928 * k + 2942566 := by
    unfold C
    simp [show (4478976 * k + 980855) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2942566) = 6718464 * k + 1471283 := by
    unfold C
    simp [show (13436928 * k + 2942566) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1471283) = 20155392 * k + 4413850 := by
    unfold C
    simp [show (6718464 * k + 1471283) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4413850) = 10077696 * k + 2206925 := by
    unfold C
    simp [show (20155392 * k + 4413850) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2206925) = 30233088 * k + 6620776 := by
    unfold C
    simp [show (10077696 * k + 2206925) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 6620776) = 15116544 * k + 3310388 := by
    unfold C
    simp [show (30233088 * k + 6620776) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3310388) = 7558272 * k + 1655194 := by
    unfold C
    simp [show (15116544 * k + 3310388) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1655194) = 3779136 * k + 827597 := by
    unfold C
    simp [show (7558272 * k + 1655194) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 827597) = 11337408 * k + 2482792 := by
    unfold C
    simp [show (3779136 * k + 827597) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2482792) = 5668704 * k + 1241396 := by
    unfold C
    simp [show (11337408 * k + 2482792) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1241396) = 2834352 * k + 620698 := by
    unfold C
    simp [show (5668704 * k + 1241396) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 620698) = 1417176 * k + 310349 := by
    unfold C
    simp [show (2834352 * k + 620698) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 310349) = 4251528 * k + 931048 := by
    unfold C
    simp [show (1417176 * k + 310349) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 931048) = 2125764 * k + 465524 := by
    unfold C
    simp [show (4251528 * k + 931048) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 465524) = 1062882 * k + 232762 := by
    unfold C
    simp [show (2125764 * k + 465524) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 232762) = 531441 * k + 116381 := by
    unfold C
    simp [show (1062882 * k + 232762) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 229627) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 229627)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_229823 : ∀ k : Nat,
    iterate (1048576 * k + 229823) 32 = 531441 * k + 116480 ∧
      531441 * k + 116480 < 1048576 * k + 229823 := by
  intro k
  have h1 : C (1048576 * k + 229823) = 3145728 * k + 689470 := by
    unfold C
    simp [show (1048576 * k + 229823) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 689470) = 1572864 * k + 344735 := by
    unfold C
    simp [show (3145728 * k + 689470) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 344735) = 4718592 * k + 1034206 := by
    unfold C
    simp [show (1572864 * k + 344735) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1034206) = 2359296 * k + 517103 := by
    unfold C
    simp [show (4718592 * k + 1034206) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 517103) = 7077888 * k + 1551310 := by
    unfold C
    simp [show (2359296 * k + 517103) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1551310) = 3538944 * k + 775655 := by
    unfold C
    simp [show (7077888 * k + 1551310) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 775655) = 10616832 * k + 2326966 := by
    unfold C
    simp [show (3538944 * k + 775655) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2326966) = 5308416 * k + 1163483 := by
    unfold C
    simp [show (10616832 * k + 2326966) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1163483) = 15925248 * k + 3490450 := by
    unfold C
    simp [show (5308416 * k + 1163483) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3490450) = 7962624 * k + 1745225 := by
    unfold C
    simp [show (15925248 * k + 3490450) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1745225) = 23887872 * k + 5235676 := by
    unfold C
    simp [show (7962624 * k + 1745225) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 5235676) = 11943936 * k + 2617838 := by
    unfold C
    simp [show (23887872 * k + 5235676) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2617838) = 5971968 * k + 1308919 := by
    unfold C
    simp [show (11943936 * k + 2617838) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1308919) = 17915904 * k + 3926758 := by
    unfold C
    simp [show (5971968 * k + 1308919) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3926758) = 8957952 * k + 1963379 := by
    unfold C
    simp [show (17915904 * k + 3926758) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1963379) = 26873856 * k + 5890138 := by
    unfold C
    simp [show (8957952 * k + 1963379) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5890138) = 13436928 * k + 2945069 := by
    unfold C
    simp [show (26873856 * k + 5890138) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2945069) = 40310784 * k + 8835208 := by
    unfold C
    simp [show (13436928 * k + 2945069) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 8835208) = 20155392 * k + 4417604 := by
    unfold C
    simp [show (40310784 * k + 8835208) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 4417604) = 10077696 * k + 2208802 := by
    unfold C
    simp [show (20155392 * k + 4417604) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2208802) = 5038848 * k + 1104401 := by
    unfold C
    simp [show (10077696 * k + 2208802) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1104401) = 15116544 * k + 3313204 := by
    unfold C
    simp [show (5038848 * k + 1104401) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3313204) = 7558272 * k + 1656602 := by
    unfold C
    simp [show (15116544 * k + 3313204) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1656602) = 3779136 * k + 828301 := by
    unfold C
    simp [show (7558272 * k + 1656602) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 828301) = 11337408 * k + 2484904 := by
    unfold C
    simp [show (3779136 * k + 828301) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2484904) = 5668704 * k + 1242452 := by
    unfold C
    simp [show (11337408 * k + 2484904) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1242452) = 2834352 * k + 621226 := by
    unfold C
    simp [show (5668704 * k + 1242452) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 621226) = 1417176 * k + 310613 := by
    unfold C
    simp [show (2834352 * k + 621226) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 310613) = 4251528 * k + 931840 := by
    unfold C
    simp [show (1417176 * k + 310613) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 931840) = 2125764 * k + 465920 := by
    unfold C
    simp [show (4251528 * k + 931840) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 465920) = 1062882 * k + 232960 := by
    unfold C
    simp [show (2125764 * k + 465920) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 232960) = 531441 * k + 116480 := by
    unfold C
    simp [show (1062882 * k + 232960) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 229823) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 229823)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_229935 : ∀ k : Nat,
    iterate (1048576 * k + 229935) 32 = 531441 * k + 116537 ∧
      531441 * k + 116537 < 1048576 * k + 229935 := by
  intro k
  have h1 : C (1048576 * k + 229935) = 3145728 * k + 689806 := by
    unfold C
    simp [show (1048576 * k + 229935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 689806) = 1572864 * k + 344903 := by
    unfold C
    simp [show (3145728 * k + 689806) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 344903) = 4718592 * k + 1034710 := by
    unfold C
    simp [show (1572864 * k + 344903) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1034710) = 2359296 * k + 517355 := by
    unfold C
    simp [show (4718592 * k + 1034710) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 517355) = 7077888 * k + 1552066 := by
    unfold C
    simp [show (2359296 * k + 517355) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1552066) = 3538944 * k + 776033 := by
    unfold C
    simp [show (7077888 * k + 1552066) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 776033) = 10616832 * k + 2328100 := by
    unfold C
    simp [show (3538944 * k + 776033) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2328100) = 5308416 * k + 1164050 := by
    unfold C
    simp [show (10616832 * k + 2328100) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1164050) = 2654208 * k + 582025 := by
    unfold C
    simp [show (5308416 * k + 1164050) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 582025) = 7962624 * k + 1746076 := by
    unfold C
    simp [show (2654208 * k + 582025) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1746076) = 3981312 * k + 873038 := by
    unfold C
    simp [show (7962624 * k + 1746076) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 873038) = 1990656 * k + 436519 := by
    unfold C
    simp [show (3981312 * k + 873038) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 436519) = 5971968 * k + 1309558 := by
    unfold C
    simp [show (1990656 * k + 436519) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1309558) = 2985984 * k + 654779 := by
    unfold C
    simp [show (5971968 * k + 1309558) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 654779) = 8957952 * k + 1964338 := by
    unfold C
    simp [show (2985984 * k + 654779) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1964338) = 4478976 * k + 982169 := by
    unfold C
    simp [show (8957952 * k + 1964338) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 982169) = 13436928 * k + 2946508 := by
    unfold C
    simp [show (4478976 * k + 982169) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2946508) = 6718464 * k + 1473254 := by
    unfold C
    simp [show (13436928 * k + 2946508) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1473254) = 3359232 * k + 736627 := by
    unfold C
    simp [show (6718464 * k + 1473254) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 736627) = 10077696 * k + 2209882 := by
    unfold C
    simp [show (3359232 * k + 736627) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2209882) = 5038848 * k + 1104941 := by
    unfold C
    simp [show (10077696 * k + 2209882) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1104941) = 15116544 * k + 3314824 := by
    unfold C
    simp [show (5038848 * k + 1104941) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3314824) = 7558272 * k + 1657412 := by
    unfold C
    simp [show (15116544 * k + 3314824) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1657412) = 3779136 * k + 828706 := by
    unfold C
    simp [show (7558272 * k + 1657412) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 828706) = 1889568 * k + 414353 := by
    unfold C
    simp [show (3779136 * k + 828706) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 414353) = 5668704 * k + 1243060 := by
    unfold C
    simp [show (1889568 * k + 414353) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1243060) = 2834352 * k + 621530 := by
    unfold C
    simp [show (5668704 * k + 1243060) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 621530) = 1417176 * k + 310765 := by
    unfold C
    simp [show (2834352 * k + 621530) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 310765) = 4251528 * k + 932296 := by
    unfold C
    simp [show (1417176 * k + 310765) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 932296) = 2125764 * k + 466148 := by
    unfold C
    simp [show (4251528 * k + 932296) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 466148) = 1062882 * k + 233074 := by
    unfold C
    simp [show (2125764 * k + 466148) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 233074) = 531441 * k + 116537 := by
    unfold C
    simp [show (1062882 * k + 233074) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 229935) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 229935)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_230383 : ∀ k : Nat,
    iterate (1048576 * k + 230383) 32 = 531441 * k + 116764 ∧
      531441 * k + 116764 < 1048576 * k + 230383 := by
  intro k
  have h1 : C (1048576 * k + 230383) = 3145728 * k + 691150 := by
    unfold C
    simp [show (1048576 * k + 230383) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 691150) = 1572864 * k + 345575 := by
    unfold C
    simp [show (3145728 * k + 691150) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 345575) = 4718592 * k + 1036726 := by
    unfold C
    simp [show (1572864 * k + 345575) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1036726) = 2359296 * k + 518363 := by
    unfold C
    simp [show (4718592 * k + 1036726) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 518363) = 7077888 * k + 1555090 := by
    unfold C
    simp [show (2359296 * k + 518363) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1555090) = 3538944 * k + 777545 := by
    unfold C
    simp [show (7077888 * k + 1555090) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 777545) = 10616832 * k + 2332636 := by
    unfold C
    simp [show (3538944 * k + 777545) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2332636) = 5308416 * k + 1166318 := by
    unfold C
    simp [show (10616832 * k + 2332636) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1166318) = 2654208 * k + 583159 := by
    unfold C
    simp [show (5308416 * k + 1166318) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 583159) = 7962624 * k + 1749478 := by
    unfold C
    simp [show (2654208 * k + 583159) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1749478) = 3981312 * k + 874739 := by
    unfold C
    simp [show (7962624 * k + 1749478) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 874739) = 11943936 * k + 2624218 := by
    unfold C
    simp [show (3981312 * k + 874739) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2624218) = 5971968 * k + 1312109 := by
    unfold C
    simp [show (11943936 * k + 2624218) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1312109) = 17915904 * k + 3936328 := by
    unfold C
    simp [show (5971968 * k + 1312109) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3936328) = 8957952 * k + 1968164 := by
    unfold C
    simp [show (17915904 * k + 3936328) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1968164) = 4478976 * k + 984082 := by
    unfold C
    simp [show (8957952 * k + 1968164) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 984082) = 2239488 * k + 492041 := by
    unfold C
    simp [show (4478976 * k + 984082) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 492041) = 6718464 * k + 1476124 := by
    unfold C
    simp [show (2239488 * k + 492041) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1476124) = 3359232 * k + 738062 := by
    unfold C
    simp [show (6718464 * k + 1476124) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 738062) = 1679616 * k + 369031 := by
    unfold C
    simp [show (3359232 * k + 738062) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 369031) = 5038848 * k + 1107094 := by
    unfold C
    simp [show (1679616 * k + 369031) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1107094) = 2519424 * k + 553547 := by
    unfold C
    simp [show (5038848 * k + 1107094) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 553547) = 7558272 * k + 1660642 := by
    unfold C
    simp [show (2519424 * k + 553547) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1660642) = 3779136 * k + 830321 := by
    unfold C
    simp [show (7558272 * k + 1660642) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 830321) = 11337408 * k + 2490964 := by
    unfold C
    simp [show (3779136 * k + 830321) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2490964) = 5668704 * k + 1245482 := by
    unfold C
    simp [show (11337408 * k + 2490964) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1245482) = 2834352 * k + 622741 := by
    unfold C
    simp [show (5668704 * k + 1245482) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 622741) = 8503056 * k + 1868224 := by
    unfold C
    simp [show (2834352 * k + 622741) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1868224) = 4251528 * k + 934112 := by
    unfold C
    simp [show (8503056 * k + 1868224) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 934112) = 2125764 * k + 467056 := by
    unfold C
    simp [show (4251528 * k + 934112) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 467056) = 1062882 * k + 233528 := by
    unfold C
    simp [show (2125764 * k + 467056) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 233528) = 531441 * k + 116764 := by
    unfold C
    simp [show (1062882 * k + 233528) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 230383) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 230383)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard031
