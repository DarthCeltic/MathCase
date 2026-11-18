import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard083

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_639047 : ∀ k : Nat,
    iterate (1048576 * k + 639047) 32 = 531441 * k + 323884 ∧
      531441 * k + 323884 < 1048576 * k + 639047 := by
  intro k
  have h1 : C (1048576 * k + 639047) = 3145728 * k + 1917142 := by
    unfold C
    simp [show (1048576 * k + 639047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1917142) = 1572864 * k + 958571 := by
    unfold C
    simp [show (3145728 * k + 1917142) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 958571) = 4718592 * k + 2875714 := by
    unfold C
    simp [show (1572864 * k + 958571) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2875714) = 2359296 * k + 1437857 := by
    unfold C
    simp [show (4718592 * k + 2875714) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1437857) = 7077888 * k + 4313572 := by
    unfold C
    simp [show (2359296 * k + 1437857) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4313572) = 3538944 * k + 2156786 := by
    unfold C
    simp [show (7077888 * k + 4313572) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2156786) = 1769472 * k + 1078393 := by
    unfold C
    simp [show (3538944 * k + 2156786) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1078393) = 5308416 * k + 3235180 := by
    unfold C
    simp [show (1769472 * k + 1078393) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3235180) = 2654208 * k + 1617590 := by
    unfold C
    simp [show (5308416 * k + 3235180) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1617590) = 1327104 * k + 808795 := by
    unfold C
    simp [show (2654208 * k + 1617590) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 808795) = 3981312 * k + 2426386 := by
    unfold C
    simp [show (1327104 * k + 808795) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2426386) = 1990656 * k + 1213193 := by
    unfold C
    simp [show (3981312 * k + 2426386) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1213193) = 5971968 * k + 3639580 := by
    unfold C
    simp [show (1990656 * k + 1213193) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3639580) = 2985984 * k + 1819790 := by
    unfold C
    simp [show (5971968 * k + 3639580) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1819790) = 1492992 * k + 909895 := by
    unfold C
    simp [show (2985984 * k + 1819790) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 909895) = 4478976 * k + 2729686 := by
    unfold C
    simp [show (1492992 * k + 909895) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2729686) = 2239488 * k + 1364843 := by
    unfold C
    simp [show (4478976 * k + 2729686) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1364843) = 6718464 * k + 4094530 := by
    unfold C
    simp [show (2239488 * k + 1364843) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4094530) = 3359232 * k + 2047265 := by
    unfold C
    simp [show (6718464 * k + 4094530) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2047265) = 10077696 * k + 6141796 := by
    unfold C
    simp [show (3359232 * k + 2047265) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6141796) = 5038848 * k + 3070898 := by
    unfold C
    simp [show (10077696 * k + 6141796) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3070898) = 2519424 * k + 1535449 := by
    unfold C
    simp [show (5038848 * k + 3070898) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1535449) = 7558272 * k + 4606348 := by
    unfold C
    simp [show (2519424 * k + 1535449) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4606348) = 3779136 * k + 2303174 := by
    unfold C
    simp [show (7558272 * k + 4606348) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2303174) = 1889568 * k + 1151587 := by
    unfold C
    simp [show (3779136 * k + 2303174) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1151587) = 5668704 * k + 3454762 := by
    unfold C
    simp [show (1889568 * k + 1151587) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3454762) = 2834352 * k + 1727381 := by
    unfold C
    simp [show (5668704 * k + 3454762) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1727381) = 8503056 * k + 5182144 := by
    unfold C
    simp [show (2834352 * k + 1727381) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5182144) = 4251528 * k + 2591072 := by
    unfold C
    simp [show (8503056 * k + 5182144) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2591072) = 2125764 * k + 1295536 := by
    unfold C
    simp [show (4251528 * k + 2591072) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1295536) = 1062882 * k + 647768 := by
    unfold C
    simp [show (2125764 * k + 1295536) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 647768) = 531441 * k + 323884 := by
    unfold C
    simp [show (1062882 * k + 647768) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 639047) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 639047)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_639067 : ∀ k : Nat,
    iterate (1048576 * k + 639067) 32 = 531441 * k + 323894 ∧
      531441 * k + 323894 < 1048576 * k + 639067 := by
  intro k
  have h1 : C (1048576 * k + 639067) = 3145728 * k + 1917202 := by
    unfold C
    simp [show (1048576 * k + 639067) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1917202) = 1572864 * k + 958601 := by
    unfold C
    simp [show (3145728 * k + 1917202) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 958601) = 4718592 * k + 2875804 := by
    unfold C
    simp [show (1572864 * k + 958601) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2875804) = 2359296 * k + 1437902 := by
    unfold C
    simp [show (4718592 * k + 2875804) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1437902) = 1179648 * k + 718951 := by
    unfold C
    simp [show (2359296 * k + 1437902) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 718951) = 3538944 * k + 2156854 := by
    unfold C
    simp [show (1179648 * k + 718951) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2156854) = 1769472 * k + 1078427 := by
    unfold C
    simp [show (3538944 * k + 2156854) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1078427) = 5308416 * k + 3235282 := by
    unfold C
    simp [show (1769472 * k + 1078427) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3235282) = 2654208 * k + 1617641 := by
    unfold C
    simp [show (5308416 * k + 3235282) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1617641) = 7962624 * k + 4852924 := by
    unfold C
    simp [show (2654208 * k + 1617641) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4852924) = 3981312 * k + 2426462 := by
    unfold C
    simp [show (7962624 * k + 4852924) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2426462) = 1990656 * k + 1213231 := by
    unfold C
    simp [show (3981312 * k + 2426462) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1213231) = 5971968 * k + 3639694 := by
    unfold C
    simp [show (1990656 * k + 1213231) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3639694) = 2985984 * k + 1819847 := by
    unfold C
    simp [show (5971968 * k + 3639694) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1819847) = 8957952 * k + 5459542 := by
    unfold C
    simp [show (2985984 * k + 1819847) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5459542) = 4478976 * k + 2729771 := by
    unfold C
    simp [show (8957952 * k + 5459542) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2729771) = 13436928 * k + 8189314 := by
    unfold C
    simp [show (4478976 * k + 2729771) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8189314) = 6718464 * k + 4094657 := by
    unfold C
    simp [show (13436928 * k + 8189314) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4094657) = 20155392 * k + 12283972 := by
    unfold C
    simp [show (6718464 * k + 4094657) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12283972) = 10077696 * k + 6141986 := by
    unfold C
    simp [show (20155392 * k + 12283972) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6141986) = 5038848 * k + 3070993 := by
    unfold C
    simp [show (10077696 * k + 6141986) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3070993) = 15116544 * k + 9212980 := by
    unfold C
    simp [show (5038848 * k + 3070993) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9212980) = 7558272 * k + 4606490 := by
    unfold C
    simp [show (15116544 * k + 9212980) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4606490) = 3779136 * k + 2303245 := by
    unfold C
    simp [show (7558272 * k + 4606490) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2303245) = 11337408 * k + 6909736 := by
    unfold C
    simp [show (3779136 * k + 2303245) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6909736) = 5668704 * k + 3454868 := by
    unfold C
    simp [show (11337408 * k + 6909736) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3454868) = 2834352 * k + 1727434 := by
    unfold C
    simp [show (5668704 * k + 3454868) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1727434) = 1417176 * k + 863717 := by
    unfold C
    simp [show (2834352 * k + 1727434) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 863717) = 4251528 * k + 2591152 := by
    unfold C
    simp [show (1417176 * k + 863717) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2591152) = 2125764 * k + 1295576 := by
    unfold C
    simp [show (4251528 * k + 2591152) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1295576) = 1062882 * k + 647788 := by
    unfold C
    simp [show (2125764 * k + 1295576) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 647788) = 531441 * k + 323894 := by
    unfold C
    simp [show (1062882 * k + 647788) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 639067) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 639067)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_639535 : ∀ k : Nat,
    iterate (1048576 * k + 639535) 32 = 531441 * k + 324131 ∧
      531441 * k + 324131 < 1048576 * k + 639535 := by
  intro k
  have h1 : C (1048576 * k + 639535) = 3145728 * k + 1918606 := by
    unfold C
    simp [show (1048576 * k + 639535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1918606) = 1572864 * k + 959303 := by
    unfold C
    simp [show (3145728 * k + 1918606) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 959303) = 4718592 * k + 2877910 := by
    unfold C
    simp [show (1572864 * k + 959303) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2877910) = 2359296 * k + 1438955 := by
    unfold C
    simp [show (4718592 * k + 2877910) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1438955) = 7077888 * k + 4316866 := by
    unfold C
    simp [show (2359296 * k + 1438955) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4316866) = 3538944 * k + 2158433 := by
    unfold C
    simp [show (7077888 * k + 4316866) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2158433) = 10616832 * k + 6475300 := by
    unfold C
    simp [show (3538944 * k + 2158433) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6475300) = 5308416 * k + 3237650 := by
    unfold C
    simp [show (10616832 * k + 6475300) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3237650) = 2654208 * k + 1618825 := by
    unfold C
    simp [show (5308416 * k + 3237650) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1618825) = 7962624 * k + 4856476 := by
    unfold C
    simp [show (2654208 * k + 1618825) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4856476) = 3981312 * k + 2428238 := by
    unfold C
    simp [show (7962624 * k + 4856476) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2428238) = 1990656 * k + 1214119 := by
    unfold C
    simp [show (3981312 * k + 2428238) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1214119) = 5971968 * k + 3642358 := by
    unfold C
    simp [show (1990656 * k + 1214119) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3642358) = 2985984 * k + 1821179 := by
    unfold C
    simp [show (5971968 * k + 3642358) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1821179) = 8957952 * k + 5463538 := by
    unfold C
    simp [show (2985984 * k + 1821179) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5463538) = 4478976 * k + 2731769 := by
    unfold C
    simp [show (8957952 * k + 5463538) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2731769) = 13436928 * k + 8195308 := by
    unfold C
    simp [show (4478976 * k + 2731769) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8195308) = 6718464 * k + 4097654 := by
    unfold C
    simp [show (13436928 * k + 8195308) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4097654) = 3359232 * k + 2048827 := by
    unfold C
    simp [show (6718464 * k + 4097654) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2048827) = 10077696 * k + 6146482 := by
    unfold C
    simp [show (3359232 * k + 2048827) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6146482) = 5038848 * k + 3073241 := by
    unfold C
    simp [show (10077696 * k + 6146482) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3073241) = 15116544 * k + 9219724 := by
    unfold C
    simp [show (5038848 * k + 3073241) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9219724) = 7558272 * k + 4609862 := by
    unfold C
    simp [show (15116544 * k + 9219724) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4609862) = 3779136 * k + 2304931 := by
    unfold C
    simp [show (7558272 * k + 4609862) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2304931) = 11337408 * k + 6914794 := by
    unfold C
    simp [show (3779136 * k + 2304931) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6914794) = 5668704 * k + 3457397 := by
    unfold C
    simp [show (11337408 * k + 6914794) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3457397) = 17006112 * k + 10372192 := by
    unfold C
    simp [show (5668704 * k + 3457397) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 10372192) = 8503056 * k + 5186096 := by
    unfold C
    simp [show (17006112 * k + 10372192) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5186096) = 4251528 * k + 2593048 := by
    unfold C
    simp [show (8503056 * k + 5186096) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2593048) = 2125764 * k + 1296524 := by
    unfold C
    simp [show (4251528 * k + 2593048) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1296524) = 1062882 * k + 648262 := by
    unfold C
    simp [show (2125764 * k + 1296524) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 648262) = 531441 * k + 324131 := by
    unfold C
    simp [show (1062882 * k + 648262) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 639535) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 639535)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_640103 : ∀ k : Nat,
    iterate (1048576 * k + 640103) 32 = 531441 * k + 324419 ∧
      531441 * k + 324419 < 1048576 * k + 640103 := by
  intro k
  have h1 : C (1048576 * k + 640103) = 3145728 * k + 1920310 := by
    unfold C
    simp [show (1048576 * k + 640103) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1920310) = 1572864 * k + 960155 := by
    unfold C
    simp [show (3145728 * k + 1920310) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 960155) = 4718592 * k + 2880466 := by
    unfold C
    simp [show (1572864 * k + 960155) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2880466) = 2359296 * k + 1440233 := by
    unfold C
    simp [show (4718592 * k + 2880466) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1440233) = 7077888 * k + 4320700 := by
    unfold C
    simp [show (2359296 * k + 1440233) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4320700) = 3538944 * k + 2160350 := by
    unfold C
    simp [show (7077888 * k + 4320700) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2160350) = 1769472 * k + 1080175 := by
    unfold C
    simp [show (3538944 * k + 2160350) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1080175) = 5308416 * k + 3240526 := by
    unfold C
    simp [show (1769472 * k + 1080175) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3240526) = 2654208 * k + 1620263 := by
    unfold C
    simp [show (5308416 * k + 3240526) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1620263) = 7962624 * k + 4860790 := by
    unfold C
    simp [show (2654208 * k + 1620263) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4860790) = 3981312 * k + 2430395 := by
    unfold C
    simp [show (7962624 * k + 4860790) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2430395) = 11943936 * k + 7291186 := by
    unfold C
    simp [show (3981312 * k + 2430395) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7291186) = 5971968 * k + 3645593 := by
    unfold C
    simp [show (11943936 * k + 7291186) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3645593) = 17915904 * k + 10936780 := by
    unfold C
    simp [show (5971968 * k + 3645593) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10936780) = 8957952 * k + 5468390 := by
    unfold C
    simp [show (17915904 * k + 10936780) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5468390) = 4478976 * k + 2734195 := by
    unfold C
    simp [show (8957952 * k + 5468390) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2734195) = 13436928 * k + 8202586 := by
    unfold C
    simp [show (4478976 * k + 2734195) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8202586) = 6718464 * k + 4101293 := by
    unfold C
    simp [show (13436928 * k + 8202586) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4101293) = 20155392 * k + 12303880 := by
    unfold C
    simp [show (6718464 * k + 4101293) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12303880) = 10077696 * k + 6151940 := by
    unfold C
    simp [show (20155392 * k + 12303880) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6151940) = 5038848 * k + 3075970 := by
    unfold C
    simp [show (10077696 * k + 6151940) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3075970) = 2519424 * k + 1537985 := by
    unfold C
    simp [show (5038848 * k + 3075970) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1537985) = 7558272 * k + 4613956 := by
    unfold C
    simp [show (2519424 * k + 1537985) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4613956) = 3779136 * k + 2306978 := by
    unfold C
    simp [show (7558272 * k + 4613956) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2306978) = 1889568 * k + 1153489 := by
    unfold C
    simp [show (3779136 * k + 2306978) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1153489) = 5668704 * k + 3460468 := by
    unfold C
    simp [show (1889568 * k + 1153489) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3460468) = 2834352 * k + 1730234 := by
    unfold C
    simp [show (5668704 * k + 3460468) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1730234) = 1417176 * k + 865117 := by
    unfold C
    simp [show (2834352 * k + 1730234) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 865117) = 4251528 * k + 2595352 := by
    unfold C
    simp [show (1417176 * k + 865117) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2595352) = 2125764 * k + 1297676 := by
    unfold C
    simp [show (4251528 * k + 2595352) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1297676) = 1062882 * k + 648838 := by
    unfold C
    simp [show (2125764 * k + 1297676) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 648838) = 531441 * k + 324419 := by
    unfold C
    simp [show (1062882 * k + 648838) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 640103) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 640103)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_640559 : ∀ k : Nat,
    iterate (1048576 * k + 640559) 32 = 531441 * k + 324650 ∧
      531441 * k + 324650 < 1048576 * k + 640559 := by
  intro k
  have h1 : C (1048576 * k + 640559) = 3145728 * k + 1921678 := by
    unfold C
    simp [show (1048576 * k + 640559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1921678) = 1572864 * k + 960839 := by
    unfold C
    simp [show (3145728 * k + 1921678) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 960839) = 4718592 * k + 2882518 := by
    unfold C
    simp [show (1572864 * k + 960839) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2882518) = 2359296 * k + 1441259 := by
    unfold C
    simp [show (4718592 * k + 2882518) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1441259) = 7077888 * k + 4323778 := by
    unfold C
    simp [show (2359296 * k + 1441259) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4323778) = 3538944 * k + 2161889 := by
    unfold C
    simp [show (7077888 * k + 4323778) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2161889) = 10616832 * k + 6485668 := by
    unfold C
    simp [show (3538944 * k + 2161889) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6485668) = 5308416 * k + 3242834 := by
    unfold C
    simp [show (10616832 * k + 6485668) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3242834) = 2654208 * k + 1621417 := by
    unfold C
    simp [show (5308416 * k + 3242834) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1621417) = 7962624 * k + 4864252 := by
    unfold C
    simp [show (2654208 * k + 1621417) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4864252) = 3981312 * k + 2432126 := by
    unfold C
    simp [show (7962624 * k + 4864252) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2432126) = 1990656 * k + 1216063 := by
    unfold C
    simp [show (3981312 * k + 2432126) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1216063) = 5971968 * k + 3648190 := by
    unfold C
    simp [show (1990656 * k + 1216063) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3648190) = 2985984 * k + 1824095 := by
    unfold C
    simp [show (5971968 * k + 3648190) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1824095) = 8957952 * k + 5472286 := by
    unfold C
    simp [show (2985984 * k + 1824095) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5472286) = 4478976 * k + 2736143 := by
    unfold C
    simp [show (8957952 * k + 5472286) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2736143) = 13436928 * k + 8208430 := by
    unfold C
    simp [show (4478976 * k + 2736143) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8208430) = 6718464 * k + 4104215 := by
    unfold C
    simp [show (13436928 * k + 8208430) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4104215) = 20155392 * k + 12312646 := by
    unfold C
    simp [show (6718464 * k + 4104215) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12312646) = 10077696 * k + 6156323 := by
    unfold C
    simp [show (20155392 * k + 12312646) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6156323) = 30233088 * k + 18468970 := by
    unfold C
    simp [show (10077696 * k + 6156323) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 18468970) = 15116544 * k + 9234485 := by
    unfold C
    simp [show (30233088 * k + 18468970) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9234485) = 45349632 * k + 27703456 := by
    unfold C
    simp [show (15116544 * k + 9234485) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 27703456) = 22674816 * k + 13851728 := by
    unfold C
    simp [show (45349632 * k + 27703456) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 13851728) = 11337408 * k + 6925864 := by
    unfold C
    simp [show (22674816 * k + 13851728) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6925864) = 5668704 * k + 3462932 := by
    unfold C
    simp [show (11337408 * k + 6925864) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3462932) = 2834352 * k + 1731466 := by
    unfold C
    simp [show (5668704 * k + 3462932) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1731466) = 1417176 * k + 865733 := by
    unfold C
    simp [show (2834352 * k + 1731466) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 865733) = 4251528 * k + 2597200 := by
    unfold C
    simp [show (1417176 * k + 865733) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2597200) = 2125764 * k + 1298600 := by
    unfold C
    simp [show (4251528 * k + 2597200) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1298600) = 1062882 * k + 649300 := by
    unfold C
    simp [show (2125764 * k + 1298600) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 649300) = 531441 * k + 324650 := by
    unfold C
    simp [show (1062882 * k + 649300) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 640559) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 640559)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_640871 : ∀ k : Nat,
    iterate (1048576 * k + 640871) 32 = 531441 * k + 324808 ∧
      531441 * k + 324808 < 1048576 * k + 640871 := by
  intro k
  have h1 : C (1048576 * k + 640871) = 3145728 * k + 1922614 := by
    unfold C
    simp [show (1048576 * k + 640871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1922614) = 1572864 * k + 961307 := by
    unfold C
    simp [show (3145728 * k + 1922614) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 961307) = 4718592 * k + 2883922 := by
    unfold C
    simp [show (1572864 * k + 961307) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2883922) = 2359296 * k + 1441961 := by
    unfold C
    simp [show (4718592 * k + 2883922) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1441961) = 7077888 * k + 4325884 := by
    unfold C
    simp [show (2359296 * k + 1441961) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4325884) = 3538944 * k + 2162942 := by
    unfold C
    simp [show (7077888 * k + 4325884) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2162942) = 1769472 * k + 1081471 := by
    unfold C
    simp [show (3538944 * k + 2162942) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1081471) = 5308416 * k + 3244414 := by
    unfold C
    simp [show (1769472 * k + 1081471) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3244414) = 2654208 * k + 1622207 := by
    unfold C
    simp [show (5308416 * k + 3244414) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1622207) = 7962624 * k + 4866622 := by
    unfold C
    simp [show (2654208 * k + 1622207) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4866622) = 3981312 * k + 2433311 := by
    unfold C
    simp [show (7962624 * k + 4866622) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2433311) = 11943936 * k + 7299934 := by
    unfold C
    simp [show (3981312 * k + 2433311) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7299934) = 5971968 * k + 3649967 := by
    unfold C
    simp [show (11943936 * k + 7299934) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3649967) = 17915904 * k + 10949902 := by
    unfold C
    simp [show (5971968 * k + 3649967) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10949902) = 8957952 * k + 5474951 := by
    unfold C
    simp [show (17915904 * k + 10949902) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5474951) = 26873856 * k + 16424854 := by
    unfold C
    simp [show (8957952 * k + 5474951) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 16424854) = 13436928 * k + 8212427 := by
    unfold C
    simp [show (26873856 * k + 16424854) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8212427) = 40310784 * k + 24637282 := by
    unfold C
    simp [show (13436928 * k + 8212427) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 24637282) = 20155392 * k + 12318641 := by
    unfold C
    simp [show (40310784 * k + 24637282) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 12318641) = 60466176 * k + 36955924 := by
    unfold C
    simp [show (20155392 * k + 12318641) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 36955924) = 30233088 * k + 18477962 := by
    unfold C
    simp [show (60466176 * k + 36955924) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 18477962) = 15116544 * k + 9238981 := by
    unfold C
    simp [show (30233088 * k + 18477962) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9238981) = 45349632 * k + 27716944 := by
    unfold C
    simp [show (15116544 * k + 9238981) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 27716944) = 22674816 * k + 13858472 := by
    unfold C
    simp [show (45349632 * k + 27716944) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 13858472) = 11337408 * k + 6929236 := by
    unfold C
    simp [show (22674816 * k + 13858472) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6929236) = 5668704 * k + 3464618 := by
    unfold C
    simp [show (11337408 * k + 6929236) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3464618) = 2834352 * k + 1732309 := by
    unfold C
    simp [show (5668704 * k + 3464618) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1732309) = 8503056 * k + 5196928 := by
    unfold C
    simp [show (2834352 * k + 1732309) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5196928) = 4251528 * k + 2598464 := by
    unfold C
    simp [show (8503056 * k + 5196928) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2598464) = 2125764 * k + 1299232 := by
    unfold C
    simp [show (4251528 * k + 2598464) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1299232) = 1062882 * k + 649616 := by
    unfold C
    simp [show (2125764 * k + 1299232) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 649616) = 531441 * k + 324808 := by
    unfold C
    simp [show (1062882 * k + 649616) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 640871) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 640871)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_641115 : ∀ k : Nat,
    iterate (1048576 * k + 641115) 32 = 531441 * k + 324932 ∧
      531441 * k + 324932 < 1048576 * k + 641115 := by
  intro k
  have h1 : C (1048576 * k + 641115) = 3145728 * k + 1923346 := by
    unfold C
    simp [show (1048576 * k + 641115) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1923346) = 1572864 * k + 961673 := by
    unfold C
    simp [show (3145728 * k + 1923346) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 961673) = 4718592 * k + 2885020 := by
    unfold C
    simp [show (1572864 * k + 961673) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2885020) = 2359296 * k + 1442510 := by
    unfold C
    simp [show (4718592 * k + 2885020) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1442510) = 1179648 * k + 721255 := by
    unfold C
    simp [show (2359296 * k + 1442510) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 721255) = 3538944 * k + 2163766 := by
    unfold C
    simp [show (1179648 * k + 721255) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2163766) = 1769472 * k + 1081883 := by
    unfold C
    simp [show (3538944 * k + 2163766) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1081883) = 5308416 * k + 3245650 := by
    unfold C
    simp [show (1769472 * k + 1081883) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3245650) = 2654208 * k + 1622825 := by
    unfold C
    simp [show (5308416 * k + 3245650) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1622825) = 7962624 * k + 4868476 := by
    unfold C
    simp [show (2654208 * k + 1622825) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4868476) = 3981312 * k + 2434238 := by
    unfold C
    simp [show (7962624 * k + 4868476) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2434238) = 1990656 * k + 1217119 := by
    unfold C
    simp [show (3981312 * k + 2434238) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1217119) = 5971968 * k + 3651358 := by
    unfold C
    simp [show (1990656 * k + 1217119) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3651358) = 2985984 * k + 1825679 := by
    unfold C
    simp [show (5971968 * k + 3651358) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1825679) = 8957952 * k + 5477038 := by
    unfold C
    simp [show (2985984 * k + 1825679) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5477038) = 4478976 * k + 2738519 := by
    unfold C
    simp [show (8957952 * k + 5477038) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2738519) = 13436928 * k + 8215558 := by
    unfold C
    simp [show (4478976 * k + 2738519) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8215558) = 6718464 * k + 4107779 := by
    unfold C
    simp [show (13436928 * k + 8215558) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4107779) = 20155392 * k + 12323338 := by
    unfold C
    simp [show (6718464 * k + 4107779) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12323338) = 10077696 * k + 6161669 := by
    unfold C
    simp [show (20155392 * k + 12323338) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6161669) = 30233088 * k + 18485008 := by
    unfold C
    simp [show (10077696 * k + 6161669) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 18485008) = 15116544 * k + 9242504 := by
    unfold C
    simp [show (30233088 * k + 18485008) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9242504) = 7558272 * k + 4621252 := by
    unfold C
    simp [show (15116544 * k + 9242504) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4621252) = 3779136 * k + 2310626 := by
    unfold C
    simp [show (7558272 * k + 4621252) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2310626) = 1889568 * k + 1155313 := by
    unfold C
    simp [show (3779136 * k + 2310626) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1155313) = 5668704 * k + 3465940 := by
    unfold C
    simp [show (1889568 * k + 1155313) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3465940) = 2834352 * k + 1732970 := by
    unfold C
    simp [show (5668704 * k + 3465940) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1732970) = 1417176 * k + 866485 := by
    unfold C
    simp [show (2834352 * k + 1732970) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 866485) = 4251528 * k + 2599456 := by
    unfold C
    simp [show (1417176 * k + 866485) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2599456) = 2125764 * k + 1299728 := by
    unfold C
    simp [show (4251528 * k + 2599456) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1299728) = 1062882 * k + 649864 := by
    unfold C
    simp [show (2125764 * k + 1299728) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 649864) = 531441 * k + 324932 := by
    unfold C
    simp [show (1062882 * k + 649864) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 641115) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 641115)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_641151 : ∀ k : Nat,
    iterate (1048576 * k + 641151) 32 = 531441 * k + 324950 ∧
      531441 * k + 324950 < 1048576 * k + 641151 := by
  intro k
  have h1 : C (1048576 * k + 641151) = 3145728 * k + 1923454 := by
    unfold C
    simp [show (1048576 * k + 641151) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1923454) = 1572864 * k + 961727 := by
    unfold C
    simp [show (3145728 * k + 1923454) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 961727) = 4718592 * k + 2885182 := by
    unfold C
    simp [show (1572864 * k + 961727) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2885182) = 2359296 * k + 1442591 := by
    unfold C
    simp [show (4718592 * k + 2885182) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1442591) = 7077888 * k + 4327774 := by
    unfold C
    simp [show (2359296 * k + 1442591) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4327774) = 3538944 * k + 2163887 := by
    unfold C
    simp [show (7077888 * k + 4327774) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2163887) = 10616832 * k + 6491662 := by
    unfold C
    simp [show (3538944 * k + 2163887) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6491662) = 5308416 * k + 3245831 := by
    unfold C
    simp [show (10616832 * k + 6491662) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3245831) = 15925248 * k + 9737494 := by
    unfold C
    simp [show (5308416 * k + 3245831) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9737494) = 7962624 * k + 4868747 := by
    unfold C
    simp [show (15925248 * k + 9737494) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4868747) = 23887872 * k + 14606242 := by
    unfold C
    simp [show (7962624 * k + 4868747) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 14606242) = 11943936 * k + 7303121 := by
    unfold C
    simp [show (23887872 * k + 14606242) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7303121) = 35831808 * k + 21909364 := by
    unfold C
    simp [show (11943936 * k + 7303121) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 21909364) = 17915904 * k + 10954682 := by
    unfold C
    simp [show (35831808 * k + 21909364) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 10954682) = 8957952 * k + 5477341 := by
    unfold C
    simp [show (17915904 * k + 10954682) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5477341) = 26873856 * k + 16432024 := by
    unfold C
    simp [show (8957952 * k + 5477341) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 16432024) = 13436928 * k + 8216012 := by
    unfold C
    simp [show (26873856 * k + 16432024) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8216012) = 6718464 * k + 4108006 := by
    unfold C
    simp [show (13436928 * k + 8216012) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4108006) = 3359232 * k + 2054003 := by
    unfold C
    simp [show (6718464 * k + 4108006) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2054003) = 10077696 * k + 6162010 := by
    unfold C
    simp [show (3359232 * k + 2054003) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6162010) = 5038848 * k + 3081005 := by
    unfold C
    simp [show (10077696 * k + 6162010) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3081005) = 15116544 * k + 9243016 := by
    unfold C
    simp [show (5038848 * k + 3081005) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9243016) = 7558272 * k + 4621508 := by
    unfold C
    simp [show (15116544 * k + 9243016) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4621508) = 3779136 * k + 2310754 := by
    unfold C
    simp [show (7558272 * k + 4621508) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2310754) = 1889568 * k + 1155377 := by
    unfold C
    simp [show (3779136 * k + 2310754) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1155377) = 5668704 * k + 3466132 := by
    unfold C
    simp [show (1889568 * k + 1155377) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3466132) = 2834352 * k + 1733066 := by
    unfold C
    simp [show (5668704 * k + 3466132) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1733066) = 1417176 * k + 866533 := by
    unfold C
    simp [show (2834352 * k + 1733066) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 866533) = 4251528 * k + 2599600 := by
    unfold C
    simp [show (1417176 * k + 866533) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2599600) = 2125764 * k + 1299800 := by
    unfold C
    simp [show (4251528 * k + 2599600) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1299800) = 1062882 * k + 649900 := by
    unfold C
    simp [show (2125764 * k + 1299800) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 649900) = 531441 * k + 324950 := by
    unfold C
    simp [show (1062882 * k + 649900) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 641151) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 641151)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_641439 : ∀ k : Nat,
    iterate (1048576 * k + 641439) 32 = 531441 * k + 325096 ∧
      531441 * k + 325096 < 1048576 * k + 641439 := by
  intro k
  have h1 : C (1048576 * k + 641439) = 3145728 * k + 1924318 := by
    unfold C
    simp [show (1048576 * k + 641439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1924318) = 1572864 * k + 962159 := by
    unfold C
    simp [show (3145728 * k + 1924318) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 962159) = 4718592 * k + 2886478 := by
    unfold C
    simp [show (1572864 * k + 962159) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2886478) = 2359296 * k + 1443239 := by
    unfold C
    simp [show (4718592 * k + 2886478) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1443239) = 7077888 * k + 4329718 := by
    unfold C
    simp [show (2359296 * k + 1443239) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4329718) = 3538944 * k + 2164859 := by
    unfold C
    simp [show (7077888 * k + 4329718) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2164859) = 10616832 * k + 6494578 := by
    unfold C
    simp [show (3538944 * k + 2164859) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6494578) = 5308416 * k + 3247289 := by
    unfold C
    simp [show (10616832 * k + 6494578) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3247289) = 15925248 * k + 9741868 := by
    unfold C
    simp [show (5308416 * k + 3247289) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9741868) = 7962624 * k + 4870934 := by
    unfold C
    simp [show (15925248 * k + 9741868) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4870934) = 3981312 * k + 2435467 := by
    unfold C
    simp [show (7962624 * k + 4870934) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2435467) = 11943936 * k + 7306402 := by
    unfold C
    simp [show (3981312 * k + 2435467) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7306402) = 5971968 * k + 3653201 := by
    unfold C
    simp [show (11943936 * k + 7306402) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3653201) = 17915904 * k + 10959604 := by
    unfold C
    simp [show (5971968 * k + 3653201) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10959604) = 8957952 * k + 5479802 := by
    unfold C
    simp [show (17915904 * k + 10959604) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5479802) = 4478976 * k + 2739901 := by
    unfold C
    simp [show (8957952 * k + 5479802) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2739901) = 13436928 * k + 8219704 := by
    unfold C
    simp [show (4478976 * k + 2739901) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8219704) = 6718464 * k + 4109852 := by
    unfold C
    simp [show (13436928 * k + 8219704) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4109852) = 3359232 * k + 2054926 := by
    unfold C
    simp [show (6718464 * k + 4109852) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2054926) = 1679616 * k + 1027463 := by
    unfold C
    simp [show (3359232 * k + 2054926) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1027463) = 5038848 * k + 3082390 := by
    unfold C
    simp [show (1679616 * k + 1027463) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3082390) = 2519424 * k + 1541195 := by
    unfold C
    simp [show (5038848 * k + 3082390) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1541195) = 7558272 * k + 4623586 := by
    unfold C
    simp [show (2519424 * k + 1541195) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4623586) = 3779136 * k + 2311793 := by
    unfold C
    simp [show (7558272 * k + 4623586) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2311793) = 11337408 * k + 6935380 := by
    unfold C
    simp [show (3779136 * k + 2311793) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6935380) = 5668704 * k + 3467690 := by
    unfold C
    simp [show (11337408 * k + 6935380) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3467690) = 2834352 * k + 1733845 := by
    unfold C
    simp [show (5668704 * k + 3467690) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1733845) = 8503056 * k + 5201536 := by
    unfold C
    simp [show (2834352 * k + 1733845) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5201536) = 4251528 * k + 2600768 := by
    unfold C
    simp [show (8503056 * k + 5201536) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2600768) = 2125764 * k + 1300384 := by
    unfold C
    simp [show (4251528 * k + 2600768) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1300384) = 1062882 * k + 650192 := by
    unfold C
    simp [show (2125764 * k + 1300384) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 650192) = 531441 * k + 325096 := by
    unfold C
    simp [show (1062882 * k + 650192) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 641439) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 641439)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_641471 : ∀ k : Nat,
    iterate (1048576 * k + 641471) 32 = 531441 * k + 325112 ∧
      531441 * k + 325112 < 1048576 * k + 641471 := by
  intro k
  have h1 : C (1048576 * k + 641471) = 3145728 * k + 1924414 := by
    unfold C
    simp [show (1048576 * k + 641471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1924414) = 1572864 * k + 962207 := by
    unfold C
    simp [show (3145728 * k + 1924414) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 962207) = 4718592 * k + 2886622 := by
    unfold C
    simp [show (1572864 * k + 962207) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2886622) = 2359296 * k + 1443311 := by
    unfold C
    simp [show (4718592 * k + 2886622) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1443311) = 7077888 * k + 4329934 := by
    unfold C
    simp [show (2359296 * k + 1443311) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4329934) = 3538944 * k + 2164967 := by
    unfold C
    simp [show (7077888 * k + 4329934) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2164967) = 10616832 * k + 6494902 := by
    unfold C
    simp [show (3538944 * k + 2164967) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6494902) = 5308416 * k + 3247451 := by
    unfold C
    simp [show (10616832 * k + 6494902) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3247451) = 15925248 * k + 9742354 := by
    unfold C
    simp [show (5308416 * k + 3247451) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9742354) = 7962624 * k + 4871177 := by
    unfold C
    simp [show (15925248 * k + 9742354) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4871177) = 23887872 * k + 14613532 := by
    unfold C
    simp [show (7962624 * k + 4871177) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 14613532) = 11943936 * k + 7306766 := by
    unfold C
    simp [show (23887872 * k + 14613532) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7306766) = 5971968 * k + 3653383 := by
    unfold C
    simp [show (11943936 * k + 7306766) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3653383) = 17915904 * k + 10960150 := by
    unfold C
    simp [show (5971968 * k + 3653383) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10960150) = 8957952 * k + 5480075 := by
    unfold C
    simp [show (17915904 * k + 10960150) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5480075) = 26873856 * k + 16440226 := by
    unfold C
    simp [show (8957952 * k + 5480075) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 16440226) = 13436928 * k + 8220113 := by
    unfold C
    simp [show (26873856 * k + 16440226) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8220113) = 40310784 * k + 24660340 := by
    unfold C
    simp [show (13436928 * k + 8220113) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 24660340) = 20155392 * k + 12330170 := by
    unfold C
    simp [show (40310784 * k + 24660340) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 12330170) = 10077696 * k + 6165085 := by
    unfold C
    simp [show (20155392 * k + 12330170) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6165085) = 30233088 * k + 18495256 := by
    unfold C
    simp [show (10077696 * k + 6165085) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 18495256) = 15116544 * k + 9247628 := by
    unfold C
    simp [show (30233088 * k + 18495256) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9247628) = 7558272 * k + 4623814 := by
    unfold C
    simp [show (15116544 * k + 9247628) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4623814) = 3779136 * k + 2311907 := by
    unfold C
    simp [show (7558272 * k + 4623814) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2311907) = 11337408 * k + 6935722 := by
    unfold C
    simp [show (3779136 * k + 2311907) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6935722) = 5668704 * k + 3467861 := by
    unfold C
    simp [show (11337408 * k + 6935722) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3467861) = 17006112 * k + 10403584 := by
    unfold C
    simp [show (5668704 * k + 3467861) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 10403584) = 8503056 * k + 5201792 := by
    unfold C
    simp [show (17006112 * k + 10403584) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5201792) = 4251528 * k + 2600896 := by
    unfold C
    simp [show (8503056 * k + 5201792) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2600896) = 2125764 * k + 1300448 := by
    unfold C
    simp [show (4251528 * k + 2600896) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1300448) = 1062882 * k + 650224 := by
    unfold C
    simp [show (2125764 * k + 1300448) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 650224) = 531441 * k + 325112 := by
    unfold C
    simp [show (1062882 * k + 650224) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 641471) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 641471)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_641959 : ∀ k : Nat,
    iterate (1048576 * k + 641959) 32 = 531441 * k + 325360 ∧
      531441 * k + 325360 < 1048576 * k + 641959 := by
  intro k
  have h1 : C (1048576 * k + 641959) = 3145728 * k + 1925878 := by
    unfold C
    simp [show (1048576 * k + 641959) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1925878) = 1572864 * k + 962939 := by
    unfold C
    simp [show (3145728 * k + 1925878) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 962939) = 4718592 * k + 2888818 := by
    unfold C
    simp [show (1572864 * k + 962939) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2888818) = 2359296 * k + 1444409 := by
    unfold C
    simp [show (4718592 * k + 2888818) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1444409) = 7077888 * k + 4333228 := by
    unfold C
    simp [show (2359296 * k + 1444409) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4333228) = 3538944 * k + 2166614 := by
    unfold C
    simp [show (7077888 * k + 4333228) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2166614) = 1769472 * k + 1083307 := by
    unfold C
    simp [show (3538944 * k + 2166614) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1083307) = 5308416 * k + 3249922 := by
    unfold C
    simp [show (1769472 * k + 1083307) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3249922) = 2654208 * k + 1624961 := by
    unfold C
    simp [show (5308416 * k + 3249922) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1624961) = 7962624 * k + 4874884 := by
    unfold C
    simp [show (2654208 * k + 1624961) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4874884) = 3981312 * k + 2437442 := by
    unfold C
    simp [show (7962624 * k + 4874884) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2437442) = 1990656 * k + 1218721 := by
    unfold C
    simp [show (3981312 * k + 2437442) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1218721) = 5971968 * k + 3656164 := by
    unfold C
    simp [show (1990656 * k + 1218721) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3656164) = 2985984 * k + 1828082 := by
    unfold C
    simp [show (5971968 * k + 3656164) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1828082) = 1492992 * k + 914041 := by
    unfold C
    simp [show (2985984 * k + 1828082) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 914041) = 4478976 * k + 2742124 := by
    unfold C
    simp [show (1492992 * k + 914041) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2742124) = 2239488 * k + 1371062 := by
    unfold C
    simp [show (4478976 * k + 2742124) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1371062) = 1119744 * k + 685531 := by
    unfold C
    simp [show (2239488 * k + 1371062) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 685531) = 3359232 * k + 2056594 := by
    unfold C
    simp [show (1119744 * k + 685531) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2056594) = 1679616 * k + 1028297 := by
    unfold C
    simp [show (3359232 * k + 2056594) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1028297) = 5038848 * k + 3084892 := by
    unfold C
    simp [show (1679616 * k + 1028297) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3084892) = 2519424 * k + 1542446 := by
    unfold C
    simp [show (5038848 * k + 3084892) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1542446) = 1259712 * k + 771223 := by
    unfold C
    simp [show (2519424 * k + 1542446) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 771223) = 3779136 * k + 2313670 := by
    unfold C
    simp [show (1259712 * k + 771223) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2313670) = 1889568 * k + 1156835 := by
    unfold C
    simp [show (3779136 * k + 2313670) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1156835) = 5668704 * k + 3470506 := by
    unfold C
    simp [show (1889568 * k + 1156835) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3470506) = 2834352 * k + 1735253 := by
    unfold C
    simp [show (5668704 * k + 3470506) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1735253) = 8503056 * k + 5205760 := by
    unfold C
    simp [show (2834352 * k + 1735253) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5205760) = 4251528 * k + 2602880 := by
    unfold C
    simp [show (8503056 * k + 5205760) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2602880) = 2125764 * k + 1301440 := by
    unfold C
    simp [show (4251528 * k + 2602880) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1301440) = 1062882 * k + 650720 := by
    unfold C
    simp [show (2125764 * k + 1301440) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 650720) = 531441 * k + 325360 := by
    unfold C
    simp [show (1062882 * k + 650720) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 641959) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 641959)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_642031 : ∀ k : Nat,
    iterate (1048576 * k + 642031) 32 = 531441 * k + 325396 ∧
      531441 * k + 325396 < 1048576 * k + 642031 := by
  intro k
  have h1 : C (1048576 * k + 642031) = 3145728 * k + 1926094 := by
    unfold C
    simp [show (1048576 * k + 642031) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1926094) = 1572864 * k + 963047 := by
    unfold C
    simp [show (3145728 * k + 1926094) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 963047) = 4718592 * k + 2889142 := by
    unfold C
    simp [show (1572864 * k + 963047) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2889142) = 2359296 * k + 1444571 := by
    unfold C
    simp [show (4718592 * k + 2889142) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1444571) = 7077888 * k + 4333714 := by
    unfold C
    simp [show (2359296 * k + 1444571) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4333714) = 3538944 * k + 2166857 := by
    unfold C
    simp [show (7077888 * k + 4333714) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2166857) = 10616832 * k + 6500572 := by
    unfold C
    simp [show (3538944 * k + 2166857) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6500572) = 5308416 * k + 3250286 := by
    unfold C
    simp [show (10616832 * k + 6500572) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3250286) = 2654208 * k + 1625143 := by
    unfold C
    simp [show (5308416 * k + 3250286) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1625143) = 7962624 * k + 4875430 := by
    unfold C
    simp [show (2654208 * k + 1625143) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4875430) = 3981312 * k + 2437715 := by
    unfold C
    simp [show (7962624 * k + 4875430) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2437715) = 11943936 * k + 7313146 := by
    unfold C
    simp [show (3981312 * k + 2437715) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7313146) = 5971968 * k + 3656573 := by
    unfold C
    simp [show (11943936 * k + 7313146) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3656573) = 17915904 * k + 10969720 := by
    unfold C
    simp [show (5971968 * k + 3656573) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10969720) = 8957952 * k + 5484860 := by
    unfold C
    simp [show (17915904 * k + 10969720) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5484860) = 4478976 * k + 2742430 := by
    unfold C
    simp [show (8957952 * k + 5484860) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2742430) = 2239488 * k + 1371215 := by
    unfold C
    simp [show (4478976 * k + 2742430) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1371215) = 6718464 * k + 4113646 := by
    unfold C
    simp [show (2239488 * k + 1371215) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4113646) = 3359232 * k + 2056823 := by
    unfold C
    simp [show (6718464 * k + 4113646) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2056823) = 10077696 * k + 6170470 := by
    unfold C
    simp [show (3359232 * k + 2056823) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6170470) = 5038848 * k + 3085235 := by
    unfold C
    simp [show (10077696 * k + 6170470) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3085235) = 15116544 * k + 9255706 := by
    unfold C
    simp [show (5038848 * k + 3085235) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9255706) = 7558272 * k + 4627853 := by
    unfold C
    simp [show (15116544 * k + 9255706) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4627853) = 22674816 * k + 13883560 := by
    unfold C
    simp [show (7558272 * k + 4627853) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 13883560) = 11337408 * k + 6941780 := by
    unfold C
    simp [show (22674816 * k + 13883560) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6941780) = 5668704 * k + 3470890 := by
    unfold C
    simp [show (11337408 * k + 6941780) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3470890) = 2834352 * k + 1735445 := by
    unfold C
    simp [show (5668704 * k + 3470890) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1735445) = 8503056 * k + 5206336 := by
    unfold C
    simp [show (2834352 * k + 1735445) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5206336) = 4251528 * k + 2603168 := by
    unfold C
    simp [show (8503056 * k + 5206336) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2603168) = 2125764 * k + 1301584 := by
    unfold C
    simp [show (4251528 * k + 2603168) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1301584) = 1062882 * k + 650792 := by
    unfold C
    simp [show (2125764 * k + 1301584) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 650792) = 531441 * k + 325396 := by
    unfold C
    simp [show (1062882 * k + 650792) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 642031) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 642031)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_642279 : ∀ k : Nat,
    iterate (1048576 * k + 642279) 32 = 531441 * k + 325522 ∧
      531441 * k + 325522 < 1048576 * k + 642279 := by
  intro k
  have h1 : C (1048576 * k + 642279) = 3145728 * k + 1926838 := by
    unfold C
    simp [show (1048576 * k + 642279) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1926838) = 1572864 * k + 963419 := by
    unfold C
    simp [show (3145728 * k + 1926838) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 963419) = 4718592 * k + 2890258 := by
    unfold C
    simp [show (1572864 * k + 963419) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2890258) = 2359296 * k + 1445129 := by
    unfold C
    simp [show (4718592 * k + 2890258) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1445129) = 7077888 * k + 4335388 := by
    unfold C
    simp [show (2359296 * k + 1445129) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4335388) = 3538944 * k + 2167694 := by
    unfold C
    simp [show (7077888 * k + 4335388) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2167694) = 1769472 * k + 1083847 := by
    unfold C
    simp [show (3538944 * k + 2167694) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1083847) = 5308416 * k + 3251542 := by
    unfold C
    simp [show (1769472 * k + 1083847) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3251542) = 2654208 * k + 1625771 := by
    unfold C
    simp [show (5308416 * k + 3251542) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1625771) = 7962624 * k + 4877314 := by
    unfold C
    simp [show (2654208 * k + 1625771) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4877314) = 3981312 * k + 2438657 := by
    unfold C
    simp [show (7962624 * k + 4877314) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2438657) = 11943936 * k + 7315972 := by
    unfold C
    simp [show (3981312 * k + 2438657) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7315972) = 5971968 * k + 3657986 := by
    unfold C
    simp [show (11943936 * k + 7315972) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3657986) = 2985984 * k + 1828993 := by
    unfold C
    simp [show (5971968 * k + 3657986) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1828993) = 8957952 * k + 5486980 := by
    unfold C
    simp [show (2985984 * k + 1828993) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5486980) = 4478976 * k + 2743490 := by
    unfold C
    simp [show (8957952 * k + 5486980) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2743490) = 2239488 * k + 1371745 := by
    unfold C
    simp [show (4478976 * k + 2743490) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1371745) = 6718464 * k + 4115236 := by
    unfold C
    simp [show (2239488 * k + 1371745) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4115236) = 3359232 * k + 2057618 := by
    unfold C
    simp [show (6718464 * k + 4115236) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2057618) = 1679616 * k + 1028809 := by
    unfold C
    simp [show (3359232 * k + 2057618) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1028809) = 5038848 * k + 3086428 := by
    unfold C
    simp [show (1679616 * k + 1028809) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3086428) = 2519424 * k + 1543214 := by
    unfold C
    simp [show (5038848 * k + 3086428) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1543214) = 1259712 * k + 771607 := by
    unfold C
    simp [show (2519424 * k + 1543214) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 771607) = 3779136 * k + 2314822 := by
    unfold C
    simp [show (1259712 * k + 771607) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2314822) = 1889568 * k + 1157411 := by
    unfold C
    simp [show (3779136 * k + 2314822) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1157411) = 5668704 * k + 3472234 := by
    unfold C
    simp [show (1889568 * k + 1157411) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3472234) = 2834352 * k + 1736117 := by
    unfold C
    simp [show (5668704 * k + 3472234) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1736117) = 8503056 * k + 5208352 := by
    unfold C
    simp [show (2834352 * k + 1736117) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5208352) = 4251528 * k + 2604176 := by
    unfold C
    simp [show (8503056 * k + 5208352) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2604176) = 2125764 * k + 1302088 := by
    unfold C
    simp [show (4251528 * k + 2604176) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1302088) = 1062882 * k + 651044 := by
    unfold C
    simp [show (2125764 * k + 1302088) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 651044) = 531441 * k + 325522 := by
    unfold C
    simp [show (1062882 * k + 651044) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 642279) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 642279)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_642607 : ∀ k : Nat,
    iterate (1048576 * k + 642607) 32 = 531441 * k + 325688 ∧
      531441 * k + 325688 < 1048576 * k + 642607 := by
  intro k
  have h1 : C (1048576 * k + 642607) = 3145728 * k + 1927822 := by
    unfold C
    simp [show (1048576 * k + 642607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1927822) = 1572864 * k + 963911 := by
    unfold C
    simp [show (3145728 * k + 1927822) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 963911) = 4718592 * k + 2891734 := by
    unfold C
    simp [show (1572864 * k + 963911) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2891734) = 2359296 * k + 1445867 := by
    unfold C
    simp [show (4718592 * k + 2891734) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1445867) = 7077888 * k + 4337602 := by
    unfold C
    simp [show (2359296 * k + 1445867) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4337602) = 3538944 * k + 2168801 := by
    unfold C
    simp [show (7077888 * k + 4337602) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2168801) = 10616832 * k + 6506404 := by
    unfold C
    simp [show (3538944 * k + 2168801) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6506404) = 5308416 * k + 3253202 := by
    unfold C
    simp [show (10616832 * k + 6506404) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3253202) = 2654208 * k + 1626601 := by
    unfold C
    simp [show (5308416 * k + 3253202) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1626601) = 7962624 * k + 4879804 := by
    unfold C
    simp [show (2654208 * k + 1626601) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4879804) = 3981312 * k + 2439902 := by
    unfold C
    simp [show (7962624 * k + 4879804) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2439902) = 1990656 * k + 1219951 := by
    unfold C
    simp [show (3981312 * k + 2439902) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1219951) = 5971968 * k + 3659854 := by
    unfold C
    simp [show (1990656 * k + 1219951) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3659854) = 2985984 * k + 1829927 := by
    unfold C
    simp [show (5971968 * k + 3659854) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1829927) = 8957952 * k + 5489782 := by
    unfold C
    simp [show (2985984 * k + 1829927) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5489782) = 4478976 * k + 2744891 := by
    unfold C
    simp [show (8957952 * k + 5489782) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2744891) = 13436928 * k + 8234674 := by
    unfold C
    simp [show (4478976 * k + 2744891) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8234674) = 6718464 * k + 4117337 := by
    unfold C
    simp [show (13436928 * k + 8234674) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4117337) = 20155392 * k + 12352012 := by
    unfold C
    simp [show (6718464 * k + 4117337) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12352012) = 10077696 * k + 6176006 := by
    unfold C
    simp [show (20155392 * k + 12352012) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6176006) = 5038848 * k + 3088003 := by
    unfold C
    simp [show (10077696 * k + 6176006) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3088003) = 15116544 * k + 9264010 := by
    unfold C
    simp [show (5038848 * k + 3088003) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9264010) = 7558272 * k + 4632005 := by
    unfold C
    simp [show (15116544 * k + 9264010) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4632005) = 22674816 * k + 13896016 := by
    unfold C
    simp [show (7558272 * k + 4632005) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 13896016) = 11337408 * k + 6948008 := by
    unfold C
    simp [show (22674816 * k + 13896016) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6948008) = 5668704 * k + 3474004 := by
    unfold C
    simp [show (11337408 * k + 6948008) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3474004) = 2834352 * k + 1737002 := by
    unfold C
    simp [show (5668704 * k + 3474004) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1737002) = 1417176 * k + 868501 := by
    unfold C
    simp [show (2834352 * k + 1737002) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 868501) = 4251528 * k + 2605504 := by
    unfold C
    simp [show (1417176 * k + 868501) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2605504) = 2125764 * k + 1302752 := by
    unfold C
    simp [show (4251528 * k + 2605504) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1302752) = 1062882 * k + 651376 := by
    unfold C
    simp [show (2125764 * k + 1302752) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 651376) = 531441 * k + 325688 := by
    unfold C
    simp [show (1062882 * k + 651376) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 642607) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 642607)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_643943 : ∀ k : Nat,
    iterate (1048576 * k + 643943) 32 = 531441 * k + 326365 ∧
      531441 * k + 326365 < 1048576 * k + 643943 := by
  intro k
  have h1 : C (1048576 * k + 643943) = 3145728 * k + 1931830 := by
    unfold C
    simp [show (1048576 * k + 643943) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1931830) = 1572864 * k + 965915 := by
    unfold C
    simp [show (3145728 * k + 1931830) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 965915) = 4718592 * k + 2897746 := by
    unfold C
    simp [show (1572864 * k + 965915) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2897746) = 2359296 * k + 1448873 := by
    unfold C
    simp [show (4718592 * k + 2897746) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1448873) = 7077888 * k + 4346620 := by
    unfold C
    simp [show (2359296 * k + 1448873) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4346620) = 3538944 * k + 2173310 := by
    unfold C
    simp [show (7077888 * k + 4346620) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2173310) = 1769472 * k + 1086655 := by
    unfold C
    simp [show (3538944 * k + 2173310) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1086655) = 5308416 * k + 3259966 := by
    unfold C
    simp [show (1769472 * k + 1086655) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3259966) = 2654208 * k + 1629983 := by
    unfold C
    simp [show (5308416 * k + 3259966) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1629983) = 7962624 * k + 4889950 := by
    unfold C
    simp [show (2654208 * k + 1629983) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4889950) = 3981312 * k + 2444975 := by
    unfold C
    simp [show (7962624 * k + 4889950) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2444975) = 11943936 * k + 7334926 := by
    unfold C
    simp [show (3981312 * k + 2444975) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7334926) = 5971968 * k + 3667463 := by
    unfold C
    simp [show (11943936 * k + 7334926) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3667463) = 17915904 * k + 11002390 := by
    unfold C
    simp [show (5971968 * k + 3667463) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11002390) = 8957952 * k + 5501195 := by
    unfold C
    simp [show (17915904 * k + 11002390) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5501195) = 26873856 * k + 16503586 := by
    unfold C
    simp [show (8957952 * k + 5501195) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 16503586) = 13436928 * k + 8251793 := by
    unfold C
    simp [show (26873856 * k + 16503586) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8251793) = 40310784 * k + 24755380 := by
    unfold C
    simp [show (13436928 * k + 8251793) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 24755380) = 20155392 * k + 12377690 := by
    unfold C
    simp [show (40310784 * k + 24755380) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 12377690) = 10077696 * k + 6188845 := by
    unfold C
    simp [show (20155392 * k + 12377690) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6188845) = 30233088 * k + 18566536 := by
    unfold C
    simp [show (10077696 * k + 6188845) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 18566536) = 15116544 * k + 9283268 := by
    unfold C
    simp [show (30233088 * k + 18566536) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9283268) = 7558272 * k + 4641634 := by
    unfold C
    simp [show (15116544 * k + 9283268) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4641634) = 3779136 * k + 2320817 := by
    unfold C
    simp [show (7558272 * k + 4641634) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2320817) = 11337408 * k + 6962452 := by
    unfold C
    simp [show (3779136 * k + 2320817) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6962452) = 5668704 * k + 3481226 := by
    unfold C
    simp [show (11337408 * k + 6962452) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3481226) = 2834352 * k + 1740613 := by
    unfold C
    simp [show (5668704 * k + 3481226) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1740613) = 8503056 * k + 5221840 := by
    unfold C
    simp [show (2834352 * k + 1740613) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5221840) = 4251528 * k + 2610920 := by
    unfold C
    simp [show (8503056 * k + 5221840) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2610920) = 2125764 * k + 1305460 := by
    unfold C
    simp [show (4251528 * k + 2610920) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1305460) = 1062882 * k + 652730 := by
    unfold C
    simp [show (2125764 * k + 1305460) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 652730) = 531441 * k + 326365 := by
    unfold C
    simp [show (1062882 * k + 652730) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 643943) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 643943)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_644187 : ∀ k : Nat,
    iterate (1048576 * k + 644187) 32 = 531441 * k + 326489 ∧
      531441 * k + 326489 < 1048576 * k + 644187 := by
  intro k
  have h1 : C (1048576 * k + 644187) = 3145728 * k + 1932562 := by
    unfold C
    simp [show (1048576 * k + 644187) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1932562) = 1572864 * k + 966281 := by
    unfold C
    simp [show (3145728 * k + 1932562) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 966281) = 4718592 * k + 2898844 := by
    unfold C
    simp [show (1572864 * k + 966281) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2898844) = 2359296 * k + 1449422 := by
    unfold C
    simp [show (4718592 * k + 2898844) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1449422) = 1179648 * k + 724711 := by
    unfold C
    simp [show (2359296 * k + 1449422) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 724711) = 3538944 * k + 2174134 := by
    unfold C
    simp [show (1179648 * k + 724711) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2174134) = 1769472 * k + 1087067 := by
    unfold C
    simp [show (3538944 * k + 2174134) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1087067) = 5308416 * k + 3261202 := by
    unfold C
    simp [show (1769472 * k + 1087067) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3261202) = 2654208 * k + 1630601 := by
    unfold C
    simp [show (5308416 * k + 3261202) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1630601) = 7962624 * k + 4891804 := by
    unfold C
    simp [show (2654208 * k + 1630601) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4891804) = 3981312 * k + 2445902 := by
    unfold C
    simp [show (7962624 * k + 4891804) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2445902) = 1990656 * k + 1222951 := by
    unfold C
    simp [show (3981312 * k + 2445902) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1222951) = 5971968 * k + 3668854 := by
    unfold C
    simp [show (1990656 * k + 1222951) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3668854) = 2985984 * k + 1834427 := by
    unfold C
    simp [show (5971968 * k + 3668854) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1834427) = 8957952 * k + 5503282 := by
    unfold C
    simp [show (2985984 * k + 1834427) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5503282) = 4478976 * k + 2751641 := by
    unfold C
    simp [show (8957952 * k + 5503282) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2751641) = 13436928 * k + 8254924 := by
    unfold C
    simp [show (4478976 * k + 2751641) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8254924) = 6718464 * k + 4127462 := by
    unfold C
    simp [show (13436928 * k + 8254924) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4127462) = 3359232 * k + 2063731 := by
    unfold C
    simp [show (6718464 * k + 4127462) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2063731) = 10077696 * k + 6191194 := by
    unfold C
    simp [show (3359232 * k + 2063731) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6191194) = 5038848 * k + 3095597 := by
    unfold C
    simp [show (10077696 * k + 6191194) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3095597) = 15116544 * k + 9286792 := by
    unfold C
    simp [show (5038848 * k + 3095597) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9286792) = 7558272 * k + 4643396 := by
    unfold C
    simp [show (15116544 * k + 9286792) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4643396) = 3779136 * k + 2321698 := by
    unfold C
    simp [show (7558272 * k + 4643396) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2321698) = 1889568 * k + 1160849 := by
    unfold C
    simp [show (3779136 * k + 2321698) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1160849) = 5668704 * k + 3482548 := by
    unfold C
    simp [show (1889568 * k + 1160849) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3482548) = 2834352 * k + 1741274 := by
    unfold C
    simp [show (5668704 * k + 3482548) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1741274) = 1417176 * k + 870637 := by
    unfold C
    simp [show (2834352 * k + 1741274) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 870637) = 4251528 * k + 2611912 := by
    unfold C
    simp [show (1417176 * k + 870637) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2611912) = 2125764 * k + 1305956 := by
    unfold C
    simp [show (4251528 * k + 2611912) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1305956) = 1062882 * k + 652978 := by
    unfold C
    simp [show (2125764 * k + 1305956) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 652978) = 531441 * k + 326489 := by
    unfold C
    simp [show (1062882 * k + 652978) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 644187) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 644187)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_644543 : ∀ k : Nat,
    iterate (1048576 * k + 644543) 32 = 531441 * k + 326669 ∧
      531441 * k + 326669 < 1048576 * k + 644543 := by
  intro k
  have h1 : C (1048576 * k + 644543) = 3145728 * k + 1933630 := by
    unfold C
    simp [show (1048576 * k + 644543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1933630) = 1572864 * k + 966815 := by
    unfold C
    simp [show (3145728 * k + 1933630) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 966815) = 4718592 * k + 2900446 := by
    unfold C
    simp [show (1572864 * k + 966815) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2900446) = 2359296 * k + 1450223 := by
    unfold C
    simp [show (4718592 * k + 2900446) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1450223) = 7077888 * k + 4350670 := by
    unfold C
    simp [show (2359296 * k + 1450223) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4350670) = 3538944 * k + 2175335 := by
    unfold C
    simp [show (7077888 * k + 4350670) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2175335) = 10616832 * k + 6526006 := by
    unfold C
    simp [show (3538944 * k + 2175335) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6526006) = 5308416 * k + 3263003 := by
    unfold C
    simp [show (10616832 * k + 6526006) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3263003) = 15925248 * k + 9789010 := by
    unfold C
    simp [show (5308416 * k + 3263003) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9789010) = 7962624 * k + 4894505 := by
    unfold C
    simp [show (15925248 * k + 9789010) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4894505) = 23887872 * k + 14683516 := by
    unfold C
    simp [show (7962624 * k + 4894505) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 14683516) = 11943936 * k + 7341758 := by
    unfold C
    simp [show (23887872 * k + 14683516) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7341758) = 5971968 * k + 3670879 := by
    unfold C
    simp [show (11943936 * k + 7341758) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3670879) = 17915904 * k + 11012638 := by
    unfold C
    simp [show (5971968 * k + 3670879) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11012638) = 8957952 * k + 5506319 := by
    unfold C
    simp [show (17915904 * k + 11012638) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5506319) = 26873856 * k + 16518958 := by
    unfold C
    simp [show (8957952 * k + 5506319) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 16518958) = 13436928 * k + 8259479 := by
    unfold C
    simp [show (26873856 * k + 16518958) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8259479) = 40310784 * k + 24778438 := by
    unfold C
    simp [show (13436928 * k + 8259479) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 24778438) = 20155392 * k + 12389219 := by
    unfold C
    simp [show (40310784 * k + 24778438) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 12389219) = 60466176 * k + 37167658 := by
    unfold C
    simp [show (20155392 * k + 12389219) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 37167658) = 30233088 * k + 18583829 := by
    unfold C
    simp [show (60466176 * k + 37167658) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 18583829) = 90699264 * k + 55751488 := by
    unfold C
    simp [show (30233088 * k + 18583829) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 55751488) = 45349632 * k + 27875744 := by
    unfold C
    simp [show (90699264 * k + 55751488) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 27875744) = 22674816 * k + 13937872 := by
    unfold C
    simp [show (45349632 * k + 27875744) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 13937872) = 11337408 * k + 6968936 := by
    unfold C
    simp [show (22674816 * k + 13937872) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6968936) = 5668704 * k + 3484468 := by
    unfold C
    simp [show (11337408 * k + 6968936) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3484468) = 2834352 * k + 1742234 := by
    unfold C
    simp [show (5668704 * k + 3484468) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1742234) = 1417176 * k + 871117 := by
    unfold C
    simp [show (2834352 * k + 1742234) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 871117) = 4251528 * k + 2613352 := by
    unfold C
    simp [show (1417176 * k + 871117) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2613352) = 2125764 * k + 1306676 := by
    unfold C
    simp [show (4251528 * k + 2613352) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1306676) = 1062882 * k + 653338 := by
    unfold C
    simp [show (2125764 * k + 1306676) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 653338) = 531441 * k + 326669 := by
    unfold C
    simp [show (1062882 * k + 653338) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 644543) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 644543)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_644635 : ∀ k : Nat,
    iterate (1048576 * k + 644635) 32 = 531441 * k + 326716 ∧
      531441 * k + 326716 < 1048576 * k + 644635 := by
  intro k
  have h1 : C (1048576 * k + 644635) = 3145728 * k + 1933906 := by
    unfold C
    simp [show (1048576 * k + 644635) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1933906) = 1572864 * k + 966953 := by
    unfold C
    simp [show (3145728 * k + 1933906) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 966953) = 4718592 * k + 2900860 := by
    unfold C
    simp [show (1572864 * k + 966953) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2900860) = 2359296 * k + 1450430 := by
    unfold C
    simp [show (4718592 * k + 2900860) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1450430) = 1179648 * k + 725215 := by
    unfold C
    simp [show (2359296 * k + 1450430) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 725215) = 3538944 * k + 2175646 := by
    unfold C
    simp [show (1179648 * k + 725215) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2175646) = 1769472 * k + 1087823 := by
    unfold C
    simp [show (3538944 * k + 2175646) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1087823) = 5308416 * k + 3263470 := by
    unfold C
    simp [show (1769472 * k + 1087823) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3263470) = 2654208 * k + 1631735 := by
    unfold C
    simp [show (5308416 * k + 3263470) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1631735) = 7962624 * k + 4895206 := by
    unfold C
    simp [show (2654208 * k + 1631735) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4895206) = 3981312 * k + 2447603 := by
    unfold C
    simp [show (7962624 * k + 4895206) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2447603) = 11943936 * k + 7342810 := by
    unfold C
    simp [show (3981312 * k + 2447603) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7342810) = 5971968 * k + 3671405 := by
    unfold C
    simp [show (11943936 * k + 7342810) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3671405) = 17915904 * k + 11014216 := by
    unfold C
    simp [show (5971968 * k + 3671405) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11014216) = 8957952 * k + 5507108 := by
    unfold C
    simp [show (17915904 * k + 11014216) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5507108) = 4478976 * k + 2753554 := by
    unfold C
    simp [show (8957952 * k + 5507108) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2753554) = 2239488 * k + 1376777 := by
    unfold C
    simp [show (4478976 * k + 2753554) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1376777) = 6718464 * k + 4130332 := by
    unfold C
    simp [show (2239488 * k + 1376777) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4130332) = 3359232 * k + 2065166 := by
    unfold C
    simp [show (6718464 * k + 4130332) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2065166) = 1679616 * k + 1032583 := by
    unfold C
    simp [show (3359232 * k + 2065166) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1032583) = 5038848 * k + 3097750 := by
    unfold C
    simp [show (1679616 * k + 1032583) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3097750) = 2519424 * k + 1548875 := by
    unfold C
    simp [show (5038848 * k + 3097750) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1548875) = 7558272 * k + 4646626 := by
    unfold C
    simp [show (2519424 * k + 1548875) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4646626) = 3779136 * k + 2323313 := by
    unfold C
    simp [show (7558272 * k + 4646626) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2323313) = 11337408 * k + 6969940 := by
    unfold C
    simp [show (3779136 * k + 2323313) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6969940) = 5668704 * k + 3484970 := by
    unfold C
    simp [show (11337408 * k + 6969940) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3484970) = 2834352 * k + 1742485 := by
    unfold C
    simp [show (5668704 * k + 3484970) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1742485) = 8503056 * k + 5227456 := by
    unfold C
    simp [show (2834352 * k + 1742485) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5227456) = 4251528 * k + 2613728 := by
    unfold C
    simp [show (8503056 * k + 5227456) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2613728) = 2125764 * k + 1306864 := by
    unfold C
    simp [show (4251528 * k + 2613728) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1306864) = 1062882 * k + 653432 := by
    unfold C
    simp [show (2125764 * k + 1306864) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 653432) = 531441 * k + 326716 := by
    unfold C
    simp [show (1062882 * k + 653432) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 644635) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 644635)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_645567 : ∀ k : Nat,
    iterate (1048576 * k + 645567) 32 = 531441 * k + 327188 ∧
      531441 * k + 327188 < 1048576 * k + 645567 := by
  intro k
  have h1 : C (1048576 * k + 645567) = 3145728 * k + 1936702 := by
    unfold C
    simp [show (1048576 * k + 645567) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1936702) = 1572864 * k + 968351 := by
    unfold C
    simp [show (3145728 * k + 1936702) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 968351) = 4718592 * k + 2905054 := by
    unfold C
    simp [show (1572864 * k + 968351) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2905054) = 2359296 * k + 1452527 := by
    unfold C
    simp [show (4718592 * k + 2905054) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1452527) = 7077888 * k + 4357582 := by
    unfold C
    simp [show (2359296 * k + 1452527) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4357582) = 3538944 * k + 2178791 := by
    unfold C
    simp [show (7077888 * k + 4357582) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2178791) = 10616832 * k + 6536374 := by
    unfold C
    simp [show (3538944 * k + 2178791) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6536374) = 5308416 * k + 3268187 := by
    unfold C
    simp [show (10616832 * k + 6536374) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3268187) = 15925248 * k + 9804562 := by
    unfold C
    simp [show (5308416 * k + 3268187) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9804562) = 7962624 * k + 4902281 := by
    unfold C
    simp [show (15925248 * k + 9804562) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4902281) = 23887872 * k + 14706844 := by
    unfold C
    simp [show (7962624 * k + 4902281) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 14706844) = 11943936 * k + 7353422 := by
    unfold C
    simp [show (23887872 * k + 14706844) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7353422) = 5971968 * k + 3676711 := by
    unfold C
    simp [show (11943936 * k + 7353422) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3676711) = 17915904 * k + 11030134 := by
    unfold C
    simp [show (5971968 * k + 3676711) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11030134) = 8957952 * k + 5515067 := by
    unfold C
    simp [show (17915904 * k + 11030134) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5515067) = 26873856 * k + 16545202 := by
    unfold C
    simp [show (8957952 * k + 5515067) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 16545202) = 13436928 * k + 8272601 := by
    unfold C
    simp [show (26873856 * k + 16545202) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8272601) = 40310784 * k + 24817804 := by
    unfold C
    simp [show (13436928 * k + 8272601) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 24817804) = 20155392 * k + 12408902 := by
    unfold C
    simp [show (40310784 * k + 24817804) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 12408902) = 10077696 * k + 6204451 := by
    unfold C
    simp [show (20155392 * k + 12408902) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6204451) = 30233088 * k + 18613354 := by
    unfold C
    simp [show (10077696 * k + 6204451) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 18613354) = 15116544 * k + 9306677 := by
    unfold C
    simp [show (30233088 * k + 18613354) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9306677) = 45349632 * k + 27920032 := by
    unfold C
    simp [show (15116544 * k + 9306677) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 27920032) = 22674816 * k + 13960016 := by
    unfold C
    simp [show (45349632 * k + 27920032) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 13960016) = 11337408 * k + 6980008 := by
    unfold C
    simp [show (22674816 * k + 13960016) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6980008) = 5668704 * k + 3490004 := by
    unfold C
    simp [show (11337408 * k + 6980008) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3490004) = 2834352 * k + 1745002 := by
    unfold C
    simp [show (5668704 * k + 3490004) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1745002) = 1417176 * k + 872501 := by
    unfold C
    simp [show (2834352 * k + 1745002) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 872501) = 4251528 * k + 2617504 := by
    unfold C
    simp [show (1417176 * k + 872501) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2617504) = 2125764 * k + 1308752 := by
    unfold C
    simp [show (4251528 * k + 2617504) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1308752) = 1062882 * k + 654376 := by
    unfold C
    simp [show (2125764 * k + 1308752) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 654376) = 531441 * k + 327188 := by
    unfold C
    simp [show (1062882 * k + 654376) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 645567) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 645567)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_645679 : ∀ k : Nat,
    iterate (1048576 * k + 645679) 32 = 531441 * k + 327245 ∧
      531441 * k + 327245 < 1048576 * k + 645679 := by
  intro k
  have h1 : C (1048576 * k + 645679) = 3145728 * k + 1937038 := by
    unfold C
    simp [show (1048576 * k + 645679) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1937038) = 1572864 * k + 968519 := by
    unfold C
    simp [show (3145728 * k + 1937038) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 968519) = 4718592 * k + 2905558 := by
    unfold C
    simp [show (1572864 * k + 968519) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2905558) = 2359296 * k + 1452779 := by
    unfold C
    simp [show (4718592 * k + 2905558) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1452779) = 7077888 * k + 4358338 := by
    unfold C
    simp [show (2359296 * k + 1452779) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4358338) = 3538944 * k + 2179169 := by
    unfold C
    simp [show (7077888 * k + 4358338) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2179169) = 10616832 * k + 6537508 := by
    unfold C
    simp [show (3538944 * k + 2179169) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6537508) = 5308416 * k + 3268754 := by
    unfold C
    simp [show (10616832 * k + 6537508) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3268754) = 2654208 * k + 1634377 := by
    unfold C
    simp [show (5308416 * k + 3268754) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1634377) = 7962624 * k + 4903132 := by
    unfold C
    simp [show (2654208 * k + 1634377) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4903132) = 3981312 * k + 2451566 := by
    unfold C
    simp [show (7962624 * k + 4903132) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2451566) = 1990656 * k + 1225783 := by
    unfold C
    simp [show (3981312 * k + 2451566) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1225783) = 5971968 * k + 3677350 := by
    unfold C
    simp [show (1990656 * k + 1225783) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3677350) = 2985984 * k + 1838675 := by
    unfold C
    simp [show (5971968 * k + 3677350) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1838675) = 8957952 * k + 5516026 := by
    unfold C
    simp [show (2985984 * k + 1838675) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5516026) = 4478976 * k + 2758013 := by
    unfold C
    simp [show (8957952 * k + 5516026) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2758013) = 13436928 * k + 8274040 := by
    unfold C
    simp [show (4478976 * k + 2758013) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8274040) = 6718464 * k + 4137020 := by
    unfold C
    simp [show (13436928 * k + 8274040) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4137020) = 3359232 * k + 2068510 := by
    unfold C
    simp [show (6718464 * k + 4137020) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2068510) = 1679616 * k + 1034255 := by
    unfold C
    simp [show (3359232 * k + 2068510) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1034255) = 5038848 * k + 3102766 := by
    unfold C
    simp [show (1679616 * k + 1034255) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3102766) = 2519424 * k + 1551383 := by
    unfold C
    simp [show (5038848 * k + 3102766) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1551383) = 7558272 * k + 4654150 := by
    unfold C
    simp [show (2519424 * k + 1551383) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4654150) = 3779136 * k + 2327075 := by
    unfold C
    simp [show (7558272 * k + 4654150) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2327075) = 11337408 * k + 6981226 := by
    unfold C
    simp [show (3779136 * k + 2327075) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6981226) = 5668704 * k + 3490613 := by
    unfold C
    simp [show (11337408 * k + 6981226) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3490613) = 17006112 * k + 10471840 := by
    unfold C
    simp [show (5668704 * k + 3490613) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 10471840) = 8503056 * k + 5235920 := by
    unfold C
    simp [show (17006112 * k + 10471840) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5235920) = 4251528 * k + 2617960 := by
    unfold C
    simp [show (8503056 * k + 5235920) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2617960) = 2125764 * k + 1308980 := by
    unfold C
    simp [show (4251528 * k + 2617960) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1308980) = 1062882 * k + 654490 := by
    unfold C
    simp [show (2125764 * k + 1308980) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 654490) = 531441 * k + 327245 := by
    unfold C
    simp [show (1062882 * k + 654490) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 645679) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 645679)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard083
