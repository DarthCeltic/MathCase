import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard034

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_247643 : ∀ k : Nat,
    iterate (1048576 * k + 247643) 32 = 531441 * k + 125512 ∧
      531441 * k + 125512 < 1048576 * k + 247643 := by
  intro k
  have h1 : C (1048576 * k + 247643) = 3145728 * k + 742930 := by
    unfold C
    simp [show (1048576 * k + 247643) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 742930) = 1572864 * k + 371465 := by
    unfold C
    simp [show (3145728 * k + 742930) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 371465) = 4718592 * k + 1114396 := by
    unfold C
    simp [show (1572864 * k + 371465) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1114396) = 2359296 * k + 557198 := by
    unfold C
    simp [show (4718592 * k + 1114396) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 557198) = 1179648 * k + 278599 := by
    unfold C
    simp [show (2359296 * k + 557198) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 278599) = 3538944 * k + 835798 := by
    unfold C
    simp [show (1179648 * k + 278599) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 835798) = 1769472 * k + 417899 := by
    unfold C
    simp [show (3538944 * k + 835798) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 417899) = 5308416 * k + 1253698 := by
    unfold C
    simp [show (1769472 * k + 417899) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1253698) = 2654208 * k + 626849 := by
    unfold C
    simp [show (5308416 * k + 1253698) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 626849) = 7962624 * k + 1880548 := by
    unfold C
    simp [show (2654208 * k + 626849) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1880548) = 3981312 * k + 940274 := by
    unfold C
    simp [show (7962624 * k + 1880548) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 940274) = 1990656 * k + 470137 := by
    unfold C
    simp [show (3981312 * k + 940274) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 470137) = 5971968 * k + 1410412 := by
    unfold C
    simp [show (1990656 * k + 470137) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1410412) = 2985984 * k + 705206 := by
    unfold C
    simp [show (5971968 * k + 1410412) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 705206) = 1492992 * k + 352603 := by
    unfold C
    simp [show (2985984 * k + 705206) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 352603) = 4478976 * k + 1057810 := by
    unfold C
    simp [show (1492992 * k + 352603) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1057810) = 2239488 * k + 528905 := by
    unfold C
    simp [show (4478976 * k + 1057810) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 528905) = 6718464 * k + 1586716 := by
    unfold C
    simp [show (2239488 * k + 528905) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1586716) = 3359232 * k + 793358 := by
    unfold C
    simp [show (6718464 * k + 1586716) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 793358) = 1679616 * k + 396679 := by
    unfold C
    simp [show (3359232 * k + 793358) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 396679) = 5038848 * k + 1190038 := by
    unfold C
    simp [show (1679616 * k + 396679) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1190038) = 2519424 * k + 595019 := by
    unfold C
    simp [show (5038848 * k + 1190038) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 595019) = 7558272 * k + 1785058 := by
    unfold C
    simp [show (2519424 * k + 595019) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1785058) = 3779136 * k + 892529 := by
    unfold C
    simp [show (7558272 * k + 1785058) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 892529) = 11337408 * k + 2677588 := by
    unfold C
    simp [show (3779136 * k + 892529) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2677588) = 5668704 * k + 1338794 := by
    unfold C
    simp [show (11337408 * k + 2677588) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1338794) = 2834352 * k + 669397 := by
    unfold C
    simp [show (5668704 * k + 1338794) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 669397) = 8503056 * k + 2008192 := by
    unfold C
    simp [show (2834352 * k + 669397) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2008192) = 4251528 * k + 1004096 := by
    unfold C
    simp [show (8503056 * k + 2008192) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1004096) = 2125764 * k + 502048 := by
    unfold C
    simp [show (4251528 * k + 1004096) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 502048) = 1062882 * k + 251024 := by
    unfold C
    simp [show (2125764 * k + 502048) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 251024) = 531441 * k + 125512 := by
    unfold C
    simp [show (1062882 * k + 251024) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 247643) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 247643)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_247803 : ∀ k : Nat,
    iterate (1048576 * k + 247803) 32 = 531441 * k + 125593 ∧
      531441 * k + 125593 < 1048576 * k + 247803 := by
  intro k
  have h1 : C (1048576 * k + 247803) = 3145728 * k + 743410 := by
    unfold C
    simp [show (1048576 * k + 247803) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 743410) = 1572864 * k + 371705 := by
    unfold C
    simp [show (3145728 * k + 743410) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 371705) = 4718592 * k + 1115116 := by
    unfold C
    simp [show (1572864 * k + 371705) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1115116) = 2359296 * k + 557558 := by
    unfold C
    simp [show (4718592 * k + 1115116) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 557558) = 1179648 * k + 278779 := by
    unfold C
    simp [show (2359296 * k + 557558) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 278779) = 3538944 * k + 836338 := by
    unfold C
    simp [show (1179648 * k + 278779) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 836338) = 1769472 * k + 418169 := by
    unfold C
    simp [show (3538944 * k + 836338) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 418169) = 5308416 * k + 1254508 := by
    unfold C
    simp [show (1769472 * k + 418169) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1254508) = 2654208 * k + 627254 := by
    unfold C
    simp [show (5308416 * k + 1254508) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 627254) = 1327104 * k + 313627 := by
    unfold C
    simp [show (2654208 * k + 627254) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 313627) = 3981312 * k + 940882 := by
    unfold C
    simp [show (1327104 * k + 313627) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 940882) = 1990656 * k + 470441 := by
    unfold C
    simp [show (3981312 * k + 940882) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 470441) = 5971968 * k + 1411324 := by
    unfold C
    simp [show (1990656 * k + 470441) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1411324) = 2985984 * k + 705662 := by
    unfold C
    simp [show (5971968 * k + 1411324) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 705662) = 1492992 * k + 352831 := by
    unfold C
    simp [show (2985984 * k + 705662) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 352831) = 4478976 * k + 1058494 := by
    unfold C
    simp [show (1492992 * k + 352831) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1058494) = 2239488 * k + 529247 := by
    unfold C
    simp [show (4478976 * k + 1058494) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 529247) = 6718464 * k + 1587742 := by
    unfold C
    simp [show (2239488 * k + 529247) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1587742) = 3359232 * k + 793871 := by
    unfold C
    simp [show (6718464 * k + 1587742) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 793871) = 10077696 * k + 2381614 := by
    unfold C
    simp [show (3359232 * k + 793871) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2381614) = 5038848 * k + 1190807 := by
    unfold C
    simp [show (10077696 * k + 2381614) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1190807) = 15116544 * k + 3572422 := by
    unfold C
    simp [show (5038848 * k + 1190807) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3572422) = 7558272 * k + 1786211 := by
    unfold C
    simp [show (15116544 * k + 3572422) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1786211) = 22674816 * k + 5358634 := by
    unfold C
    simp [show (7558272 * k + 1786211) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 5358634) = 11337408 * k + 2679317 := by
    unfold C
    simp [show (22674816 * k + 5358634) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2679317) = 34012224 * k + 8037952 := by
    unfold C
    simp [show (11337408 * k + 2679317) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 8037952) = 17006112 * k + 4018976 := by
    unfold C
    simp [show (34012224 * k + 8037952) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 4018976) = 8503056 * k + 2009488 := by
    unfold C
    simp [show (17006112 * k + 4018976) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2009488) = 4251528 * k + 1004744 := by
    unfold C
    simp [show (8503056 * k + 2009488) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1004744) = 2125764 * k + 502372 := by
    unfold C
    simp [show (4251528 * k + 1004744) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 502372) = 1062882 * k + 251186 := by
    unfold C
    simp [show (2125764 * k + 502372) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 251186) = 531441 * k + 125593 := by
    unfold C
    simp [show (1062882 * k + 251186) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 247803) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 247803)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_248527 : ∀ k : Nat,
    iterate (1048576 * k + 248527) 32 = 531441 * k + 125960 ∧
      531441 * k + 125960 < 1048576 * k + 248527 := by
  intro k
  have h1 : C (1048576 * k + 248527) = 3145728 * k + 745582 := by
    unfold C
    simp [show (1048576 * k + 248527) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 745582) = 1572864 * k + 372791 := by
    unfold C
    simp [show (3145728 * k + 745582) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 372791) = 4718592 * k + 1118374 := by
    unfold C
    simp [show (1572864 * k + 372791) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1118374) = 2359296 * k + 559187 := by
    unfold C
    simp [show (4718592 * k + 1118374) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 559187) = 7077888 * k + 1677562 := by
    unfold C
    simp [show (2359296 * k + 559187) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1677562) = 3538944 * k + 838781 := by
    unfold C
    simp [show (7077888 * k + 1677562) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 838781) = 10616832 * k + 2516344 := by
    unfold C
    simp [show (3538944 * k + 838781) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2516344) = 5308416 * k + 1258172 := by
    unfold C
    simp [show (10616832 * k + 2516344) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1258172) = 2654208 * k + 629086 := by
    unfold C
    simp [show (5308416 * k + 1258172) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 629086) = 1327104 * k + 314543 := by
    unfold C
    simp [show (2654208 * k + 629086) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 314543) = 3981312 * k + 943630 := by
    unfold C
    simp [show (1327104 * k + 314543) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 943630) = 1990656 * k + 471815 := by
    unfold C
    simp [show (3981312 * k + 943630) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 471815) = 5971968 * k + 1415446 := by
    unfold C
    simp [show (1990656 * k + 471815) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1415446) = 2985984 * k + 707723 := by
    unfold C
    simp [show (5971968 * k + 1415446) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 707723) = 8957952 * k + 2123170 := by
    unfold C
    simp [show (2985984 * k + 707723) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2123170) = 4478976 * k + 1061585 := by
    unfold C
    simp [show (8957952 * k + 2123170) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1061585) = 13436928 * k + 3184756 := by
    unfold C
    simp [show (4478976 * k + 1061585) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3184756) = 6718464 * k + 1592378 := by
    unfold C
    simp [show (13436928 * k + 3184756) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1592378) = 3359232 * k + 796189 := by
    unfold C
    simp [show (6718464 * k + 1592378) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 796189) = 10077696 * k + 2388568 := by
    unfold C
    simp [show (3359232 * k + 796189) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2388568) = 5038848 * k + 1194284 := by
    unfold C
    simp [show (10077696 * k + 2388568) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1194284) = 2519424 * k + 597142 := by
    unfold C
    simp [show (5038848 * k + 1194284) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 597142) = 1259712 * k + 298571 := by
    unfold C
    simp [show (2519424 * k + 597142) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 298571) = 3779136 * k + 895714 := by
    unfold C
    simp [show (1259712 * k + 298571) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 895714) = 1889568 * k + 447857 := by
    unfold C
    simp [show (3779136 * k + 895714) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 447857) = 5668704 * k + 1343572 := by
    unfold C
    simp [show (1889568 * k + 447857) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1343572) = 2834352 * k + 671786 := by
    unfold C
    simp [show (5668704 * k + 1343572) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 671786) = 1417176 * k + 335893 := by
    unfold C
    simp [show (2834352 * k + 671786) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 335893) = 4251528 * k + 1007680 := by
    unfold C
    simp [show (1417176 * k + 335893) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1007680) = 2125764 * k + 503840 := by
    unfold C
    simp [show (4251528 * k + 1007680) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 503840) = 1062882 * k + 251920 := by
    unfold C
    simp [show (2125764 * k + 503840) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 251920) = 531441 * k + 125960 := by
    unfold C
    simp [show (1062882 * k + 251920) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 248527) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 248527)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_248687 : ∀ k : Nat,
    iterate (1048576 * k + 248687) 32 = 531441 * k + 126041 ∧
      531441 * k + 126041 < 1048576 * k + 248687 := by
  intro k
  have h1 : C (1048576 * k + 248687) = 3145728 * k + 746062 := by
    unfold C
    simp [show (1048576 * k + 248687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 746062) = 1572864 * k + 373031 := by
    unfold C
    simp [show (3145728 * k + 746062) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 373031) = 4718592 * k + 1119094 := by
    unfold C
    simp [show (1572864 * k + 373031) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1119094) = 2359296 * k + 559547 := by
    unfold C
    simp [show (4718592 * k + 1119094) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 559547) = 7077888 * k + 1678642 := by
    unfold C
    simp [show (2359296 * k + 559547) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1678642) = 3538944 * k + 839321 := by
    unfold C
    simp [show (7077888 * k + 1678642) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 839321) = 10616832 * k + 2517964 := by
    unfold C
    simp [show (3538944 * k + 839321) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2517964) = 5308416 * k + 1258982 := by
    unfold C
    simp [show (10616832 * k + 2517964) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1258982) = 2654208 * k + 629491 := by
    unfold C
    simp [show (5308416 * k + 1258982) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 629491) = 7962624 * k + 1888474 := by
    unfold C
    simp [show (2654208 * k + 629491) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1888474) = 3981312 * k + 944237 := by
    unfold C
    simp [show (7962624 * k + 1888474) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 944237) = 11943936 * k + 2832712 := by
    unfold C
    simp [show (3981312 * k + 944237) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2832712) = 5971968 * k + 1416356 := by
    unfold C
    simp [show (11943936 * k + 2832712) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1416356) = 2985984 * k + 708178 := by
    unfold C
    simp [show (5971968 * k + 1416356) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 708178) = 1492992 * k + 354089 := by
    unfold C
    simp [show (2985984 * k + 708178) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 354089) = 4478976 * k + 1062268 := by
    unfold C
    simp [show (1492992 * k + 354089) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1062268) = 2239488 * k + 531134 := by
    unfold C
    simp [show (4478976 * k + 1062268) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 531134) = 1119744 * k + 265567 := by
    unfold C
    simp [show (2239488 * k + 531134) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 265567) = 3359232 * k + 796702 := by
    unfold C
    simp [show (1119744 * k + 265567) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 796702) = 1679616 * k + 398351 := by
    unfold C
    simp [show (3359232 * k + 796702) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 398351) = 5038848 * k + 1195054 := by
    unfold C
    simp [show (1679616 * k + 398351) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1195054) = 2519424 * k + 597527 := by
    unfold C
    simp [show (5038848 * k + 1195054) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 597527) = 7558272 * k + 1792582 := by
    unfold C
    simp [show (2519424 * k + 597527) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1792582) = 3779136 * k + 896291 := by
    unfold C
    simp [show (7558272 * k + 1792582) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 896291) = 11337408 * k + 2688874 := by
    unfold C
    simp [show (3779136 * k + 896291) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2688874) = 5668704 * k + 1344437 := by
    unfold C
    simp [show (11337408 * k + 2688874) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1344437) = 17006112 * k + 4033312 := by
    unfold C
    simp [show (5668704 * k + 1344437) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 4033312) = 8503056 * k + 2016656 := by
    unfold C
    simp [show (17006112 * k + 4033312) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2016656) = 4251528 * k + 1008328 := by
    unfold C
    simp [show (8503056 * k + 2016656) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1008328) = 2125764 * k + 504164 := by
    unfold C
    simp [show (4251528 * k + 1008328) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 504164) = 1062882 * k + 252082 := by
    unfold C
    simp [show (2125764 * k + 504164) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 252082) = 531441 * k + 126041 := by
    unfold C
    simp [show (1062882 * k + 252082) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 248687) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 248687)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_249135 : ∀ k : Nat,
    iterate (1048576 * k + 249135) 32 = 531441 * k + 126268 ∧
      531441 * k + 126268 < 1048576 * k + 249135 := by
  intro k
  have h1 : C (1048576 * k + 249135) = 3145728 * k + 747406 := by
    unfold C
    simp [show (1048576 * k + 249135) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 747406) = 1572864 * k + 373703 := by
    unfold C
    simp [show (3145728 * k + 747406) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 373703) = 4718592 * k + 1121110 := by
    unfold C
    simp [show (1572864 * k + 373703) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1121110) = 2359296 * k + 560555 := by
    unfold C
    simp [show (4718592 * k + 1121110) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 560555) = 7077888 * k + 1681666 := by
    unfold C
    simp [show (2359296 * k + 560555) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1681666) = 3538944 * k + 840833 := by
    unfold C
    simp [show (7077888 * k + 1681666) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 840833) = 10616832 * k + 2522500 := by
    unfold C
    simp [show (3538944 * k + 840833) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2522500) = 5308416 * k + 1261250 := by
    unfold C
    simp [show (10616832 * k + 2522500) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1261250) = 2654208 * k + 630625 := by
    unfold C
    simp [show (5308416 * k + 1261250) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 630625) = 7962624 * k + 1891876 := by
    unfold C
    simp [show (2654208 * k + 630625) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1891876) = 3981312 * k + 945938 := by
    unfold C
    simp [show (7962624 * k + 1891876) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 945938) = 1990656 * k + 472969 := by
    unfold C
    simp [show (3981312 * k + 945938) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 472969) = 5971968 * k + 1418908 := by
    unfold C
    simp [show (1990656 * k + 472969) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1418908) = 2985984 * k + 709454 := by
    unfold C
    simp [show (5971968 * k + 1418908) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 709454) = 1492992 * k + 354727 := by
    unfold C
    simp [show (2985984 * k + 709454) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 354727) = 4478976 * k + 1064182 := by
    unfold C
    simp [show (1492992 * k + 354727) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1064182) = 2239488 * k + 532091 := by
    unfold C
    simp [show (4478976 * k + 1064182) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 532091) = 6718464 * k + 1596274 := by
    unfold C
    simp [show (2239488 * k + 532091) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1596274) = 3359232 * k + 798137 := by
    unfold C
    simp [show (6718464 * k + 1596274) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 798137) = 10077696 * k + 2394412 := by
    unfold C
    simp [show (3359232 * k + 798137) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2394412) = 5038848 * k + 1197206 := by
    unfold C
    simp [show (10077696 * k + 2394412) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1197206) = 2519424 * k + 598603 := by
    unfold C
    simp [show (5038848 * k + 1197206) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 598603) = 7558272 * k + 1795810 := by
    unfold C
    simp [show (2519424 * k + 598603) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1795810) = 3779136 * k + 897905 := by
    unfold C
    simp [show (7558272 * k + 1795810) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 897905) = 11337408 * k + 2693716 := by
    unfold C
    simp [show (3779136 * k + 897905) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2693716) = 5668704 * k + 1346858 := by
    unfold C
    simp [show (11337408 * k + 2693716) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1346858) = 2834352 * k + 673429 := by
    unfold C
    simp [show (5668704 * k + 1346858) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 673429) = 8503056 * k + 2020288 := by
    unfold C
    simp [show (2834352 * k + 673429) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2020288) = 4251528 * k + 1010144 := by
    unfold C
    simp [show (8503056 * k + 2020288) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1010144) = 2125764 * k + 505072 := by
    unfold C
    simp [show (4251528 * k + 1010144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 505072) = 1062882 * k + 252536 := by
    unfold C
    simp [show (2125764 * k + 505072) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 252536) = 531441 * k + 126268 := by
    unfold C
    simp [show (1062882 * k + 252536) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 249135) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 249135)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_249711 : ∀ k : Nat,
    iterate (1048576 * k + 249711) 32 = 531441 * k + 126560 ∧
      531441 * k + 126560 < 1048576 * k + 249711 := by
  intro k
  have h1 : C (1048576 * k + 249711) = 3145728 * k + 749134 := by
    unfold C
    simp [show (1048576 * k + 249711) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 749134) = 1572864 * k + 374567 := by
    unfold C
    simp [show (3145728 * k + 749134) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 374567) = 4718592 * k + 1123702 := by
    unfold C
    simp [show (1572864 * k + 374567) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1123702) = 2359296 * k + 561851 := by
    unfold C
    simp [show (4718592 * k + 1123702) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 561851) = 7077888 * k + 1685554 := by
    unfold C
    simp [show (2359296 * k + 561851) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1685554) = 3538944 * k + 842777 := by
    unfold C
    simp [show (7077888 * k + 1685554) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 842777) = 10616832 * k + 2528332 := by
    unfold C
    simp [show (3538944 * k + 842777) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2528332) = 5308416 * k + 1264166 := by
    unfold C
    simp [show (10616832 * k + 2528332) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1264166) = 2654208 * k + 632083 := by
    unfold C
    simp [show (5308416 * k + 1264166) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 632083) = 7962624 * k + 1896250 := by
    unfold C
    simp [show (2654208 * k + 632083) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1896250) = 3981312 * k + 948125 := by
    unfold C
    simp [show (7962624 * k + 1896250) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 948125) = 11943936 * k + 2844376 := by
    unfold C
    simp [show (3981312 * k + 948125) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2844376) = 5971968 * k + 1422188 := by
    unfold C
    simp [show (11943936 * k + 2844376) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1422188) = 2985984 * k + 711094 := by
    unfold C
    simp [show (5971968 * k + 1422188) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 711094) = 1492992 * k + 355547 := by
    unfold C
    simp [show (2985984 * k + 711094) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 355547) = 4478976 * k + 1066642 := by
    unfold C
    simp [show (1492992 * k + 355547) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1066642) = 2239488 * k + 533321 := by
    unfold C
    simp [show (4478976 * k + 1066642) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 533321) = 6718464 * k + 1599964 := by
    unfold C
    simp [show (2239488 * k + 533321) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1599964) = 3359232 * k + 799982 := by
    unfold C
    simp [show (6718464 * k + 1599964) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 799982) = 1679616 * k + 399991 := by
    unfold C
    simp [show (3359232 * k + 799982) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 399991) = 5038848 * k + 1199974 := by
    unfold C
    simp [show (1679616 * k + 399991) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1199974) = 2519424 * k + 599987 := by
    unfold C
    simp [show (5038848 * k + 1199974) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 599987) = 7558272 * k + 1799962 := by
    unfold C
    simp [show (2519424 * k + 599987) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1799962) = 3779136 * k + 899981 := by
    unfold C
    simp [show (7558272 * k + 1799962) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 899981) = 11337408 * k + 2699944 := by
    unfold C
    simp [show (3779136 * k + 899981) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2699944) = 5668704 * k + 1349972 := by
    unfold C
    simp [show (11337408 * k + 2699944) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1349972) = 2834352 * k + 674986 := by
    unfold C
    simp [show (5668704 * k + 1349972) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 674986) = 1417176 * k + 337493 := by
    unfold C
    simp [show (2834352 * k + 674986) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 337493) = 4251528 * k + 1012480 := by
    unfold C
    simp [show (1417176 * k + 337493) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1012480) = 2125764 * k + 506240 := by
    unfold C
    simp [show (4251528 * k + 1012480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 506240) = 1062882 * k + 253120 := by
    unfold C
    simp [show (2125764 * k + 506240) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 253120) = 531441 * k + 126560 := by
    unfold C
    simp [show (1062882 * k + 253120) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 249711) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 249711)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_249759 : ∀ k : Nat,
    iterate (1048576 * k + 249759) 32 = 531441 * k + 126584 ∧
      531441 * k + 126584 < 1048576 * k + 249759 := by
  intro k
  have h1 : C (1048576 * k + 249759) = 3145728 * k + 749278 := by
    unfold C
    simp [show (1048576 * k + 249759) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 749278) = 1572864 * k + 374639 := by
    unfold C
    simp [show (3145728 * k + 749278) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 374639) = 4718592 * k + 1123918 := by
    unfold C
    simp [show (1572864 * k + 374639) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1123918) = 2359296 * k + 561959 := by
    unfold C
    simp [show (4718592 * k + 1123918) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 561959) = 7077888 * k + 1685878 := by
    unfold C
    simp [show (2359296 * k + 561959) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1685878) = 3538944 * k + 842939 := by
    unfold C
    simp [show (7077888 * k + 1685878) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 842939) = 10616832 * k + 2528818 := by
    unfold C
    simp [show (3538944 * k + 842939) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2528818) = 5308416 * k + 1264409 := by
    unfold C
    simp [show (10616832 * k + 2528818) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1264409) = 15925248 * k + 3793228 := by
    unfold C
    simp [show (5308416 * k + 1264409) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3793228) = 7962624 * k + 1896614 := by
    unfold C
    simp [show (15925248 * k + 3793228) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1896614) = 3981312 * k + 948307 := by
    unfold C
    simp [show (7962624 * k + 1896614) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 948307) = 11943936 * k + 2844922 := by
    unfold C
    simp [show (3981312 * k + 948307) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2844922) = 5971968 * k + 1422461 := by
    unfold C
    simp [show (11943936 * k + 2844922) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1422461) = 17915904 * k + 4267384 := by
    unfold C
    simp [show (5971968 * k + 1422461) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4267384) = 8957952 * k + 2133692 := by
    unfold C
    simp [show (17915904 * k + 4267384) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2133692) = 4478976 * k + 1066846 := by
    unfold C
    simp [show (8957952 * k + 2133692) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1066846) = 2239488 * k + 533423 := by
    unfold C
    simp [show (4478976 * k + 1066846) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 533423) = 6718464 * k + 1600270 := by
    unfold C
    simp [show (2239488 * k + 533423) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1600270) = 3359232 * k + 800135 := by
    unfold C
    simp [show (6718464 * k + 1600270) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 800135) = 10077696 * k + 2400406 := by
    unfold C
    simp [show (3359232 * k + 800135) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2400406) = 5038848 * k + 1200203 := by
    unfold C
    simp [show (10077696 * k + 2400406) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1200203) = 15116544 * k + 3600610 := by
    unfold C
    simp [show (5038848 * k + 1200203) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3600610) = 7558272 * k + 1800305 := by
    unfold C
    simp [show (15116544 * k + 3600610) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1800305) = 22674816 * k + 5400916 := by
    unfold C
    simp [show (7558272 * k + 1800305) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 5400916) = 11337408 * k + 2700458 := by
    unfold C
    simp [show (22674816 * k + 5400916) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2700458) = 5668704 * k + 1350229 := by
    unfold C
    simp [show (11337408 * k + 2700458) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1350229) = 17006112 * k + 4050688 := by
    unfold C
    simp [show (5668704 * k + 1350229) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 4050688) = 8503056 * k + 2025344 := by
    unfold C
    simp [show (17006112 * k + 4050688) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2025344) = 4251528 * k + 1012672 := by
    unfold C
    simp [show (8503056 * k + 2025344) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1012672) = 2125764 * k + 506336 := by
    unfold C
    simp [show (4251528 * k + 1012672) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 506336) = 1062882 * k + 253168 := by
    unfold C
    simp [show (2125764 * k + 506336) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 253168) = 531441 * k + 126584 := by
    unfold C
    simp [show (1062882 * k + 253168) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 249759) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 249759)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_249887 : ∀ k : Nat,
    iterate (1048576 * k + 249887) 32 = 531441 * k + 126649 ∧
      531441 * k + 126649 < 1048576 * k + 249887 := by
  intro k
  have h1 : C (1048576 * k + 249887) = 3145728 * k + 749662 := by
    unfold C
    simp [show (1048576 * k + 249887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 749662) = 1572864 * k + 374831 := by
    unfold C
    simp [show (3145728 * k + 749662) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 374831) = 4718592 * k + 1124494 := by
    unfold C
    simp [show (1572864 * k + 374831) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1124494) = 2359296 * k + 562247 := by
    unfold C
    simp [show (4718592 * k + 1124494) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 562247) = 7077888 * k + 1686742 := by
    unfold C
    simp [show (2359296 * k + 562247) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1686742) = 3538944 * k + 843371 := by
    unfold C
    simp [show (7077888 * k + 1686742) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 843371) = 10616832 * k + 2530114 := by
    unfold C
    simp [show (3538944 * k + 843371) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2530114) = 5308416 * k + 1265057 := by
    unfold C
    simp [show (10616832 * k + 2530114) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1265057) = 15925248 * k + 3795172 := by
    unfold C
    simp [show (5308416 * k + 1265057) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3795172) = 7962624 * k + 1897586 := by
    unfold C
    simp [show (15925248 * k + 3795172) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1897586) = 3981312 * k + 948793 := by
    unfold C
    simp [show (7962624 * k + 1897586) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 948793) = 11943936 * k + 2846380 := by
    unfold C
    simp [show (3981312 * k + 948793) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2846380) = 5971968 * k + 1423190 := by
    unfold C
    simp [show (11943936 * k + 2846380) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1423190) = 2985984 * k + 711595 := by
    unfold C
    simp [show (5971968 * k + 1423190) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 711595) = 8957952 * k + 2134786 := by
    unfold C
    simp [show (2985984 * k + 711595) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2134786) = 4478976 * k + 1067393 := by
    unfold C
    simp [show (8957952 * k + 2134786) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1067393) = 13436928 * k + 3202180 := by
    unfold C
    simp [show (4478976 * k + 1067393) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3202180) = 6718464 * k + 1601090 := by
    unfold C
    simp [show (13436928 * k + 3202180) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1601090) = 3359232 * k + 800545 := by
    unfold C
    simp [show (6718464 * k + 1601090) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 800545) = 10077696 * k + 2401636 := by
    unfold C
    simp [show (3359232 * k + 800545) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2401636) = 5038848 * k + 1200818 := by
    unfold C
    simp [show (10077696 * k + 2401636) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1200818) = 2519424 * k + 600409 := by
    unfold C
    simp [show (5038848 * k + 1200818) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 600409) = 7558272 * k + 1801228 := by
    unfold C
    simp [show (2519424 * k + 600409) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1801228) = 3779136 * k + 900614 := by
    unfold C
    simp [show (7558272 * k + 1801228) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 900614) = 1889568 * k + 450307 := by
    unfold C
    simp [show (3779136 * k + 900614) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 450307) = 5668704 * k + 1350922 := by
    unfold C
    simp [show (1889568 * k + 450307) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1350922) = 2834352 * k + 675461 := by
    unfold C
    simp [show (5668704 * k + 1350922) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 675461) = 8503056 * k + 2026384 := by
    unfold C
    simp [show (2834352 * k + 675461) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2026384) = 4251528 * k + 1013192 := by
    unfold C
    simp [show (8503056 * k + 2026384) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1013192) = 2125764 * k + 506596 := by
    unfold C
    simp [show (4251528 * k + 1013192) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 506596) = 1062882 * k + 253298 := by
    unfold C
    simp [show (2125764 * k + 506596) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 253298) = 531441 * k + 126649 := by
    unfold C
    simp [show (1062882 * k + 253298) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 249887) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 249887)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_250367 : ∀ k : Nat,
    iterate (1048576 * k + 250367) 32 = 531441 * k + 126892 ∧
      531441 * k + 126892 < 1048576 * k + 250367 := by
  intro k
  have h1 : C (1048576 * k + 250367) = 3145728 * k + 751102 := by
    unfold C
    simp [show (1048576 * k + 250367) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 751102) = 1572864 * k + 375551 := by
    unfold C
    simp [show (3145728 * k + 751102) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 375551) = 4718592 * k + 1126654 := by
    unfold C
    simp [show (1572864 * k + 375551) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1126654) = 2359296 * k + 563327 := by
    unfold C
    simp [show (4718592 * k + 1126654) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 563327) = 7077888 * k + 1689982 := by
    unfold C
    simp [show (2359296 * k + 563327) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1689982) = 3538944 * k + 844991 := by
    unfold C
    simp [show (7077888 * k + 1689982) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 844991) = 10616832 * k + 2534974 := by
    unfold C
    simp [show (3538944 * k + 844991) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2534974) = 5308416 * k + 1267487 := by
    unfold C
    simp [show (10616832 * k + 2534974) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1267487) = 15925248 * k + 3802462 := by
    unfold C
    simp [show (5308416 * k + 1267487) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3802462) = 7962624 * k + 1901231 := by
    unfold C
    simp [show (15925248 * k + 3802462) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1901231) = 23887872 * k + 5703694 := by
    unfold C
    simp [show (7962624 * k + 1901231) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 5703694) = 11943936 * k + 2851847 := by
    unfold C
    simp [show (23887872 * k + 5703694) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2851847) = 35831808 * k + 8555542 := by
    unfold C
    simp [show (11943936 * k + 2851847) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 8555542) = 17915904 * k + 4277771 := by
    unfold C
    simp [show (35831808 * k + 8555542) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 4277771) = 53747712 * k + 12833314 := by
    unfold C
    simp [show (17915904 * k + 4277771) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 12833314) = 26873856 * k + 6416657 := by
    unfold C
    simp [show (53747712 * k + 12833314) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 6416657) = 80621568 * k + 19249972 := by
    unfold C
    simp [show (26873856 * k + 6416657) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 19249972) = 40310784 * k + 9624986 := by
    unfold C
    simp [show (80621568 * k + 19249972) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 9624986) = 20155392 * k + 4812493 := by
    unfold C
    simp [show (40310784 * k + 9624986) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 4812493) = 60466176 * k + 14437480 := by
    unfold C
    simp [show (20155392 * k + 4812493) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 14437480) = 30233088 * k + 7218740 := by
    unfold C
    simp [show (60466176 * k + 14437480) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 7218740) = 15116544 * k + 3609370 := by
    unfold C
    simp [show (30233088 * k + 7218740) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3609370) = 7558272 * k + 1804685 := by
    unfold C
    simp [show (15116544 * k + 3609370) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1804685) = 22674816 * k + 5414056 := by
    unfold C
    simp [show (7558272 * k + 1804685) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 5414056) = 11337408 * k + 2707028 := by
    unfold C
    simp [show (22674816 * k + 5414056) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2707028) = 5668704 * k + 1353514 := by
    unfold C
    simp [show (11337408 * k + 2707028) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1353514) = 2834352 * k + 676757 := by
    unfold C
    simp [show (5668704 * k + 1353514) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 676757) = 8503056 * k + 2030272 := by
    unfold C
    simp [show (2834352 * k + 676757) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2030272) = 4251528 * k + 1015136 := by
    unfold C
    simp [show (8503056 * k + 2030272) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1015136) = 2125764 * k + 507568 := by
    unfold C
    simp [show (4251528 * k + 1015136) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 507568) = 1062882 * k + 253784 := by
    unfold C
    simp [show (2125764 * k + 507568) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 253784) = 531441 * k + 126892 := by
    unfold C
    simp [show (1062882 * k + 253784) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 250367) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 250367)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_250907 : ∀ k : Nat,
    iterate (1048576 * k + 250907) 32 = 531441 * k + 127166 ∧
      531441 * k + 127166 < 1048576 * k + 250907 := by
  intro k
  have h1 : C (1048576 * k + 250907) = 3145728 * k + 752722 := by
    unfold C
    simp [show (1048576 * k + 250907) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 752722) = 1572864 * k + 376361 := by
    unfold C
    simp [show (3145728 * k + 752722) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 376361) = 4718592 * k + 1129084 := by
    unfold C
    simp [show (1572864 * k + 376361) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1129084) = 2359296 * k + 564542 := by
    unfold C
    simp [show (4718592 * k + 1129084) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 564542) = 1179648 * k + 282271 := by
    unfold C
    simp [show (2359296 * k + 564542) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 282271) = 3538944 * k + 846814 := by
    unfold C
    simp [show (1179648 * k + 282271) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 846814) = 1769472 * k + 423407 := by
    unfold C
    simp [show (3538944 * k + 846814) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 423407) = 5308416 * k + 1270222 := by
    unfold C
    simp [show (1769472 * k + 423407) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1270222) = 2654208 * k + 635111 := by
    unfold C
    simp [show (5308416 * k + 1270222) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 635111) = 7962624 * k + 1905334 := by
    unfold C
    simp [show (2654208 * k + 635111) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1905334) = 3981312 * k + 952667 := by
    unfold C
    simp [show (7962624 * k + 1905334) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 952667) = 11943936 * k + 2858002 := by
    unfold C
    simp [show (3981312 * k + 952667) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2858002) = 5971968 * k + 1429001 := by
    unfold C
    simp [show (11943936 * k + 2858002) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1429001) = 17915904 * k + 4287004 := by
    unfold C
    simp [show (5971968 * k + 1429001) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4287004) = 8957952 * k + 2143502 := by
    unfold C
    simp [show (17915904 * k + 4287004) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2143502) = 4478976 * k + 1071751 := by
    unfold C
    simp [show (8957952 * k + 2143502) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1071751) = 13436928 * k + 3215254 := by
    unfold C
    simp [show (4478976 * k + 1071751) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3215254) = 6718464 * k + 1607627 := by
    unfold C
    simp [show (13436928 * k + 3215254) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1607627) = 20155392 * k + 4822882 := by
    unfold C
    simp [show (6718464 * k + 1607627) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4822882) = 10077696 * k + 2411441 := by
    unfold C
    simp [show (20155392 * k + 4822882) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2411441) = 30233088 * k + 7234324 := by
    unfold C
    simp [show (10077696 * k + 2411441) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 7234324) = 15116544 * k + 3617162 := by
    unfold C
    simp [show (30233088 * k + 7234324) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3617162) = 7558272 * k + 1808581 := by
    unfold C
    simp [show (15116544 * k + 3617162) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1808581) = 22674816 * k + 5425744 := by
    unfold C
    simp [show (7558272 * k + 1808581) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 5425744) = 11337408 * k + 2712872 := by
    unfold C
    simp [show (22674816 * k + 5425744) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2712872) = 5668704 * k + 1356436 := by
    unfold C
    simp [show (11337408 * k + 2712872) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1356436) = 2834352 * k + 678218 := by
    unfold C
    simp [show (5668704 * k + 1356436) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 678218) = 1417176 * k + 339109 := by
    unfold C
    simp [show (2834352 * k + 678218) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 339109) = 4251528 * k + 1017328 := by
    unfold C
    simp [show (1417176 * k + 339109) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1017328) = 2125764 * k + 508664 := by
    unfold C
    simp [show (4251528 * k + 1017328) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 508664) = 1062882 * k + 254332 := by
    unfold C
    simp [show (2125764 * k + 508664) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 254332) = 531441 * k + 127166 := by
    unfold C
    simp [show (1062882 * k + 254332) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 250907) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 250907)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_252071 : ∀ k : Nat,
    iterate (1048576 * k + 252071) 32 = 531441 * k + 127756 ∧
      531441 * k + 127756 < 1048576 * k + 252071 := by
  intro k
  have h1 : C (1048576 * k + 252071) = 3145728 * k + 756214 := by
    unfold C
    simp [show (1048576 * k + 252071) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 756214) = 1572864 * k + 378107 := by
    unfold C
    simp [show (3145728 * k + 756214) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 378107) = 4718592 * k + 1134322 := by
    unfold C
    simp [show (1572864 * k + 378107) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1134322) = 2359296 * k + 567161 := by
    unfold C
    simp [show (4718592 * k + 1134322) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 567161) = 7077888 * k + 1701484 := by
    unfold C
    simp [show (2359296 * k + 567161) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1701484) = 3538944 * k + 850742 := by
    unfold C
    simp [show (7077888 * k + 1701484) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 850742) = 1769472 * k + 425371 := by
    unfold C
    simp [show (3538944 * k + 850742) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 425371) = 5308416 * k + 1276114 := by
    unfold C
    simp [show (1769472 * k + 425371) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1276114) = 2654208 * k + 638057 := by
    unfold C
    simp [show (5308416 * k + 1276114) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 638057) = 7962624 * k + 1914172 := by
    unfold C
    simp [show (2654208 * k + 638057) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1914172) = 3981312 * k + 957086 := by
    unfold C
    simp [show (7962624 * k + 1914172) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 957086) = 1990656 * k + 478543 := by
    unfold C
    simp [show (3981312 * k + 957086) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 478543) = 5971968 * k + 1435630 := by
    unfold C
    simp [show (1990656 * k + 478543) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1435630) = 2985984 * k + 717815 := by
    unfold C
    simp [show (5971968 * k + 1435630) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 717815) = 8957952 * k + 2153446 := by
    unfold C
    simp [show (2985984 * k + 717815) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2153446) = 4478976 * k + 1076723 := by
    unfold C
    simp [show (8957952 * k + 2153446) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1076723) = 13436928 * k + 3230170 := by
    unfold C
    simp [show (4478976 * k + 1076723) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3230170) = 6718464 * k + 1615085 := by
    unfold C
    simp [show (13436928 * k + 3230170) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1615085) = 20155392 * k + 4845256 := by
    unfold C
    simp [show (6718464 * k + 1615085) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4845256) = 10077696 * k + 2422628 := by
    unfold C
    simp [show (20155392 * k + 4845256) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2422628) = 5038848 * k + 1211314 := by
    unfold C
    simp [show (10077696 * k + 2422628) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1211314) = 2519424 * k + 605657 := by
    unfold C
    simp [show (5038848 * k + 1211314) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 605657) = 7558272 * k + 1816972 := by
    unfold C
    simp [show (2519424 * k + 605657) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1816972) = 3779136 * k + 908486 := by
    unfold C
    simp [show (7558272 * k + 1816972) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 908486) = 1889568 * k + 454243 := by
    unfold C
    simp [show (3779136 * k + 908486) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 454243) = 5668704 * k + 1362730 := by
    unfold C
    simp [show (1889568 * k + 454243) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1362730) = 2834352 * k + 681365 := by
    unfold C
    simp [show (5668704 * k + 1362730) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 681365) = 8503056 * k + 2044096 := by
    unfold C
    simp [show (2834352 * k + 681365) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2044096) = 4251528 * k + 1022048 := by
    unfold C
    simp [show (8503056 * k + 2044096) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1022048) = 2125764 * k + 511024 := by
    unfold C
    simp [show (4251528 * k + 1022048) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 511024) = 1062882 * k + 255512 := by
    unfold C
    simp [show (2125764 * k + 511024) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 255512) = 531441 * k + 127756 := by
    unfold C
    simp [show (1062882 * k + 255512) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 252071) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 252071)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_252399 : ∀ k : Nat,
    iterate (1048576 * k + 252399) 32 = 531441 * k + 127922 ∧
      531441 * k + 127922 < 1048576 * k + 252399 := by
  intro k
  have h1 : C (1048576 * k + 252399) = 3145728 * k + 757198 := by
    unfold C
    simp [show (1048576 * k + 252399) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 757198) = 1572864 * k + 378599 := by
    unfold C
    simp [show (3145728 * k + 757198) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 378599) = 4718592 * k + 1135798 := by
    unfold C
    simp [show (1572864 * k + 378599) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1135798) = 2359296 * k + 567899 := by
    unfold C
    simp [show (4718592 * k + 1135798) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 567899) = 7077888 * k + 1703698 := by
    unfold C
    simp [show (2359296 * k + 567899) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1703698) = 3538944 * k + 851849 := by
    unfold C
    simp [show (7077888 * k + 1703698) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 851849) = 10616832 * k + 2555548 := by
    unfold C
    simp [show (3538944 * k + 851849) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2555548) = 5308416 * k + 1277774 := by
    unfold C
    simp [show (10616832 * k + 2555548) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1277774) = 2654208 * k + 638887 := by
    unfold C
    simp [show (5308416 * k + 1277774) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 638887) = 7962624 * k + 1916662 := by
    unfold C
    simp [show (2654208 * k + 638887) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1916662) = 3981312 * k + 958331 := by
    unfold C
    simp [show (7962624 * k + 1916662) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 958331) = 11943936 * k + 2874994 := by
    unfold C
    simp [show (3981312 * k + 958331) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2874994) = 5971968 * k + 1437497 := by
    unfold C
    simp [show (11943936 * k + 2874994) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1437497) = 17915904 * k + 4312492 := by
    unfold C
    simp [show (5971968 * k + 1437497) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4312492) = 8957952 * k + 2156246 := by
    unfold C
    simp [show (17915904 * k + 4312492) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2156246) = 4478976 * k + 1078123 := by
    unfold C
    simp [show (8957952 * k + 2156246) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1078123) = 13436928 * k + 3234370 := by
    unfold C
    simp [show (4478976 * k + 1078123) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3234370) = 6718464 * k + 1617185 := by
    unfold C
    simp [show (13436928 * k + 3234370) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1617185) = 20155392 * k + 4851556 := by
    unfold C
    simp [show (6718464 * k + 1617185) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4851556) = 10077696 * k + 2425778 := by
    unfold C
    simp [show (20155392 * k + 4851556) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2425778) = 5038848 * k + 1212889 := by
    unfold C
    simp [show (10077696 * k + 2425778) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1212889) = 15116544 * k + 3638668 := by
    unfold C
    simp [show (5038848 * k + 1212889) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3638668) = 7558272 * k + 1819334 := by
    unfold C
    simp [show (15116544 * k + 3638668) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1819334) = 3779136 * k + 909667 := by
    unfold C
    simp [show (7558272 * k + 1819334) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 909667) = 11337408 * k + 2729002 := by
    unfold C
    simp [show (3779136 * k + 909667) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2729002) = 5668704 * k + 1364501 := by
    unfold C
    simp [show (11337408 * k + 2729002) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1364501) = 17006112 * k + 4093504 := by
    unfold C
    simp [show (5668704 * k + 1364501) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 4093504) = 8503056 * k + 2046752 := by
    unfold C
    simp [show (17006112 * k + 4093504) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2046752) = 4251528 * k + 1023376 := by
    unfold C
    simp [show (8503056 * k + 2046752) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1023376) = 2125764 * k + 511688 := by
    unfold C
    simp [show (4251528 * k + 1023376) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 511688) = 1062882 * k + 255844 := by
    unfold C
    simp [show (2125764 * k + 511688) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 255844) = 531441 * k + 127922 := by
    unfold C
    simp [show (1062882 * k + 255844) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 252399) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 252399)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_252527 : ∀ k : Nat,
    iterate (1048576 * k + 252527) 32 = 531441 * k + 127987 ∧
      531441 * k + 127987 < 1048576 * k + 252527 := by
  intro k
  have h1 : C (1048576 * k + 252527) = 3145728 * k + 757582 := by
    unfold C
    simp [show (1048576 * k + 252527) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 757582) = 1572864 * k + 378791 := by
    unfold C
    simp [show (3145728 * k + 757582) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 378791) = 4718592 * k + 1136374 := by
    unfold C
    simp [show (1572864 * k + 378791) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1136374) = 2359296 * k + 568187 := by
    unfold C
    simp [show (4718592 * k + 1136374) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 568187) = 7077888 * k + 1704562 := by
    unfold C
    simp [show (2359296 * k + 568187) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1704562) = 3538944 * k + 852281 := by
    unfold C
    simp [show (7077888 * k + 1704562) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 852281) = 10616832 * k + 2556844 := by
    unfold C
    simp [show (3538944 * k + 852281) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2556844) = 5308416 * k + 1278422 := by
    unfold C
    simp [show (10616832 * k + 2556844) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1278422) = 2654208 * k + 639211 := by
    unfold C
    simp [show (5308416 * k + 1278422) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 639211) = 7962624 * k + 1917634 := by
    unfold C
    simp [show (2654208 * k + 639211) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1917634) = 3981312 * k + 958817 := by
    unfold C
    simp [show (7962624 * k + 1917634) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 958817) = 11943936 * k + 2876452 := by
    unfold C
    simp [show (3981312 * k + 958817) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2876452) = 5971968 * k + 1438226 := by
    unfold C
    simp [show (11943936 * k + 2876452) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1438226) = 2985984 * k + 719113 := by
    unfold C
    simp [show (5971968 * k + 1438226) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 719113) = 8957952 * k + 2157340 := by
    unfold C
    simp [show (2985984 * k + 719113) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2157340) = 4478976 * k + 1078670 := by
    unfold C
    simp [show (8957952 * k + 2157340) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1078670) = 2239488 * k + 539335 := by
    unfold C
    simp [show (4478976 * k + 1078670) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 539335) = 6718464 * k + 1618006 := by
    unfold C
    simp [show (2239488 * k + 539335) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1618006) = 3359232 * k + 809003 := by
    unfold C
    simp [show (6718464 * k + 1618006) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 809003) = 10077696 * k + 2427010 := by
    unfold C
    simp [show (3359232 * k + 809003) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2427010) = 5038848 * k + 1213505 := by
    unfold C
    simp [show (10077696 * k + 2427010) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1213505) = 15116544 * k + 3640516 := by
    unfold C
    simp [show (5038848 * k + 1213505) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3640516) = 7558272 * k + 1820258 := by
    unfold C
    simp [show (15116544 * k + 3640516) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1820258) = 3779136 * k + 910129 := by
    unfold C
    simp [show (7558272 * k + 1820258) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 910129) = 11337408 * k + 2730388 := by
    unfold C
    simp [show (3779136 * k + 910129) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2730388) = 5668704 * k + 1365194 := by
    unfold C
    simp [show (11337408 * k + 2730388) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1365194) = 2834352 * k + 682597 := by
    unfold C
    simp [show (5668704 * k + 1365194) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 682597) = 8503056 * k + 2047792 := by
    unfold C
    simp [show (2834352 * k + 682597) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2047792) = 4251528 * k + 1023896 := by
    unfold C
    simp [show (8503056 * k + 2047792) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1023896) = 2125764 * k + 511948 := by
    unfold C
    simp [show (4251528 * k + 1023896) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 511948) = 1062882 * k + 255974 := by
    unfold C
    simp [show (2125764 * k + 511948) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 255974) = 531441 * k + 127987 := by
    unfold C
    simp [show (1062882 * k + 255974) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 252527) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 252527)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_252959 : ∀ k : Nat,
    iterate (1048576 * k + 252959) 32 = 531441 * k + 128206 ∧
      531441 * k + 128206 < 1048576 * k + 252959 := by
  intro k
  have h1 : C (1048576 * k + 252959) = 3145728 * k + 758878 := by
    unfold C
    simp [show (1048576 * k + 252959) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 758878) = 1572864 * k + 379439 := by
    unfold C
    simp [show (3145728 * k + 758878) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 379439) = 4718592 * k + 1138318 := by
    unfold C
    simp [show (1572864 * k + 379439) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1138318) = 2359296 * k + 569159 := by
    unfold C
    simp [show (4718592 * k + 1138318) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 569159) = 7077888 * k + 1707478 := by
    unfold C
    simp [show (2359296 * k + 569159) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1707478) = 3538944 * k + 853739 := by
    unfold C
    simp [show (7077888 * k + 1707478) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 853739) = 10616832 * k + 2561218 := by
    unfold C
    simp [show (3538944 * k + 853739) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2561218) = 5308416 * k + 1280609 := by
    unfold C
    simp [show (10616832 * k + 2561218) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1280609) = 15925248 * k + 3841828 := by
    unfold C
    simp [show (5308416 * k + 1280609) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3841828) = 7962624 * k + 1920914 := by
    unfold C
    simp [show (15925248 * k + 3841828) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1920914) = 3981312 * k + 960457 := by
    unfold C
    simp [show (7962624 * k + 1920914) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 960457) = 11943936 * k + 2881372 := by
    unfold C
    simp [show (3981312 * k + 960457) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2881372) = 5971968 * k + 1440686 := by
    unfold C
    simp [show (11943936 * k + 2881372) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1440686) = 2985984 * k + 720343 := by
    unfold C
    simp [show (5971968 * k + 1440686) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 720343) = 8957952 * k + 2161030 := by
    unfold C
    simp [show (2985984 * k + 720343) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2161030) = 4478976 * k + 1080515 := by
    unfold C
    simp [show (8957952 * k + 2161030) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1080515) = 13436928 * k + 3241546 := by
    unfold C
    simp [show (4478976 * k + 1080515) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3241546) = 6718464 * k + 1620773 := by
    unfold C
    simp [show (13436928 * k + 3241546) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1620773) = 20155392 * k + 4862320 := by
    unfold C
    simp [show (6718464 * k + 1620773) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4862320) = 10077696 * k + 2431160 := by
    unfold C
    simp [show (20155392 * k + 4862320) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2431160) = 5038848 * k + 1215580 := by
    unfold C
    simp [show (10077696 * k + 2431160) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1215580) = 2519424 * k + 607790 := by
    unfold C
    simp [show (5038848 * k + 1215580) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 607790) = 1259712 * k + 303895 := by
    unfold C
    simp [show (2519424 * k + 607790) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 303895) = 3779136 * k + 911686 := by
    unfold C
    simp [show (1259712 * k + 303895) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 911686) = 1889568 * k + 455843 := by
    unfold C
    simp [show (3779136 * k + 911686) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 455843) = 5668704 * k + 1367530 := by
    unfold C
    simp [show (1889568 * k + 455843) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1367530) = 2834352 * k + 683765 := by
    unfold C
    simp [show (5668704 * k + 1367530) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 683765) = 8503056 * k + 2051296 := by
    unfold C
    simp [show (2834352 * k + 683765) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2051296) = 4251528 * k + 1025648 := by
    unfold C
    simp [show (8503056 * k + 2051296) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1025648) = 2125764 * k + 512824 := by
    unfold C
    simp [show (4251528 * k + 1025648) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 512824) = 1062882 * k + 256412 := by
    unfold C
    simp [show (2125764 * k + 512824) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 256412) = 531441 * k + 128206 := by
    unfold C
    simp [show (1062882 * k + 256412) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 252959) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 252959)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_253083 : ∀ k : Nat,
    iterate (1048576 * k + 253083) 32 = 531441 * k + 128269 ∧
      531441 * k + 128269 < 1048576 * k + 253083 := by
  intro k
  have h1 : C (1048576 * k + 253083) = 3145728 * k + 759250 := by
    unfold C
    simp [show (1048576 * k + 253083) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 759250) = 1572864 * k + 379625 := by
    unfold C
    simp [show (3145728 * k + 759250) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 379625) = 4718592 * k + 1138876 := by
    unfold C
    simp [show (1572864 * k + 379625) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1138876) = 2359296 * k + 569438 := by
    unfold C
    simp [show (4718592 * k + 1138876) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 569438) = 1179648 * k + 284719 := by
    unfold C
    simp [show (2359296 * k + 569438) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 284719) = 3538944 * k + 854158 := by
    unfold C
    simp [show (1179648 * k + 284719) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 854158) = 1769472 * k + 427079 := by
    unfold C
    simp [show (3538944 * k + 854158) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 427079) = 5308416 * k + 1281238 := by
    unfold C
    simp [show (1769472 * k + 427079) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1281238) = 2654208 * k + 640619 := by
    unfold C
    simp [show (5308416 * k + 1281238) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 640619) = 7962624 * k + 1921858 := by
    unfold C
    simp [show (2654208 * k + 640619) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1921858) = 3981312 * k + 960929 := by
    unfold C
    simp [show (7962624 * k + 1921858) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 960929) = 11943936 * k + 2882788 := by
    unfold C
    simp [show (3981312 * k + 960929) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2882788) = 5971968 * k + 1441394 := by
    unfold C
    simp [show (11943936 * k + 2882788) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1441394) = 2985984 * k + 720697 := by
    unfold C
    simp [show (5971968 * k + 1441394) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 720697) = 8957952 * k + 2162092 := by
    unfold C
    simp [show (2985984 * k + 720697) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2162092) = 4478976 * k + 1081046 := by
    unfold C
    simp [show (8957952 * k + 2162092) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1081046) = 2239488 * k + 540523 := by
    unfold C
    simp [show (4478976 * k + 1081046) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 540523) = 6718464 * k + 1621570 := by
    unfold C
    simp [show (2239488 * k + 540523) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1621570) = 3359232 * k + 810785 := by
    unfold C
    simp [show (6718464 * k + 1621570) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 810785) = 10077696 * k + 2432356 := by
    unfold C
    simp [show (3359232 * k + 810785) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2432356) = 5038848 * k + 1216178 := by
    unfold C
    simp [show (10077696 * k + 2432356) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1216178) = 2519424 * k + 608089 := by
    unfold C
    simp [show (5038848 * k + 1216178) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 608089) = 7558272 * k + 1824268 := by
    unfold C
    simp [show (2519424 * k + 608089) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1824268) = 3779136 * k + 912134 := by
    unfold C
    simp [show (7558272 * k + 1824268) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 912134) = 1889568 * k + 456067 := by
    unfold C
    simp [show (3779136 * k + 912134) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 456067) = 5668704 * k + 1368202 := by
    unfold C
    simp [show (1889568 * k + 456067) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1368202) = 2834352 * k + 684101 := by
    unfold C
    simp [show (5668704 * k + 1368202) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 684101) = 8503056 * k + 2052304 := by
    unfold C
    simp [show (2834352 * k + 684101) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2052304) = 4251528 * k + 1026152 := by
    unfold C
    simp [show (8503056 * k + 2052304) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1026152) = 2125764 * k + 513076 := by
    unfold C
    simp [show (4251528 * k + 1026152) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 513076) = 1062882 * k + 256538 := by
    unfold C
    simp [show (2125764 * k + 513076) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 256538) = 531441 * k + 128269 := by
    unfold C
    simp [show (1062882 * k + 256538) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 253083) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 253083)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_253119 : ∀ k : Nat,
    iterate (1048576 * k + 253119) 32 = 531441 * k + 128287 ∧
      531441 * k + 128287 < 1048576 * k + 253119 := by
  intro k
  have h1 : C (1048576 * k + 253119) = 3145728 * k + 759358 := by
    unfold C
    simp [show (1048576 * k + 253119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 759358) = 1572864 * k + 379679 := by
    unfold C
    simp [show (3145728 * k + 759358) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 379679) = 4718592 * k + 1139038 := by
    unfold C
    simp [show (1572864 * k + 379679) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1139038) = 2359296 * k + 569519 := by
    unfold C
    simp [show (4718592 * k + 1139038) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 569519) = 7077888 * k + 1708558 := by
    unfold C
    simp [show (2359296 * k + 569519) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1708558) = 3538944 * k + 854279 := by
    unfold C
    simp [show (7077888 * k + 1708558) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 854279) = 10616832 * k + 2562838 := by
    unfold C
    simp [show (3538944 * k + 854279) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2562838) = 5308416 * k + 1281419 := by
    unfold C
    simp [show (10616832 * k + 2562838) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1281419) = 15925248 * k + 3844258 := by
    unfold C
    simp [show (5308416 * k + 1281419) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3844258) = 7962624 * k + 1922129 := by
    unfold C
    simp [show (15925248 * k + 3844258) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1922129) = 23887872 * k + 5766388 := by
    unfold C
    simp [show (7962624 * k + 1922129) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 5766388) = 11943936 * k + 2883194 := by
    unfold C
    simp [show (23887872 * k + 5766388) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2883194) = 5971968 * k + 1441597 := by
    unfold C
    simp [show (11943936 * k + 2883194) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1441597) = 17915904 * k + 4324792 := by
    unfold C
    simp [show (5971968 * k + 1441597) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4324792) = 8957952 * k + 2162396 := by
    unfold C
    simp [show (17915904 * k + 4324792) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2162396) = 4478976 * k + 1081198 := by
    unfold C
    simp [show (8957952 * k + 2162396) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1081198) = 2239488 * k + 540599 := by
    unfold C
    simp [show (4478976 * k + 1081198) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 540599) = 6718464 * k + 1621798 := by
    unfold C
    simp [show (2239488 * k + 540599) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1621798) = 3359232 * k + 810899 := by
    unfold C
    simp [show (6718464 * k + 1621798) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 810899) = 10077696 * k + 2432698 := by
    unfold C
    simp [show (3359232 * k + 810899) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2432698) = 5038848 * k + 1216349 := by
    unfold C
    simp [show (10077696 * k + 2432698) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1216349) = 15116544 * k + 3649048 := by
    unfold C
    simp [show (5038848 * k + 1216349) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3649048) = 7558272 * k + 1824524 := by
    unfold C
    simp [show (15116544 * k + 3649048) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1824524) = 3779136 * k + 912262 := by
    unfold C
    simp [show (7558272 * k + 1824524) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 912262) = 1889568 * k + 456131 := by
    unfold C
    simp [show (3779136 * k + 912262) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 456131) = 5668704 * k + 1368394 := by
    unfold C
    simp [show (1889568 * k + 456131) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1368394) = 2834352 * k + 684197 := by
    unfold C
    simp [show (5668704 * k + 1368394) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 684197) = 8503056 * k + 2052592 := by
    unfold C
    simp [show (2834352 * k + 684197) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2052592) = 4251528 * k + 1026296 := by
    unfold C
    simp [show (8503056 * k + 2052592) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1026296) = 2125764 * k + 513148 := by
    unfold C
    simp [show (4251528 * k + 1026296) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 513148) = 1062882 * k + 256574 := by
    unfold C
    simp [show (2125764 * k + 513148) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 256574) = 531441 * k + 128287 := by
    unfold C
    simp [show (1062882 * k + 256574) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 253119) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 253119)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_253339 : ∀ k : Nat,
    iterate (1048576 * k + 253339) 32 = 531441 * k + 128399 ∧
      531441 * k + 128399 < 1048576 * k + 253339 := by
  intro k
  have h1 : C (1048576 * k + 253339) = 3145728 * k + 760018 := by
    unfold C
    simp [show (1048576 * k + 253339) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 760018) = 1572864 * k + 380009 := by
    unfold C
    simp [show (3145728 * k + 760018) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 380009) = 4718592 * k + 1140028 := by
    unfold C
    simp [show (1572864 * k + 380009) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1140028) = 2359296 * k + 570014 := by
    unfold C
    simp [show (4718592 * k + 1140028) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 570014) = 1179648 * k + 285007 := by
    unfold C
    simp [show (2359296 * k + 570014) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 285007) = 3538944 * k + 855022 := by
    unfold C
    simp [show (1179648 * k + 285007) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 855022) = 1769472 * k + 427511 := by
    unfold C
    simp [show (3538944 * k + 855022) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 427511) = 5308416 * k + 1282534 := by
    unfold C
    simp [show (1769472 * k + 427511) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1282534) = 2654208 * k + 641267 := by
    unfold C
    simp [show (5308416 * k + 1282534) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 641267) = 7962624 * k + 1923802 := by
    unfold C
    simp [show (2654208 * k + 641267) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1923802) = 3981312 * k + 961901 := by
    unfold C
    simp [show (7962624 * k + 1923802) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 961901) = 11943936 * k + 2885704 := by
    unfold C
    simp [show (3981312 * k + 961901) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2885704) = 5971968 * k + 1442852 := by
    unfold C
    simp [show (11943936 * k + 2885704) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1442852) = 2985984 * k + 721426 := by
    unfold C
    simp [show (5971968 * k + 1442852) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 721426) = 1492992 * k + 360713 := by
    unfold C
    simp [show (2985984 * k + 721426) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 360713) = 4478976 * k + 1082140 := by
    unfold C
    simp [show (1492992 * k + 360713) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1082140) = 2239488 * k + 541070 := by
    unfold C
    simp [show (4478976 * k + 1082140) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 541070) = 1119744 * k + 270535 := by
    unfold C
    simp [show (2239488 * k + 541070) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 270535) = 3359232 * k + 811606 := by
    unfold C
    simp [show (1119744 * k + 270535) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 811606) = 1679616 * k + 405803 := by
    unfold C
    simp [show (3359232 * k + 811606) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 405803) = 5038848 * k + 1217410 := by
    unfold C
    simp [show (1679616 * k + 405803) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1217410) = 2519424 * k + 608705 := by
    unfold C
    simp [show (5038848 * k + 1217410) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 608705) = 7558272 * k + 1826116 := by
    unfold C
    simp [show (2519424 * k + 608705) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1826116) = 3779136 * k + 913058 := by
    unfold C
    simp [show (7558272 * k + 1826116) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 913058) = 1889568 * k + 456529 := by
    unfold C
    simp [show (3779136 * k + 913058) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 456529) = 5668704 * k + 1369588 := by
    unfold C
    simp [show (1889568 * k + 456529) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1369588) = 2834352 * k + 684794 := by
    unfold C
    simp [show (5668704 * k + 1369588) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 684794) = 1417176 * k + 342397 := by
    unfold C
    simp [show (2834352 * k + 684794) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 342397) = 4251528 * k + 1027192 := by
    unfold C
    simp [show (1417176 * k + 342397) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1027192) = 2125764 * k + 513596 := by
    unfold C
    simp [show (4251528 * k + 1027192) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 513596) = 1062882 * k + 256798 := by
    unfold C
    simp [show (2125764 * k + 513596) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 256798) = 531441 * k + 128399 := by
    unfold C
    simp [show (1062882 * k + 256798) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 253339) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 253339)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_253855 : ∀ k : Nat,
    iterate (1048576 * k + 253855) 32 = 531441 * k + 128660 ∧
      531441 * k + 128660 < 1048576 * k + 253855 := by
  intro k
  have h1 : C (1048576 * k + 253855) = 3145728 * k + 761566 := by
    unfold C
    simp [show (1048576 * k + 253855) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 761566) = 1572864 * k + 380783 := by
    unfold C
    simp [show (3145728 * k + 761566) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 380783) = 4718592 * k + 1142350 := by
    unfold C
    simp [show (1572864 * k + 380783) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1142350) = 2359296 * k + 571175 := by
    unfold C
    simp [show (4718592 * k + 1142350) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 571175) = 7077888 * k + 1713526 := by
    unfold C
    simp [show (2359296 * k + 571175) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1713526) = 3538944 * k + 856763 := by
    unfold C
    simp [show (7077888 * k + 1713526) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 856763) = 10616832 * k + 2570290 := by
    unfold C
    simp [show (3538944 * k + 856763) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2570290) = 5308416 * k + 1285145 := by
    unfold C
    simp [show (10616832 * k + 2570290) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1285145) = 15925248 * k + 3855436 := by
    unfold C
    simp [show (5308416 * k + 1285145) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3855436) = 7962624 * k + 1927718 := by
    unfold C
    simp [show (15925248 * k + 3855436) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1927718) = 3981312 * k + 963859 := by
    unfold C
    simp [show (7962624 * k + 1927718) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 963859) = 11943936 * k + 2891578 := by
    unfold C
    simp [show (3981312 * k + 963859) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2891578) = 5971968 * k + 1445789 := by
    unfold C
    simp [show (11943936 * k + 2891578) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1445789) = 17915904 * k + 4337368 := by
    unfold C
    simp [show (5971968 * k + 1445789) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4337368) = 8957952 * k + 2168684 := by
    unfold C
    simp [show (17915904 * k + 4337368) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2168684) = 4478976 * k + 1084342 := by
    unfold C
    simp [show (8957952 * k + 2168684) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1084342) = 2239488 * k + 542171 := by
    unfold C
    simp [show (4478976 * k + 1084342) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 542171) = 6718464 * k + 1626514 := by
    unfold C
    simp [show (2239488 * k + 542171) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1626514) = 3359232 * k + 813257 := by
    unfold C
    simp [show (6718464 * k + 1626514) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 813257) = 10077696 * k + 2439772 := by
    unfold C
    simp [show (3359232 * k + 813257) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2439772) = 5038848 * k + 1219886 := by
    unfold C
    simp [show (10077696 * k + 2439772) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1219886) = 2519424 * k + 609943 := by
    unfold C
    simp [show (5038848 * k + 1219886) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 609943) = 7558272 * k + 1829830 := by
    unfold C
    simp [show (2519424 * k + 609943) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1829830) = 3779136 * k + 914915 := by
    unfold C
    simp [show (7558272 * k + 1829830) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 914915) = 11337408 * k + 2744746 := by
    unfold C
    simp [show (3779136 * k + 914915) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2744746) = 5668704 * k + 1372373 := by
    unfold C
    simp [show (11337408 * k + 2744746) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1372373) = 17006112 * k + 4117120 := by
    unfold C
    simp [show (5668704 * k + 1372373) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 4117120) = 8503056 * k + 2058560 := by
    unfold C
    simp [show (17006112 * k + 4117120) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2058560) = 4251528 * k + 1029280 := by
    unfold C
    simp [show (8503056 * k + 2058560) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1029280) = 2125764 * k + 514640 := by
    unfold C
    simp [show (4251528 * k + 1029280) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 514640) = 1062882 * k + 257320 := by
    unfold C
    simp [show (2125764 * k + 514640) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 257320) = 531441 * k + 128660 := by
    unfold C
    simp [show (1062882 * k + 257320) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 253855) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 253855)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_253979 : ∀ k : Nat,
    iterate (1048576 * k + 253979) 32 = 531441 * k + 128723 ∧
      531441 * k + 128723 < 1048576 * k + 253979 := by
  intro k
  have h1 : C (1048576 * k + 253979) = 3145728 * k + 761938 := by
    unfold C
    simp [show (1048576 * k + 253979) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 761938) = 1572864 * k + 380969 := by
    unfold C
    simp [show (3145728 * k + 761938) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 380969) = 4718592 * k + 1142908 := by
    unfold C
    simp [show (1572864 * k + 380969) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1142908) = 2359296 * k + 571454 := by
    unfold C
    simp [show (4718592 * k + 1142908) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 571454) = 1179648 * k + 285727 := by
    unfold C
    simp [show (2359296 * k + 571454) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 285727) = 3538944 * k + 857182 := by
    unfold C
    simp [show (1179648 * k + 285727) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 857182) = 1769472 * k + 428591 := by
    unfold C
    simp [show (3538944 * k + 857182) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 428591) = 5308416 * k + 1285774 := by
    unfold C
    simp [show (1769472 * k + 428591) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1285774) = 2654208 * k + 642887 := by
    unfold C
    simp [show (5308416 * k + 1285774) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 642887) = 7962624 * k + 1928662 := by
    unfold C
    simp [show (2654208 * k + 642887) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1928662) = 3981312 * k + 964331 := by
    unfold C
    simp [show (7962624 * k + 1928662) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 964331) = 11943936 * k + 2892994 := by
    unfold C
    simp [show (3981312 * k + 964331) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2892994) = 5971968 * k + 1446497 := by
    unfold C
    simp [show (11943936 * k + 2892994) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1446497) = 17915904 * k + 4339492 := by
    unfold C
    simp [show (5971968 * k + 1446497) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4339492) = 8957952 * k + 2169746 := by
    unfold C
    simp [show (17915904 * k + 4339492) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2169746) = 4478976 * k + 1084873 := by
    unfold C
    simp [show (8957952 * k + 2169746) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1084873) = 13436928 * k + 3254620 := by
    unfold C
    simp [show (4478976 * k + 1084873) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3254620) = 6718464 * k + 1627310 := by
    unfold C
    simp [show (13436928 * k + 3254620) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1627310) = 3359232 * k + 813655 := by
    unfold C
    simp [show (6718464 * k + 1627310) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 813655) = 10077696 * k + 2440966 := by
    unfold C
    simp [show (3359232 * k + 813655) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2440966) = 5038848 * k + 1220483 := by
    unfold C
    simp [show (10077696 * k + 2440966) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1220483) = 15116544 * k + 3661450 := by
    unfold C
    simp [show (5038848 * k + 1220483) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3661450) = 7558272 * k + 1830725 := by
    unfold C
    simp [show (15116544 * k + 3661450) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1830725) = 22674816 * k + 5492176 := by
    unfold C
    simp [show (7558272 * k + 1830725) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 5492176) = 11337408 * k + 2746088 := by
    unfold C
    simp [show (22674816 * k + 5492176) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2746088) = 5668704 * k + 1373044 := by
    unfold C
    simp [show (11337408 * k + 2746088) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1373044) = 2834352 * k + 686522 := by
    unfold C
    simp [show (5668704 * k + 1373044) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 686522) = 1417176 * k + 343261 := by
    unfold C
    simp [show (2834352 * k + 686522) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 343261) = 4251528 * k + 1029784 := by
    unfold C
    simp [show (1417176 * k + 343261) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1029784) = 2125764 * k + 514892 := by
    unfold C
    simp [show (4251528 * k + 1029784) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 514892) = 1062882 * k + 257446 := by
    unfold C
    simp [show (2125764 * k + 514892) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 257446) = 531441 * k + 128723 := by
    unfold C
    simp [show (1062882 * k + 257446) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 253979) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 253979)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_255719 : ∀ k : Nat,
    iterate (1048576 * k + 255719) 32 = 531441 * k + 129605 ∧
      531441 * k + 129605 < 1048576 * k + 255719 := by
  intro k
  have h1 : C (1048576 * k + 255719) = 3145728 * k + 767158 := by
    unfold C
    simp [show (1048576 * k + 255719) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 767158) = 1572864 * k + 383579 := by
    unfold C
    simp [show (3145728 * k + 767158) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 383579) = 4718592 * k + 1150738 := by
    unfold C
    simp [show (1572864 * k + 383579) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1150738) = 2359296 * k + 575369 := by
    unfold C
    simp [show (4718592 * k + 1150738) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 575369) = 7077888 * k + 1726108 := by
    unfold C
    simp [show (2359296 * k + 575369) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1726108) = 3538944 * k + 863054 := by
    unfold C
    simp [show (7077888 * k + 1726108) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 863054) = 1769472 * k + 431527 := by
    unfold C
    simp [show (3538944 * k + 863054) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 431527) = 5308416 * k + 1294582 := by
    unfold C
    simp [show (1769472 * k + 431527) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1294582) = 2654208 * k + 647291 := by
    unfold C
    simp [show (5308416 * k + 1294582) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 647291) = 7962624 * k + 1941874 := by
    unfold C
    simp [show (2654208 * k + 647291) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1941874) = 3981312 * k + 970937 := by
    unfold C
    simp [show (7962624 * k + 1941874) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 970937) = 11943936 * k + 2912812 := by
    unfold C
    simp [show (3981312 * k + 970937) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2912812) = 5971968 * k + 1456406 := by
    unfold C
    simp [show (11943936 * k + 2912812) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1456406) = 2985984 * k + 728203 := by
    unfold C
    simp [show (5971968 * k + 1456406) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 728203) = 8957952 * k + 2184610 := by
    unfold C
    simp [show (2985984 * k + 728203) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2184610) = 4478976 * k + 1092305 := by
    unfold C
    simp [show (8957952 * k + 2184610) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1092305) = 13436928 * k + 3276916 := by
    unfold C
    simp [show (4478976 * k + 1092305) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3276916) = 6718464 * k + 1638458 := by
    unfold C
    simp [show (13436928 * k + 3276916) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1638458) = 3359232 * k + 819229 := by
    unfold C
    simp [show (6718464 * k + 1638458) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 819229) = 10077696 * k + 2457688 := by
    unfold C
    simp [show (3359232 * k + 819229) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2457688) = 5038848 * k + 1228844 := by
    unfold C
    simp [show (10077696 * k + 2457688) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1228844) = 2519424 * k + 614422 := by
    unfold C
    simp [show (5038848 * k + 1228844) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 614422) = 1259712 * k + 307211 := by
    unfold C
    simp [show (2519424 * k + 614422) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 307211) = 3779136 * k + 921634 := by
    unfold C
    simp [show (1259712 * k + 307211) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 921634) = 1889568 * k + 460817 := by
    unfold C
    simp [show (3779136 * k + 921634) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 460817) = 5668704 * k + 1382452 := by
    unfold C
    simp [show (1889568 * k + 460817) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1382452) = 2834352 * k + 691226 := by
    unfold C
    simp [show (5668704 * k + 1382452) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 691226) = 1417176 * k + 345613 := by
    unfold C
    simp [show (2834352 * k + 691226) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 345613) = 4251528 * k + 1036840 := by
    unfold C
    simp [show (1417176 * k + 345613) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1036840) = 2125764 * k + 518420 := by
    unfold C
    simp [show (4251528 * k + 1036840) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 518420) = 1062882 * k + 259210 := by
    unfold C
    simp [show (2125764 * k + 518420) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 259210) = 531441 * k + 129605 := by
    unfold C
    simp [show (1062882 * k + 259210) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 255719) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 255719)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard034
