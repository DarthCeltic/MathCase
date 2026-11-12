import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard029

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_208199 : ∀ k : Nat,
    iterate (1048576 * k + 208199) 32 = 531441 * k + 105521 ∧
      531441 * k + 105521 < 1048576 * k + 208199 := by
  intro k
  have h1 : C (1048576 * k + 208199) = 3145728 * k + 624598 := by
    unfold C
    simp [show (1048576 * k + 208199) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 624598) = 1572864 * k + 312299 := by
    unfold C
    simp [show (3145728 * k + 624598) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 312299) = 4718592 * k + 936898 := by
    unfold C
    simp [show (1572864 * k + 312299) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 936898) = 2359296 * k + 468449 := by
    unfold C
    simp [show (4718592 * k + 936898) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 468449) = 7077888 * k + 1405348 := by
    unfold C
    simp [show (2359296 * k + 468449) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1405348) = 3538944 * k + 702674 := by
    unfold C
    simp [show (7077888 * k + 1405348) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 702674) = 1769472 * k + 351337 := by
    unfold C
    simp [show (3538944 * k + 702674) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 351337) = 5308416 * k + 1054012 := by
    unfold C
    simp [show (1769472 * k + 351337) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1054012) = 2654208 * k + 527006 := by
    unfold C
    simp [show (5308416 * k + 1054012) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 527006) = 1327104 * k + 263503 := by
    unfold C
    simp [show (2654208 * k + 527006) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 263503) = 3981312 * k + 790510 := by
    unfold C
    simp [show (1327104 * k + 263503) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 790510) = 1990656 * k + 395255 := by
    unfold C
    simp [show (3981312 * k + 790510) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 395255) = 5971968 * k + 1185766 := by
    unfold C
    simp [show (1990656 * k + 395255) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1185766) = 2985984 * k + 592883 := by
    unfold C
    simp [show (5971968 * k + 1185766) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 592883) = 8957952 * k + 1778650 := by
    unfold C
    simp [show (2985984 * k + 592883) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1778650) = 4478976 * k + 889325 := by
    unfold C
    simp [show (8957952 * k + 1778650) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 889325) = 13436928 * k + 2667976 := by
    unfold C
    simp [show (4478976 * k + 889325) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2667976) = 6718464 * k + 1333988 := by
    unfold C
    simp [show (13436928 * k + 2667976) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1333988) = 3359232 * k + 666994 := by
    unfold C
    simp [show (6718464 * k + 1333988) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 666994) = 1679616 * k + 333497 := by
    unfold C
    simp [show (3359232 * k + 666994) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 333497) = 5038848 * k + 1000492 := by
    unfold C
    simp [show (1679616 * k + 333497) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1000492) = 2519424 * k + 500246 := by
    unfold C
    simp [show (5038848 * k + 1000492) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 500246) = 1259712 * k + 250123 := by
    unfold C
    simp [show (2519424 * k + 500246) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 250123) = 3779136 * k + 750370 := by
    unfold C
    simp [show (1259712 * k + 250123) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 750370) = 1889568 * k + 375185 := by
    unfold C
    simp [show (3779136 * k + 750370) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 375185) = 5668704 * k + 1125556 := by
    unfold C
    simp [show (1889568 * k + 375185) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1125556) = 2834352 * k + 562778 := by
    unfold C
    simp [show (5668704 * k + 1125556) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 562778) = 1417176 * k + 281389 := by
    unfold C
    simp [show (2834352 * k + 562778) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 281389) = 4251528 * k + 844168 := by
    unfold C
    simp [show (1417176 * k + 281389) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 844168) = 2125764 * k + 422084 := by
    unfold C
    simp [show (4251528 * k + 844168) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 422084) = 1062882 * k + 211042 := by
    unfold C
    simp [show (2125764 * k + 422084) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 211042) = 531441 * k + 105521 := by
    unfold C
    simp [show (1062882 * k + 211042) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 208199) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 208199)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_208807 : ∀ k : Nat,
    iterate (1048576 * k + 208807) 32 = 531441 * k + 105829 ∧
      531441 * k + 105829 < 1048576 * k + 208807 := by
  intro k
  have h1 : C (1048576 * k + 208807) = 3145728 * k + 626422 := by
    unfold C
    simp [show (1048576 * k + 208807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 626422) = 1572864 * k + 313211 := by
    unfold C
    simp [show (3145728 * k + 626422) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 313211) = 4718592 * k + 939634 := by
    unfold C
    simp [show (1572864 * k + 313211) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 939634) = 2359296 * k + 469817 := by
    unfold C
    simp [show (4718592 * k + 939634) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 469817) = 7077888 * k + 1409452 := by
    unfold C
    simp [show (2359296 * k + 469817) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1409452) = 3538944 * k + 704726 := by
    unfold C
    simp [show (7077888 * k + 1409452) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 704726) = 1769472 * k + 352363 := by
    unfold C
    simp [show (3538944 * k + 704726) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 352363) = 5308416 * k + 1057090 := by
    unfold C
    simp [show (1769472 * k + 352363) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1057090) = 2654208 * k + 528545 := by
    unfold C
    simp [show (5308416 * k + 1057090) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 528545) = 7962624 * k + 1585636 := by
    unfold C
    simp [show (2654208 * k + 528545) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1585636) = 3981312 * k + 792818 := by
    unfold C
    simp [show (7962624 * k + 1585636) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 792818) = 1990656 * k + 396409 := by
    unfold C
    simp [show (3981312 * k + 792818) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 396409) = 5971968 * k + 1189228 := by
    unfold C
    simp [show (1990656 * k + 396409) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1189228) = 2985984 * k + 594614 := by
    unfold C
    simp [show (5971968 * k + 1189228) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 594614) = 1492992 * k + 297307 := by
    unfold C
    simp [show (2985984 * k + 594614) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 297307) = 4478976 * k + 891922 := by
    unfold C
    simp [show (1492992 * k + 297307) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 891922) = 2239488 * k + 445961 := by
    unfold C
    simp [show (4478976 * k + 891922) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 445961) = 6718464 * k + 1337884 := by
    unfold C
    simp [show (2239488 * k + 445961) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1337884) = 3359232 * k + 668942 := by
    unfold C
    simp [show (6718464 * k + 1337884) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 668942) = 1679616 * k + 334471 := by
    unfold C
    simp [show (3359232 * k + 668942) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 334471) = 5038848 * k + 1003414 := by
    unfold C
    simp [show (1679616 * k + 334471) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1003414) = 2519424 * k + 501707 := by
    unfold C
    simp [show (5038848 * k + 1003414) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 501707) = 7558272 * k + 1505122 := by
    unfold C
    simp [show (2519424 * k + 501707) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1505122) = 3779136 * k + 752561 := by
    unfold C
    simp [show (7558272 * k + 1505122) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 752561) = 11337408 * k + 2257684 := by
    unfold C
    simp [show (3779136 * k + 752561) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2257684) = 5668704 * k + 1128842 := by
    unfold C
    simp [show (11337408 * k + 2257684) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1128842) = 2834352 * k + 564421 := by
    unfold C
    simp [show (5668704 * k + 1128842) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 564421) = 8503056 * k + 1693264 := by
    unfold C
    simp [show (2834352 * k + 564421) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1693264) = 4251528 * k + 846632 := by
    unfold C
    simp [show (8503056 * k + 1693264) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 846632) = 2125764 * k + 423316 := by
    unfold C
    simp [show (4251528 * k + 846632) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 423316) = 1062882 * k + 211658 := by
    unfold C
    simp [show (2125764 * k + 423316) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 211658) = 531441 * k + 105829 := by
    unfold C
    simp [show (1062882 * k + 211658) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 208807) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 208807)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_208967 : ∀ k : Nat,
    iterate (1048576 * k + 208967) 32 = 531441 * k + 105910 ∧
      531441 * k + 105910 < 1048576 * k + 208967 := by
  intro k
  have h1 : C (1048576 * k + 208967) = 3145728 * k + 626902 := by
    unfold C
    simp [show (1048576 * k + 208967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 626902) = 1572864 * k + 313451 := by
    unfold C
    simp [show (3145728 * k + 626902) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 313451) = 4718592 * k + 940354 := by
    unfold C
    simp [show (1572864 * k + 313451) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 940354) = 2359296 * k + 470177 := by
    unfold C
    simp [show (4718592 * k + 940354) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 470177) = 7077888 * k + 1410532 := by
    unfold C
    simp [show (2359296 * k + 470177) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1410532) = 3538944 * k + 705266 := by
    unfold C
    simp [show (7077888 * k + 1410532) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 705266) = 1769472 * k + 352633 := by
    unfold C
    simp [show (3538944 * k + 705266) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 352633) = 5308416 * k + 1057900 := by
    unfold C
    simp [show (1769472 * k + 352633) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1057900) = 2654208 * k + 528950 := by
    unfold C
    simp [show (5308416 * k + 1057900) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 528950) = 1327104 * k + 264475 := by
    unfold C
    simp [show (2654208 * k + 528950) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 264475) = 3981312 * k + 793426 := by
    unfold C
    simp [show (1327104 * k + 264475) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 793426) = 1990656 * k + 396713 := by
    unfold C
    simp [show (3981312 * k + 793426) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 396713) = 5971968 * k + 1190140 := by
    unfold C
    simp [show (1990656 * k + 396713) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1190140) = 2985984 * k + 595070 := by
    unfold C
    simp [show (5971968 * k + 1190140) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 595070) = 1492992 * k + 297535 := by
    unfold C
    simp [show (2985984 * k + 595070) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 297535) = 4478976 * k + 892606 := by
    unfold C
    simp [show (1492992 * k + 297535) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 892606) = 2239488 * k + 446303 := by
    unfold C
    simp [show (4478976 * k + 892606) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 446303) = 6718464 * k + 1338910 := by
    unfold C
    simp [show (2239488 * k + 446303) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1338910) = 3359232 * k + 669455 := by
    unfold C
    simp [show (6718464 * k + 1338910) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 669455) = 10077696 * k + 2008366 := by
    unfold C
    simp [show (3359232 * k + 669455) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2008366) = 5038848 * k + 1004183 := by
    unfold C
    simp [show (10077696 * k + 2008366) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1004183) = 15116544 * k + 3012550 := by
    unfold C
    simp [show (5038848 * k + 1004183) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3012550) = 7558272 * k + 1506275 := by
    unfold C
    simp [show (15116544 * k + 3012550) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1506275) = 22674816 * k + 4518826 := by
    unfold C
    simp [show (7558272 * k + 1506275) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 4518826) = 11337408 * k + 2259413 := by
    unfold C
    simp [show (22674816 * k + 4518826) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2259413) = 34012224 * k + 6778240 := by
    unfold C
    simp [show (11337408 * k + 2259413) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 6778240) = 17006112 * k + 3389120 := by
    unfold C
    simp [show (34012224 * k + 6778240) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 3389120) = 8503056 * k + 1694560 := by
    unfold C
    simp [show (17006112 * k + 3389120) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1694560) = 4251528 * k + 847280 := by
    unfold C
    simp [show (8503056 * k + 1694560) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 847280) = 2125764 * k + 423640 := by
    unfold C
    simp [show (4251528 * k + 847280) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 423640) = 1062882 * k + 211820 := by
    unfold C
    simp [show (2125764 * k + 423640) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 211820) = 531441 * k + 105910 := by
    unfold C
    simp [show (1062882 * k + 211820) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 208967) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 208967)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_209691 : ∀ k : Nat,
    iterate (1048576 * k + 209691) 32 = 531441 * k + 106277 ∧
      531441 * k + 106277 < 1048576 * k + 209691 := by
  intro k
  have h1 : C (1048576 * k + 209691) = 3145728 * k + 629074 := by
    unfold C
    simp [show (1048576 * k + 209691) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 629074) = 1572864 * k + 314537 := by
    unfold C
    simp [show (3145728 * k + 629074) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 314537) = 4718592 * k + 943612 := by
    unfold C
    simp [show (1572864 * k + 314537) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 943612) = 2359296 * k + 471806 := by
    unfold C
    simp [show (4718592 * k + 943612) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 471806) = 1179648 * k + 235903 := by
    unfold C
    simp [show (2359296 * k + 471806) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 235903) = 3538944 * k + 707710 := by
    unfold C
    simp [show (1179648 * k + 235903) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 707710) = 1769472 * k + 353855 := by
    unfold C
    simp [show (3538944 * k + 707710) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 353855) = 5308416 * k + 1061566 := by
    unfold C
    simp [show (1769472 * k + 353855) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1061566) = 2654208 * k + 530783 := by
    unfold C
    simp [show (5308416 * k + 1061566) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 530783) = 7962624 * k + 1592350 := by
    unfold C
    simp [show (2654208 * k + 530783) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1592350) = 3981312 * k + 796175 := by
    unfold C
    simp [show (7962624 * k + 1592350) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 796175) = 11943936 * k + 2388526 := by
    unfold C
    simp [show (3981312 * k + 796175) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2388526) = 5971968 * k + 1194263 := by
    unfold C
    simp [show (11943936 * k + 2388526) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1194263) = 17915904 * k + 3582790 := by
    unfold C
    simp [show (5971968 * k + 1194263) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3582790) = 8957952 * k + 1791395 := by
    unfold C
    simp [show (17915904 * k + 3582790) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1791395) = 26873856 * k + 5374186 := by
    unfold C
    simp [show (8957952 * k + 1791395) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5374186) = 13436928 * k + 2687093 := by
    unfold C
    simp [show (26873856 * k + 5374186) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2687093) = 40310784 * k + 8061280 := by
    unfold C
    simp [show (13436928 * k + 2687093) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 8061280) = 20155392 * k + 4030640 := by
    unfold C
    simp [show (40310784 * k + 8061280) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 4030640) = 10077696 * k + 2015320 := by
    unfold C
    simp [show (20155392 * k + 4030640) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2015320) = 5038848 * k + 1007660 := by
    unfold C
    simp [show (10077696 * k + 2015320) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1007660) = 2519424 * k + 503830 := by
    unfold C
    simp [show (5038848 * k + 1007660) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 503830) = 1259712 * k + 251915 := by
    unfold C
    simp [show (2519424 * k + 503830) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 251915) = 3779136 * k + 755746 := by
    unfold C
    simp [show (1259712 * k + 251915) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 755746) = 1889568 * k + 377873 := by
    unfold C
    simp [show (3779136 * k + 755746) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 377873) = 5668704 * k + 1133620 := by
    unfold C
    simp [show (1889568 * k + 377873) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1133620) = 2834352 * k + 566810 := by
    unfold C
    simp [show (5668704 * k + 1133620) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 566810) = 1417176 * k + 283405 := by
    unfold C
    simp [show (2834352 * k + 566810) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 283405) = 4251528 * k + 850216 := by
    unfold C
    simp [show (1417176 * k + 283405) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 850216) = 2125764 * k + 425108 := by
    unfold C
    simp [show (4251528 * k + 850216) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 425108) = 1062882 * k + 212554 := by
    unfold C
    simp [show (2125764 * k + 425108) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 212554) = 531441 * k + 106277 := by
    unfold C
    simp [show (1062882 * k + 212554) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 209691) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 209691)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_209967 : ∀ k : Nat,
    iterate (1048576 * k + 209967) 32 = 531441 * k + 106417 ∧
      531441 * k + 106417 < 1048576 * k + 209967 := by
  intro k
  have h1 : C (1048576 * k + 209967) = 3145728 * k + 629902 := by
    unfold C
    simp [show (1048576 * k + 209967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 629902) = 1572864 * k + 314951 := by
    unfold C
    simp [show (3145728 * k + 629902) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 314951) = 4718592 * k + 944854 := by
    unfold C
    simp [show (1572864 * k + 314951) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 944854) = 2359296 * k + 472427 := by
    unfold C
    simp [show (4718592 * k + 944854) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 472427) = 7077888 * k + 1417282 := by
    unfold C
    simp [show (2359296 * k + 472427) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1417282) = 3538944 * k + 708641 := by
    unfold C
    simp [show (7077888 * k + 1417282) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 708641) = 10616832 * k + 2125924 := by
    unfold C
    simp [show (3538944 * k + 708641) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2125924) = 5308416 * k + 1062962 := by
    unfold C
    simp [show (10616832 * k + 2125924) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1062962) = 2654208 * k + 531481 := by
    unfold C
    simp [show (5308416 * k + 1062962) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 531481) = 7962624 * k + 1594444 := by
    unfold C
    simp [show (2654208 * k + 531481) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1594444) = 3981312 * k + 797222 := by
    unfold C
    simp [show (7962624 * k + 1594444) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 797222) = 1990656 * k + 398611 := by
    unfold C
    simp [show (3981312 * k + 797222) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 398611) = 5971968 * k + 1195834 := by
    unfold C
    simp [show (1990656 * k + 398611) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1195834) = 2985984 * k + 597917 := by
    unfold C
    simp [show (5971968 * k + 1195834) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 597917) = 8957952 * k + 1793752 := by
    unfold C
    simp [show (2985984 * k + 597917) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1793752) = 4478976 * k + 896876 := by
    unfold C
    simp [show (8957952 * k + 1793752) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 896876) = 2239488 * k + 448438 := by
    unfold C
    simp [show (4478976 * k + 896876) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 448438) = 1119744 * k + 224219 := by
    unfold C
    simp [show (2239488 * k + 448438) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 224219) = 3359232 * k + 672658 := by
    unfold C
    simp [show (1119744 * k + 224219) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 672658) = 1679616 * k + 336329 := by
    unfold C
    simp [show (3359232 * k + 672658) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 336329) = 5038848 * k + 1008988 := by
    unfold C
    simp [show (1679616 * k + 336329) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1008988) = 2519424 * k + 504494 := by
    unfold C
    simp [show (5038848 * k + 1008988) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 504494) = 1259712 * k + 252247 := by
    unfold C
    simp [show (2519424 * k + 504494) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 252247) = 3779136 * k + 756742 := by
    unfold C
    simp [show (1259712 * k + 252247) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 756742) = 1889568 * k + 378371 := by
    unfold C
    simp [show (3779136 * k + 756742) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 378371) = 5668704 * k + 1135114 := by
    unfold C
    simp [show (1889568 * k + 378371) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1135114) = 2834352 * k + 567557 := by
    unfold C
    simp [show (5668704 * k + 1135114) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 567557) = 8503056 * k + 1702672 := by
    unfold C
    simp [show (2834352 * k + 567557) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1702672) = 4251528 * k + 851336 := by
    unfold C
    simp [show (8503056 * k + 1702672) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 851336) = 2125764 * k + 425668 := by
    unfold C
    simp [show (4251528 * k + 851336) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 425668) = 1062882 * k + 212834 := by
    unfold C
    simp [show (2125764 * k + 425668) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 212834) = 531441 * k + 106417 := by
    unfold C
    simp [show (1062882 * k + 212834) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 209967) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 209967)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_210047 : ∀ k : Nat,
    iterate (1048576 * k + 210047) 32 = 531441 * k + 106457 ∧
      531441 * k + 106457 < 1048576 * k + 210047 := by
  intro k
  have h1 : C (1048576 * k + 210047) = 3145728 * k + 630142 := by
    unfold C
    simp [show (1048576 * k + 210047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 630142) = 1572864 * k + 315071 := by
    unfold C
    simp [show (3145728 * k + 630142) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 315071) = 4718592 * k + 945214 := by
    unfold C
    simp [show (1572864 * k + 315071) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 945214) = 2359296 * k + 472607 := by
    unfold C
    simp [show (4718592 * k + 945214) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 472607) = 7077888 * k + 1417822 := by
    unfold C
    simp [show (2359296 * k + 472607) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1417822) = 3538944 * k + 708911 := by
    unfold C
    simp [show (7077888 * k + 1417822) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 708911) = 10616832 * k + 2126734 := by
    unfold C
    simp [show (3538944 * k + 708911) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2126734) = 5308416 * k + 1063367 := by
    unfold C
    simp [show (10616832 * k + 2126734) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1063367) = 15925248 * k + 3190102 := by
    unfold C
    simp [show (5308416 * k + 1063367) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3190102) = 7962624 * k + 1595051 := by
    unfold C
    simp [show (15925248 * k + 3190102) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1595051) = 23887872 * k + 4785154 := by
    unfold C
    simp [show (7962624 * k + 1595051) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 4785154) = 11943936 * k + 2392577 := by
    unfold C
    simp [show (23887872 * k + 4785154) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2392577) = 35831808 * k + 7177732 := by
    unfold C
    simp [show (11943936 * k + 2392577) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 7177732) = 17915904 * k + 3588866 := by
    unfold C
    simp [show (35831808 * k + 7177732) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 3588866) = 8957952 * k + 1794433 := by
    unfold C
    simp [show (17915904 * k + 3588866) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1794433) = 26873856 * k + 5383300 := by
    unfold C
    simp [show (8957952 * k + 1794433) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5383300) = 13436928 * k + 2691650 := by
    unfold C
    simp [show (26873856 * k + 5383300) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2691650) = 6718464 * k + 1345825 := by
    unfold C
    simp [show (13436928 * k + 2691650) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1345825) = 20155392 * k + 4037476 := by
    unfold C
    simp [show (6718464 * k + 1345825) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4037476) = 10077696 * k + 2018738 := by
    unfold C
    simp [show (20155392 * k + 4037476) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2018738) = 5038848 * k + 1009369 := by
    unfold C
    simp [show (10077696 * k + 2018738) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1009369) = 15116544 * k + 3028108 := by
    unfold C
    simp [show (5038848 * k + 1009369) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3028108) = 7558272 * k + 1514054 := by
    unfold C
    simp [show (15116544 * k + 3028108) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1514054) = 3779136 * k + 757027 := by
    unfold C
    simp [show (7558272 * k + 1514054) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 757027) = 11337408 * k + 2271082 := by
    unfold C
    simp [show (3779136 * k + 757027) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2271082) = 5668704 * k + 1135541 := by
    unfold C
    simp [show (11337408 * k + 2271082) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1135541) = 17006112 * k + 3406624 := by
    unfold C
    simp [show (5668704 * k + 1135541) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3406624) = 8503056 * k + 1703312 := by
    unfold C
    simp [show (17006112 * k + 3406624) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1703312) = 4251528 * k + 851656 := by
    unfold C
    simp [show (8503056 * k + 1703312) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 851656) = 2125764 * k + 425828 := by
    unfold C
    simp [show (4251528 * k + 851656) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 425828) = 1062882 * k + 212914 := by
    unfold C
    simp [show (2125764 * k + 425828) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 212914) = 531441 * k + 106457 := by
    unfold C
    simp [show (1062882 * k + 212914) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 210047) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 210047)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_210335 : ∀ k : Nat,
    iterate (1048576 * k + 210335) 32 = 531441 * k + 106603 ∧
      531441 * k + 106603 < 1048576 * k + 210335 := by
  intro k
  have h1 : C (1048576 * k + 210335) = 3145728 * k + 631006 := by
    unfold C
    simp [show (1048576 * k + 210335) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 631006) = 1572864 * k + 315503 := by
    unfold C
    simp [show (3145728 * k + 631006) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 315503) = 4718592 * k + 946510 := by
    unfold C
    simp [show (1572864 * k + 315503) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 946510) = 2359296 * k + 473255 := by
    unfold C
    simp [show (4718592 * k + 946510) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 473255) = 7077888 * k + 1419766 := by
    unfold C
    simp [show (2359296 * k + 473255) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1419766) = 3538944 * k + 709883 := by
    unfold C
    simp [show (7077888 * k + 1419766) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 709883) = 10616832 * k + 2129650 := by
    unfold C
    simp [show (3538944 * k + 709883) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2129650) = 5308416 * k + 1064825 := by
    unfold C
    simp [show (10616832 * k + 2129650) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1064825) = 15925248 * k + 3194476 := by
    unfold C
    simp [show (5308416 * k + 1064825) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3194476) = 7962624 * k + 1597238 := by
    unfold C
    simp [show (15925248 * k + 3194476) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1597238) = 3981312 * k + 798619 := by
    unfold C
    simp [show (7962624 * k + 1597238) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 798619) = 11943936 * k + 2395858 := by
    unfold C
    simp [show (3981312 * k + 798619) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2395858) = 5971968 * k + 1197929 := by
    unfold C
    simp [show (11943936 * k + 2395858) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1197929) = 17915904 * k + 3593788 := by
    unfold C
    simp [show (5971968 * k + 1197929) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3593788) = 8957952 * k + 1796894 := by
    unfold C
    simp [show (17915904 * k + 3593788) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1796894) = 4478976 * k + 898447 := by
    unfold C
    simp [show (8957952 * k + 1796894) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 898447) = 13436928 * k + 2695342 := by
    unfold C
    simp [show (4478976 * k + 898447) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2695342) = 6718464 * k + 1347671 := by
    unfold C
    simp [show (13436928 * k + 2695342) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1347671) = 20155392 * k + 4043014 := by
    unfold C
    simp [show (6718464 * k + 1347671) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4043014) = 10077696 * k + 2021507 := by
    unfold C
    simp [show (20155392 * k + 4043014) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2021507) = 30233088 * k + 6064522 := by
    unfold C
    simp [show (10077696 * k + 2021507) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 6064522) = 15116544 * k + 3032261 := by
    unfold C
    simp [show (30233088 * k + 6064522) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3032261) = 45349632 * k + 9096784 := by
    unfold C
    simp [show (15116544 * k + 3032261) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 9096784) = 22674816 * k + 4548392 := by
    unfold C
    simp [show (45349632 * k + 9096784) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 4548392) = 11337408 * k + 2274196 := by
    unfold C
    simp [show (22674816 * k + 4548392) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2274196) = 5668704 * k + 1137098 := by
    unfold C
    simp [show (11337408 * k + 2274196) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1137098) = 2834352 * k + 568549 := by
    unfold C
    simp [show (5668704 * k + 1137098) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 568549) = 8503056 * k + 1705648 := by
    unfold C
    simp [show (2834352 * k + 568549) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1705648) = 4251528 * k + 852824 := by
    unfold C
    simp [show (8503056 * k + 1705648) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 852824) = 2125764 * k + 426412 := by
    unfold C
    simp [show (4251528 * k + 852824) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 426412) = 1062882 * k + 213206 := by
    unfold C
    simp [show (2125764 * k + 426412) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 213206) = 531441 * k + 106603 := by
    unfold C
    simp [show (1062882 * k + 213206) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 210335) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 210335)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_212071 : ∀ k : Nat,
    iterate (1048576 * k + 212071) 32 = 531441 * k + 107483 ∧
      531441 * k + 107483 < 1048576 * k + 212071 := by
  intro k
  have h1 : C (1048576 * k + 212071) = 3145728 * k + 636214 := by
    unfold C
    simp [show (1048576 * k + 212071) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 636214) = 1572864 * k + 318107 := by
    unfold C
    simp [show (3145728 * k + 636214) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 318107) = 4718592 * k + 954322 := by
    unfold C
    simp [show (1572864 * k + 318107) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 954322) = 2359296 * k + 477161 := by
    unfold C
    simp [show (4718592 * k + 954322) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 477161) = 7077888 * k + 1431484 := by
    unfold C
    simp [show (2359296 * k + 477161) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1431484) = 3538944 * k + 715742 := by
    unfold C
    simp [show (7077888 * k + 1431484) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 715742) = 1769472 * k + 357871 := by
    unfold C
    simp [show (3538944 * k + 715742) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 357871) = 5308416 * k + 1073614 := by
    unfold C
    simp [show (1769472 * k + 357871) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1073614) = 2654208 * k + 536807 := by
    unfold C
    simp [show (5308416 * k + 1073614) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 536807) = 7962624 * k + 1610422 := by
    unfold C
    simp [show (2654208 * k + 536807) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1610422) = 3981312 * k + 805211 := by
    unfold C
    simp [show (7962624 * k + 1610422) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 805211) = 11943936 * k + 2415634 := by
    unfold C
    simp [show (3981312 * k + 805211) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2415634) = 5971968 * k + 1207817 := by
    unfold C
    simp [show (11943936 * k + 2415634) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1207817) = 17915904 * k + 3623452 := by
    unfold C
    simp [show (5971968 * k + 1207817) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3623452) = 8957952 * k + 1811726 := by
    unfold C
    simp [show (17915904 * k + 3623452) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1811726) = 4478976 * k + 905863 := by
    unfold C
    simp [show (8957952 * k + 1811726) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 905863) = 13436928 * k + 2717590 := by
    unfold C
    simp [show (4478976 * k + 905863) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2717590) = 6718464 * k + 1358795 := by
    unfold C
    simp [show (13436928 * k + 2717590) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1358795) = 20155392 * k + 4076386 := by
    unfold C
    simp [show (6718464 * k + 1358795) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4076386) = 10077696 * k + 2038193 := by
    unfold C
    simp [show (20155392 * k + 4076386) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2038193) = 30233088 * k + 6114580 := by
    unfold C
    simp [show (10077696 * k + 2038193) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 6114580) = 15116544 * k + 3057290 := by
    unfold C
    simp [show (30233088 * k + 6114580) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3057290) = 7558272 * k + 1528645 := by
    unfold C
    simp [show (15116544 * k + 3057290) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1528645) = 22674816 * k + 4585936 := by
    unfold C
    simp [show (7558272 * k + 1528645) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 4585936) = 11337408 * k + 2292968 := by
    unfold C
    simp [show (22674816 * k + 4585936) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2292968) = 5668704 * k + 1146484 := by
    unfold C
    simp [show (11337408 * k + 2292968) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1146484) = 2834352 * k + 573242 := by
    unfold C
    simp [show (5668704 * k + 1146484) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 573242) = 1417176 * k + 286621 := by
    unfold C
    simp [show (2834352 * k + 573242) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 286621) = 4251528 * k + 859864 := by
    unfold C
    simp [show (1417176 * k + 286621) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 859864) = 2125764 * k + 429932 := by
    unfold C
    simp [show (4251528 * k + 859864) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 429932) = 1062882 * k + 214966 := by
    unfold C
    simp [show (2125764 * k + 429932) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 214966) = 531441 * k + 107483 := by
    unfold C
    simp [show (1062882 * k + 214966) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 212071) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 212071)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_212383 : ∀ k : Nat,
    iterate (1048576 * k + 212383) 32 = 531441 * k + 107641 ∧
      531441 * k + 107641 < 1048576 * k + 212383 := by
  intro k
  have h1 : C (1048576 * k + 212383) = 3145728 * k + 637150 := by
    unfold C
    simp [show (1048576 * k + 212383) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 637150) = 1572864 * k + 318575 := by
    unfold C
    simp [show (3145728 * k + 637150) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 318575) = 4718592 * k + 955726 := by
    unfold C
    simp [show (1572864 * k + 318575) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 955726) = 2359296 * k + 477863 := by
    unfold C
    simp [show (4718592 * k + 955726) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 477863) = 7077888 * k + 1433590 := by
    unfold C
    simp [show (2359296 * k + 477863) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1433590) = 3538944 * k + 716795 := by
    unfold C
    simp [show (7077888 * k + 1433590) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 716795) = 10616832 * k + 2150386 := by
    unfold C
    simp [show (3538944 * k + 716795) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2150386) = 5308416 * k + 1075193 := by
    unfold C
    simp [show (10616832 * k + 2150386) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1075193) = 15925248 * k + 3225580 := by
    unfold C
    simp [show (5308416 * k + 1075193) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3225580) = 7962624 * k + 1612790 := by
    unfold C
    simp [show (15925248 * k + 3225580) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1612790) = 3981312 * k + 806395 := by
    unfold C
    simp [show (7962624 * k + 1612790) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 806395) = 11943936 * k + 2419186 := by
    unfold C
    simp [show (3981312 * k + 806395) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2419186) = 5971968 * k + 1209593 := by
    unfold C
    simp [show (11943936 * k + 2419186) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1209593) = 17915904 * k + 3628780 := by
    unfold C
    simp [show (5971968 * k + 1209593) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3628780) = 8957952 * k + 1814390 := by
    unfold C
    simp [show (17915904 * k + 3628780) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1814390) = 4478976 * k + 907195 := by
    unfold C
    simp [show (8957952 * k + 1814390) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 907195) = 13436928 * k + 2721586 := by
    unfold C
    simp [show (4478976 * k + 907195) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2721586) = 6718464 * k + 1360793 := by
    unfold C
    simp [show (13436928 * k + 2721586) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1360793) = 20155392 * k + 4082380 := by
    unfold C
    simp [show (6718464 * k + 1360793) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4082380) = 10077696 * k + 2041190 := by
    unfold C
    simp [show (20155392 * k + 4082380) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2041190) = 5038848 * k + 1020595 := by
    unfold C
    simp [show (10077696 * k + 2041190) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1020595) = 15116544 * k + 3061786 := by
    unfold C
    simp [show (5038848 * k + 1020595) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3061786) = 7558272 * k + 1530893 := by
    unfold C
    simp [show (15116544 * k + 3061786) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1530893) = 22674816 * k + 4592680 := by
    unfold C
    simp [show (7558272 * k + 1530893) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 4592680) = 11337408 * k + 2296340 := by
    unfold C
    simp [show (22674816 * k + 4592680) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2296340) = 5668704 * k + 1148170 := by
    unfold C
    simp [show (11337408 * k + 2296340) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1148170) = 2834352 * k + 574085 := by
    unfold C
    simp [show (5668704 * k + 1148170) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 574085) = 8503056 * k + 1722256 := by
    unfold C
    simp [show (2834352 * k + 574085) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1722256) = 4251528 * k + 861128 := by
    unfold C
    simp [show (8503056 * k + 1722256) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 861128) = 2125764 * k + 430564 := by
    unfold C
    simp [show (4251528 * k + 861128) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 430564) = 1062882 * k + 215282 := by
    unfold C
    simp [show (2125764 * k + 430564) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 215282) = 531441 * k + 107641 := by
    unfold C
    simp [show (1062882 * k + 215282) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 212383) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 212383)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_213083 : ∀ k : Nat,
    iterate (1048576 * k + 213083) 32 = 531441 * k + 107996 ∧
      531441 * k + 107996 < 1048576 * k + 213083 := by
  intro k
  have h1 : C (1048576 * k + 213083) = 3145728 * k + 639250 := by
    unfold C
    simp [show (1048576 * k + 213083) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 639250) = 1572864 * k + 319625 := by
    unfold C
    simp [show (3145728 * k + 639250) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 319625) = 4718592 * k + 958876 := by
    unfold C
    simp [show (1572864 * k + 319625) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 958876) = 2359296 * k + 479438 := by
    unfold C
    simp [show (4718592 * k + 958876) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 479438) = 1179648 * k + 239719 := by
    unfold C
    simp [show (2359296 * k + 479438) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 239719) = 3538944 * k + 719158 := by
    unfold C
    simp [show (1179648 * k + 239719) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 719158) = 1769472 * k + 359579 := by
    unfold C
    simp [show (3538944 * k + 719158) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 359579) = 5308416 * k + 1078738 := by
    unfold C
    simp [show (1769472 * k + 359579) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1078738) = 2654208 * k + 539369 := by
    unfold C
    simp [show (5308416 * k + 1078738) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 539369) = 7962624 * k + 1618108 := by
    unfold C
    simp [show (2654208 * k + 539369) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1618108) = 3981312 * k + 809054 := by
    unfold C
    simp [show (7962624 * k + 1618108) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 809054) = 1990656 * k + 404527 := by
    unfold C
    simp [show (3981312 * k + 809054) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 404527) = 5971968 * k + 1213582 := by
    unfold C
    simp [show (1990656 * k + 404527) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1213582) = 2985984 * k + 606791 := by
    unfold C
    simp [show (5971968 * k + 1213582) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 606791) = 8957952 * k + 1820374 := by
    unfold C
    simp [show (2985984 * k + 606791) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1820374) = 4478976 * k + 910187 := by
    unfold C
    simp [show (8957952 * k + 1820374) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 910187) = 13436928 * k + 2730562 := by
    unfold C
    simp [show (4478976 * k + 910187) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2730562) = 6718464 * k + 1365281 := by
    unfold C
    simp [show (13436928 * k + 2730562) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1365281) = 20155392 * k + 4095844 := by
    unfold C
    simp [show (6718464 * k + 1365281) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4095844) = 10077696 * k + 2047922 := by
    unfold C
    simp [show (20155392 * k + 4095844) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2047922) = 5038848 * k + 1023961 := by
    unfold C
    simp [show (10077696 * k + 2047922) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1023961) = 15116544 * k + 3071884 := by
    unfold C
    simp [show (5038848 * k + 1023961) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3071884) = 7558272 * k + 1535942 := by
    unfold C
    simp [show (15116544 * k + 3071884) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1535942) = 3779136 * k + 767971 := by
    unfold C
    simp [show (7558272 * k + 1535942) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 767971) = 11337408 * k + 2303914 := by
    unfold C
    simp [show (3779136 * k + 767971) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2303914) = 5668704 * k + 1151957 := by
    unfold C
    simp [show (11337408 * k + 2303914) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1151957) = 17006112 * k + 3455872 := by
    unfold C
    simp [show (5668704 * k + 1151957) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3455872) = 8503056 * k + 1727936 := by
    unfold C
    simp [show (17006112 * k + 3455872) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1727936) = 4251528 * k + 863968 := by
    unfold C
    simp [show (8503056 * k + 1727936) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 863968) = 2125764 * k + 431984 := by
    unfold C
    simp [show (4251528 * k + 863968) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 431984) = 1062882 * k + 215992 := by
    unfold C
    simp [show (2125764 * k + 431984) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 215992) = 531441 * k + 107996 := by
    unfold C
    simp [show (1062882 * k + 215992) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 213083) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 213083)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_214247 : ∀ k : Nat,
    iterate (1048576 * k + 214247) 32 = 531441 * k + 108586 ∧
      531441 * k + 108586 < 1048576 * k + 214247 := by
  intro k
  have h1 : C (1048576 * k + 214247) = 3145728 * k + 642742 := by
    unfold C
    simp [show (1048576 * k + 214247) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 642742) = 1572864 * k + 321371 := by
    unfold C
    simp [show (3145728 * k + 642742) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 321371) = 4718592 * k + 964114 := by
    unfold C
    simp [show (1572864 * k + 321371) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 964114) = 2359296 * k + 482057 := by
    unfold C
    simp [show (4718592 * k + 964114) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 482057) = 7077888 * k + 1446172 := by
    unfold C
    simp [show (2359296 * k + 482057) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1446172) = 3538944 * k + 723086 := by
    unfold C
    simp [show (7077888 * k + 1446172) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 723086) = 1769472 * k + 361543 := by
    unfold C
    simp [show (3538944 * k + 723086) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 361543) = 5308416 * k + 1084630 := by
    unfold C
    simp [show (1769472 * k + 361543) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1084630) = 2654208 * k + 542315 := by
    unfold C
    simp [show (5308416 * k + 1084630) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 542315) = 7962624 * k + 1626946 := by
    unfold C
    simp [show (2654208 * k + 542315) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1626946) = 3981312 * k + 813473 := by
    unfold C
    simp [show (7962624 * k + 1626946) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 813473) = 11943936 * k + 2440420 := by
    unfold C
    simp [show (3981312 * k + 813473) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2440420) = 5971968 * k + 1220210 := by
    unfold C
    simp [show (11943936 * k + 2440420) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1220210) = 2985984 * k + 610105 := by
    unfold C
    simp [show (5971968 * k + 1220210) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 610105) = 8957952 * k + 1830316 := by
    unfold C
    simp [show (2985984 * k + 610105) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1830316) = 4478976 * k + 915158 := by
    unfold C
    simp [show (8957952 * k + 1830316) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 915158) = 2239488 * k + 457579 := by
    unfold C
    simp [show (4478976 * k + 915158) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 457579) = 6718464 * k + 1372738 := by
    unfold C
    simp [show (2239488 * k + 457579) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1372738) = 3359232 * k + 686369 := by
    unfold C
    simp [show (6718464 * k + 1372738) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 686369) = 10077696 * k + 2059108 := by
    unfold C
    simp [show (3359232 * k + 686369) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2059108) = 5038848 * k + 1029554 := by
    unfold C
    simp [show (10077696 * k + 2059108) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1029554) = 2519424 * k + 514777 := by
    unfold C
    simp [show (5038848 * k + 1029554) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 514777) = 7558272 * k + 1544332 := by
    unfold C
    simp [show (2519424 * k + 514777) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1544332) = 3779136 * k + 772166 := by
    unfold C
    simp [show (7558272 * k + 1544332) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 772166) = 1889568 * k + 386083 := by
    unfold C
    simp [show (3779136 * k + 772166) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 386083) = 5668704 * k + 1158250 := by
    unfold C
    simp [show (1889568 * k + 386083) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1158250) = 2834352 * k + 579125 := by
    unfold C
    simp [show (5668704 * k + 1158250) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 579125) = 8503056 * k + 1737376 := by
    unfold C
    simp [show (2834352 * k + 579125) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1737376) = 4251528 * k + 868688 := by
    unfold C
    simp [show (8503056 * k + 1737376) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 868688) = 2125764 * k + 434344 := by
    unfold C
    simp [show (4251528 * k + 868688) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 434344) = 1062882 * k + 217172 := by
    unfold C
    simp [show (2125764 * k + 434344) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 217172) = 531441 * k + 108586 := by
    unfold C
    simp [show (1062882 * k + 217172) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 214247) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 214247)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_214503 : ∀ k : Nat,
    iterate (1048576 * k + 214503) 32 = 531441 * k + 108716 ∧
      531441 * k + 108716 < 1048576 * k + 214503 := by
  intro k
  have h1 : C (1048576 * k + 214503) = 3145728 * k + 643510 := by
    unfold C
    simp [show (1048576 * k + 214503) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 643510) = 1572864 * k + 321755 := by
    unfold C
    simp [show (3145728 * k + 643510) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 321755) = 4718592 * k + 965266 := by
    unfold C
    simp [show (1572864 * k + 321755) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 965266) = 2359296 * k + 482633 := by
    unfold C
    simp [show (4718592 * k + 965266) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 482633) = 7077888 * k + 1447900 := by
    unfold C
    simp [show (2359296 * k + 482633) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1447900) = 3538944 * k + 723950 := by
    unfold C
    simp [show (7077888 * k + 1447900) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 723950) = 1769472 * k + 361975 := by
    unfold C
    simp [show (3538944 * k + 723950) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 361975) = 5308416 * k + 1085926 := by
    unfold C
    simp [show (1769472 * k + 361975) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1085926) = 2654208 * k + 542963 := by
    unfold C
    simp [show (5308416 * k + 1085926) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 542963) = 7962624 * k + 1628890 := by
    unfold C
    simp [show (2654208 * k + 542963) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1628890) = 3981312 * k + 814445 := by
    unfold C
    simp [show (7962624 * k + 1628890) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 814445) = 11943936 * k + 2443336 := by
    unfold C
    simp [show (3981312 * k + 814445) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2443336) = 5971968 * k + 1221668 := by
    unfold C
    simp [show (11943936 * k + 2443336) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1221668) = 2985984 * k + 610834 := by
    unfold C
    simp [show (5971968 * k + 1221668) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 610834) = 1492992 * k + 305417 := by
    unfold C
    simp [show (2985984 * k + 610834) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 305417) = 4478976 * k + 916252 := by
    unfold C
    simp [show (1492992 * k + 305417) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 916252) = 2239488 * k + 458126 := by
    unfold C
    simp [show (4478976 * k + 916252) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 458126) = 1119744 * k + 229063 := by
    unfold C
    simp [show (2239488 * k + 458126) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 229063) = 3359232 * k + 687190 := by
    unfold C
    simp [show (1119744 * k + 229063) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 687190) = 1679616 * k + 343595 := by
    unfold C
    simp [show (3359232 * k + 687190) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 343595) = 5038848 * k + 1030786 := by
    unfold C
    simp [show (1679616 * k + 343595) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1030786) = 2519424 * k + 515393 := by
    unfold C
    simp [show (5038848 * k + 1030786) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 515393) = 7558272 * k + 1546180 := by
    unfold C
    simp [show (2519424 * k + 515393) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1546180) = 3779136 * k + 773090 := by
    unfold C
    simp [show (7558272 * k + 1546180) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 773090) = 1889568 * k + 386545 := by
    unfold C
    simp [show (3779136 * k + 773090) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 386545) = 5668704 * k + 1159636 := by
    unfold C
    simp [show (1889568 * k + 386545) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1159636) = 2834352 * k + 579818 := by
    unfold C
    simp [show (5668704 * k + 1159636) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 579818) = 1417176 * k + 289909 := by
    unfold C
    simp [show (2834352 * k + 579818) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 289909) = 4251528 * k + 869728 := by
    unfold C
    simp [show (1417176 * k + 289909) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 869728) = 2125764 * k + 434864 := by
    unfold C
    simp [show (4251528 * k + 869728) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 434864) = 1062882 * k + 217432 := by
    unfold C
    simp [show (2125764 * k + 434864) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 217432) = 531441 * k + 108716 := by
    unfold C
    simp [show (1062882 * k + 217432) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 214503) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 214503)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_214575 : ∀ k : Nat,
    iterate (1048576 * k + 214575) 32 = 531441 * k + 108752 ∧
      531441 * k + 108752 < 1048576 * k + 214575 := by
  intro k
  have h1 : C (1048576 * k + 214575) = 3145728 * k + 643726 := by
    unfold C
    simp [show (1048576 * k + 214575) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 643726) = 1572864 * k + 321863 := by
    unfold C
    simp [show (3145728 * k + 643726) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 321863) = 4718592 * k + 965590 := by
    unfold C
    simp [show (1572864 * k + 321863) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 965590) = 2359296 * k + 482795 := by
    unfold C
    simp [show (4718592 * k + 965590) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 482795) = 7077888 * k + 1448386 := by
    unfold C
    simp [show (2359296 * k + 482795) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1448386) = 3538944 * k + 724193 := by
    unfold C
    simp [show (7077888 * k + 1448386) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 724193) = 10616832 * k + 2172580 := by
    unfold C
    simp [show (3538944 * k + 724193) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2172580) = 5308416 * k + 1086290 := by
    unfold C
    simp [show (10616832 * k + 2172580) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1086290) = 2654208 * k + 543145 := by
    unfold C
    simp [show (5308416 * k + 1086290) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 543145) = 7962624 * k + 1629436 := by
    unfold C
    simp [show (2654208 * k + 543145) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1629436) = 3981312 * k + 814718 := by
    unfold C
    simp [show (7962624 * k + 1629436) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 814718) = 1990656 * k + 407359 := by
    unfold C
    simp [show (3981312 * k + 814718) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 407359) = 5971968 * k + 1222078 := by
    unfold C
    simp [show (1990656 * k + 407359) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1222078) = 2985984 * k + 611039 := by
    unfold C
    simp [show (5971968 * k + 1222078) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 611039) = 8957952 * k + 1833118 := by
    unfold C
    simp [show (2985984 * k + 611039) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1833118) = 4478976 * k + 916559 := by
    unfold C
    simp [show (8957952 * k + 1833118) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 916559) = 13436928 * k + 2749678 := by
    unfold C
    simp [show (4478976 * k + 916559) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2749678) = 6718464 * k + 1374839 := by
    unfold C
    simp [show (13436928 * k + 2749678) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1374839) = 20155392 * k + 4124518 := by
    unfold C
    simp [show (6718464 * k + 1374839) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4124518) = 10077696 * k + 2062259 := by
    unfold C
    simp [show (20155392 * k + 4124518) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2062259) = 30233088 * k + 6186778 := by
    unfold C
    simp [show (10077696 * k + 2062259) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 6186778) = 15116544 * k + 3093389 := by
    unfold C
    simp [show (30233088 * k + 6186778) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3093389) = 45349632 * k + 9280168 := by
    unfold C
    simp [show (15116544 * k + 3093389) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 9280168) = 22674816 * k + 4640084 := by
    unfold C
    simp [show (45349632 * k + 9280168) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 4640084) = 11337408 * k + 2320042 := by
    unfold C
    simp [show (22674816 * k + 4640084) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2320042) = 5668704 * k + 1160021 := by
    unfold C
    simp [show (11337408 * k + 2320042) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1160021) = 17006112 * k + 3480064 := by
    unfold C
    simp [show (5668704 * k + 1160021) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3480064) = 8503056 * k + 1740032 := by
    unfold C
    simp [show (17006112 * k + 3480064) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1740032) = 4251528 * k + 870016 := by
    unfold C
    simp [show (8503056 * k + 1740032) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 870016) = 2125764 * k + 435008 := by
    unfold C
    simp [show (4251528 * k + 870016) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 435008) = 1062882 * k + 217504 := by
    unfold C
    simp [show (2125764 * k + 435008) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 217504) = 531441 * k + 108752 := by
    unfold C
    simp [show (1062882 * k + 217504) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 214575) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 214575)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_215143 : ∀ k : Nat,
    iterate (1048576 * k + 215143) 32 = 531441 * k + 109040 ∧
      531441 * k + 109040 < 1048576 * k + 215143 := by
  intro k
  have h1 : C (1048576 * k + 215143) = 3145728 * k + 645430 := by
    unfold C
    simp [show (1048576 * k + 215143) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 645430) = 1572864 * k + 322715 := by
    unfold C
    simp [show (3145728 * k + 645430) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 322715) = 4718592 * k + 968146 := by
    unfold C
    simp [show (1572864 * k + 322715) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 968146) = 2359296 * k + 484073 := by
    unfold C
    simp [show (4718592 * k + 968146) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 484073) = 7077888 * k + 1452220 := by
    unfold C
    simp [show (2359296 * k + 484073) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1452220) = 3538944 * k + 726110 := by
    unfold C
    simp [show (7077888 * k + 1452220) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 726110) = 1769472 * k + 363055 := by
    unfold C
    simp [show (3538944 * k + 726110) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 363055) = 5308416 * k + 1089166 := by
    unfold C
    simp [show (1769472 * k + 363055) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1089166) = 2654208 * k + 544583 := by
    unfold C
    simp [show (5308416 * k + 1089166) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 544583) = 7962624 * k + 1633750 := by
    unfold C
    simp [show (2654208 * k + 544583) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1633750) = 3981312 * k + 816875 := by
    unfold C
    simp [show (7962624 * k + 1633750) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 816875) = 11943936 * k + 2450626 := by
    unfold C
    simp [show (3981312 * k + 816875) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2450626) = 5971968 * k + 1225313 := by
    unfold C
    simp [show (11943936 * k + 2450626) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1225313) = 17915904 * k + 3675940 := by
    unfold C
    simp [show (5971968 * k + 1225313) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3675940) = 8957952 * k + 1837970 := by
    unfold C
    simp [show (17915904 * k + 3675940) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1837970) = 4478976 * k + 918985 := by
    unfold C
    simp [show (8957952 * k + 1837970) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 918985) = 13436928 * k + 2756956 := by
    unfold C
    simp [show (4478976 * k + 918985) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2756956) = 6718464 * k + 1378478 := by
    unfold C
    simp [show (13436928 * k + 2756956) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1378478) = 3359232 * k + 689239 := by
    unfold C
    simp [show (6718464 * k + 1378478) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 689239) = 10077696 * k + 2067718 := by
    unfold C
    simp [show (3359232 * k + 689239) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2067718) = 5038848 * k + 1033859 := by
    unfold C
    simp [show (10077696 * k + 2067718) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1033859) = 15116544 * k + 3101578 := by
    unfold C
    simp [show (5038848 * k + 1033859) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3101578) = 7558272 * k + 1550789 := by
    unfold C
    simp [show (15116544 * k + 3101578) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1550789) = 22674816 * k + 4652368 := by
    unfold C
    simp [show (7558272 * k + 1550789) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 4652368) = 11337408 * k + 2326184 := by
    unfold C
    simp [show (22674816 * k + 4652368) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2326184) = 5668704 * k + 1163092 := by
    unfold C
    simp [show (11337408 * k + 2326184) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1163092) = 2834352 * k + 581546 := by
    unfold C
    simp [show (5668704 * k + 1163092) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 581546) = 1417176 * k + 290773 := by
    unfold C
    simp [show (2834352 * k + 581546) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 290773) = 4251528 * k + 872320 := by
    unfold C
    simp [show (1417176 * k + 290773) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 872320) = 2125764 * k + 436160 := by
    unfold C
    simp [show (4251528 * k + 872320) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 436160) = 1062882 * k + 218080 := by
    unfold C
    simp [show (2125764 * k + 436160) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 218080) = 531441 * k + 109040 := by
    unfold C
    simp [show (1062882 * k + 218080) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 215143) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 215143)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_215295 : ∀ k : Nat,
    iterate (1048576 * k + 215295) 32 = 531441 * k + 109117 ∧
      531441 * k + 109117 < 1048576 * k + 215295 := by
  intro k
  have h1 : C (1048576 * k + 215295) = 3145728 * k + 645886 := by
    unfold C
    simp [show (1048576 * k + 215295) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 645886) = 1572864 * k + 322943 := by
    unfold C
    simp [show (3145728 * k + 645886) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 322943) = 4718592 * k + 968830 := by
    unfold C
    simp [show (1572864 * k + 322943) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 968830) = 2359296 * k + 484415 := by
    unfold C
    simp [show (4718592 * k + 968830) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 484415) = 7077888 * k + 1453246 := by
    unfold C
    simp [show (2359296 * k + 484415) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1453246) = 3538944 * k + 726623 := by
    unfold C
    simp [show (7077888 * k + 1453246) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 726623) = 10616832 * k + 2179870 := by
    unfold C
    simp [show (3538944 * k + 726623) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2179870) = 5308416 * k + 1089935 := by
    unfold C
    simp [show (10616832 * k + 2179870) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1089935) = 15925248 * k + 3269806 := by
    unfold C
    simp [show (5308416 * k + 1089935) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3269806) = 7962624 * k + 1634903 := by
    unfold C
    simp [show (15925248 * k + 3269806) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1634903) = 23887872 * k + 4904710 := by
    unfold C
    simp [show (7962624 * k + 1634903) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 4904710) = 11943936 * k + 2452355 := by
    unfold C
    simp [show (23887872 * k + 4904710) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2452355) = 35831808 * k + 7357066 := by
    unfold C
    simp [show (11943936 * k + 2452355) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 7357066) = 17915904 * k + 3678533 := by
    unfold C
    simp [show (35831808 * k + 7357066) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 3678533) = 53747712 * k + 11035600 := by
    unfold C
    simp [show (17915904 * k + 3678533) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 11035600) = 26873856 * k + 5517800 := by
    unfold C
    simp [show (53747712 * k + 11035600) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 5517800) = 13436928 * k + 2758900 := by
    unfold C
    simp [show (26873856 * k + 5517800) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2758900) = 6718464 * k + 1379450 := by
    unfold C
    simp [show (13436928 * k + 2758900) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1379450) = 3359232 * k + 689725 := by
    unfold C
    simp [show (6718464 * k + 1379450) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 689725) = 10077696 * k + 2069176 := by
    unfold C
    simp [show (3359232 * k + 689725) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2069176) = 5038848 * k + 1034588 := by
    unfold C
    simp [show (10077696 * k + 2069176) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1034588) = 2519424 * k + 517294 := by
    unfold C
    simp [show (5038848 * k + 1034588) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 517294) = 1259712 * k + 258647 := by
    unfold C
    simp [show (2519424 * k + 517294) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 258647) = 3779136 * k + 775942 := by
    unfold C
    simp [show (1259712 * k + 258647) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 775942) = 1889568 * k + 387971 := by
    unfold C
    simp [show (3779136 * k + 775942) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 387971) = 5668704 * k + 1163914 := by
    unfold C
    simp [show (1889568 * k + 387971) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1163914) = 2834352 * k + 581957 := by
    unfold C
    simp [show (5668704 * k + 1163914) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 581957) = 8503056 * k + 1745872 := by
    unfold C
    simp [show (2834352 * k + 581957) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1745872) = 4251528 * k + 872936 := by
    unfold C
    simp [show (8503056 * k + 1745872) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 872936) = 2125764 * k + 436468 := by
    unfold C
    simp [show (4251528 * k + 872936) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 436468) = 1062882 * k + 218234 := by
    unfold C
    simp [show (2125764 * k + 436468) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 218234) = 531441 * k + 109117 := by
    unfold C
    simp [show (1062882 * k + 218234) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 215295) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 215295)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_215711 : ∀ k : Nat,
    iterate (1048576 * k + 215711) 32 = 531441 * k + 109328 ∧
      531441 * k + 109328 < 1048576 * k + 215711 := by
  intro k
  have h1 : C (1048576 * k + 215711) = 3145728 * k + 647134 := by
    unfold C
    simp [show (1048576 * k + 215711) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 647134) = 1572864 * k + 323567 := by
    unfold C
    simp [show (3145728 * k + 647134) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 323567) = 4718592 * k + 970702 := by
    unfold C
    simp [show (1572864 * k + 323567) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 970702) = 2359296 * k + 485351 := by
    unfold C
    simp [show (4718592 * k + 970702) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 485351) = 7077888 * k + 1456054 := by
    unfold C
    simp [show (2359296 * k + 485351) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1456054) = 3538944 * k + 728027 := by
    unfold C
    simp [show (7077888 * k + 1456054) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 728027) = 10616832 * k + 2184082 := by
    unfold C
    simp [show (3538944 * k + 728027) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2184082) = 5308416 * k + 1092041 := by
    unfold C
    simp [show (10616832 * k + 2184082) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1092041) = 15925248 * k + 3276124 := by
    unfold C
    simp [show (5308416 * k + 1092041) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3276124) = 7962624 * k + 1638062 := by
    unfold C
    simp [show (15925248 * k + 3276124) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1638062) = 3981312 * k + 819031 := by
    unfold C
    simp [show (7962624 * k + 1638062) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 819031) = 11943936 * k + 2457094 := by
    unfold C
    simp [show (3981312 * k + 819031) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2457094) = 5971968 * k + 1228547 := by
    unfold C
    simp [show (11943936 * k + 2457094) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1228547) = 17915904 * k + 3685642 := by
    unfold C
    simp [show (5971968 * k + 1228547) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3685642) = 8957952 * k + 1842821 := by
    unfold C
    simp [show (17915904 * k + 3685642) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1842821) = 26873856 * k + 5528464 := by
    unfold C
    simp [show (8957952 * k + 1842821) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5528464) = 13436928 * k + 2764232 := by
    unfold C
    simp [show (26873856 * k + 5528464) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2764232) = 6718464 * k + 1382116 := by
    unfold C
    simp [show (13436928 * k + 2764232) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1382116) = 3359232 * k + 691058 := by
    unfold C
    simp [show (6718464 * k + 1382116) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 691058) = 1679616 * k + 345529 := by
    unfold C
    simp [show (3359232 * k + 691058) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 345529) = 5038848 * k + 1036588 := by
    unfold C
    simp [show (1679616 * k + 345529) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1036588) = 2519424 * k + 518294 := by
    unfold C
    simp [show (5038848 * k + 1036588) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 518294) = 1259712 * k + 259147 := by
    unfold C
    simp [show (2519424 * k + 518294) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 259147) = 3779136 * k + 777442 := by
    unfold C
    simp [show (1259712 * k + 259147) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 777442) = 1889568 * k + 388721 := by
    unfold C
    simp [show (3779136 * k + 777442) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 388721) = 5668704 * k + 1166164 := by
    unfold C
    simp [show (1889568 * k + 388721) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1166164) = 2834352 * k + 583082 := by
    unfold C
    simp [show (5668704 * k + 1166164) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 583082) = 1417176 * k + 291541 := by
    unfold C
    simp [show (2834352 * k + 583082) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 291541) = 4251528 * k + 874624 := by
    unfold C
    simp [show (1417176 * k + 291541) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 874624) = 2125764 * k + 437312 := by
    unfold C
    simp [show (4251528 * k + 874624) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 437312) = 1062882 * k + 218656 := by
    unfold C
    simp [show (2125764 * k + 437312) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 218656) = 531441 * k + 109328 := by
    unfold C
    simp [show (1062882 * k + 218656) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 215711) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 215711)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_215871 : ∀ k : Nat,
    iterate (1048576 * k + 215871) 32 = 531441 * k + 109409 ∧
      531441 * k + 109409 < 1048576 * k + 215871 := by
  intro k
  have h1 : C (1048576 * k + 215871) = 3145728 * k + 647614 := by
    unfold C
    simp [show (1048576 * k + 215871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 647614) = 1572864 * k + 323807 := by
    unfold C
    simp [show (3145728 * k + 647614) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 323807) = 4718592 * k + 971422 := by
    unfold C
    simp [show (1572864 * k + 323807) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 971422) = 2359296 * k + 485711 := by
    unfold C
    simp [show (4718592 * k + 971422) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 485711) = 7077888 * k + 1457134 := by
    unfold C
    simp [show (2359296 * k + 485711) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1457134) = 3538944 * k + 728567 := by
    unfold C
    simp [show (7077888 * k + 1457134) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 728567) = 10616832 * k + 2185702 := by
    unfold C
    simp [show (3538944 * k + 728567) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2185702) = 5308416 * k + 1092851 := by
    unfold C
    simp [show (10616832 * k + 2185702) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1092851) = 15925248 * k + 3278554 := by
    unfold C
    simp [show (5308416 * k + 1092851) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3278554) = 7962624 * k + 1639277 := by
    unfold C
    simp [show (15925248 * k + 3278554) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1639277) = 23887872 * k + 4917832 := by
    unfold C
    simp [show (7962624 * k + 1639277) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 4917832) = 11943936 * k + 2458916 := by
    unfold C
    simp [show (23887872 * k + 4917832) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2458916) = 5971968 * k + 1229458 := by
    unfold C
    simp [show (11943936 * k + 2458916) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1229458) = 2985984 * k + 614729 := by
    unfold C
    simp [show (5971968 * k + 1229458) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 614729) = 8957952 * k + 1844188 := by
    unfold C
    simp [show (2985984 * k + 614729) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1844188) = 4478976 * k + 922094 := by
    unfold C
    simp [show (8957952 * k + 1844188) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 922094) = 2239488 * k + 461047 := by
    unfold C
    simp [show (4478976 * k + 922094) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 461047) = 6718464 * k + 1383142 := by
    unfold C
    simp [show (2239488 * k + 461047) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1383142) = 3359232 * k + 691571 := by
    unfold C
    simp [show (6718464 * k + 1383142) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 691571) = 10077696 * k + 2074714 := by
    unfold C
    simp [show (3359232 * k + 691571) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2074714) = 5038848 * k + 1037357 := by
    unfold C
    simp [show (10077696 * k + 2074714) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1037357) = 15116544 * k + 3112072 := by
    unfold C
    simp [show (5038848 * k + 1037357) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3112072) = 7558272 * k + 1556036 := by
    unfold C
    simp [show (15116544 * k + 3112072) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1556036) = 3779136 * k + 778018 := by
    unfold C
    simp [show (7558272 * k + 1556036) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 778018) = 1889568 * k + 389009 := by
    unfold C
    simp [show (3779136 * k + 778018) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 389009) = 5668704 * k + 1167028 := by
    unfold C
    simp [show (1889568 * k + 389009) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1167028) = 2834352 * k + 583514 := by
    unfold C
    simp [show (5668704 * k + 1167028) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 583514) = 1417176 * k + 291757 := by
    unfold C
    simp [show (2834352 * k + 583514) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 291757) = 4251528 * k + 875272 := by
    unfold C
    simp [show (1417176 * k + 291757) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 875272) = 2125764 * k + 437636 := by
    unfold C
    simp [show (4251528 * k + 875272) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 437636) = 1062882 * k + 218818 := by
    unfold C
    simp [show (2125764 * k + 437636) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 218818) = 531441 * k + 109409 := by
    unfold C
    simp [show (1062882 * k + 218818) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 215871) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 215871)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_216271 : ∀ k : Nat,
    iterate (1048576 * k + 216271) 32 = 531441 * k + 109612 ∧
      531441 * k + 109612 < 1048576 * k + 216271 := by
  intro k
  have h1 : C (1048576 * k + 216271) = 3145728 * k + 648814 := by
    unfold C
    simp [show (1048576 * k + 216271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 648814) = 1572864 * k + 324407 := by
    unfold C
    simp [show (3145728 * k + 648814) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 324407) = 4718592 * k + 973222 := by
    unfold C
    simp [show (1572864 * k + 324407) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 973222) = 2359296 * k + 486611 := by
    unfold C
    simp [show (4718592 * k + 973222) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 486611) = 7077888 * k + 1459834 := by
    unfold C
    simp [show (2359296 * k + 486611) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1459834) = 3538944 * k + 729917 := by
    unfold C
    simp [show (7077888 * k + 1459834) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 729917) = 10616832 * k + 2189752 := by
    unfold C
    simp [show (3538944 * k + 729917) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2189752) = 5308416 * k + 1094876 := by
    unfold C
    simp [show (10616832 * k + 2189752) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1094876) = 2654208 * k + 547438 := by
    unfold C
    simp [show (5308416 * k + 1094876) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 547438) = 1327104 * k + 273719 := by
    unfold C
    simp [show (2654208 * k + 547438) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 273719) = 3981312 * k + 821158 := by
    unfold C
    simp [show (1327104 * k + 273719) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 821158) = 1990656 * k + 410579 := by
    unfold C
    simp [show (3981312 * k + 821158) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 410579) = 5971968 * k + 1231738 := by
    unfold C
    simp [show (1990656 * k + 410579) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1231738) = 2985984 * k + 615869 := by
    unfold C
    simp [show (5971968 * k + 1231738) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 615869) = 8957952 * k + 1847608 := by
    unfold C
    simp [show (2985984 * k + 615869) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1847608) = 4478976 * k + 923804 := by
    unfold C
    simp [show (8957952 * k + 1847608) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 923804) = 2239488 * k + 461902 := by
    unfold C
    simp [show (4478976 * k + 923804) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 461902) = 1119744 * k + 230951 := by
    unfold C
    simp [show (2239488 * k + 461902) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 230951) = 3359232 * k + 692854 := by
    unfold C
    simp [show (1119744 * k + 230951) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 692854) = 1679616 * k + 346427 := by
    unfold C
    simp [show (3359232 * k + 692854) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 346427) = 5038848 * k + 1039282 := by
    unfold C
    simp [show (1679616 * k + 346427) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1039282) = 2519424 * k + 519641 := by
    unfold C
    simp [show (5038848 * k + 1039282) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 519641) = 7558272 * k + 1558924 := by
    unfold C
    simp [show (2519424 * k + 519641) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1558924) = 3779136 * k + 779462 := by
    unfold C
    simp [show (7558272 * k + 1558924) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 779462) = 1889568 * k + 389731 := by
    unfold C
    simp [show (3779136 * k + 779462) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 389731) = 5668704 * k + 1169194 := by
    unfold C
    simp [show (1889568 * k + 389731) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1169194) = 2834352 * k + 584597 := by
    unfold C
    simp [show (5668704 * k + 1169194) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 584597) = 8503056 * k + 1753792 := by
    unfold C
    simp [show (2834352 * k + 584597) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1753792) = 4251528 * k + 876896 := by
    unfold C
    simp [show (8503056 * k + 1753792) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 876896) = 2125764 * k + 438448 := by
    unfold C
    simp [show (4251528 * k + 876896) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 438448) = 1062882 * k + 219224 := by
    unfold C
    simp [show (2125764 * k + 438448) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 219224) = 531441 * k + 109612 := by
    unfold C
    simp [show (1062882 * k + 219224) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 216271) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 216271)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_216479 : ∀ k : Nat,
    iterate (1048576 * k + 216479) 32 = 531441 * k + 109717 ∧
      531441 * k + 109717 < 1048576 * k + 216479 := by
  intro k
  have h1 : C (1048576 * k + 216479) = 3145728 * k + 649438 := by
    unfold C
    simp [show (1048576 * k + 216479) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 649438) = 1572864 * k + 324719 := by
    unfold C
    simp [show (3145728 * k + 649438) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 324719) = 4718592 * k + 974158 := by
    unfold C
    simp [show (1572864 * k + 324719) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 974158) = 2359296 * k + 487079 := by
    unfold C
    simp [show (4718592 * k + 974158) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 487079) = 7077888 * k + 1461238 := by
    unfold C
    simp [show (2359296 * k + 487079) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1461238) = 3538944 * k + 730619 := by
    unfold C
    simp [show (7077888 * k + 1461238) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 730619) = 10616832 * k + 2191858 := by
    unfold C
    simp [show (3538944 * k + 730619) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2191858) = 5308416 * k + 1095929 := by
    unfold C
    simp [show (10616832 * k + 2191858) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1095929) = 15925248 * k + 3287788 := by
    unfold C
    simp [show (5308416 * k + 1095929) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3287788) = 7962624 * k + 1643894 := by
    unfold C
    simp [show (15925248 * k + 3287788) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1643894) = 3981312 * k + 821947 := by
    unfold C
    simp [show (7962624 * k + 1643894) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 821947) = 11943936 * k + 2465842 := by
    unfold C
    simp [show (3981312 * k + 821947) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2465842) = 5971968 * k + 1232921 := by
    unfold C
    simp [show (11943936 * k + 2465842) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1232921) = 17915904 * k + 3698764 := by
    unfold C
    simp [show (5971968 * k + 1232921) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3698764) = 8957952 * k + 1849382 := by
    unfold C
    simp [show (17915904 * k + 3698764) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1849382) = 4478976 * k + 924691 := by
    unfold C
    simp [show (8957952 * k + 1849382) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 924691) = 13436928 * k + 2774074 := by
    unfold C
    simp [show (4478976 * k + 924691) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2774074) = 6718464 * k + 1387037 := by
    unfold C
    simp [show (13436928 * k + 2774074) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1387037) = 20155392 * k + 4161112 := by
    unfold C
    simp [show (6718464 * k + 1387037) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4161112) = 10077696 * k + 2080556 := by
    unfold C
    simp [show (20155392 * k + 4161112) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2080556) = 5038848 * k + 1040278 := by
    unfold C
    simp [show (10077696 * k + 2080556) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1040278) = 2519424 * k + 520139 := by
    unfold C
    simp [show (5038848 * k + 1040278) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 520139) = 7558272 * k + 1560418 := by
    unfold C
    simp [show (2519424 * k + 520139) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1560418) = 3779136 * k + 780209 := by
    unfold C
    simp [show (7558272 * k + 1560418) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 780209) = 11337408 * k + 2340628 := by
    unfold C
    simp [show (3779136 * k + 780209) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2340628) = 5668704 * k + 1170314 := by
    unfold C
    simp [show (11337408 * k + 2340628) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1170314) = 2834352 * k + 585157 := by
    unfold C
    simp [show (5668704 * k + 1170314) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 585157) = 8503056 * k + 1755472 := by
    unfold C
    simp [show (2834352 * k + 585157) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1755472) = 4251528 * k + 877736 := by
    unfold C
    simp [show (8503056 * k + 1755472) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 877736) = 2125764 * k + 438868 := by
    unfold C
    simp [show (4251528 * k + 877736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 438868) = 1062882 * k + 219434 := by
    unfold C
    simp [show (2125764 * k + 438868) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 219434) = 531441 * k + 109717 := by
    unfold C
    simp [show (1062882 * k + 219434) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 216479) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 216479)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_216623 : ∀ k : Nat,
    iterate (1048576 * k + 216623) 32 = 531441 * k + 109790 ∧
      531441 * k + 109790 < 1048576 * k + 216623 := by
  intro k
  have h1 : C (1048576 * k + 216623) = 3145728 * k + 649870 := by
    unfold C
    simp [show (1048576 * k + 216623) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 649870) = 1572864 * k + 324935 := by
    unfold C
    simp [show (3145728 * k + 649870) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 324935) = 4718592 * k + 974806 := by
    unfold C
    simp [show (1572864 * k + 324935) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 974806) = 2359296 * k + 487403 := by
    unfold C
    simp [show (4718592 * k + 974806) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 487403) = 7077888 * k + 1462210 := by
    unfold C
    simp [show (2359296 * k + 487403) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1462210) = 3538944 * k + 731105 := by
    unfold C
    simp [show (7077888 * k + 1462210) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 731105) = 10616832 * k + 2193316 := by
    unfold C
    simp [show (3538944 * k + 731105) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2193316) = 5308416 * k + 1096658 := by
    unfold C
    simp [show (10616832 * k + 2193316) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1096658) = 2654208 * k + 548329 := by
    unfold C
    simp [show (5308416 * k + 1096658) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 548329) = 7962624 * k + 1644988 := by
    unfold C
    simp [show (2654208 * k + 548329) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1644988) = 3981312 * k + 822494 := by
    unfold C
    simp [show (7962624 * k + 1644988) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 822494) = 1990656 * k + 411247 := by
    unfold C
    simp [show (3981312 * k + 822494) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 411247) = 5971968 * k + 1233742 := by
    unfold C
    simp [show (1990656 * k + 411247) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1233742) = 2985984 * k + 616871 := by
    unfold C
    simp [show (5971968 * k + 1233742) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 616871) = 8957952 * k + 1850614 := by
    unfold C
    simp [show (2985984 * k + 616871) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1850614) = 4478976 * k + 925307 := by
    unfold C
    simp [show (8957952 * k + 1850614) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 925307) = 13436928 * k + 2775922 := by
    unfold C
    simp [show (4478976 * k + 925307) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2775922) = 6718464 * k + 1387961 := by
    unfold C
    simp [show (13436928 * k + 2775922) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1387961) = 20155392 * k + 4163884 := by
    unfold C
    simp [show (6718464 * k + 1387961) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4163884) = 10077696 * k + 2081942 := by
    unfold C
    simp [show (20155392 * k + 4163884) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2081942) = 5038848 * k + 1040971 := by
    unfold C
    simp [show (10077696 * k + 2081942) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1040971) = 15116544 * k + 3122914 := by
    unfold C
    simp [show (5038848 * k + 1040971) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3122914) = 7558272 * k + 1561457 := by
    unfold C
    simp [show (15116544 * k + 3122914) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1561457) = 22674816 * k + 4684372 := by
    unfold C
    simp [show (7558272 * k + 1561457) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 4684372) = 11337408 * k + 2342186 := by
    unfold C
    simp [show (22674816 * k + 4684372) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2342186) = 5668704 * k + 1171093 := by
    unfold C
    simp [show (11337408 * k + 2342186) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1171093) = 17006112 * k + 3513280 := by
    unfold C
    simp [show (5668704 * k + 1171093) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3513280) = 8503056 * k + 1756640 := by
    unfold C
    simp [show (17006112 * k + 3513280) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1756640) = 4251528 * k + 878320 := by
    unfold C
    simp [show (8503056 * k + 1756640) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 878320) = 2125764 * k + 439160 := by
    unfold C
    simp [show (4251528 * k + 878320) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 439160) = 1062882 * k + 219580 := by
    unfold C
    simp [show (2125764 * k + 439160) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 219580) = 531441 * k + 109790 := by
    unfold C
    simp [show (1062882 * k + 219580) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 216623) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 216623)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard029
