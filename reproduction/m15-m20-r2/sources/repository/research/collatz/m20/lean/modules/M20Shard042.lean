import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard042

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_312135 : ∀ k : Nat,
    iterate (1048576 * k + 312135) 32 = 531441 * k + 158198 ∧
      531441 * k + 158198 < 1048576 * k + 312135 := by
  intro k
  have h1 : C (1048576 * k + 312135) = 3145728 * k + 936406 := by
    unfold C
    simp [show (1048576 * k + 312135) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 936406) = 1572864 * k + 468203 := by
    unfold C
    simp [show (3145728 * k + 936406) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 468203) = 4718592 * k + 1404610 := by
    unfold C
    simp [show (1572864 * k + 468203) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1404610) = 2359296 * k + 702305 := by
    unfold C
    simp [show (4718592 * k + 1404610) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 702305) = 7077888 * k + 2106916 := by
    unfold C
    simp [show (2359296 * k + 702305) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2106916) = 3538944 * k + 1053458 := by
    unfold C
    simp [show (7077888 * k + 2106916) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1053458) = 1769472 * k + 526729 := by
    unfold C
    simp [show (3538944 * k + 1053458) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 526729) = 5308416 * k + 1580188 := by
    unfold C
    simp [show (1769472 * k + 526729) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1580188) = 2654208 * k + 790094 := by
    unfold C
    simp [show (5308416 * k + 1580188) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 790094) = 1327104 * k + 395047 := by
    unfold C
    simp [show (2654208 * k + 790094) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 395047) = 3981312 * k + 1185142 := by
    unfold C
    simp [show (1327104 * k + 395047) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1185142) = 1990656 * k + 592571 := by
    unfold C
    simp [show (3981312 * k + 1185142) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 592571) = 5971968 * k + 1777714 := by
    unfold C
    simp [show (1990656 * k + 592571) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1777714) = 2985984 * k + 888857 := by
    unfold C
    simp [show (5971968 * k + 1777714) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 888857) = 8957952 * k + 2666572 := by
    unfold C
    simp [show (2985984 * k + 888857) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2666572) = 4478976 * k + 1333286 := by
    unfold C
    simp [show (8957952 * k + 2666572) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1333286) = 2239488 * k + 666643 := by
    unfold C
    simp [show (4478976 * k + 1333286) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 666643) = 6718464 * k + 1999930 := by
    unfold C
    simp [show (2239488 * k + 666643) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1999930) = 3359232 * k + 999965 := by
    unfold C
    simp [show (6718464 * k + 1999930) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 999965) = 10077696 * k + 2999896 := by
    unfold C
    simp [show (3359232 * k + 999965) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2999896) = 5038848 * k + 1499948 := by
    unfold C
    simp [show (10077696 * k + 2999896) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1499948) = 2519424 * k + 749974 := by
    unfold C
    simp [show (5038848 * k + 1499948) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 749974) = 1259712 * k + 374987 := by
    unfold C
    simp [show (2519424 * k + 749974) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 374987) = 3779136 * k + 1124962 := by
    unfold C
    simp [show (1259712 * k + 374987) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1124962) = 1889568 * k + 562481 := by
    unfold C
    simp [show (3779136 * k + 1124962) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 562481) = 5668704 * k + 1687444 := by
    unfold C
    simp [show (1889568 * k + 562481) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1687444) = 2834352 * k + 843722 := by
    unfold C
    simp [show (5668704 * k + 1687444) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 843722) = 1417176 * k + 421861 := by
    unfold C
    simp [show (2834352 * k + 843722) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 421861) = 4251528 * k + 1265584 := by
    unfold C
    simp [show (1417176 * k + 421861) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1265584) = 2125764 * k + 632792 := by
    unfold C
    simp [show (4251528 * k + 1265584) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 632792) = 1062882 * k + 316396 := by
    unfold C
    simp [show (2125764 * k + 632792) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 316396) = 531441 * k + 158198 := by
    unfold C
    simp [show (1062882 * k + 316396) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 312135) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 312135)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_312347 : ∀ k : Nat,
    iterate (1048576 * k + 312347) 32 = 531441 * k + 158305 ∧
      531441 * k + 158305 < 1048576 * k + 312347 := by
  intro k
  have h1 : C (1048576 * k + 312347) = 3145728 * k + 937042 := by
    unfold C
    simp [show (1048576 * k + 312347) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 937042) = 1572864 * k + 468521 := by
    unfold C
    simp [show (3145728 * k + 937042) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 468521) = 4718592 * k + 1405564 := by
    unfold C
    simp [show (1572864 * k + 468521) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1405564) = 2359296 * k + 702782 := by
    unfold C
    simp [show (4718592 * k + 1405564) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 702782) = 1179648 * k + 351391 := by
    unfold C
    simp [show (2359296 * k + 702782) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 351391) = 3538944 * k + 1054174 := by
    unfold C
    simp [show (1179648 * k + 351391) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1054174) = 1769472 * k + 527087 := by
    unfold C
    simp [show (3538944 * k + 1054174) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 527087) = 5308416 * k + 1581262 := by
    unfold C
    simp [show (1769472 * k + 527087) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1581262) = 2654208 * k + 790631 := by
    unfold C
    simp [show (5308416 * k + 1581262) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 790631) = 7962624 * k + 2371894 := by
    unfold C
    simp [show (2654208 * k + 790631) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2371894) = 3981312 * k + 1185947 := by
    unfold C
    simp [show (7962624 * k + 2371894) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1185947) = 11943936 * k + 3557842 := by
    unfold C
    simp [show (3981312 * k + 1185947) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3557842) = 5971968 * k + 1778921 := by
    unfold C
    simp [show (11943936 * k + 3557842) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1778921) = 17915904 * k + 5336764 := by
    unfold C
    simp [show (5971968 * k + 1778921) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5336764) = 8957952 * k + 2668382 := by
    unfold C
    simp [show (17915904 * k + 5336764) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2668382) = 4478976 * k + 1334191 := by
    unfold C
    simp [show (8957952 * k + 2668382) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1334191) = 13436928 * k + 4002574 := by
    unfold C
    simp [show (4478976 * k + 1334191) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4002574) = 6718464 * k + 2001287 := by
    unfold C
    simp [show (13436928 * k + 4002574) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2001287) = 20155392 * k + 6003862 := by
    unfold C
    simp [show (6718464 * k + 2001287) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 6003862) = 10077696 * k + 3001931 := by
    unfold C
    simp [show (20155392 * k + 6003862) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3001931) = 30233088 * k + 9005794 := by
    unfold C
    simp [show (10077696 * k + 3001931) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 9005794) = 15116544 * k + 4502897 := by
    unfold C
    simp [show (30233088 * k + 9005794) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4502897) = 45349632 * k + 13508692 := by
    unfold C
    simp [show (15116544 * k + 4502897) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 13508692) = 22674816 * k + 6754346 := by
    unfold C
    simp [show (45349632 * k + 13508692) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 6754346) = 11337408 * k + 3377173 := by
    unfold C
    simp [show (22674816 * k + 6754346) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3377173) = 34012224 * k + 10131520 := by
    unfold C
    simp [show (11337408 * k + 3377173) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 10131520) = 17006112 * k + 5065760 := by
    unfold C
    simp [show (34012224 * k + 10131520) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 5065760) = 8503056 * k + 2532880 := by
    unfold C
    simp [show (17006112 * k + 5065760) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2532880) = 4251528 * k + 1266440 := by
    unfold C
    simp [show (8503056 * k + 2532880) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1266440) = 2125764 * k + 633220 := by
    unfold C
    simp [show (4251528 * k + 1266440) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 633220) = 1062882 * k + 316610 := by
    unfold C
    simp [show (2125764 * k + 633220) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 316610) = 531441 * k + 158305 := by
    unfold C
    simp [show (1062882 * k + 316610) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 312347) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 312347)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_312571 : ∀ k : Nat,
    iterate (1048576 * k + 312571) 32 = 531441 * k + 158419 ∧
      531441 * k + 158419 < 1048576 * k + 312571 := by
  intro k
  have h1 : C (1048576 * k + 312571) = 3145728 * k + 937714 := by
    unfold C
    simp [show (1048576 * k + 312571) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 937714) = 1572864 * k + 468857 := by
    unfold C
    simp [show (3145728 * k + 937714) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 468857) = 4718592 * k + 1406572 := by
    unfold C
    simp [show (1572864 * k + 468857) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1406572) = 2359296 * k + 703286 := by
    unfold C
    simp [show (4718592 * k + 1406572) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 703286) = 1179648 * k + 351643 := by
    unfold C
    simp [show (2359296 * k + 703286) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 351643) = 3538944 * k + 1054930 := by
    unfold C
    simp [show (1179648 * k + 351643) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1054930) = 1769472 * k + 527465 := by
    unfold C
    simp [show (3538944 * k + 1054930) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 527465) = 5308416 * k + 1582396 := by
    unfold C
    simp [show (1769472 * k + 527465) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1582396) = 2654208 * k + 791198 := by
    unfold C
    simp [show (5308416 * k + 1582396) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 791198) = 1327104 * k + 395599 := by
    unfold C
    simp [show (2654208 * k + 791198) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 395599) = 3981312 * k + 1186798 := by
    unfold C
    simp [show (1327104 * k + 395599) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1186798) = 1990656 * k + 593399 := by
    unfold C
    simp [show (3981312 * k + 1186798) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 593399) = 5971968 * k + 1780198 := by
    unfold C
    simp [show (1990656 * k + 593399) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1780198) = 2985984 * k + 890099 := by
    unfold C
    simp [show (5971968 * k + 1780198) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 890099) = 8957952 * k + 2670298 := by
    unfold C
    simp [show (2985984 * k + 890099) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2670298) = 4478976 * k + 1335149 := by
    unfold C
    simp [show (8957952 * k + 2670298) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1335149) = 13436928 * k + 4005448 := by
    unfold C
    simp [show (4478976 * k + 1335149) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4005448) = 6718464 * k + 2002724 := by
    unfold C
    simp [show (13436928 * k + 4005448) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2002724) = 3359232 * k + 1001362 := by
    unfold C
    simp [show (6718464 * k + 2002724) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1001362) = 1679616 * k + 500681 := by
    unfold C
    simp [show (3359232 * k + 1001362) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 500681) = 5038848 * k + 1502044 := by
    unfold C
    simp [show (1679616 * k + 500681) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1502044) = 2519424 * k + 751022 := by
    unfold C
    simp [show (5038848 * k + 1502044) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 751022) = 1259712 * k + 375511 := by
    unfold C
    simp [show (2519424 * k + 751022) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 375511) = 3779136 * k + 1126534 := by
    unfold C
    simp [show (1259712 * k + 375511) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1126534) = 1889568 * k + 563267 := by
    unfold C
    simp [show (3779136 * k + 1126534) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 563267) = 5668704 * k + 1689802 := by
    unfold C
    simp [show (1889568 * k + 563267) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1689802) = 2834352 * k + 844901 := by
    unfold C
    simp [show (5668704 * k + 1689802) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 844901) = 8503056 * k + 2534704 := by
    unfold C
    simp [show (2834352 * k + 844901) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2534704) = 4251528 * k + 1267352 := by
    unfold C
    simp [show (8503056 * k + 2534704) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1267352) = 2125764 * k + 633676 := by
    unfold C
    simp [show (4251528 * k + 1267352) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 633676) = 1062882 * k + 316838 := by
    unfold C
    simp [show (2125764 * k + 633676) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 316838) = 531441 * k + 158419 := by
    unfold C
    simp [show (1062882 * k + 316838) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 312571) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 312571)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_313063 : ∀ k : Nat,
    iterate (1048576 * k + 313063) 32 = 531441 * k + 158668 ∧
      531441 * k + 158668 < 1048576 * k + 313063 := by
  intro k
  have h1 : C (1048576 * k + 313063) = 3145728 * k + 939190 := by
    unfold C
    simp [show (1048576 * k + 313063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 939190) = 1572864 * k + 469595 := by
    unfold C
    simp [show (3145728 * k + 939190) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 469595) = 4718592 * k + 1408786 := by
    unfold C
    simp [show (1572864 * k + 469595) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1408786) = 2359296 * k + 704393 := by
    unfold C
    simp [show (4718592 * k + 1408786) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 704393) = 7077888 * k + 2113180 := by
    unfold C
    simp [show (2359296 * k + 704393) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2113180) = 3538944 * k + 1056590 := by
    unfold C
    simp [show (7077888 * k + 2113180) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1056590) = 1769472 * k + 528295 := by
    unfold C
    simp [show (3538944 * k + 1056590) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 528295) = 5308416 * k + 1584886 := by
    unfold C
    simp [show (1769472 * k + 528295) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1584886) = 2654208 * k + 792443 := by
    unfold C
    simp [show (5308416 * k + 1584886) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 792443) = 7962624 * k + 2377330 := by
    unfold C
    simp [show (2654208 * k + 792443) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2377330) = 3981312 * k + 1188665 := by
    unfold C
    simp [show (7962624 * k + 2377330) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1188665) = 11943936 * k + 3565996 := by
    unfold C
    simp [show (3981312 * k + 1188665) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3565996) = 5971968 * k + 1782998 := by
    unfold C
    simp [show (11943936 * k + 3565996) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1782998) = 2985984 * k + 891499 := by
    unfold C
    simp [show (5971968 * k + 1782998) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 891499) = 8957952 * k + 2674498 := by
    unfold C
    simp [show (2985984 * k + 891499) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2674498) = 4478976 * k + 1337249 := by
    unfold C
    simp [show (8957952 * k + 2674498) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1337249) = 13436928 * k + 4011748 := by
    unfold C
    simp [show (4478976 * k + 1337249) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4011748) = 6718464 * k + 2005874 := by
    unfold C
    simp [show (13436928 * k + 4011748) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2005874) = 3359232 * k + 1002937 := by
    unfold C
    simp [show (6718464 * k + 2005874) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1002937) = 10077696 * k + 3008812 := by
    unfold C
    simp [show (3359232 * k + 1002937) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3008812) = 5038848 * k + 1504406 := by
    unfold C
    simp [show (10077696 * k + 3008812) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1504406) = 2519424 * k + 752203 := by
    unfold C
    simp [show (5038848 * k + 1504406) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 752203) = 7558272 * k + 2256610 := by
    unfold C
    simp [show (2519424 * k + 752203) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2256610) = 3779136 * k + 1128305 := by
    unfold C
    simp [show (7558272 * k + 2256610) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1128305) = 11337408 * k + 3384916 := by
    unfold C
    simp [show (3779136 * k + 1128305) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3384916) = 5668704 * k + 1692458 := by
    unfold C
    simp [show (11337408 * k + 3384916) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1692458) = 2834352 * k + 846229 := by
    unfold C
    simp [show (5668704 * k + 1692458) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 846229) = 8503056 * k + 2538688 := by
    unfold C
    simp [show (2834352 * k + 846229) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2538688) = 4251528 * k + 1269344 := by
    unfold C
    simp [show (8503056 * k + 2538688) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1269344) = 2125764 * k + 634672 := by
    unfold C
    simp [show (4251528 * k + 1269344) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 634672) = 1062882 * k + 317336 := by
    unfold C
    simp [show (2125764 * k + 634672) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 317336) = 531441 * k + 158668 := by
    unfold C
    simp [show (1062882 * k + 317336) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 313063) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 313063)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_313159 : ∀ k : Nat,
    iterate (1048576 * k + 313159) 32 = 531441 * k + 158717 ∧
      531441 * k + 158717 < 1048576 * k + 313159 := by
  intro k
  have h1 : C (1048576 * k + 313159) = 3145728 * k + 939478 := by
    unfold C
    simp [show (1048576 * k + 313159) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 939478) = 1572864 * k + 469739 := by
    unfold C
    simp [show (3145728 * k + 939478) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 469739) = 4718592 * k + 1409218 := by
    unfold C
    simp [show (1572864 * k + 469739) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1409218) = 2359296 * k + 704609 := by
    unfold C
    simp [show (4718592 * k + 1409218) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 704609) = 7077888 * k + 2113828 := by
    unfold C
    simp [show (2359296 * k + 704609) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2113828) = 3538944 * k + 1056914 := by
    unfold C
    simp [show (7077888 * k + 2113828) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1056914) = 1769472 * k + 528457 := by
    unfold C
    simp [show (3538944 * k + 1056914) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 528457) = 5308416 * k + 1585372 := by
    unfold C
    simp [show (1769472 * k + 528457) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1585372) = 2654208 * k + 792686 := by
    unfold C
    simp [show (5308416 * k + 1585372) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 792686) = 1327104 * k + 396343 := by
    unfold C
    simp [show (2654208 * k + 792686) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 396343) = 3981312 * k + 1189030 := by
    unfold C
    simp [show (1327104 * k + 396343) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1189030) = 1990656 * k + 594515 := by
    unfold C
    simp [show (3981312 * k + 1189030) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 594515) = 5971968 * k + 1783546 := by
    unfold C
    simp [show (1990656 * k + 594515) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1783546) = 2985984 * k + 891773 := by
    unfold C
    simp [show (5971968 * k + 1783546) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 891773) = 8957952 * k + 2675320 := by
    unfold C
    simp [show (2985984 * k + 891773) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2675320) = 4478976 * k + 1337660 := by
    unfold C
    simp [show (8957952 * k + 2675320) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1337660) = 2239488 * k + 668830 := by
    unfold C
    simp [show (4478976 * k + 1337660) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 668830) = 1119744 * k + 334415 := by
    unfold C
    simp [show (2239488 * k + 668830) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 334415) = 3359232 * k + 1003246 := by
    unfold C
    simp [show (1119744 * k + 334415) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1003246) = 1679616 * k + 501623 := by
    unfold C
    simp [show (3359232 * k + 1003246) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 501623) = 5038848 * k + 1504870 := by
    unfold C
    simp [show (1679616 * k + 501623) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1504870) = 2519424 * k + 752435 := by
    unfold C
    simp [show (5038848 * k + 1504870) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 752435) = 7558272 * k + 2257306 := by
    unfold C
    simp [show (2519424 * k + 752435) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2257306) = 3779136 * k + 1128653 := by
    unfold C
    simp [show (7558272 * k + 2257306) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1128653) = 11337408 * k + 3385960 := by
    unfold C
    simp [show (3779136 * k + 1128653) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3385960) = 5668704 * k + 1692980 := by
    unfold C
    simp [show (11337408 * k + 3385960) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1692980) = 2834352 * k + 846490 := by
    unfold C
    simp [show (5668704 * k + 1692980) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 846490) = 1417176 * k + 423245 := by
    unfold C
    simp [show (2834352 * k + 846490) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 423245) = 4251528 * k + 1269736 := by
    unfold C
    simp [show (1417176 * k + 423245) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1269736) = 2125764 * k + 634868 := by
    unfold C
    simp [show (4251528 * k + 1269736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 634868) = 1062882 * k + 317434 := by
    unfold C
    simp [show (2125764 * k + 634868) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 317434) = 531441 * k + 158717 := by
    unfold C
    simp [show (1062882 * k + 317434) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 313159) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 313159)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_313823 : ∀ k : Nat,
    iterate (1048576 * k + 313823) 32 = 531441 * k + 159053 ∧
      531441 * k + 159053 < 1048576 * k + 313823 := by
  intro k
  have h1 : C (1048576 * k + 313823) = 3145728 * k + 941470 := by
    unfold C
    simp [show (1048576 * k + 313823) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 941470) = 1572864 * k + 470735 := by
    unfold C
    simp [show (3145728 * k + 941470) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 470735) = 4718592 * k + 1412206 := by
    unfold C
    simp [show (1572864 * k + 470735) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1412206) = 2359296 * k + 706103 := by
    unfold C
    simp [show (4718592 * k + 1412206) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 706103) = 7077888 * k + 2118310 := by
    unfold C
    simp [show (2359296 * k + 706103) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2118310) = 3538944 * k + 1059155 := by
    unfold C
    simp [show (7077888 * k + 2118310) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1059155) = 10616832 * k + 3177466 := by
    unfold C
    simp [show (3538944 * k + 1059155) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3177466) = 5308416 * k + 1588733 := by
    unfold C
    simp [show (10616832 * k + 3177466) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1588733) = 15925248 * k + 4766200 := by
    unfold C
    simp [show (5308416 * k + 1588733) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4766200) = 7962624 * k + 2383100 := by
    unfold C
    simp [show (15925248 * k + 4766200) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2383100) = 3981312 * k + 1191550 := by
    unfold C
    simp [show (7962624 * k + 2383100) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1191550) = 1990656 * k + 595775 := by
    unfold C
    simp [show (3981312 * k + 1191550) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 595775) = 5971968 * k + 1787326 := by
    unfold C
    simp [show (1990656 * k + 595775) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1787326) = 2985984 * k + 893663 := by
    unfold C
    simp [show (5971968 * k + 1787326) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 893663) = 8957952 * k + 2680990 := by
    unfold C
    simp [show (2985984 * k + 893663) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2680990) = 4478976 * k + 1340495 := by
    unfold C
    simp [show (8957952 * k + 2680990) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1340495) = 13436928 * k + 4021486 := by
    unfold C
    simp [show (4478976 * k + 1340495) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4021486) = 6718464 * k + 2010743 := by
    unfold C
    simp [show (13436928 * k + 4021486) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2010743) = 20155392 * k + 6032230 := by
    unfold C
    simp [show (6718464 * k + 2010743) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 6032230) = 10077696 * k + 3016115 := by
    unfold C
    simp [show (20155392 * k + 6032230) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3016115) = 30233088 * k + 9048346 := by
    unfold C
    simp [show (10077696 * k + 3016115) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 9048346) = 15116544 * k + 4524173 := by
    unfold C
    simp [show (30233088 * k + 9048346) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4524173) = 45349632 * k + 13572520 := by
    unfold C
    simp [show (15116544 * k + 4524173) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 13572520) = 22674816 * k + 6786260 := by
    unfold C
    simp [show (45349632 * k + 13572520) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 6786260) = 11337408 * k + 3393130 := by
    unfold C
    simp [show (22674816 * k + 6786260) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3393130) = 5668704 * k + 1696565 := by
    unfold C
    simp [show (11337408 * k + 3393130) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1696565) = 17006112 * k + 5089696 := by
    unfold C
    simp [show (5668704 * k + 1696565) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 5089696) = 8503056 * k + 2544848 := by
    unfold C
    simp [show (17006112 * k + 5089696) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2544848) = 4251528 * k + 1272424 := by
    unfold C
    simp [show (8503056 * k + 2544848) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1272424) = 2125764 * k + 636212 := by
    unfold C
    simp [show (4251528 * k + 1272424) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 636212) = 1062882 * k + 318106 := by
    unfold C
    simp [show (2125764 * k + 636212) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 318106) = 531441 * k + 159053 := by
    unfold C
    simp [show (1062882 * k + 318106) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 313823) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 313823)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_313983 : ∀ k : Nat,
    iterate (1048576 * k + 313983) 32 = 531441 * k + 159134 ∧
      531441 * k + 159134 < 1048576 * k + 313983 := by
  intro k
  have h1 : C (1048576 * k + 313983) = 3145728 * k + 941950 := by
    unfold C
    simp [show (1048576 * k + 313983) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 941950) = 1572864 * k + 470975 := by
    unfold C
    simp [show (3145728 * k + 941950) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 470975) = 4718592 * k + 1412926 := by
    unfold C
    simp [show (1572864 * k + 470975) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1412926) = 2359296 * k + 706463 := by
    unfold C
    simp [show (4718592 * k + 1412926) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 706463) = 7077888 * k + 2119390 := by
    unfold C
    simp [show (2359296 * k + 706463) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2119390) = 3538944 * k + 1059695 := by
    unfold C
    simp [show (7077888 * k + 2119390) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1059695) = 10616832 * k + 3179086 := by
    unfold C
    simp [show (3538944 * k + 1059695) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3179086) = 5308416 * k + 1589543 := by
    unfold C
    simp [show (10616832 * k + 3179086) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1589543) = 15925248 * k + 4768630 := by
    unfold C
    simp [show (5308416 * k + 1589543) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4768630) = 7962624 * k + 2384315 := by
    unfold C
    simp [show (15925248 * k + 4768630) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2384315) = 23887872 * k + 7152946 := by
    unfold C
    simp [show (7962624 * k + 2384315) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 7152946) = 11943936 * k + 3576473 := by
    unfold C
    simp [show (23887872 * k + 7152946) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3576473) = 35831808 * k + 10729420 := by
    unfold C
    simp [show (11943936 * k + 3576473) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 10729420) = 17915904 * k + 5364710 := by
    unfold C
    simp [show (35831808 * k + 10729420) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 5364710) = 8957952 * k + 2682355 := by
    unfold C
    simp [show (17915904 * k + 5364710) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2682355) = 26873856 * k + 8047066 := by
    unfold C
    simp [show (8957952 * k + 2682355) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 8047066) = 13436928 * k + 4023533 := by
    unfold C
    simp [show (26873856 * k + 8047066) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4023533) = 40310784 * k + 12070600 := by
    unfold C
    simp [show (13436928 * k + 4023533) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 12070600) = 20155392 * k + 6035300 := by
    unfold C
    simp [show (40310784 * k + 12070600) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 6035300) = 10077696 * k + 3017650 := by
    unfold C
    simp [show (20155392 * k + 6035300) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3017650) = 5038848 * k + 1508825 := by
    unfold C
    simp [show (10077696 * k + 3017650) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1508825) = 15116544 * k + 4526476 := by
    unfold C
    simp [show (5038848 * k + 1508825) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4526476) = 7558272 * k + 2263238 := by
    unfold C
    simp [show (15116544 * k + 4526476) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2263238) = 3779136 * k + 1131619 := by
    unfold C
    simp [show (7558272 * k + 2263238) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1131619) = 11337408 * k + 3394858 := by
    unfold C
    simp [show (3779136 * k + 1131619) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3394858) = 5668704 * k + 1697429 := by
    unfold C
    simp [show (11337408 * k + 3394858) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1697429) = 17006112 * k + 5092288 := by
    unfold C
    simp [show (5668704 * k + 1697429) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 5092288) = 8503056 * k + 2546144 := by
    unfold C
    simp [show (17006112 * k + 5092288) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2546144) = 4251528 * k + 1273072 := by
    unfold C
    simp [show (8503056 * k + 2546144) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1273072) = 2125764 * k + 636536 := by
    unfold C
    simp [show (4251528 * k + 1273072) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 636536) = 1062882 * k + 318268 := by
    unfold C
    simp [show (2125764 * k + 636536) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 318268) = 531441 * k + 159134 := by
    unfold C
    simp [show (1062882 * k + 318268) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 313983) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 313983)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_314063 : ∀ k : Nat,
    iterate (1048576 * k + 314063) 32 = 531441 * k + 159175 ∧
      531441 * k + 159175 < 1048576 * k + 314063 := by
  intro k
  have h1 : C (1048576 * k + 314063) = 3145728 * k + 942190 := by
    unfold C
    simp [show (1048576 * k + 314063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 942190) = 1572864 * k + 471095 := by
    unfold C
    simp [show (3145728 * k + 942190) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 471095) = 4718592 * k + 1413286 := by
    unfold C
    simp [show (1572864 * k + 471095) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1413286) = 2359296 * k + 706643 := by
    unfold C
    simp [show (4718592 * k + 1413286) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 706643) = 7077888 * k + 2119930 := by
    unfold C
    simp [show (2359296 * k + 706643) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2119930) = 3538944 * k + 1059965 := by
    unfold C
    simp [show (7077888 * k + 2119930) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1059965) = 10616832 * k + 3179896 := by
    unfold C
    simp [show (3538944 * k + 1059965) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3179896) = 5308416 * k + 1589948 := by
    unfold C
    simp [show (10616832 * k + 3179896) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1589948) = 2654208 * k + 794974 := by
    unfold C
    simp [show (5308416 * k + 1589948) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 794974) = 1327104 * k + 397487 := by
    unfold C
    simp [show (2654208 * k + 794974) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 397487) = 3981312 * k + 1192462 := by
    unfold C
    simp [show (1327104 * k + 397487) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1192462) = 1990656 * k + 596231 := by
    unfold C
    simp [show (3981312 * k + 1192462) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 596231) = 5971968 * k + 1788694 := by
    unfold C
    simp [show (1990656 * k + 596231) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1788694) = 2985984 * k + 894347 := by
    unfold C
    simp [show (5971968 * k + 1788694) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 894347) = 8957952 * k + 2683042 := by
    unfold C
    simp [show (2985984 * k + 894347) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2683042) = 4478976 * k + 1341521 := by
    unfold C
    simp [show (8957952 * k + 2683042) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1341521) = 13436928 * k + 4024564 := by
    unfold C
    simp [show (4478976 * k + 1341521) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4024564) = 6718464 * k + 2012282 := by
    unfold C
    simp [show (13436928 * k + 4024564) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2012282) = 3359232 * k + 1006141 := by
    unfold C
    simp [show (6718464 * k + 2012282) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1006141) = 10077696 * k + 3018424 := by
    unfold C
    simp [show (3359232 * k + 1006141) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3018424) = 5038848 * k + 1509212 := by
    unfold C
    simp [show (10077696 * k + 3018424) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1509212) = 2519424 * k + 754606 := by
    unfold C
    simp [show (5038848 * k + 1509212) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 754606) = 1259712 * k + 377303 := by
    unfold C
    simp [show (2519424 * k + 754606) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 377303) = 3779136 * k + 1131910 := by
    unfold C
    simp [show (1259712 * k + 377303) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1131910) = 1889568 * k + 565955 := by
    unfold C
    simp [show (3779136 * k + 1131910) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 565955) = 5668704 * k + 1697866 := by
    unfold C
    simp [show (1889568 * k + 565955) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1697866) = 2834352 * k + 848933 := by
    unfold C
    simp [show (5668704 * k + 1697866) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 848933) = 8503056 * k + 2546800 := by
    unfold C
    simp [show (2834352 * k + 848933) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2546800) = 4251528 * k + 1273400 := by
    unfold C
    simp [show (8503056 * k + 2546800) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1273400) = 2125764 * k + 636700 := by
    unfold C
    simp [show (4251528 * k + 1273400) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 636700) = 1062882 * k + 318350 := by
    unfold C
    simp [show (2125764 * k + 636700) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 318350) = 531441 * k + 159175 := by
    unfold C
    simp [show (1062882 * k + 318350) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 314063) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 314063)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_314395 : ∀ k : Nat,
    iterate (1048576 * k + 314395) 32 = 531441 * k + 159343 ∧
      531441 * k + 159343 < 1048576 * k + 314395 := by
  intro k
  have h1 : C (1048576 * k + 314395) = 3145728 * k + 943186 := by
    unfold C
    simp [show (1048576 * k + 314395) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 943186) = 1572864 * k + 471593 := by
    unfold C
    simp [show (3145728 * k + 943186) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 471593) = 4718592 * k + 1414780 := by
    unfold C
    simp [show (1572864 * k + 471593) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1414780) = 2359296 * k + 707390 := by
    unfold C
    simp [show (4718592 * k + 1414780) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 707390) = 1179648 * k + 353695 := by
    unfold C
    simp [show (2359296 * k + 707390) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 353695) = 3538944 * k + 1061086 := by
    unfold C
    simp [show (1179648 * k + 353695) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1061086) = 1769472 * k + 530543 := by
    unfold C
    simp [show (3538944 * k + 1061086) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 530543) = 5308416 * k + 1591630 := by
    unfold C
    simp [show (1769472 * k + 530543) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1591630) = 2654208 * k + 795815 := by
    unfold C
    simp [show (5308416 * k + 1591630) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 795815) = 7962624 * k + 2387446 := by
    unfold C
    simp [show (2654208 * k + 795815) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2387446) = 3981312 * k + 1193723 := by
    unfold C
    simp [show (7962624 * k + 2387446) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1193723) = 11943936 * k + 3581170 := by
    unfold C
    simp [show (3981312 * k + 1193723) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3581170) = 5971968 * k + 1790585 := by
    unfold C
    simp [show (11943936 * k + 3581170) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1790585) = 17915904 * k + 5371756 := by
    unfold C
    simp [show (5971968 * k + 1790585) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5371756) = 8957952 * k + 2685878 := by
    unfold C
    simp [show (17915904 * k + 5371756) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2685878) = 4478976 * k + 1342939 := by
    unfold C
    simp [show (8957952 * k + 2685878) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1342939) = 13436928 * k + 4028818 := by
    unfold C
    simp [show (4478976 * k + 1342939) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4028818) = 6718464 * k + 2014409 := by
    unfold C
    simp [show (13436928 * k + 4028818) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2014409) = 20155392 * k + 6043228 := by
    unfold C
    simp [show (6718464 * k + 2014409) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 6043228) = 10077696 * k + 3021614 := by
    unfold C
    simp [show (20155392 * k + 6043228) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3021614) = 5038848 * k + 1510807 := by
    unfold C
    simp [show (10077696 * k + 3021614) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1510807) = 15116544 * k + 4532422 := by
    unfold C
    simp [show (5038848 * k + 1510807) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4532422) = 7558272 * k + 2266211 := by
    unfold C
    simp [show (15116544 * k + 4532422) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2266211) = 22674816 * k + 6798634 := by
    unfold C
    simp [show (7558272 * k + 2266211) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 6798634) = 11337408 * k + 3399317 := by
    unfold C
    simp [show (22674816 * k + 6798634) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3399317) = 34012224 * k + 10197952 := by
    unfold C
    simp [show (11337408 * k + 3399317) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 10197952) = 17006112 * k + 5098976 := by
    unfold C
    simp [show (34012224 * k + 10197952) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 5098976) = 8503056 * k + 2549488 := by
    unfold C
    simp [show (17006112 * k + 5098976) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2549488) = 4251528 * k + 1274744 := by
    unfold C
    simp [show (8503056 * k + 2549488) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1274744) = 2125764 * k + 637372 := by
    unfold C
    simp [show (4251528 * k + 1274744) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 637372) = 1062882 * k + 318686 := by
    unfold C
    simp [show (2125764 * k + 637372) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 318686) = 531441 * k + 159343 := by
    unfold C
    simp [show (1062882 * k + 318686) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 314395) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 314395)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_314687 : ∀ k : Nat,
    iterate (1048576 * k + 314687) 32 = 531441 * k + 159491 ∧
      531441 * k + 159491 < 1048576 * k + 314687 := by
  intro k
  have h1 : C (1048576 * k + 314687) = 3145728 * k + 944062 := by
    unfold C
    simp [show (1048576 * k + 314687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 944062) = 1572864 * k + 472031 := by
    unfold C
    simp [show (3145728 * k + 944062) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 472031) = 4718592 * k + 1416094 := by
    unfold C
    simp [show (1572864 * k + 472031) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1416094) = 2359296 * k + 708047 := by
    unfold C
    simp [show (4718592 * k + 1416094) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 708047) = 7077888 * k + 2124142 := by
    unfold C
    simp [show (2359296 * k + 708047) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2124142) = 3538944 * k + 1062071 := by
    unfold C
    simp [show (7077888 * k + 2124142) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1062071) = 10616832 * k + 3186214 := by
    unfold C
    simp [show (3538944 * k + 1062071) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3186214) = 5308416 * k + 1593107 := by
    unfold C
    simp [show (10616832 * k + 3186214) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1593107) = 15925248 * k + 4779322 := by
    unfold C
    simp [show (5308416 * k + 1593107) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4779322) = 7962624 * k + 2389661 := by
    unfold C
    simp [show (15925248 * k + 4779322) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2389661) = 23887872 * k + 7168984 := by
    unfold C
    simp [show (7962624 * k + 2389661) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 7168984) = 11943936 * k + 3584492 := by
    unfold C
    simp [show (23887872 * k + 7168984) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3584492) = 5971968 * k + 1792246 := by
    unfold C
    simp [show (11943936 * k + 3584492) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1792246) = 2985984 * k + 896123 := by
    unfold C
    simp [show (5971968 * k + 1792246) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 896123) = 8957952 * k + 2688370 := by
    unfold C
    simp [show (2985984 * k + 896123) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2688370) = 4478976 * k + 1344185 := by
    unfold C
    simp [show (8957952 * k + 2688370) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1344185) = 13436928 * k + 4032556 := by
    unfold C
    simp [show (4478976 * k + 1344185) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4032556) = 6718464 * k + 2016278 := by
    unfold C
    simp [show (13436928 * k + 4032556) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2016278) = 3359232 * k + 1008139 := by
    unfold C
    simp [show (6718464 * k + 2016278) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1008139) = 10077696 * k + 3024418 := by
    unfold C
    simp [show (3359232 * k + 1008139) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3024418) = 5038848 * k + 1512209 := by
    unfold C
    simp [show (10077696 * k + 3024418) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1512209) = 15116544 * k + 4536628 := by
    unfold C
    simp [show (5038848 * k + 1512209) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4536628) = 7558272 * k + 2268314 := by
    unfold C
    simp [show (15116544 * k + 4536628) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2268314) = 3779136 * k + 1134157 := by
    unfold C
    simp [show (7558272 * k + 2268314) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1134157) = 11337408 * k + 3402472 := by
    unfold C
    simp [show (3779136 * k + 1134157) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3402472) = 5668704 * k + 1701236 := by
    unfold C
    simp [show (11337408 * k + 3402472) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1701236) = 2834352 * k + 850618 := by
    unfold C
    simp [show (5668704 * k + 1701236) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 850618) = 1417176 * k + 425309 := by
    unfold C
    simp [show (2834352 * k + 850618) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 425309) = 4251528 * k + 1275928 := by
    unfold C
    simp [show (1417176 * k + 425309) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1275928) = 2125764 * k + 637964 := by
    unfold C
    simp [show (4251528 * k + 1275928) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 637964) = 1062882 * k + 318982 := by
    unfold C
    simp [show (2125764 * k + 637964) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 318982) = 531441 * k + 159491 := by
    unfold C
    simp [show (1062882 * k + 318982) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 314687) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 314687)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_315119 : ∀ k : Nat,
    iterate (1048576 * k + 315119) 32 = 531441 * k + 159710 ∧
      531441 * k + 159710 < 1048576 * k + 315119 := by
  intro k
  have h1 : C (1048576 * k + 315119) = 3145728 * k + 945358 := by
    unfold C
    simp [show (1048576 * k + 315119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 945358) = 1572864 * k + 472679 := by
    unfold C
    simp [show (3145728 * k + 945358) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 472679) = 4718592 * k + 1418038 := by
    unfold C
    simp [show (1572864 * k + 472679) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1418038) = 2359296 * k + 709019 := by
    unfold C
    simp [show (4718592 * k + 1418038) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 709019) = 7077888 * k + 2127058 := by
    unfold C
    simp [show (2359296 * k + 709019) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2127058) = 3538944 * k + 1063529 := by
    unfold C
    simp [show (7077888 * k + 2127058) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1063529) = 10616832 * k + 3190588 := by
    unfold C
    simp [show (3538944 * k + 1063529) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3190588) = 5308416 * k + 1595294 := by
    unfold C
    simp [show (10616832 * k + 3190588) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1595294) = 2654208 * k + 797647 := by
    unfold C
    simp [show (5308416 * k + 1595294) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 797647) = 7962624 * k + 2392942 := by
    unfold C
    simp [show (2654208 * k + 797647) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2392942) = 3981312 * k + 1196471 := by
    unfold C
    simp [show (7962624 * k + 2392942) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1196471) = 11943936 * k + 3589414 := by
    unfold C
    simp [show (3981312 * k + 1196471) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3589414) = 5971968 * k + 1794707 := by
    unfold C
    simp [show (11943936 * k + 3589414) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1794707) = 17915904 * k + 5384122 := by
    unfold C
    simp [show (5971968 * k + 1794707) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5384122) = 8957952 * k + 2692061 := by
    unfold C
    simp [show (17915904 * k + 5384122) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2692061) = 26873856 * k + 8076184 := by
    unfold C
    simp [show (8957952 * k + 2692061) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 8076184) = 13436928 * k + 4038092 := by
    unfold C
    simp [show (26873856 * k + 8076184) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4038092) = 6718464 * k + 2019046 := by
    unfold C
    simp [show (13436928 * k + 4038092) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2019046) = 3359232 * k + 1009523 := by
    unfold C
    simp [show (6718464 * k + 2019046) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1009523) = 10077696 * k + 3028570 := by
    unfold C
    simp [show (3359232 * k + 1009523) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3028570) = 5038848 * k + 1514285 := by
    unfold C
    simp [show (10077696 * k + 3028570) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1514285) = 15116544 * k + 4542856 := by
    unfold C
    simp [show (5038848 * k + 1514285) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4542856) = 7558272 * k + 2271428 := by
    unfold C
    simp [show (15116544 * k + 4542856) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2271428) = 3779136 * k + 1135714 := by
    unfold C
    simp [show (7558272 * k + 2271428) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1135714) = 1889568 * k + 567857 := by
    unfold C
    simp [show (3779136 * k + 1135714) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 567857) = 5668704 * k + 1703572 := by
    unfold C
    simp [show (1889568 * k + 567857) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1703572) = 2834352 * k + 851786 := by
    unfold C
    simp [show (5668704 * k + 1703572) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 851786) = 1417176 * k + 425893 := by
    unfold C
    simp [show (2834352 * k + 851786) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 425893) = 4251528 * k + 1277680 := by
    unfold C
    simp [show (1417176 * k + 425893) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1277680) = 2125764 * k + 638840 := by
    unfold C
    simp [show (4251528 * k + 1277680) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 638840) = 1062882 * k + 319420 := by
    unfold C
    simp [show (2125764 * k + 638840) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 319420) = 531441 * k + 159710 := by
    unfold C
    simp [show (1062882 * k + 319420) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 315119) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 315119)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_315247 : ∀ k : Nat,
    iterate (1048576 * k + 315247) 32 = 531441 * k + 159775 ∧
      531441 * k + 159775 < 1048576 * k + 315247 := by
  intro k
  have h1 : C (1048576 * k + 315247) = 3145728 * k + 945742 := by
    unfold C
    simp [show (1048576 * k + 315247) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 945742) = 1572864 * k + 472871 := by
    unfold C
    simp [show (3145728 * k + 945742) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 472871) = 4718592 * k + 1418614 := by
    unfold C
    simp [show (1572864 * k + 472871) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1418614) = 2359296 * k + 709307 := by
    unfold C
    simp [show (4718592 * k + 1418614) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 709307) = 7077888 * k + 2127922 := by
    unfold C
    simp [show (2359296 * k + 709307) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2127922) = 3538944 * k + 1063961 := by
    unfold C
    simp [show (7077888 * k + 2127922) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1063961) = 10616832 * k + 3191884 := by
    unfold C
    simp [show (3538944 * k + 1063961) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3191884) = 5308416 * k + 1595942 := by
    unfold C
    simp [show (10616832 * k + 3191884) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1595942) = 2654208 * k + 797971 := by
    unfold C
    simp [show (5308416 * k + 1595942) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 797971) = 7962624 * k + 2393914 := by
    unfold C
    simp [show (2654208 * k + 797971) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2393914) = 3981312 * k + 1196957 := by
    unfold C
    simp [show (7962624 * k + 2393914) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1196957) = 11943936 * k + 3590872 := by
    unfold C
    simp [show (3981312 * k + 1196957) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3590872) = 5971968 * k + 1795436 := by
    unfold C
    simp [show (11943936 * k + 3590872) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1795436) = 2985984 * k + 897718 := by
    unfold C
    simp [show (5971968 * k + 1795436) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 897718) = 1492992 * k + 448859 := by
    unfold C
    simp [show (2985984 * k + 897718) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 448859) = 4478976 * k + 1346578 := by
    unfold C
    simp [show (1492992 * k + 448859) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1346578) = 2239488 * k + 673289 := by
    unfold C
    simp [show (4478976 * k + 1346578) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 673289) = 6718464 * k + 2019868 := by
    unfold C
    simp [show (2239488 * k + 673289) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2019868) = 3359232 * k + 1009934 := by
    unfold C
    simp [show (6718464 * k + 2019868) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1009934) = 1679616 * k + 504967 := by
    unfold C
    simp [show (3359232 * k + 1009934) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 504967) = 5038848 * k + 1514902 := by
    unfold C
    simp [show (1679616 * k + 504967) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1514902) = 2519424 * k + 757451 := by
    unfold C
    simp [show (5038848 * k + 1514902) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 757451) = 7558272 * k + 2272354 := by
    unfold C
    simp [show (2519424 * k + 757451) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2272354) = 3779136 * k + 1136177 := by
    unfold C
    simp [show (7558272 * k + 2272354) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1136177) = 11337408 * k + 3408532 := by
    unfold C
    simp [show (3779136 * k + 1136177) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3408532) = 5668704 * k + 1704266 := by
    unfold C
    simp [show (11337408 * k + 3408532) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1704266) = 2834352 * k + 852133 := by
    unfold C
    simp [show (5668704 * k + 1704266) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 852133) = 8503056 * k + 2556400 := by
    unfold C
    simp [show (2834352 * k + 852133) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2556400) = 4251528 * k + 1278200 := by
    unfold C
    simp [show (8503056 * k + 2556400) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1278200) = 2125764 * k + 639100 := by
    unfold C
    simp [show (4251528 * k + 1278200) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 639100) = 1062882 * k + 319550 := by
    unfold C
    simp [show (2125764 * k + 639100) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 319550) = 531441 * k + 159775 := by
    unfold C
    simp [show (1062882 * k + 319550) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 315247) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 315247)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_315871 : ∀ k : Nat,
    iterate (1048576 * k + 315871) 32 = 531441 * k + 160091 ∧
      531441 * k + 160091 < 1048576 * k + 315871 := by
  intro k
  have h1 : C (1048576 * k + 315871) = 3145728 * k + 947614 := by
    unfold C
    simp [show (1048576 * k + 315871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 947614) = 1572864 * k + 473807 := by
    unfold C
    simp [show (3145728 * k + 947614) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 473807) = 4718592 * k + 1421422 := by
    unfold C
    simp [show (1572864 * k + 473807) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1421422) = 2359296 * k + 710711 := by
    unfold C
    simp [show (4718592 * k + 1421422) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 710711) = 7077888 * k + 2132134 := by
    unfold C
    simp [show (2359296 * k + 710711) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2132134) = 3538944 * k + 1066067 := by
    unfold C
    simp [show (7077888 * k + 2132134) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1066067) = 10616832 * k + 3198202 := by
    unfold C
    simp [show (3538944 * k + 1066067) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3198202) = 5308416 * k + 1599101 := by
    unfold C
    simp [show (10616832 * k + 3198202) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1599101) = 15925248 * k + 4797304 := by
    unfold C
    simp [show (5308416 * k + 1599101) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4797304) = 7962624 * k + 2398652 := by
    unfold C
    simp [show (15925248 * k + 4797304) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2398652) = 3981312 * k + 1199326 := by
    unfold C
    simp [show (7962624 * k + 2398652) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1199326) = 1990656 * k + 599663 := by
    unfold C
    simp [show (3981312 * k + 1199326) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 599663) = 5971968 * k + 1798990 := by
    unfold C
    simp [show (1990656 * k + 599663) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1798990) = 2985984 * k + 899495 := by
    unfold C
    simp [show (5971968 * k + 1798990) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 899495) = 8957952 * k + 2698486 := by
    unfold C
    simp [show (2985984 * k + 899495) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2698486) = 4478976 * k + 1349243 := by
    unfold C
    simp [show (8957952 * k + 2698486) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1349243) = 13436928 * k + 4047730 := by
    unfold C
    simp [show (4478976 * k + 1349243) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4047730) = 6718464 * k + 2023865 := by
    unfold C
    simp [show (13436928 * k + 4047730) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2023865) = 20155392 * k + 6071596 := by
    unfold C
    simp [show (6718464 * k + 2023865) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 6071596) = 10077696 * k + 3035798 := by
    unfold C
    simp [show (20155392 * k + 6071596) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3035798) = 5038848 * k + 1517899 := by
    unfold C
    simp [show (10077696 * k + 3035798) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1517899) = 15116544 * k + 4553698 := by
    unfold C
    simp [show (5038848 * k + 1517899) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4553698) = 7558272 * k + 2276849 := by
    unfold C
    simp [show (15116544 * k + 4553698) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2276849) = 22674816 * k + 6830548 := by
    unfold C
    simp [show (7558272 * k + 2276849) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 6830548) = 11337408 * k + 3415274 := by
    unfold C
    simp [show (22674816 * k + 6830548) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3415274) = 5668704 * k + 1707637 := by
    unfold C
    simp [show (11337408 * k + 3415274) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1707637) = 17006112 * k + 5122912 := by
    unfold C
    simp [show (5668704 * k + 1707637) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 5122912) = 8503056 * k + 2561456 := by
    unfold C
    simp [show (17006112 * k + 5122912) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2561456) = 4251528 * k + 1280728 := by
    unfold C
    simp [show (8503056 * k + 2561456) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1280728) = 2125764 * k + 640364 := by
    unfold C
    simp [show (4251528 * k + 1280728) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 640364) = 1062882 * k + 320182 := by
    unfold C
    simp [show (2125764 * k + 640364) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 320182) = 531441 * k + 160091 := by
    unfold C
    simp [show (1062882 * k + 320182) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 315871) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 315871)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_316443 : ∀ k : Nat,
    iterate (1048576 * k + 316443) 32 = 531441 * k + 160381 ∧
      531441 * k + 160381 < 1048576 * k + 316443 := by
  intro k
  have h1 : C (1048576 * k + 316443) = 3145728 * k + 949330 := by
    unfold C
    simp [show (1048576 * k + 316443) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 949330) = 1572864 * k + 474665 := by
    unfold C
    simp [show (3145728 * k + 949330) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 474665) = 4718592 * k + 1423996 := by
    unfold C
    simp [show (1572864 * k + 474665) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1423996) = 2359296 * k + 711998 := by
    unfold C
    simp [show (4718592 * k + 1423996) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 711998) = 1179648 * k + 355999 := by
    unfold C
    simp [show (2359296 * k + 711998) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 355999) = 3538944 * k + 1067998 := by
    unfold C
    simp [show (1179648 * k + 355999) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1067998) = 1769472 * k + 533999 := by
    unfold C
    simp [show (3538944 * k + 1067998) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 533999) = 5308416 * k + 1601998 := by
    unfold C
    simp [show (1769472 * k + 533999) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1601998) = 2654208 * k + 800999 := by
    unfold C
    simp [show (5308416 * k + 1601998) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 800999) = 7962624 * k + 2402998 := by
    unfold C
    simp [show (2654208 * k + 800999) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2402998) = 3981312 * k + 1201499 := by
    unfold C
    simp [show (7962624 * k + 2402998) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1201499) = 11943936 * k + 3604498 := by
    unfold C
    simp [show (3981312 * k + 1201499) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3604498) = 5971968 * k + 1802249 := by
    unfold C
    simp [show (11943936 * k + 3604498) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1802249) = 17915904 * k + 5406748 := by
    unfold C
    simp [show (5971968 * k + 1802249) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5406748) = 8957952 * k + 2703374 := by
    unfold C
    simp [show (17915904 * k + 5406748) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2703374) = 4478976 * k + 1351687 := by
    unfold C
    simp [show (8957952 * k + 2703374) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1351687) = 13436928 * k + 4055062 := by
    unfold C
    simp [show (4478976 * k + 1351687) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4055062) = 6718464 * k + 2027531 := by
    unfold C
    simp [show (13436928 * k + 4055062) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2027531) = 20155392 * k + 6082594 := by
    unfold C
    simp [show (6718464 * k + 2027531) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 6082594) = 10077696 * k + 3041297 := by
    unfold C
    simp [show (20155392 * k + 6082594) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3041297) = 30233088 * k + 9123892 := by
    unfold C
    simp [show (10077696 * k + 3041297) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 9123892) = 15116544 * k + 4561946 := by
    unfold C
    simp [show (30233088 * k + 9123892) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4561946) = 7558272 * k + 2280973 := by
    unfold C
    simp [show (15116544 * k + 4561946) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2280973) = 22674816 * k + 6842920 := by
    unfold C
    simp [show (7558272 * k + 2280973) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 6842920) = 11337408 * k + 3421460 := by
    unfold C
    simp [show (22674816 * k + 6842920) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3421460) = 5668704 * k + 1710730 := by
    unfold C
    simp [show (11337408 * k + 3421460) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1710730) = 2834352 * k + 855365 := by
    unfold C
    simp [show (5668704 * k + 1710730) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 855365) = 8503056 * k + 2566096 := by
    unfold C
    simp [show (2834352 * k + 855365) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2566096) = 4251528 * k + 1283048 := by
    unfold C
    simp [show (8503056 * k + 2566096) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1283048) = 2125764 * k + 641524 := by
    unfold C
    simp [show (4251528 * k + 1283048) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 641524) = 1062882 * k + 320762 := by
    unfold C
    simp [show (2125764 * k + 641524) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 320762) = 531441 * k + 160381 := by
    unfold C
    simp [show (1062882 * k + 320762) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 316443) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 316443)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_317055 : ∀ k : Nat,
    iterate (1048576 * k + 317055) 32 = 531441 * k + 160691 ∧
      531441 * k + 160691 < 1048576 * k + 317055 := by
  intro k
  have h1 : C (1048576 * k + 317055) = 3145728 * k + 951166 := by
    unfold C
    simp [show (1048576 * k + 317055) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 951166) = 1572864 * k + 475583 := by
    unfold C
    simp [show (3145728 * k + 951166) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 475583) = 4718592 * k + 1426750 := by
    unfold C
    simp [show (1572864 * k + 475583) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1426750) = 2359296 * k + 713375 := by
    unfold C
    simp [show (4718592 * k + 1426750) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 713375) = 7077888 * k + 2140126 := by
    unfold C
    simp [show (2359296 * k + 713375) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2140126) = 3538944 * k + 1070063 := by
    unfold C
    simp [show (7077888 * k + 2140126) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1070063) = 10616832 * k + 3210190 := by
    unfold C
    simp [show (3538944 * k + 1070063) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3210190) = 5308416 * k + 1605095 := by
    unfold C
    simp [show (10616832 * k + 3210190) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1605095) = 15925248 * k + 4815286 := by
    unfold C
    simp [show (5308416 * k + 1605095) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4815286) = 7962624 * k + 2407643 := by
    unfold C
    simp [show (15925248 * k + 4815286) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2407643) = 23887872 * k + 7222930 := by
    unfold C
    simp [show (7962624 * k + 2407643) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 7222930) = 11943936 * k + 3611465 := by
    unfold C
    simp [show (23887872 * k + 7222930) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3611465) = 35831808 * k + 10834396 := by
    unfold C
    simp [show (11943936 * k + 3611465) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 10834396) = 17915904 * k + 5417198 := by
    unfold C
    simp [show (35831808 * k + 10834396) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 5417198) = 8957952 * k + 2708599 := by
    unfold C
    simp [show (17915904 * k + 5417198) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2708599) = 26873856 * k + 8125798 := by
    unfold C
    simp [show (8957952 * k + 2708599) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 8125798) = 13436928 * k + 4062899 := by
    unfold C
    simp [show (26873856 * k + 8125798) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4062899) = 40310784 * k + 12188698 := by
    unfold C
    simp [show (13436928 * k + 4062899) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 12188698) = 20155392 * k + 6094349 := by
    unfold C
    simp [show (40310784 * k + 12188698) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 6094349) = 60466176 * k + 18283048 := by
    unfold C
    simp [show (20155392 * k + 6094349) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 18283048) = 30233088 * k + 9141524 := by
    unfold C
    simp [show (60466176 * k + 18283048) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 9141524) = 15116544 * k + 4570762 := by
    unfold C
    simp [show (30233088 * k + 9141524) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4570762) = 7558272 * k + 2285381 := by
    unfold C
    simp [show (15116544 * k + 4570762) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2285381) = 22674816 * k + 6856144 := by
    unfold C
    simp [show (7558272 * k + 2285381) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 6856144) = 11337408 * k + 3428072 := by
    unfold C
    simp [show (22674816 * k + 6856144) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3428072) = 5668704 * k + 1714036 := by
    unfold C
    simp [show (11337408 * k + 3428072) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1714036) = 2834352 * k + 857018 := by
    unfold C
    simp [show (5668704 * k + 1714036) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 857018) = 1417176 * k + 428509 := by
    unfold C
    simp [show (2834352 * k + 857018) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 428509) = 4251528 * k + 1285528 := by
    unfold C
    simp [show (1417176 * k + 428509) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1285528) = 2125764 * k + 642764 := by
    unfold C
    simp [show (4251528 * k + 1285528) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 642764) = 1062882 * k + 321382 := by
    unfold C
    simp [show (2125764 * k + 642764) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 321382) = 531441 * k + 160691 := by
    unfold C
    simp [show (1062882 * k + 321382) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 317055) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 317055)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_318875 : ∀ k : Nat,
    iterate (1048576 * k + 318875) 32 = 531441 * k + 161614 ∧
      531441 * k + 161614 < 1048576 * k + 318875 := by
  intro k
  have h1 : C (1048576 * k + 318875) = 3145728 * k + 956626 := by
    unfold C
    simp [show (1048576 * k + 318875) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 956626) = 1572864 * k + 478313 := by
    unfold C
    simp [show (3145728 * k + 956626) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 478313) = 4718592 * k + 1434940 := by
    unfold C
    simp [show (1572864 * k + 478313) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1434940) = 2359296 * k + 717470 := by
    unfold C
    simp [show (4718592 * k + 1434940) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 717470) = 1179648 * k + 358735 := by
    unfold C
    simp [show (2359296 * k + 717470) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 358735) = 3538944 * k + 1076206 := by
    unfold C
    simp [show (1179648 * k + 358735) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1076206) = 1769472 * k + 538103 := by
    unfold C
    simp [show (3538944 * k + 1076206) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 538103) = 5308416 * k + 1614310 := by
    unfold C
    simp [show (1769472 * k + 538103) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1614310) = 2654208 * k + 807155 := by
    unfold C
    simp [show (5308416 * k + 1614310) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 807155) = 7962624 * k + 2421466 := by
    unfold C
    simp [show (2654208 * k + 807155) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2421466) = 3981312 * k + 1210733 := by
    unfold C
    simp [show (7962624 * k + 2421466) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1210733) = 11943936 * k + 3632200 := by
    unfold C
    simp [show (3981312 * k + 1210733) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3632200) = 5971968 * k + 1816100 := by
    unfold C
    simp [show (11943936 * k + 3632200) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1816100) = 2985984 * k + 908050 := by
    unfold C
    simp [show (5971968 * k + 1816100) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 908050) = 1492992 * k + 454025 := by
    unfold C
    simp [show (2985984 * k + 908050) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 454025) = 4478976 * k + 1362076 := by
    unfold C
    simp [show (1492992 * k + 454025) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1362076) = 2239488 * k + 681038 := by
    unfold C
    simp [show (4478976 * k + 1362076) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 681038) = 1119744 * k + 340519 := by
    unfold C
    simp [show (2239488 * k + 681038) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 340519) = 3359232 * k + 1021558 := by
    unfold C
    simp [show (1119744 * k + 340519) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1021558) = 1679616 * k + 510779 := by
    unfold C
    simp [show (3359232 * k + 1021558) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 510779) = 5038848 * k + 1532338 := by
    unfold C
    simp [show (1679616 * k + 510779) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1532338) = 2519424 * k + 766169 := by
    unfold C
    simp [show (5038848 * k + 1532338) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 766169) = 7558272 * k + 2298508 := by
    unfold C
    simp [show (2519424 * k + 766169) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2298508) = 3779136 * k + 1149254 := by
    unfold C
    simp [show (7558272 * k + 2298508) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1149254) = 1889568 * k + 574627 := by
    unfold C
    simp [show (3779136 * k + 1149254) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 574627) = 5668704 * k + 1723882 := by
    unfold C
    simp [show (1889568 * k + 574627) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1723882) = 2834352 * k + 861941 := by
    unfold C
    simp [show (5668704 * k + 1723882) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 861941) = 8503056 * k + 2585824 := by
    unfold C
    simp [show (2834352 * k + 861941) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2585824) = 4251528 * k + 1292912 := by
    unfold C
    simp [show (8503056 * k + 2585824) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1292912) = 2125764 * k + 646456 := by
    unfold C
    simp [show (4251528 * k + 1292912) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 646456) = 1062882 * k + 323228 := by
    unfold C
    simp [show (2125764 * k + 646456) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 323228) = 531441 * k + 161614 := by
    unfold C
    simp [show (1062882 * k + 323228) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 318875) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 318875)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_319515 : ∀ k : Nat,
    iterate (1048576 * k + 319515) 32 = 531441 * k + 161938 ∧
      531441 * k + 161938 < 1048576 * k + 319515 := by
  intro k
  have h1 : C (1048576 * k + 319515) = 3145728 * k + 958546 := by
    unfold C
    simp [show (1048576 * k + 319515) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 958546) = 1572864 * k + 479273 := by
    unfold C
    simp [show (3145728 * k + 958546) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 479273) = 4718592 * k + 1437820 := by
    unfold C
    simp [show (1572864 * k + 479273) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1437820) = 2359296 * k + 718910 := by
    unfold C
    simp [show (4718592 * k + 1437820) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 718910) = 1179648 * k + 359455 := by
    unfold C
    simp [show (2359296 * k + 718910) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 359455) = 3538944 * k + 1078366 := by
    unfold C
    simp [show (1179648 * k + 359455) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1078366) = 1769472 * k + 539183 := by
    unfold C
    simp [show (3538944 * k + 1078366) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 539183) = 5308416 * k + 1617550 := by
    unfold C
    simp [show (1769472 * k + 539183) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1617550) = 2654208 * k + 808775 := by
    unfold C
    simp [show (5308416 * k + 1617550) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 808775) = 7962624 * k + 2426326 := by
    unfold C
    simp [show (2654208 * k + 808775) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2426326) = 3981312 * k + 1213163 := by
    unfold C
    simp [show (7962624 * k + 2426326) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1213163) = 11943936 * k + 3639490 := by
    unfold C
    simp [show (3981312 * k + 1213163) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3639490) = 5971968 * k + 1819745 := by
    unfold C
    simp [show (11943936 * k + 3639490) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1819745) = 17915904 * k + 5459236 := by
    unfold C
    simp [show (5971968 * k + 1819745) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5459236) = 8957952 * k + 2729618 := by
    unfold C
    simp [show (17915904 * k + 5459236) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2729618) = 4478976 * k + 1364809 := by
    unfold C
    simp [show (8957952 * k + 2729618) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1364809) = 13436928 * k + 4094428 := by
    unfold C
    simp [show (4478976 * k + 1364809) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4094428) = 6718464 * k + 2047214 := by
    unfold C
    simp [show (13436928 * k + 4094428) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2047214) = 3359232 * k + 1023607 := by
    unfold C
    simp [show (6718464 * k + 2047214) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1023607) = 10077696 * k + 3070822 := by
    unfold C
    simp [show (3359232 * k + 1023607) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3070822) = 5038848 * k + 1535411 := by
    unfold C
    simp [show (10077696 * k + 3070822) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1535411) = 15116544 * k + 4606234 := by
    unfold C
    simp [show (5038848 * k + 1535411) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4606234) = 7558272 * k + 2303117 := by
    unfold C
    simp [show (15116544 * k + 4606234) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2303117) = 22674816 * k + 6909352 := by
    unfold C
    simp [show (7558272 * k + 2303117) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 6909352) = 11337408 * k + 3454676 := by
    unfold C
    simp [show (22674816 * k + 6909352) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3454676) = 5668704 * k + 1727338 := by
    unfold C
    simp [show (11337408 * k + 3454676) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1727338) = 2834352 * k + 863669 := by
    unfold C
    simp [show (5668704 * k + 1727338) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 863669) = 8503056 * k + 2591008 := by
    unfold C
    simp [show (2834352 * k + 863669) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2591008) = 4251528 * k + 1295504 := by
    unfold C
    simp [show (8503056 * k + 2591008) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1295504) = 2125764 * k + 647752 := by
    unfold C
    simp [show (4251528 * k + 1295504) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 647752) = 1062882 * k + 323876 := by
    unfold C
    simp [show (2125764 * k + 647752) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 323876) = 531441 * k + 161938 := by
    unfold C
    simp [show (1062882 * k + 323876) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 319515) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 319515)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_319967 : ∀ k : Nat,
    iterate (1048576 * k + 319967) 32 = 531441 * k + 162167 ∧
      531441 * k + 162167 < 1048576 * k + 319967 := by
  intro k
  have h1 : C (1048576 * k + 319967) = 3145728 * k + 959902 := by
    unfold C
    simp [show (1048576 * k + 319967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 959902) = 1572864 * k + 479951 := by
    unfold C
    simp [show (3145728 * k + 959902) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 479951) = 4718592 * k + 1439854 := by
    unfold C
    simp [show (1572864 * k + 479951) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1439854) = 2359296 * k + 719927 := by
    unfold C
    simp [show (4718592 * k + 1439854) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 719927) = 7077888 * k + 2159782 := by
    unfold C
    simp [show (2359296 * k + 719927) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2159782) = 3538944 * k + 1079891 := by
    unfold C
    simp [show (7077888 * k + 2159782) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1079891) = 10616832 * k + 3239674 := by
    unfold C
    simp [show (3538944 * k + 1079891) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3239674) = 5308416 * k + 1619837 := by
    unfold C
    simp [show (10616832 * k + 3239674) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1619837) = 15925248 * k + 4859512 := by
    unfold C
    simp [show (5308416 * k + 1619837) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4859512) = 7962624 * k + 2429756 := by
    unfold C
    simp [show (15925248 * k + 4859512) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2429756) = 3981312 * k + 1214878 := by
    unfold C
    simp [show (7962624 * k + 2429756) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1214878) = 1990656 * k + 607439 := by
    unfold C
    simp [show (3981312 * k + 1214878) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 607439) = 5971968 * k + 1822318 := by
    unfold C
    simp [show (1990656 * k + 607439) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1822318) = 2985984 * k + 911159 := by
    unfold C
    simp [show (5971968 * k + 1822318) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 911159) = 8957952 * k + 2733478 := by
    unfold C
    simp [show (2985984 * k + 911159) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2733478) = 4478976 * k + 1366739 := by
    unfold C
    simp [show (8957952 * k + 2733478) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1366739) = 13436928 * k + 4100218 := by
    unfold C
    simp [show (4478976 * k + 1366739) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4100218) = 6718464 * k + 2050109 := by
    unfold C
    simp [show (13436928 * k + 4100218) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2050109) = 20155392 * k + 6150328 := by
    unfold C
    simp [show (6718464 * k + 2050109) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 6150328) = 10077696 * k + 3075164 := by
    unfold C
    simp [show (20155392 * k + 6150328) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3075164) = 5038848 * k + 1537582 := by
    unfold C
    simp [show (10077696 * k + 3075164) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1537582) = 2519424 * k + 768791 := by
    unfold C
    simp [show (5038848 * k + 1537582) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 768791) = 7558272 * k + 2306374 := by
    unfold C
    simp [show (2519424 * k + 768791) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2306374) = 3779136 * k + 1153187 := by
    unfold C
    simp [show (7558272 * k + 2306374) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1153187) = 11337408 * k + 3459562 := by
    unfold C
    simp [show (3779136 * k + 1153187) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3459562) = 5668704 * k + 1729781 := by
    unfold C
    simp [show (11337408 * k + 3459562) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1729781) = 17006112 * k + 5189344 := by
    unfold C
    simp [show (5668704 * k + 1729781) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 5189344) = 8503056 * k + 2594672 := by
    unfold C
    simp [show (17006112 * k + 5189344) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2594672) = 4251528 * k + 1297336 := by
    unfold C
    simp [show (8503056 * k + 2594672) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1297336) = 2125764 * k + 648668 := by
    unfold C
    simp [show (4251528 * k + 1297336) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 648668) = 1062882 * k + 324334 := by
    unfold C
    simp [show (2125764 * k + 648668) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 324334) = 531441 * k + 162167 := by
    unfold C
    simp [show (1062882 * k + 324334) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 319967) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 319967)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_320831 : ∀ k : Nat,
    iterate (1048576 * k + 320831) 32 = 531441 * k + 162605 ∧
      531441 * k + 162605 < 1048576 * k + 320831 := by
  intro k
  have h1 : C (1048576 * k + 320831) = 3145728 * k + 962494 := by
    unfold C
    simp [show (1048576 * k + 320831) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 962494) = 1572864 * k + 481247 := by
    unfold C
    simp [show (3145728 * k + 962494) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 481247) = 4718592 * k + 1443742 := by
    unfold C
    simp [show (1572864 * k + 481247) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1443742) = 2359296 * k + 721871 := by
    unfold C
    simp [show (4718592 * k + 1443742) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 721871) = 7077888 * k + 2165614 := by
    unfold C
    simp [show (2359296 * k + 721871) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2165614) = 3538944 * k + 1082807 := by
    unfold C
    simp [show (7077888 * k + 2165614) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1082807) = 10616832 * k + 3248422 := by
    unfold C
    simp [show (3538944 * k + 1082807) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3248422) = 5308416 * k + 1624211 := by
    unfold C
    simp [show (10616832 * k + 3248422) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1624211) = 15925248 * k + 4872634 := by
    unfold C
    simp [show (5308416 * k + 1624211) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4872634) = 7962624 * k + 2436317 := by
    unfold C
    simp [show (15925248 * k + 4872634) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2436317) = 23887872 * k + 7308952 := by
    unfold C
    simp [show (7962624 * k + 2436317) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 7308952) = 11943936 * k + 3654476 := by
    unfold C
    simp [show (23887872 * k + 7308952) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3654476) = 5971968 * k + 1827238 := by
    unfold C
    simp [show (11943936 * k + 3654476) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1827238) = 2985984 * k + 913619 := by
    unfold C
    simp [show (5971968 * k + 1827238) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 913619) = 8957952 * k + 2740858 := by
    unfold C
    simp [show (2985984 * k + 913619) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2740858) = 4478976 * k + 1370429 := by
    unfold C
    simp [show (8957952 * k + 2740858) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1370429) = 13436928 * k + 4111288 := by
    unfold C
    simp [show (4478976 * k + 1370429) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4111288) = 6718464 * k + 2055644 := by
    unfold C
    simp [show (13436928 * k + 4111288) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2055644) = 3359232 * k + 1027822 := by
    unfold C
    simp [show (6718464 * k + 2055644) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1027822) = 1679616 * k + 513911 := by
    unfold C
    simp [show (3359232 * k + 1027822) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 513911) = 5038848 * k + 1541734 := by
    unfold C
    simp [show (1679616 * k + 513911) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1541734) = 2519424 * k + 770867 := by
    unfold C
    simp [show (5038848 * k + 1541734) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 770867) = 7558272 * k + 2312602 := by
    unfold C
    simp [show (2519424 * k + 770867) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2312602) = 3779136 * k + 1156301 := by
    unfold C
    simp [show (7558272 * k + 2312602) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1156301) = 11337408 * k + 3468904 := by
    unfold C
    simp [show (3779136 * k + 1156301) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3468904) = 5668704 * k + 1734452 := by
    unfold C
    simp [show (11337408 * k + 3468904) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1734452) = 2834352 * k + 867226 := by
    unfold C
    simp [show (5668704 * k + 1734452) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 867226) = 1417176 * k + 433613 := by
    unfold C
    simp [show (2834352 * k + 867226) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 433613) = 4251528 * k + 1300840 := by
    unfold C
    simp [show (1417176 * k + 433613) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1300840) = 2125764 * k + 650420 := by
    unfold C
    simp [show (4251528 * k + 1300840) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 650420) = 1062882 * k + 325210 := by
    unfold C
    simp [show (2125764 * k + 650420) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 325210) = 531441 * k + 162605 := by
    unfold C
    simp [show (1062882 * k + 325210) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 320831) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 320831)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_321255 : ∀ k : Nat,
    iterate (1048576 * k + 321255) 32 = 531441 * k + 162820 ∧
      531441 * k + 162820 < 1048576 * k + 321255 := by
  intro k
  have h1 : C (1048576 * k + 321255) = 3145728 * k + 963766 := by
    unfold C
    simp [show (1048576 * k + 321255) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 963766) = 1572864 * k + 481883 := by
    unfold C
    simp [show (3145728 * k + 963766) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 481883) = 4718592 * k + 1445650 := by
    unfold C
    simp [show (1572864 * k + 481883) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1445650) = 2359296 * k + 722825 := by
    unfold C
    simp [show (4718592 * k + 1445650) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 722825) = 7077888 * k + 2168476 := by
    unfold C
    simp [show (2359296 * k + 722825) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2168476) = 3538944 * k + 1084238 := by
    unfold C
    simp [show (7077888 * k + 2168476) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1084238) = 1769472 * k + 542119 := by
    unfold C
    simp [show (3538944 * k + 1084238) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 542119) = 5308416 * k + 1626358 := by
    unfold C
    simp [show (1769472 * k + 542119) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1626358) = 2654208 * k + 813179 := by
    unfold C
    simp [show (5308416 * k + 1626358) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 813179) = 7962624 * k + 2439538 := by
    unfold C
    simp [show (2654208 * k + 813179) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2439538) = 3981312 * k + 1219769 := by
    unfold C
    simp [show (7962624 * k + 2439538) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1219769) = 11943936 * k + 3659308 := by
    unfold C
    simp [show (3981312 * k + 1219769) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3659308) = 5971968 * k + 1829654 := by
    unfold C
    simp [show (11943936 * k + 3659308) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1829654) = 2985984 * k + 914827 := by
    unfold C
    simp [show (5971968 * k + 1829654) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 914827) = 8957952 * k + 2744482 := by
    unfold C
    simp [show (2985984 * k + 914827) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2744482) = 4478976 * k + 1372241 := by
    unfold C
    simp [show (8957952 * k + 2744482) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1372241) = 13436928 * k + 4116724 := by
    unfold C
    simp [show (4478976 * k + 1372241) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4116724) = 6718464 * k + 2058362 := by
    unfold C
    simp [show (13436928 * k + 4116724) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2058362) = 3359232 * k + 1029181 := by
    unfold C
    simp [show (6718464 * k + 2058362) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1029181) = 10077696 * k + 3087544 := by
    unfold C
    simp [show (3359232 * k + 1029181) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3087544) = 5038848 * k + 1543772 := by
    unfold C
    simp [show (10077696 * k + 3087544) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1543772) = 2519424 * k + 771886 := by
    unfold C
    simp [show (5038848 * k + 1543772) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 771886) = 1259712 * k + 385943 := by
    unfold C
    simp [show (2519424 * k + 771886) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 385943) = 3779136 * k + 1157830 := by
    unfold C
    simp [show (1259712 * k + 385943) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1157830) = 1889568 * k + 578915 := by
    unfold C
    simp [show (3779136 * k + 1157830) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 578915) = 5668704 * k + 1736746 := by
    unfold C
    simp [show (1889568 * k + 578915) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1736746) = 2834352 * k + 868373 := by
    unfold C
    simp [show (5668704 * k + 1736746) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 868373) = 8503056 * k + 2605120 := by
    unfold C
    simp [show (2834352 * k + 868373) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2605120) = 4251528 * k + 1302560 := by
    unfold C
    simp [show (8503056 * k + 2605120) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1302560) = 2125764 * k + 651280 := by
    unfold C
    simp [show (4251528 * k + 1302560) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 651280) = 1062882 * k + 325640 := by
    unfold C
    simp [show (2125764 * k + 651280) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 325640) = 531441 * k + 162820 := by
    unfold C
    simp [show (1062882 * k + 325640) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 321255) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 321255)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard042
