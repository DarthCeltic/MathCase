import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard041

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_303871 : ∀ k : Nat,
    iterate (1048576 * k + 303871) 32 = 531441 * k + 154009 ∧
      531441 * k + 154009 < 1048576 * k + 303871 := by
  intro k
  have h1 : C (1048576 * k + 303871) = 3145728 * k + 911614 := by
    unfold C
    simp [show (1048576 * k + 303871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 911614) = 1572864 * k + 455807 := by
    unfold C
    simp [show (3145728 * k + 911614) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 455807) = 4718592 * k + 1367422 := by
    unfold C
    simp [show (1572864 * k + 455807) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1367422) = 2359296 * k + 683711 := by
    unfold C
    simp [show (4718592 * k + 1367422) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 683711) = 7077888 * k + 2051134 := by
    unfold C
    simp [show (2359296 * k + 683711) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2051134) = 3538944 * k + 1025567 := by
    unfold C
    simp [show (7077888 * k + 2051134) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1025567) = 10616832 * k + 3076702 := by
    unfold C
    simp [show (3538944 * k + 1025567) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3076702) = 5308416 * k + 1538351 := by
    unfold C
    simp [show (10616832 * k + 3076702) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1538351) = 15925248 * k + 4615054 := by
    unfold C
    simp [show (5308416 * k + 1538351) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4615054) = 7962624 * k + 2307527 := by
    unfold C
    simp [show (15925248 * k + 4615054) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2307527) = 23887872 * k + 6922582 := by
    unfold C
    simp [show (7962624 * k + 2307527) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 6922582) = 11943936 * k + 3461291 := by
    unfold C
    simp [show (23887872 * k + 6922582) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3461291) = 35831808 * k + 10383874 := by
    unfold C
    simp [show (11943936 * k + 3461291) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 10383874) = 17915904 * k + 5191937 := by
    unfold C
    simp [show (35831808 * k + 10383874) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 5191937) = 53747712 * k + 15575812 := by
    unfold C
    simp [show (17915904 * k + 5191937) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 15575812) = 26873856 * k + 7787906 := by
    unfold C
    simp [show (53747712 * k + 15575812) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 7787906) = 13436928 * k + 3893953 := by
    unfold C
    simp [show (26873856 * k + 7787906) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3893953) = 40310784 * k + 11681860 := by
    unfold C
    simp [show (13436928 * k + 3893953) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 11681860) = 20155392 * k + 5840930 := by
    unfold C
    simp [show (40310784 * k + 11681860) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 5840930) = 10077696 * k + 2920465 := by
    unfold C
    simp [show (20155392 * k + 5840930) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2920465) = 30233088 * k + 8761396 := by
    unfold C
    simp [show (10077696 * k + 2920465) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 8761396) = 15116544 * k + 4380698 := by
    unfold C
    simp [show (30233088 * k + 8761396) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4380698) = 7558272 * k + 2190349 := by
    unfold C
    simp [show (15116544 * k + 4380698) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2190349) = 22674816 * k + 6571048 := by
    unfold C
    simp [show (7558272 * k + 2190349) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 6571048) = 11337408 * k + 3285524 := by
    unfold C
    simp [show (22674816 * k + 6571048) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3285524) = 5668704 * k + 1642762 := by
    unfold C
    simp [show (11337408 * k + 3285524) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1642762) = 2834352 * k + 821381 := by
    unfold C
    simp [show (5668704 * k + 1642762) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 821381) = 8503056 * k + 2464144 := by
    unfold C
    simp [show (2834352 * k + 821381) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2464144) = 4251528 * k + 1232072 := by
    unfold C
    simp [show (8503056 * k + 2464144) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1232072) = 2125764 * k + 616036 := by
    unfold C
    simp [show (4251528 * k + 1232072) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 616036) = 1062882 * k + 308018 := by
    unfold C
    simp [show (2125764 * k + 616036) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 308018) = 531441 * k + 154009 := by
    unfold C
    simp [show (1062882 * k + 308018) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 303871) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 303871)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_303943 : ∀ k : Nat,
    iterate (1048576 * k + 303943) 32 = 531441 * k + 154046 ∧
      531441 * k + 154046 < 1048576 * k + 303943 := by
  intro k
  have h1 : C (1048576 * k + 303943) = 3145728 * k + 911830 := by
    unfold C
    simp [show (1048576 * k + 303943) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 911830) = 1572864 * k + 455915 := by
    unfold C
    simp [show (3145728 * k + 911830) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 455915) = 4718592 * k + 1367746 := by
    unfold C
    simp [show (1572864 * k + 455915) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1367746) = 2359296 * k + 683873 := by
    unfold C
    simp [show (4718592 * k + 1367746) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 683873) = 7077888 * k + 2051620 := by
    unfold C
    simp [show (2359296 * k + 683873) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2051620) = 3538944 * k + 1025810 := by
    unfold C
    simp [show (7077888 * k + 2051620) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1025810) = 1769472 * k + 512905 := by
    unfold C
    simp [show (3538944 * k + 1025810) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 512905) = 5308416 * k + 1538716 := by
    unfold C
    simp [show (1769472 * k + 512905) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1538716) = 2654208 * k + 769358 := by
    unfold C
    simp [show (5308416 * k + 1538716) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 769358) = 1327104 * k + 384679 := by
    unfold C
    simp [show (2654208 * k + 769358) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 384679) = 3981312 * k + 1154038 := by
    unfold C
    simp [show (1327104 * k + 384679) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1154038) = 1990656 * k + 577019 := by
    unfold C
    simp [show (3981312 * k + 1154038) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 577019) = 5971968 * k + 1731058 := by
    unfold C
    simp [show (1990656 * k + 577019) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1731058) = 2985984 * k + 865529 := by
    unfold C
    simp [show (5971968 * k + 1731058) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 865529) = 8957952 * k + 2596588 := by
    unfold C
    simp [show (2985984 * k + 865529) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2596588) = 4478976 * k + 1298294 := by
    unfold C
    simp [show (8957952 * k + 2596588) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1298294) = 2239488 * k + 649147 := by
    unfold C
    simp [show (4478976 * k + 1298294) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 649147) = 6718464 * k + 1947442 := by
    unfold C
    simp [show (2239488 * k + 649147) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1947442) = 3359232 * k + 973721 := by
    unfold C
    simp [show (6718464 * k + 1947442) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 973721) = 10077696 * k + 2921164 := by
    unfold C
    simp [show (3359232 * k + 973721) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2921164) = 5038848 * k + 1460582 := by
    unfold C
    simp [show (10077696 * k + 2921164) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1460582) = 2519424 * k + 730291 := by
    unfold C
    simp [show (5038848 * k + 1460582) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 730291) = 7558272 * k + 2190874 := by
    unfold C
    simp [show (2519424 * k + 730291) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2190874) = 3779136 * k + 1095437 := by
    unfold C
    simp [show (7558272 * k + 2190874) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1095437) = 11337408 * k + 3286312 := by
    unfold C
    simp [show (3779136 * k + 1095437) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3286312) = 5668704 * k + 1643156 := by
    unfold C
    simp [show (11337408 * k + 3286312) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1643156) = 2834352 * k + 821578 := by
    unfold C
    simp [show (5668704 * k + 1643156) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 821578) = 1417176 * k + 410789 := by
    unfold C
    simp [show (2834352 * k + 821578) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 410789) = 4251528 * k + 1232368 := by
    unfold C
    simp [show (1417176 * k + 410789) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1232368) = 2125764 * k + 616184 := by
    unfold C
    simp [show (4251528 * k + 1232368) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 616184) = 1062882 * k + 308092 := by
    unfold C
    simp [show (2125764 * k + 616184) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 308092) = 531441 * k + 154046 := by
    unfold C
    simp [show (1062882 * k + 308092) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 303943) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 303943)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_304379 : ∀ k : Nat,
    iterate (1048576 * k + 304379) 32 = 531441 * k + 154267 ∧
      531441 * k + 154267 < 1048576 * k + 304379 := by
  intro k
  have h1 : C (1048576 * k + 304379) = 3145728 * k + 913138 := by
    unfold C
    simp [show (1048576 * k + 304379) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 913138) = 1572864 * k + 456569 := by
    unfold C
    simp [show (3145728 * k + 913138) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 456569) = 4718592 * k + 1369708 := by
    unfold C
    simp [show (1572864 * k + 456569) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1369708) = 2359296 * k + 684854 := by
    unfold C
    simp [show (4718592 * k + 1369708) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 684854) = 1179648 * k + 342427 := by
    unfold C
    simp [show (2359296 * k + 684854) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 342427) = 3538944 * k + 1027282 := by
    unfold C
    simp [show (1179648 * k + 342427) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1027282) = 1769472 * k + 513641 := by
    unfold C
    simp [show (3538944 * k + 1027282) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 513641) = 5308416 * k + 1540924 := by
    unfold C
    simp [show (1769472 * k + 513641) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1540924) = 2654208 * k + 770462 := by
    unfold C
    simp [show (5308416 * k + 1540924) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 770462) = 1327104 * k + 385231 := by
    unfold C
    simp [show (2654208 * k + 770462) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 385231) = 3981312 * k + 1155694 := by
    unfold C
    simp [show (1327104 * k + 385231) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1155694) = 1990656 * k + 577847 := by
    unfold C
    simp [show (3981312 * k + 1155694) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 577847) = 5971968 * k + 1733542 := by
    unfold C
    simp [show (1990656 * k + 577847) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1733542) = 2985984 * k + 866771 := by
    unfold C
    simp [show (5971968 * k + 1733542) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 866771) = 8957952 * k + 2600314 := by
    unfold C
    simp [show (2985984 * k + 866771) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2600314) = 4478976 * k + 1300157 := by
    unfold C
    simp [show (8957952 * k + 2600314) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1300157) = 13436928 * k + 3900472 := by
    unfold C
    simp [show (4478976 * k + 1300157) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3900472) = 6718464 * k + 1950236 := by
    unfold C
    simp [show (13436928 * k + 3900472) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1950236) = 3359232 * k + 975118 := by
    unfold C
    simp [show (6718464 * k + 1950236) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 975118) = 1679616 * k + 487559 := by
    unfold C
    simp [show (3359232 * k + 975118) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 487559) = 5038848 * k + 1462678 := by
    unfold C
    simp [show (1679616 * k + 487559) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1462678) = 2519424 * k + 731339 := by
    unfold C
    simp [show (5038848 * k + 1462678) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 731339) = 7558272 * k + 2194018 := by
    unfold C
    simp [show (2519424 * k + 731339) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2194018) = 3779136 * k + 1097009 := by
    unfold C
    simp [show (7558272 * k + 2194018) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1097009) = 11337408 * k + 3291028 := by
    unfold C
    simp [show (3779136 * k + 1097009) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3291028) = 5668704 * k + 1645514 := by
    unfold C
    simp [show (11337408 * k + 3291028) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1645514) = 2834352 * k + 822757 := by
    unfold C
    simp [show (5668704 * k + 1645514) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 822757) = 8503056 * k + 2468272 := by
    unfold C
    simp [show (2834352 * k + 822757) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2468272) = 4251528 * k + 1234136 := by
    unfold C
    simp [show (8503056 * k + 2468272) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1234136) = 2125764 * k + 617068 := by
    unfold C
    simp [show (4251528 * k + 1234136) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 617068) = 1062882 * k + 308534 := by
    unfold C
    simp [show (2125764 * k + 617068) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 308534) = 531441 * k + 154267 := by
    unfold C
    simp [show (1062882 * k + 308534) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 304379) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 304379)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_304847 : ∀ k : Nat,
    iterate (1048576 * k + 304847) 32 = 531441 * k + 154504 ∧
      531441 * k + 154504 < 1048576 * k + 304847 := by
  intro k
  have h1 : C (1048576 * k + 304847) = 3145728 * k + 914542 := by
    unfold C
    simp [show (1048576 * k + 304847) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 914542) = 1572864 * k + 457271 := by
    unfold C
    simp [show (3145728 * k + 914542) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 457271) = 4718592 * k + 1371814 := by
    unfold C
    simp [show (1572864 * k + 457271) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1371814) = 2359296 * k + 685907 := by
    unfold C
    simp [show (4718592 * k + 1371814) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 685907) = 7077888 * k + 2057722 := by
    unfold C
    simp [show (2359296 * k + 685907) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2057722) = 3538944 * k + 1028861 := by
    unfold C
    simp [show (7077888 * k + 2057722) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1028861) = 10616832 * k + 3086584 := by
    unfold C
    simp [show (3538944 * k + 1028861) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3086584) = 5308416 * k + 1543292 := by
    unfold C
    simp [show (10616832 * k + 3086584) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1543292) = 2654208 * k + 771646 := by
    unfold C
    simp [show (5308416 * k + 1543292) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 771646) = 1327104 * k + 385823 := by
    unfold C
    simp [show (2654208 * k + 771646) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 385823) = 3981312 * k + 1157470 := by
    unfold C
    simp [show (1327104 * k + 385823) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1157470) = 1990656 * k + 578735 := by
    unfold C
    simp [show (3981312 * k + 1157470) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 578735) = 5971968 * k + 1736206 := by
    unfold C
    simp [show (1990656 * k + 578735) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1736206) = 2985984 * k + 868103 := by
    unfold C
    simp [show (5971968 * k + 1736206) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 868103) = 8957952 * k + 2604310 := by
    unfold C
    simp [show (2985984 * k + 868103) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2604310) = 4478976 * k + 1302155 := by
    unfold C
    simp [show (8957952 * k + 2604310) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1302155) = 13436928 * k + 3906466 := by
    unfold C
    simp [show (4478976 * k + 1302155) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3906466) = 6718464 * k + 1953233 := by
    unfold C
    simp [show (13436928 * k + 3906466) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1953233) = 20155392 * k + 5859700 := by
    unfold C
    simp [show (6718464 * k + 1953233) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5859700) = 10077696 * k + 2929850 := by
    unfold C
    simp [show (20155392 * k + 5859700) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2929850) = 5038848 * k + 1464925 := by
    unfold C
    simp [show (10077696 * k + 2929850) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1464925) = 15116544 * k + 4394776 := by
    unfold C
    simp [show (5038848 * k + 1464925) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4394776) = 7558272 * k + 2197388 := by
    unfold C
    simp [show (15116544 * k + 4394776) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2197388) = 3779136 * k + 1098694 := by
    unfold C
    simp [show (7558272 * k + 2197388) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1098694) = 1889568 * k + 549347 := by
    unfold C
    simp [show (3779136 * k + 1098694) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 549347) = 5668704 * k + 1648042 := by
    unfold C
    simp [show (1889568 * k + 549347) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1648042) = 2834352 * k + 824021 := by
    unfold C
    simp [show (5668704 * k + 1648042) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 824021) = 8503056 * k + 2472064 := by
    unfold C
    simp [show (2834352 * k + 824021) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2472064) = 4251528 * k + 1236032 := by
    unfold C
    simp [show (8503056 * k + 2472064) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1236032) = 2125764 * k + 618016 := by
    unfold C
    simp [show (4251528 * k + 1236032) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 618016) = 1062882 * k + 309008 := by
    unfold C
    simp [show (2125764 * k + 618016) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 309008) = 531441 * k + 154504 := by
    unfold C
    simp [show (1062882 * k + 309008) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 304847) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 304847)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_304895 : ∀ k : Nat,
    iterate (1048576 * k + 304895) 32 = 531441 * k + 154528 ∧
      531441 * k + 154528 < 1048576 * k + 304895 := by
  intro k
  have h1 : C (1048576 * k + 304895) = 3145728 * k + 914686 := by
    unfold C
    simp [show (1048576 * k + 304895) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 914686) = 1572864 * k + 457343 := by
    unfold C
    simp [show (3145728 * k + 914686) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 457343) = 4718592 * k + 1372030 := by
    unfold C
    simp [show (1572864 * k + 457343) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1372030) = 2359296 * k + 686015 := by
    unfold C
    simp [show (4718592 * k + 1372030) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 686015) = 7077888 * k + 2058046 := by
    unfold C
    simp [show (2359296 * k + 686015) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2058046) = 3538944 * k + 1029023 := by
    unfold C
    simp [show (7077888 * k + 2058046) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1029023) = 10616832 * k + 3087070 := by
    unfold C
    simp [show (3538944 * k + 1029023) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3087070) = 5308416 * k + 1543535 := by
    unfold C
    simp [show (10616832 * k + 3087070) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1543535) = 15925248 * k + 4630606 := by
    unfold C
    simp [show (5308416 * k + 1543535) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4630606) = 7962624 * k + 2315303 := by
    unfold C
    simp [show (15925248 * k + 4630606) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2315303) = 23887872 * k + 6945910 := by
    unfold C
    simp [show (7962624 * k + 2315303) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 6945910) = 11943936 * k + 3472955 := by
    unfold C
    simp [show (23887872 * k + 6945910) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3472955) = 35831808 * k + 10418866 := by
    unfold C
    simp [show (11943936 * k + 3472955) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 10418866) = 17915904 * k + 5209433 := by
    unfold C
    simp [show (35831808 * k + 10418866) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 5209433) = 53747712 * k + 15628300 := by
    unfold C
    simp [show (17915904 * k + 5209433) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 15628300) = 26873856 * k + 7814150 := by
    unfold C
    simp [show (53747712 * k + 15628300) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 7814150) = 13436928 * k + 3907075 := by
    unfold C
    simp [show (26873856 * k + 7814150) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3907075) = 40310784 * k + 11721226 := by
    unfold C
    simp [show (13436928 * k + 3907075) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 11721226) = 20155392 * k + 5860613 := by
    unfold C
    simp [show (40310784 * k + 11721226) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 5860613) = 60466176 * k + 17581840 := by
    unfold C
    simp [show (20155392 * k + 5860613) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 17581840) = 30233088 * k + 8790920 := by
    unfold C
    simp [show (60466176 * k + 17581840) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 8790920) = 15116544 * k + 4395460 := by
    unfold C
    simp [show (30233088 * k + 8790920) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4395460) = 7558272 * k + 2197730 := by
    unfold C
    simp [show (15116544 * k + 4395460) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2197730) = 3779136 * k + 1098865 := by
    unfold C
    simp [show (7558272 * k + 2197730) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1098865) = 11337408 * k + 3296596 := by
    unfold C
    simp [show (3779136 * k + 1098865) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3296596) = 5668704 * k + 1648298 := by
    unfold C
    simp [show (11337408 * k + 3296596) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1648298) = 2834352 * k + 824149 := by
    unfold C
    simp [show (5668704 * k + 1648298) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 824149) = 8503056 * k + 2472448 := by
    unfold C
    simp [show (2834352 * k + 824149) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2472448) = 4251528 * k + 1236224 := by
    unfold C
    simp [show (8503056 * k + 2472448) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1236224) = 2125764 * k + 618112 := by
    unfold C
    simp [show (4251528 * k + 1236224) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 618112) = 1062882 * k + 309056 := by
    unfold C
    simp [show (2125764 * k + 618112) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 309056) = 531441 * k + 154528 := by
    unfold C
    simp [show (1062882 * k + 309056) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 304895) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 304895)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_305871 : ∀ k : Nat,
    iterate (1048576 * k + 305871) 32 = 531441 * k + 155023 ∧
      531441 * k + 155023 < 1048576 * k + 305871 := by
  intro k
  have h1 : C (1048576 * k + 305871) = 3145728 * k + 917614 := by
    unfold C
    simp [show (1048576 * k + 305871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 917614) = 1572864 * k + 458807 := by
    unfold C
    simp [show (3145728 * k + 917614) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 458807) = 4718592 * k + 1376422 := by
    unfold C
    simp [show (1572864 * k + 458807) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1376422) = 2359296 * k + 688211 := by
    unfold C
    simp [show (4718592 * k + 1376422) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 688211) = 7077888 * k + 2064634 := by
    unfold C
    simp [show (2359296 * k + 688211) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2064634) = 3538944 * k + 1032317 := by
    unfold C
    simp [show (7077888 * k + 2064634) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1032317) = 10616832 * k + 3096952 := by
    unfold C
    simp [show (3538944 * k + 1032317) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3096952) = 5308416 * k + 1548476 := by
    unfold C
    simp [show (10616832 * k + 3096952) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1548476) = 2654208 * k + 774238 := by
    unfold C
    simp [show (5308416 * k + 1548476) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 774238) = 1327104 * k + 387119 := by
    unfold C
    simp [show (2654208 * k + 774238) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 387119) = 3981312 * k + 1161358 := by
    unfold C
    simp [show (1327104 * k + 387119) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1161358) = 1990656 * k + 580679 := by
    unfold C
    simp [show (3981312 * k + 1161358) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 580679) = 5971968 * k + 1742038 := by
    unfold C
    simp [show (1990656 * k + 580679) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1742038) = 2985984 * k + 871019 := by
    unfold C
    simp [show (5971968 * k + 1742038) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 871019) = 8957952 * k + 2613058 := by
    unfold C
    simp [show (2985984 * k + 871019) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2613058) = 4478976 * k + 1306529 := by
    unfold C
    simp [show (8957952 * k + 2613058) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1306529) = 13436928 * k + 3919588 := by
    unfold C
    simp [show (4478976 * k + 1306529) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3919588) = 6718464 * k + 1959794 := by
    unfold C
    simp [show (13436928 * k + 3919588) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1959794) = 3359232 * k + 979897 := by
    unfold C
    simp [show (6718464 * k + 1959794) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 979897) = 10077696 * k + 2939692 := by
    unfold C
    simp [show (3359232 * k + 979897) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2939692) = 5038848 * k + 1469846 := by
    unfold C
    simp [show (10077696 * k + 2939692) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1469846) = 2519424 * k + 734923 := by
    unfold C
    simp [show (5038848 * k + 1469846) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 734923) = 7558272 * k + 2204770 := by
    unfold C
    simp [show (2519424 * k + 734923) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2204770) = 3779136 * k + 1102385 := by
    unfold C
    simp [show (7558272 * k + 2204770) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1102385) = 11337408 * k + 3307156 := by
    unfold C
    simp [show (3779136 * k + 1102385) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3307156) = 5668704 * k + 1653578 := by
    unfold C
    simp [show (11337408 * k + 3307156) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1653578) = 2834352 * k + 826789 := by
    unfold C
    simp [show (5668704 * k + 1653578) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 826789) = 8503056 * k + 2480368 := by
    unfold C
    simp [show (2834352 * k + 826789) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2480368) = 4251528 * k + 1240184 := by
    unfold C
    simp [show (8503056 * k + 2480368) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1240184) = 2125764 * k + 620092 := by
    unfold C
    simp [show (4251528 * k + 1240184) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 620092) = 1062882 * k + 310046 := by
    unfold C
    simp [show (2125764 * k + 620092) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 310046) = 531441 * k + 155023 := by
    unfold C
    simp [show (1062882 * k + 310046) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 305871) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 305871)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_305895 : ∀ k : Nat,
    iterate (1048576 * k + 305895) 32 = 531441 * k + 155035 ∧
      531441 * k + 155035 < 1048576 * k + 305895 := by
  intro k
  have h1 : C (1048576 * k + 305895) = 3145728 * k + 917686 := by
    unfold C
    simp [show (1048576 * k + 305895) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 917686) = 1572864 * k + 458843 := by
    unfold C
    simp [show (3145728 * k + 917686) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 458843) = 4718592 * k + 1376530 := by
    unfold C
    simp [show (1572864 * k + 458843) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1376530) = 2359296 * k + 688265 := by
    unfold C
    simp [show (4718592 * k + 1376530) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 688265) = 7077888 * k + 2064796 := by
    unfold C
    simp [show (2359296 * k + 688265) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2064796) = 3538944 * k + 1032398 := by
    unfold C
    simp [show (7077888 * k + 2064796) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1032398) = 1769472 * k + 516199 := by
    unfold C
    simp [show (3538944 * k + 1032398) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 516199) = 5308416 * k + 1548598 := by
    unfold C
    simp [show (1769472 * k + 516199) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1548598) = 2654208 * k + 774299 := by
    unfold C
    simp [show (5308416 * k + 1548598) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 774299) = 7962624 * k + 2322898 := by
    unfold C
    simp [show (2654208 * k + 774299) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2322898) = 3981312 * k + 1161449 := by
    unfold C
    simp [show (7962624 * k + 2322898) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1161449) = 11943936 * k + 3484348 := by
    unfold C
    simp [show (3981312 * k + 1161449) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3484348) = 5971968 * k + 1742174 := by
    unfold C
    simp [show (11943936 * k + 3484348) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1742174) = 2985984 * k + 871087 := by
    unfold C
    simp [show (5971968 * k + 1742174) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 871087) = 8957952 * k + 2613262 := by
    unfold C
    simp [show (2985984 * k + 871087) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2613262) = 4478976 * k + 1306631 := by
    unfold C
    simp [show (8957952 * k + 2613262) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1306631) = 13436928 * k + 3919894 := by
    unfold C
    simp [show (4478976 * k + 1306631) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3919894) = 6718464 * k + 1959947 := by
    unfold C
    simp [show (13436928 * k + 3919894) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1959947) = 20155392 * k + 5879842 := by
    unfold C
    simp [show (6718464 * k + 1959947) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5879842) = 10077696 * k + 2939921 := by
    unfold C
    simp [show (20155392 * k + 5879842) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2939921) = 30233088 * k + 8819764 := by
    unfold C
    simp [show (10077696 * k + 2939921) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 8819764) = 15116544 * k + 4409882 := by
    unfold C
    simp [show (30233088 * k + 8819764) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4409882) = 7558272 * k + 2204941 := by
    unfold C
    simp [show (15116544 * k + 4409882) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2204941) = 22674816 * k + 6614824 := by
    unfold C
    simp [show (7558272 * k + 2204941) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 6614824) = 11337408 * k + 3307412 := by
    unfold C
    simp [show (22674816 * k + 6614824) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3307412) = 5668704 * k + 1653706 := by
    unfold C
    simp [show (11337408 * k + 3307412) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1653706) = 2834352 * k + 826853 := by
    unfold C
    simp [show (5668704 * k + 1653706) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 826853) = 8503056 * k + 2480560 := by
    unfold C
    simp [show (2834352 * k + 826853) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2480560) = 4251528 * k + 1240280 := by
    unfold C
    simp [show (8503056 * k + 2480560) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1240280) = 2125764 * k + 620140 := by
    unfold C
    simp [show (4251528 * k + 1240280) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 620140) = 1062882 * k + 310070 := by
    unfold C
    simp [show (2125764 * k + 620140) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 310070) = 531441 * k + 155035 := by
    unfold C
    simp [show (1062882 * k + 310070) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 305895) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 305895)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_305903 : ∀ k : Nat,
    iterate (1048576 * k + 305903) 32 = 531441 * k + 155039 ∧
      531441 * k + 155039 < 1048576 * k + 305903 := by
  intro k
  have h1 : C (1048576 * k + 305903) = 3145728 * k + 917710 := by
    unfold C
    simp [show (1048576 * k + 305903) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 917710) = 1572864 * k + 458855 := by
    unfold C
    simp [show (3145728 * k + 917710) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 458855) = 4718592 * k + 1376566 := by
    unfold C
    simp [show (1572864 * k + 458855) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1376566) = 2359296 * k + 688283 := by
    unfold C
    simp [show (4718592 * k + 1376566) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 688283) = 7077888 * k + 2064850 := by
    unfold C
    simp [show (2359296 * k + 688283) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2064850) = 3538944 * k + 1032425 := by
    unfold C
    simp [show (7077888 * k + 2064850) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1032425) = 10616832 * k + 3097276 := by
    unfold C
    simp [show (3538944 * k + 1032425) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3097276) = 5308416 * k + 1548638 := by
    unfold C
    simp [show (10616832 * k + 3097276) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1548638) = 2654208 * k + 774319 := by
    unfold C
    simp [show (5308416 * k + 1548638) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 774319) = 7962624 * k + 2322958 := by
    unfold C
    simp [show (2654208 * k + 774319) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2322958) = 3981312 * k + 1161479 := by
    unfold C
    simp [show (7962624 * k + 2322958) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1161479) = 11943936 * k + 3484438 := by
    unfold C
    simp [show (3981312 * k + 1161479) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3484438) = 5971968 * k + 1742219 := by
    unfold C
    simp [show (11943936 * k + 3484438) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1742219) = 17915904 * k + 5226658 := by
    unfold C
    simp [show (5971968 * k + 1742219) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5226658) = 8957952 * k + 2613329 := by
    unfold C
    simp [show (17915904 * k + 5226658) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2613329) = 26873856 * k + 7839988 := by
    unfold C
    simp [show (8957952 * k + 2613329) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 7839988) = 13436928 * k + 3919994 := by
    unfold C
    simp [show (26873856 * k + 7839988) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3919994) = 6718464 * k + 1959997 := by
    unfold C
    simp [show (13436928 * k + 3919994) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1959997) = 20155392 * k + 5879992 := by
    unfold C
    simp [show (6718464 * k + 1959997) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5879992) = 10077696 * k + 2939996 := by
    unfold C
    simp [show (20155392 * k + 5879992) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2939996) = 5038848 * k + 1469998 := by
    unfold C
    simp [show (10077696 * k + 2939996) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1469998) = 2519424 * k + 734999 := by
    unfold C
    simp [show (5038848 * k + 1469998) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 734999) = 7558272 * k + 2204998 := by
    unfold C
    simp [show (2519424 * k + 734999) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2204998) = 3779136 * k + 1102499 := by
    unfold C
    simp [show (7558272 * k + 2204998) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1102499) = 11337408 * k + 3307498 := by
    unfold C
    simp [show (3779136 * k + 1102499) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3307498) = 5668704 * k + 1653749 := by
    unfold C
    simp [show (11337408 * k + 3307498) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1653749) = 17006112 * k + 4961248 := by
    unfold C
    simp [show (5668704 * k + 1653749) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 4961248) = 8503056 * k + 2480624 := by
    unfold C
    simp [show (17006112 * k + 4961248) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2480624) = 4251528 * k + 1240312 := by
    unfold C
    simp [show (8503056 * k + 2480624) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1240312) = 2125764 * k + 620156 := by
    unfold C
    simp [show (4251528 * k + 1240312) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 620156) = 1062882 * k + 310078 := by
    unfold C
    simp [show (2125764 * k + 620156) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 310078) = 531441 * k + 155039 := by
    unfold C
    simp [show (1062882 * k + 310078) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 305903) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 305903)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_306495 : ∀ k : Nat,
    iterate (1048576 * k + 306495) 32 = 531441 * k + 155339 ∧
      531441 * k + 155339 < 1048576 * k + 306495 := by
  intro k
  have h1 : C (1048576 * k + 306495) = 3145728 * k + 919486 := by
    unfold C
    simp [show (1048576 * k + 306495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 919486) = 1572864 * k + 459743 := by
    unfold C
    simp [show (3145728 * k + 919486) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 459743) = 4718592 * k + 1379230 := by
    unfold C
    simp [show (1572864 * k + 459743) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1379230) = 2359296 * k + 689615 := by
    unfold C
    simp [show (4718592 * k + 1379230) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 689615) = 7077888 * k + 2068846 := by
    unfold C
    simp [show (2359296 * k + 689615) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2068846) = 3538944 * k + 1034423 := by
    unfold C
    simp [show (7077888 * k + 2068846) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1034423) = 10616832 * k + 3103270 := by
    unfold C
    simp [show (3538944 * k + 1034423) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3103270) = 5308416 * k + 1551635 := by
    unfold C
    simp [show (10616832 * k + 3103270) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1551635) = 15925248 * k + 4654906 := by
    unfold C
    simp [show (5308416 * k + 1551635) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4654906) = 7962624 * k + 2327453 := by
    unfold C
    simp [show (15925248 * k + 4654906) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2327453) = 23887872 * k + 6982360 := by
    unfold C
    simp [show (7962624 * k + 2327453) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 6982360) = 11943936 * k + 3491180 := by
    unfold C
    simp [show (23887872 * k + 6982360) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3491180) = 5971968 * k + 1745590 := by
    unfold C
    simp [show (11943936 * k + 3491180) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1745590) = 2985984 * k + 872795 := by
    unfold C
    simp [show (5971968 * k + 1745590) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 872795) = 8957952 * k + 2618386 := by
    unfold C
    simp [show (2985984 * k + 872795) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2618386) = 4478976 * k + 1309193 := by
    unfold C
    simp [show (8957952 * k + 2618386) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1309193) = 13436928 * k + 3927580 := by
    unfold C
    simp [show (4478976 * k + 1309193) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3927580) = 6718464 * k + 1963790 := by
    unfold C
    simp [show (13436928 * k + 3927580) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1963790) = 3359232 * k + 981895 := by
    unfold C
    simp [show (6718464 * k + 1963790) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 981895) = 10077696 * k + 2945686 := by
    unfold C
    simp [show (3359232 * k + 981895) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2945686) = 5038848 * k + 1472843 := by
    unfold C
    simp [show (10077696 * k + 2945686) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1472843) = 15116544 * k + 4418530 := by
    unfold C
    simp [show (5038848 * k + 1472843) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4418530) = 7558272 * k + 2209265 := by
    unfold C
    simp [show (15116544 * k + 4418530) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2209265) = 22674816 * k + 6627796 := by
    unfold C
    simp [show (7558272 * k + 2209265) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 6627796) = 11337408 * k + 3313898 := by
    unfold C
    simp [show (22674816 * k + 6627796) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3313898) = 5668704 * k + 1656949 := by
    unfold C
    simp [show (11337408 * k + 3313898) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1656949) = 17006112 * k + 4970848 := by
    unfold C
    simp [show (5668704 * k + 1656949) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 4970848) = 8503056 * k + 2485424 := by
    unfold C
    simp [show (17006112 * k + 4970848) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2485424) = 4251528 * k + 1242712 := by
    unfold C
    simp [show (8503056 * k + 2485424) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1242712) = 2125764 * k + 621356 := by
    unfold C
    simp [show (4251528 * k + 1242712) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 621356) = 1062882 * k + 310678 := by
    unfold C
    simp [show (2125764 * k + 621356) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 310678) = 531441 * k + 155339 := by
    unfold C
    simp [show (1062882 * k + 310678) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 306495) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 306495)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_308967 : ∀ k : Nat,
    iterate (1048576 * k + 308967) 32 = 531441 * k + 156592 ∧
      531441 * k + 156592 < 1048576 * k + 308967 := by
  intro k
  have h1 : C (1048576 * k + 308967) = 3145728 * k + 926902 := by
    unfold C
    simp [show (1048576 * k + 308967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 926902) = 1572864 * k + 463451 := by
    unfold C
    simp [show (3145728 * k + 926902) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 463451) = 4718592 * k + 1390354 := by
    unfold C
    simp [show (1572864 * k + 463451) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1390354) = 2359296 * k + 695177 := by
    unfold C
    simp [show (4718592 * k + 1390354) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 695177) = 7077888 * k + 2085532 := by
    unfold C
    simp [show (2359296 * k + 695177) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2085532) = 3538944 * k + 1042766 := by
    unfold C
    simp [show (7077888 * k + 2085532) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1042766) = 1769472 * k + 521383 := by
    unfold C
    simp [show (3538944 * k + 1042766) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 521383) = 5308416 * k + 1564150 := by
    unfold C
    simp [show (1769472 * k + 521383) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1564150) = 2654208 * k + 782075 := by
    unfold C
    simp [show (5308416 * k + 1564150) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 782075) = 7962624 * k + 2346226 := by
    unfold C
    simp [show (2654208 * k + 782075) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2346226) = 3981312 * k + 1173113 := by
    unfold C
    simp [show (7962624 * k + 2346226) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1173113) = 11943936 * k + 3519340 := by
    unfold C
    simp [show (3981312 * k + 1173113) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3519340) = 5971968 * k + 1759670 := by
    unfold C
    simp [show (11943936 * k + 3519340) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1759670) = 2985984 * k + 879835 := by
    unfold C
    simp [show (5971968 * k + 1759670) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 879835) = 8957952 * k + 2639506 := by
    unfold C
    simp [show (2985984 * k + 879835) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2639506) = 4478976 * k + 1319753 := by
    unfold C
    simp [show (8957952 * k + 2639506) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1319753) = 13436928 * k + 3959260 := by
    unfold C
    simp [show (4478976 * k + 1319753) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3959260) = 6718464 * k + 1979630 := by
    unfold C
    simp [show (13436928 * k + 3959260) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1979630) = 3359232 * k + 989815 := by
    unfold C
    simp [show (6718464 * k + 1979630) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 989815) = 10077696 * k + 2969446 := by
    unfold C
    simp [show (3359232 * k + 989815) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2969446) = 5038848 * k + 1484723 := by
    unfold C
    simp [show (10077696 * k + 2969446) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1484723) = 15116544 * k + 4454170 := by
    unfold C
    simp [show (5038848 * k + 1484723) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4454170) = 7558272 * k + 2227085 := by
    unfold C
    simp [show (15116544 * k + 4454170) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2227085) = 22674816 * k + 6681256 := by
    unfold C
    simp [show (7558272 * k + 2227085) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 6681256) = 11337408 * k + 3340628 := by
    unfold C
    simp [show (22674816 * k + 6681256) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3340628) = 5668704 * k + 1670314 := by
    unfold C
    simp [show (11337408 * k + 3340628) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1670314) = 2834352 * k + 835157 := by
    unfold C
    simp [show (5668704 * k + 1670314) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 835157) = 8503056 * k + 2505472 := by
    unfold C
    simp [show (2834352 * k + 835157) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2505472) = 4251528 * k + 1252736 := by
    unfold C
    simp [show (8503056 * k + 2505472) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1252736) = 2125764 * k + 626368 := by
    unfold C
    simp [show (4251528 * k + 1252736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 626368) = 1062882 * k + 313184 := by
    unfold C
    simp [show (2125764 * k + 626368) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 313184) = 531441 * k + 156592 := by
    unfold C
    simp [show (1062882 * k + 313184) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 308967) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 308967)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_309103 : ∀ k : Nat,
    iterate (1048576 * k + 309103) 32 = 531441 * k + 156661 ∧
      531441 * k + 156661 < 1048576 * k + 309103 := by
  intro k
  have h1 : C (1048576 * k + 309103) = 3145728 * k + 927310 := by
    unfold C
    simp [show (1048576 * k + 309103) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 927310) = 1572864 * k + 463655 := by
    unfold C
    simp [show (3145728 * k + 927310) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 463655) = 4718592 * k + 1390966 := by
    unfold C
    simp [show (1572864 * k + 463655) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1390966) = 2359296 * k + 695483 := by
    unfold C
    simp [show (4718592 * k + 1390966) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 695483) = 7077888 * k + 2086450 := by
    unfold C
    simp [show (2359296 * k + 695483) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2086450) = 3538944 * k + 1043225 := by
    unfold C
    simp [show (7077888 * k + 2086450) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1043225) = 10616832 * k + 3129676 := by
    unfold C
    simp [show (3538944 * k + 1043225) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3129676) = 5308416 * k + 1564838 := by
    unfold C
    simp [show (10616832 * k + 3129676) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1564838) = 2654208 * k + 782419 := by
    unfold C
    simp [show (5308416 * k + 1564838) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 782419) = 7962624 * k + 2347258 := by
    unfold C
    simp [show (2654208 * k + 782419) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2347258) = 3981312 * k + 1173629 := by
    unfold C
    simp [show (7962624 * k + 2347258) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1173629) = 11943936 * k + 3520888 := by
    unfold C
    simp [show (3981312 * k + 1173629) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3520888) = 5971968 * k + 1760444 := by
    unfold C
    simp [show (11943936 * k + 3520888) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1760444) = 2985984 * k + 880222 := by
    unfold C
    simp [show (5971968 * k + 1760444) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 880222) = 1492992 * k + 440111 := by
    unfold C
    simp [show (2985984 * k + 880222) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 440111) = 4478976 * k + 1320334 := by
    unfold C
    simp [show (1492992 * k + 440111) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1320334) = 2239488 * k + 660167 := by
    unfold C
    simp [show (4478976 * k + 1320334) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 660167) = 6718464 * k + 1980502 := by
    unfold C
    simp [show (2239488 * k + 660167) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1980502) = 3359232 * k + 990251 := by
    unfold C
    simp [show (6718464 * k + 1980502) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 990251) = 10077696 * k + 2970754 := by
    unfold C
    simp [show (3359232 * k + 990251) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2970754) = 5038848 * k + 1485377 := by
    unfold C
    simp [show (10077696 * k + 2970754) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1485377) = 15116544 * k + 4456132 := by
    unfold C
    simp [show (5038848 * k + 1485377) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4456132) = 7558272 * k + 2228066 := by
    unfold C
    simp [show (15116544 * k + 4456132) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2228066) = 3779136 * k + 1114033 := by
    unfold C
    simp [show (7558272 * k + 2228066) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1114033) = 11337408 * k + 3342100 := by
    unfold C
    simp [show (3779136 * k + 1114033) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3342100) = 5668704 * k + 1671050 := by
    unfold C
    simp [show (11337408 * k + 3342100) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1671050) = 2834352 * k + 835525 := by
    unfold C
    simp [show (5668704 * k + 1671050) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 835525) = 8503056 * k + 2506576 := by
    unfold C
    simp [show (2834352 * k + 835525) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2506576) = 4251528 * k + 1253288 := by
    unfold C
    simp [show (8503056 * k + 2506576) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1253288) = 2125764 * k + 626644 := by
    unfold C
    simp [show (4251528 * k + 1253288) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 626644) = 1062882 * k + 313322 := by
    unfold C
    simp [show (2125764 * k + 626644) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 313322) = 531441 * k + 156661 := by
    unfold C
    simp [show (1062882 * k + 313322) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 309103) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 309103)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_309215 : ∀ k : Nat,
    iterate (1048576 * k + 309215) 32 = 531441 * k + 156718 ∧
      531441 * k + 156718 < 1048576 * k + 309215 := by
  intro k
  have h1 : C (1048576 * k + 309215) = 3145728 * k + 927646 := by
    unfold C
    simp [show (1048576 * k + 309215) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 927646) = 1572864 * k + 463823 := by
    unfold C
    simp [show (3145728 * k + 927646) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 463823) = 4718592 * k + 1391470 := by
    unfold C
    simp [show (1572864 * k + 463823) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1391470) = 2359296 * k + 695735 := by
    unfold C
    simp [show (4718592 * k + 1391470) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 695735) = 7077888 * k + 2087206 := by
    unfold C
    simp [show (2359296 * k + 695735) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2087206) = 3538944 * k + 1043603 := by
    unfold C
    simp [show (7077888 * k + 2087206) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1043603) = 10616832 * k + 3130810 := by
    unfold C
    simp [show (3538944 * k + 1043603) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3130810) = 5308416 * k + 1565405 := by
    unfold C
    simp [show (10616832 * k + 3130810) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1565405) = 15925248 * k + 4696216 := by
    unfold C
    simp [show (5308416 * k + 1565405) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4696216) = 7962624 * k + 2348108 := by
    unfold C
    simp [show (15925248 * k + 4696216) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2348108) = 3981312 * k + 1174054 := by
    unfold C
    simp [show (7962624 * k + 2348108) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1174054) = 1990656 * k + 587027 := by
    unfold C
    simp [show (3981312 * k + 1174054) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 587027) = 5971968 * k + 1761082 := by
    unfold C
    simp [show (1990656 * k + 587027) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1761082) = 2985984 * k + 880541 := by
    unfold C
    simp [show (5971968 * k + 1761082) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 880541) = 8957952 * k + 2641624 := by
    unfold C
    simp [show (2985984 * k + 880541) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2641624) = 4478976 * k + 1320812 := by
    unfold C
    simp [show (8957952 * k + 2641624) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1320812) = 2239488 * k + 660406 := by
    unfold C
    simp [show (4478976 * k + 1320812) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 660406) = 1119744 * k + 330203 := by
    unfold C
    simp [show (2239488 * k + 660406) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 330203) = 3359232 * k + 990610 := by
    unfold C
    simp [show (1119744 * k + 330203) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 990610) = 1679616 * k + 495305 := by
    unfold C
    simp [show (3359232 * k + 990610) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 495305) = 5038848 * k + 1485916 := by
    unfold C
    simp [show (1679616 * k + 495305) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1485916) = 2519424 * k + 742958 := by
    unfold C
    simp [show (5038848 * k + 1485916) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 742958) = 1259712 * k + 371479 := by
    unfold C
    simp [show (2519424 * k + 742958) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 371479) = 3779136 * k + 1114438 := by
    unfold C
    simp [show (1259712 * k + 371479) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1114438) = 1889568 * k + 557219 := by
    unfold C
    simp [show (3779136 * k + 1114438) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 557219) = 5668704 * k + 1671658 := by
    unfold C
    simp [show (1889568 * k + 557219) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1671658) = 2834352 * k + 835829 := by
    unfold C
    simp [show (5668704 * k + 1671658) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 835829) = 8503056 * k + 2507488 := by
    unfold C
    simp [show (2834352 * k + 835829) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2507488) = 4251528 * k + 1253744 := by
    unfold C
    simp [show (8503056 * k + 2507488) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1253744) = 2125764 * k + 626872 := by
    unfold C
    simp [show (4251528 * k + 1253744) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 626872) = 1062882 * k + 313436 := by
    unfold C
    simp [show (2125764 * k + 626872) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 313436) = 531441 * k + 156718 := by
    unfold C
    simp [show (1062882 * k + 313436) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 309215) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 309215)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_309659 : ∀ k : Nat,
    iterate (1048576 * k + 309659) 32 = 531441 * k + 156943 ∧
      531441 * k + 156943 < 1048576 * k + 309659 := by
  intro k
  have h1 : C (1048576 * k + 309659) = 3145728 * k + 928978 := by
    unfold C
    simp [show (1048576 * k + 309659) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 928978) = 1572864 * k + 464489 := by
    unfold C
    simp [show (3145728 * k + 928978) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 464489) = 4718592 * k + 1393468 := by
    unfold C
    simp [show (1572864 * k + 464489) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1393468) = 2359296 * k + 696734 := by
    unfold C
    simp [show (4718592 * k + 1393468) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 696734) = 1179648 * k + 348367 := by
    unfold C
    simp [show (2359296 * k + 696734) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 348367) = 3538944 * k + 1045102 := by
    unfold C
    simp [show (1179648 * k + 348367) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1045102) = 1769472 * k + 522551 := by
    unfold C
    simp [show (3538944 * k + 1045102) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 522551) = 5308416 * k + 1567654 := by
    unfold C
    simp [show (1769472 * k + 522551) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1567654) = 2654208 * k + 783827 := by
    unfold C
    simp [show (5308416 * k + 1567654) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 783827) = 7962624 * k + 2351482 := by
    unfold C
    simp [show (2654208 * k + 783827) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2351482) = 3981312 * k + 1175741 := by
    unfold C
    simp [show (7962624 * k + 2351482) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1175741) = 11943936 * k + 3527224 := by
    unfold C
    simp [show (3981312 * k + 1175741) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3527224) = 5971968 * k + 1763612 := by
    unfold C
    simp [show (11943936 * k + 3527224) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1763612) = 2985984 * k + 881806 := by
    unfold C
    simp [show (5971968 * k + 1763612) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 881806) = 1492992 * k + 440903 := by
    unfold C
    simp [show (2985984 * k + 881806) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 440903) = 4478976 * k + 1322710 := by
    unfold C
    simp [show (1492992 * k + 440903) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1322710) = 2239488 * k + 661355 := by
    unfold C
    simp [show (4478976 * k + 1322710) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 661355) = 6718464 * k + 1984066 := by
    unfold C
    simp [show (2239488 * k + 661355) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1984066) = 3359232 * k + 992033 := by
    unfold C
    simp [show (6718464 * k + 1984066) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 992033) = 10077696 * k + 2976100 := by
    unfold C
    simp [show (3359232 * k + 992033) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2976100) = 5038848 * k + 1488050 := by
    unfold C
    simp [show (10077696 * k + 2976100) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1488050) = 2519424 * k + 744025 := by
    unfold C
    simp [show (5038848 * k + 1488050) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 744025) = 7558272 * k + 2232076 := by
    unfold C
    simp [show (2519424 * k + 744025) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2232076) = 3779136 * k + 1116038 := by
    unfold C
    simp [show (7558272 * k + 2232076) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1116038) = 1889568 * k + 558019 := by
    unfold C
    simp [show (3779136 * k + 1116038) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 558019) = 5668704 * k + 1674058 := by
    unfold C
    simp [show (1889568 * k + 558019) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1674058) = 2834352 * k + 837029 := by
    unfold C
    simp [show (5668704 * k + 1674058) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 837029) = 8503056 * k + 2511088 := by
    unfold C
    simp [show (2834352 * k + 837029) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2511088) = 4251528 * k + 1255544 := by
    unfold C
    simp [show (8503056 * k + 2511088) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1255544) = 2125764 * k + 627772 := by
    unfold C
    simp [show (4251528 * k + 1255544) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 627772) = 1062882 * k + 313886 := by
    unfold C
    simp [show (2125764 * k + 627772) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 313886) = 531441 * k + 156943 := by
    unfold C
    simp [show (1062882 * k + 313886) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 309659) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 309659)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_309999 : ∀ k : Nat,
    iterate (1048576 * k + 309999) 32 = 531441 * k + 157115 ∧
      531441 * k + 157115 < 1048576 * k + 309999 := by
  intro k
  have h1 : C (1048576 * k + 309999) = 3145728 * k + 929998 := by
    unfold C
    simp [show (1048576 * k + 309999) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 929998) = 1572864 * k + 464999 := by
    unfold C
    simp [show (3145728 * k + 929998) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 464999) = 4718592 * k + 1394998 := by
    unfold C
    simp [show (1572864 * k + 464999) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1394998) = 2359296 * k + 697499 := by
    unfold C
    simp [show (4718592 * k + 1394998) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 697499) = 7077888 * k + 2092498 := by
    unfold C
    simp [show (2359296 * k + 697499) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2092498) = 3538944 * k + 1046249 := by
    unfold C
    simp [show (7077888 * k + 2092498) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1046249) = 10616832 * k + 3138748 := by
    unfold C
    simp [show (3538944 * k + 1046249) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3138748) = 5308416 * k + 1569374 := by
    unfold C
    simp [show (10616832 * k + 3138748) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1569374) = 2654208 * k + 784687 := by
    unfold C
    simp [show (5308416 * k + 1569374) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 784687) = 7962624 * k + 2354062 := by
    unfold C
    simp [show (2654208 * k + 784687) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2354062) = 3981312 * k + 1177031 := by
    unfold C
    simp [show (7962624 * k + 2354062) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1177031) = 11943936 * k + 3531094 := by
    unfold C
    simp [show (3981312 * k + 1177031) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3531094) = 5971968 * k + 1765547 := by
    unfold C
    simp [show (11943936 * k + 3531094) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1765547) = 17915904 * k + 5296642 := by
    unfold C
    simp [show (5971968 * k + 1765547) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5296642) = 8957952 * k + 2648321 := by
    unfold C
    simp [show (17915904 * k + 5296642) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2648321) = 26873856 * k + 7944964 := by
    unfold C
    simp [show (8957952 * k + 2648321) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 7944964) = 13436928 * k + 3972482 := by
    unfold C
    simp [show (26873856 * k + 7944964) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3972482) = 6718464 * k + 1986241 := by
    unfold C
    simp [show (13436928 * k + 3972482) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1986241) = 20155392 * k + 5958724 := by
    unfold C
    simp [show (6718464 * k + 1986241) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5958724) = 10077696 * k + 2979362 := by
    unfold C
    simp [show (20155392 * k + 5958724) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2979362) = 5038848 * k + 1489681 := by
    unfold C
    simp [show (10077696 * k + 2979362) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1489681) = 15116544 * k + 4469044 := by
    unfold C
    simp [show (5038848 * k + 1489681) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4469044) = 7558272 * k + 2234522 := by
    unfold C
    simp [show (15116544 * k + 4469044) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2234522) = 3779136 * k + 1117261 := by
    unfold C
    simp [show (7558272 * k + 2234522) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1117261) = 11337408 * k + 3351784 := by
    unfold C
    simp [show (3779136 * k + 1117261) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3351784) = 5668704 * k + 1675892 := by
    unfold C
    simp [show (11337408 * k + 3351784) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1675892) = 2834352 * k + 837946 := by
    unfold C
    simp [show (5668704 * k + 1675892) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 837946) = 1417176 * k + 418973 := by
    unfold C
    simp [show (2834352 * k + 837946) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 418973) = 4251528 * k + 1256920 := by
    unfold C
    simp [show (1417176 * k + 418973) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1256920) = 2125764 * k + 628460 := by
    unfold C
    simp [show (4251528 * k + 1256920) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 628460) = 1062882 * k + 314230 := by
    unfold C
    simp [show (2125764 * k + 628460) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 314230) = 531441 * k + 157115 := by
    unfold C
    simp [show (1062882 * k + 314230) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 309999) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 309999)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_310015 : ∀ k : Nat,
    iterate (1048576 * k + 310015) 32 = 531441 * k + 157123 ∧
      531441 * k + 157123 < 1048576 * k + 310015 := by
  intro k
  have h1 : C (1048576 * k + 310015) = 3145728 * k + 930046 := by
    unfold C
    simp [show (1048576 * k + 310015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 930046) = 1572864 * k + 465023 := by
    unfold C
    simp [show (3145728 * k + 930046) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 465023) = 4718592 * k + 1395070 := by
    unfold C
    simp [show (1572864 * k + 465023) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1395070) = 2359296 * k + 697535 := by
    unfold C
    simp [show (4718592 * k + 1395070) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 697535) = 7077888 * k + 2092606 := by
    unfold C
    simp [show (2359296 * k + 697535) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2092606) = 3538944 * k + 1046303 := by
    unfold C
    simp [show (7077888 * k + 2092606) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1046303) = 10616832 * k + 3138910 := by
    unfold C
    simp [show (3538944 * k + 1046303) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3138910) = 5308416 * k + 1569455 := by
    unfold C
    simp [show (10616832 * k + 3138910) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1569455) = 15925248 * k + 4708366 := by
    unfold C
    simp [show (5308416 * k + 1569455) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4708366) = 7962624 * k + 2354183 := by
    unfold C
    simp [show (15925248 * k + 4708366) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2354183) = 23887872 * k + 7062550 := by
    unfold C
    simp [show (7962624 * k + 2354183) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 7062550) = 11943936 * k + 3531275 := by
    unfold C
    simp [show (23887872 * k + 7062550) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3531275) = 35831808 * k + 10593826 := by
    unfold C
    simp [show (11943936 * k + 3531275) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 10593826) = 17915904 * k + 5296913 := by
    unfold C
    simp [show (35831808 * k + 10593826) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 5296913) = 53747712 * k + 15890740 := by
    unfold C
    simp [show (17915904 * k + 5296913) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 15890740) = 26873856 * k + 7945370 := by
    unfold C
    simp [show (53747712 * k + 15890740) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 7945370) = 13436928 * k + 3972685 := by
    unfold C
    simp [show (26873856 * k + 7945370) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3972685) = 40310784 * k + 11918056 := by
    unfold C
    simp [show (13436928 * k + 3972685) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 11918056) = 20155392 * k + 5959028 := by
    unfold C
    simp [show (40310784 * k + 11918056) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 5959028) = 10077696 * k + 2979514 := by
    unfold C
    simp [show (20155392 * k + 5959028) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2979514) = 5038848 * k + 1489757 := by
    unfold C
    simp [show (10077696 * k + 2979514) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1489757) = 15116544 * k + 4469272 := by
    unfold C
    simp [show (5038848 * k + 1489757) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4469272) = 7558272 * k + 2234636 := by
    unfold C
    simp [show (15116544 * k + 4469272) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2234636) = 3779136 * k + 1117318 := by
    unfold C
    simp [show (7558272 * k + 2234636) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1117318) = 1889568 * k + 558659 := by
    unfold C
    simp [show (3779136 * k + 1117318) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 558659) = 5668704 * k + 1675978 := by
    unfold C
    simp [show (1889568 * k + 558659) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1675978) = 2834352 * k + 837989 := by
    unfold C
    simp [show (5668704 * k + 1675978) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 837989) = 8503056 * k + 2513968 := by
    unfold C
    simp [show (2834352 * k + 837989) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2513968) = 4251528 * k + 1256984 := by
    unfold C
    simp [show (8503056 * k + 2513968) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1256984) = 2125764 * k + 628492 := by
    unfold C
    simp [show (4251528 * k + 1256984) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 628492) = 1062882 * k + 314246 := by
    unfold C
    simp [show (2125764 * k + 628492) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 314246) = 531441 * k + 157123 := by
    unfold C
    simp [show (1062882 * k + 314246) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 310015) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 310015)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_310555 : ∀ k : Nat,
    iterate (1048576 * k + 310555) 32 = 531441 * k + 157397 ∧
      531441 * k + 157397 < 1048576 * k + 310555 := by
  intro k
  have h1 : C (1048576 * k + 310555) = 3145728 * k + 931666 := by
    unfold C
    simp [show (1048576 * k + 310555) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 931666) = 1572864 * k + 465833 := by
    unfold C
    simp [show (3145728 * k + 931666) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 465833) = 4718592 * k + 1397500 := by
    unfold C
    simp [show (1572864 * k + 465833) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1397500) = 2359296 * k + 698750 := by
    unfold C
    simp [show (4718592 * k + 1397500) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 698750) = 1179648 * k + 349375 := by
    unfold C
    simp [show (2359296 * k + 698750) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 349375) = 3538944 * k + 1048126 := by
    unfold C
    simp [show (1179648 * k + 349375) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1048126) = 1769472 * k + 524063 := by
    unfold C
    simp [show (3538944 * k + 1048126) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 524063) = 5308416 * k + 1572190 := by
    unfold C
    simp [show (1769472 * k + 524063) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1572190) = 2654208 * k + 786095 := by
    unfold C
    simp [show (5308416 * k + 1572190) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 786095) = 7962624 * k + 2358286 := by
    unfold C
    simp [show (2654208 * k + 786095) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2358286) = 3981312 * k + 1179143 := by
    unfold C
    simp [show (7962624 * k + 2358286) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1179143) = 11943936 * k + 3537430 := by
    unfold C
    simp [show (3981312 * k + 1179143) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3537430) = 5971968 * k + 1768715 := by
    unfold C
    simp [show (11943936 * k + 3537430) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1768715) = 17915904 * k + 5306146 := by
    unfold C
    simp [show (5971968 * k + 1768715) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5306146) = 8957952 * k + 2653073 := by
    unfold C
    simp [show (17915904 * k + 5306146) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2653073) = 26873856 * k + 7959220 := by
    unfold C
    simp [show (8957952 * k + 2653073) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 7959220) = 13436928 * k + 3979610 := by
    unfold C
    simp [show (26873856 * k + 7959220) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3979610) = 6718464 * k + 1989805 := by
    unfold C
    simp [show (13436928 * k + 3979610) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1989805) = 20155392 * k + 5969416 := by
    unfold C
    simp [show (6718464 * k + 1989805) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5969416) = 10077696 * k + 2984708 := by
    unfold C
    simp [show (20155392 * k + 5969416) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2984708) = 5038848 * k + 1492354 := by
    unfold C
    simp [show (10077696 * k + 2984708) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1492354) = 2519424 * k + 746177 := by
    unfold C
    simp [show (5038848 * k + 1492354) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 746177) = 7558272 * k + 2238532 := by
    unfold C
    simp [show (2519424 * k + 746177) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2238532) = 3779136 * k + 1119266 := by
    unfold C
    simp [show (7558272 * k + 2238532) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1119266) = 1889568 * k + 559633 := by
    unfold C
    simp [show (3779136 * k + 1119266) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 559633) = 5668704 * k + 1678900 := by
    unfold C
    simp [show (1889568 * k + 559633) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1678900) = 2834352 * k + 839450 := by
    unfold C
    simp [show (5668704 * k + 1678900) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 839450) = 1417176 * k + 419725 := by
    unfold C
    simp [show (2834352 * k + 839450) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 419725) = 4251528 * k + 1259176 := by
    unfold C
    simp [show (1417176 * k + 419725) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1259176) = 2125764 * k + 629588 := by
    unfold C
    simp [show (4251528 * k + 1259176) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 629588) = 1062882 * k + 314794 := by
    unfold C
    simp [show (2125764 * k + 629588) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 314794) = 531441 * k + 157397 := by
    unfold C
    simp [show (1062882 * k + 314794) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 310555) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 310555)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_310591 : ∀ k : Nat,
    iterate (1048576 * k + 310591) 32 = 531441 * k + 157415 ∧
      531441 * k + 157415 < 1048576 * k + 310591 := by
  intro k
  have h1 : C (1048576 * k + 310591) = 3145728 * k + 931774 := by
    unfold C
    simp [show (1048576 * k + 310591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 931774) = 1572864 * k + 465887 := by
    unfold C
    simp [show (3145728 * k + 931774) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 465887) = 4718592 * k + 1397662 := by
    unfold C
    simp [show (1572864 * k + 465887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1397662) = 2359296 * k + 698831 := by
    unfold C
    simp [show (4718592 * k + 1397662) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 698831) = 7077888 * k + 2096494 := by
    unfold C
    simp [show (2359296 * k + 698831) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2096494) = 3538944 * k + 1048247 := by
    unfold C
    simp [show (7077888 * k + 2096494) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1048247) = 10616832 * k + 3144742 := by
    unfold C
    simp [show (3538944 * k + 1048247) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3144742) = 5308416 * k + 1572371 := by
    unfold C
    simp [show (10616832 * k + 3144742) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1572371) = 15925248 * k + 4717114 := by
    unfold C
    simp [show (5308416 * k + 1572371) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4717114) = 7962624 * k + 2358557 := by
    unfold C
    simp [show (15925248 * k + 4717114) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2358557) = 23887872 * k + 7075672 := by
    unfold C
    simp [show (7962624 * k + 2358557) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 7075672) = 11943936 * k + 3537836 := by
    unfold C
    simp [show (23887872 * k + 7075672) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3537836) = 5971968 * k + 1768918 := by
    unfold C
    simp [show (11943936 * k + 3537836) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1768918) = 2985984 * k + 884459 := by
    unfold C
    simp [show (5971968 * k + 1768918) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 884459) = 8957952 * k + 2653378 := by
    unfold C
    simp [show (2985984 * k + 884459) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2653378) = 4478976 * k + 1326689 := by
    unfold C
    simp [show (8957952 * k + 2653378) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1326689) = 13436928 * k + 3980068 := by
    unfold C
    simp [show (4478976 * k + 1326689) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3980068) = 6718464 * k + 1990034 := by
    unfold C
    simp [show (13436928 * k + 3980068) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1990034) = 3359232 * k + 995017 := by
    unfold C
    simp [show (6718464 * k + 1990034) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 995017) = 10077696 * k + 2985052 := by
    unfold C
    simp [show (3359232 * k + 995017) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2985052) = 5038848 * k + 1492526 := by
    unfold C
    simp [show (10077696 * k + 2985052) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1492526) = 2519424 * k + 746263 := by
    unfold C
    simp [show (5038848 * k + 1492526) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 746263) = 7558272 * k + 2238790 := by
    unfold C
    simp [show (2519424 * k + 746263) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2238790) = 3779136 * k + 1119395 := by
    unfold C
    simp [show (7558272 * k + 2238790) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1119395) = 11337408 * k + 3358186 := by
    unfold C
    simp [show (3779136 * k + 1119395) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3358186) = 5668704 * k + 1679093 := by
    unfold C
    simp [show (11337408 * k + 3358186) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1679093) = 17006112 * k + 5037280 := by
    unfold C
    simp [show (5668704 * k + 1679093) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 5037280) = 8503056 * k + 2518640 := by
    unfold C
    simp [show (17006112 * k + 5037280) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2518640) = 4251528 * k + 1259320 := by
    unfold C
    simp [show (8503056 * k + 2518640) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1259320) = 2125764 * k + 629660 := by
    unfold C
    simp [show (4251528 * k + 1259320) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 629660) = 1062882 * k + 314830 := by
    unfold C
    simp [show (2125764 * k + 629660) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 314830) = 531441 * k + 157415 := by
    unfold C
    simp [show (1062882 * k + 314830) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 310591) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 310591)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_311615 : ∀ k : Nat,
    iterate (1048576 * k + 311615) 32 = 531441 * k + 157934 ∧
      531441 * k + 157934 < 1048576 * k + 311615 := by
  intro k
  have h1 : C (1048576 * k + 311615) = 3145728 * k + 934846 := by
    unfold C
    simp [show (1048576 * k + 311615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 934846) = 1572864 * k + 467423 := by
    unfold C
    simp [show (3145728 * k + 934846) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 467423) = 4718592 * k + 1402270 := by
    unfold C
    simp [show (1572864 * k + 467423) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1402270) = 2359296 * k + 701135 := by
    unfold C
    simp [show (4718592 * k + 1402270) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 701135) = 7077888 * k + 2103406 := by
    unfold C
    simp [show (2359296 * k + 701135) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2103406) = 3538944 * k + 1051703 := by
    unfold C
    simp [show (7077888 * k + 2103406) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1051703) = 10616832 * k + 3155110 := by
    unfold C
    simp [show (3538944 * k + 1051703) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3155110) = 5308416 * k + 1577555 := by
    unfold C
    simp [show (10616832 * k + 3155110) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1577555) = 15925248 * k + 4732666 := by
    unfold C
    simp [show (5308416 * k + 1577555) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4732666) = 7962624 * k + 2366333 := by
    unfold C
    simp [show (15925248 * k + 4732666) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2366333) = 23887872 * k + 7099000 := by
    unfold C
    simp [show (7962624 * k + 2366333) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 7099000) = 11943936 * k + 3549500 := by
    unfold C
    simp [show (23887872 * k + 7099000) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3549500) = 5971968 * k + 1774750 := by
    unfold C
    simp [show (11943936 * k + 3549500) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1774750) = 2985984 * k + 887375 := by
    unfold C
    simp [show (5971968 * k + 1774750) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 887375) = 8957952 * k + 2662126 := by
    unfold C
    simp [show (2985984 * k + 887375) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2662126) = 4478976 * k + 1331063 := by
    unfold C
    simp [show (8957952 * k + 2662126) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1331063) = 13436928 * k + 3993190 := by
    unfold C
    simp [show (4478976 * k + 1331063) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3993190) = 6718464 * k + 1996595 := by
    unfold C
    simp [show (13436928 * k + 3993190) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1996595) = 20155392 * k + 5989786 := by
    unfold C
    simp [show (6718464 * k + 1996595) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5989786) = 10077696 * k + 2994893 := by
    unfold C
    simp [show (20155392 * k + 5989786) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2994893) = 30233088 * k + 8984680 := by
    unfold C
    simp [show (10077696 * k + 2994893) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 8984680) = 15116544 * k + 4492340 := by
    unfold C
    simp [show (30233088 * k + 8984680) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4492340) = 7558272 * k + 2246170 := by
    unfold C
    simp [show (15116544 * k + 4492340) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2246170) = 3779136 * k + 1123085 := by
    unfold C
    simp [show (7558272 * k + 2246170) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1123085) = 11337408 * k + 3369256 := by
    unfold C
    simp [show (3779136 * k + 1123085) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3369256) = 5668704 * k + 1684628 := by
    unfold C
    simp [show (11337408 * k + 3369256) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1684628) = 2834352 * k + 842314 := by
    unfold C
    simp [show (5668704 * k + 1684628) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 842314) = 1417176 * k + 421157 := by
    unfold C
    simp [show (2834352 * k + 842314) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 421157) = 4251528 * k + 1263472 := by
    unfold C
    simp [show (1417176 * k + 421157) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1263472) = 2125764 * k + 631736 := by
    unfold C
    simp [show (4251528 * k + 1263472) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 631736) = 1062882 * k + 315868 := by
    unfold C
    simp [show (2125764 * k + 631736) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 315868) = 531441 * k + 157934 := by
    unfold C
    simp [show (1062882 * k + 315868) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 311615) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 311615)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_312039 : ∀ k : Nat,
    iterate (1048576 * k + 312039) 32 = 531441 * k + 158149 ∧
      531441 * k + 158149 < 1048576 * k + 312039 := by
  intro k
  have h1 : C (1048576 * k + 312039) = 3145728 * k + 936118 := by
    unfold C
    simp [show (1048576 * k + 312039) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 936118) = 1572864 * k + 468059 := by
    unfold C
    simp [show (3145728 * k + 936118) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 468059) = 4718592 * k + 1404178 := by
    unfold C
    simp [show (1572864 * k + 468059) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1404178) = 2359296 * k + 702089 := by
    unfold C
    simp [show (4718592 * k + 1404178) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 702089) = 7077888 * k + 2106268 := by
    unfold C
    simp [show (2359296 * k + 702089) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2106268) = 3538944 * k + 1053134 := by
    unfold C
    simp [show (7077888 * k + 2106268) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1053134) = 1769472 * k + 526567 := by
    unfold C
    simp [show (3538944 * k + 1053134) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 526567) = 5308416 * k + 1579702 := by
    unfold C
    simp [show (1769472 * k + 526567) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1579702) = 2654208 * k + 789851 := by
    unfold C
    simp [show (5308416 * k + 1579702) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 789851) = 7962624 * k + 2369554 := by
    unfold C
    simp [show (2654208 * k + 789851) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2369554) = 3981312 * k + 1184777 := by
    unfold C
    simp [show (7962624 * k + 2369554) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1184777) = 11943936 * k + 3554332 := by
    unfold C
    simp [show (3981312 * k + 1184777) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3554332) = 5971968 * k + 1777166 := by
    unfold C
    simp [show (11943936 * k + 3554332) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1777166) = 2985984 * k + 888583 := by
    unfold C
    simp [show (5971968 * k + 1777166) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 888583) = 8957952 * k + 2665750 := by
    unfold C
    simp [show (2985984 * k + 888583) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2665750) = 4478976 * k + 1332875 := by
    unfold C
    simp [show (8957952 * k + 2665750) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1332875) = 13436928 * k + 3998626 := by
    unfold C
    simp [show (4478976 * k + 1332875) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3998626) = 6718464 * k + 1999313 := by
    unfold C
    simp [show (13436928 * k + 3998626) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1999313) = 20155392 * k + 5997940 := by
    unfold C
    simp [show (6718464 * k + 1999313) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5997940) = 10077696 * k + 2998970 := by
    unfold C
    simp [show (20155392 * k + 5997940) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2998970) = 5038848 * k + 1499485 := by
    unfold C
    simp [show (10077696 * k + 2998970) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1499485) = 15116544 * k + 4498456 := by
    unfold C
    simp [show (5038848 * k + 1499485) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4498456) = 7558272 * k + 2249228 := by
    unfold C
    simp [show (15116544 * k + 4498456) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2249228) = 3779136 * k + 1124614 := by
    unfold C
    simp [show (7558272 * k + 2249228) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1124614) = 1889568 * k + 562307 := by
    unfold C
    simp [show (3779136 * k + 1124614) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 562307) = 5668704 * k + 1686922 := by
    unfold C
    simp [show (1889568 * k + 562307) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1686922) = 2834352 * k + 843461 := by
    unfold C
    simp [show (5668704 * k + 1686922) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 843461) = 8503056 * k + 2530384 := by
    unfold C
    simp [show (2834352 * k + 843461) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2530384) = 4251528 * k + 1265192 := by
    unfold C
    simp [show (8503056 * k + 2530384) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1265192) = 2125764 * k + 632596 := by
    unfold C
    simp [show (4251528 * k + 1265192) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 632596) = 1062882 * k + 316298 := by
    unfold C
    simp [show (2125764 * k + 632596) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 316298) = 531441 * k + 158149 := by
    unfold C
    simp [show (1062882 * k + 316298) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 312039) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 312039)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_312047 : ∀ k : Nat,
    iterate (1048576 * k + 312047) 32 = 531441 * k + 158153 ∧
      531441 * k + 158153 < 1048576 * k + 312047 := by
  intro k
  have h1 : C (1048576 * k + 312047) = 3145728 * k + 936142 := by
    unfold C
    simp [show (1048576 * k + 312047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 936142) = 1572864 * k + 468071 := by
    unfold C
    simp [show (3145728 * k + 936142) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 468071) = 4718592 * k + 1404214 := by
    unfold C
    simp [show (1572864 * k + 468071) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1404214) = 2359296 * k + 702107 := by
    unfold C
    simp [show (4718592 * k + 1404214) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 702107) = 7077888 * k + 2106322 := by
    unfold C
    simp [show (2359296 * k + 702107) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2106322) = 3538944 * k + 1053161 := by
    unfold C
    simp [show (7077888 * k + 2106322) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1053161) = 10616832 * k + 3159484 := by
    unfold C
    simp [show (3538944 * k + 1053161) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3159484) = 5308416 * k + 1579742 := by
    unfold C
    simp [show (10616832 * k + 3159484) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1579742) = 2654208 * k + 789871 := by
    unfold C
    simp [show (5308416 * k + 1579742) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 789871) = 7962624 * k + 2369614 := by
    unfold C
    simp [show (2654208 * k + 789871) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2369614) = 3981312 * k + 1184807 := by
    unfold C
    simp [show (7962624 * k + 2369614) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1184807) = 11943936 * k + 3554422 := by
    unfold C
    simp [show (3981312 * k + 1184807) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3554422) = 5971968 * k + 1777211 := by
    unfold C
    simp [show (11943936 * k + 3554422) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1777211) = 17915904 * k + 5331634 := by
    unfold C
    simp [show (5971968 * k + 1777211) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5331634) = 8957952 * k + 2665817 := by
    unfold C
    simp [show (17915904 * k + 5331634) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2665817) = 26873856 * k + 7997452 := by
    unfold C
    simp [show (8957952 * k + 2665817) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 7997452) = 13436928 * k + 3998726 := by
    unfold C
    simp [show (26873856 * k + 7997452) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3998726) = 6718464 * k + 1999363 := by
    unfold C
    simp [show (13436928 * k + 3998726) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1999363) = 20155392 * k + 5998090 := by
    unfold C
    simp [show (6718464 * k + 1999363) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5998090) = 10077696 * k + 2999045 := by
    unfold C
    simp [show (20155392 * k + 5998090) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2999045) = 30233088 * k + 8997136 := by
    unfold C
    simp [show (10077696 * k + 2999045) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 8997136) = 15116544 * k + 4498568 := by
    unfold C
    simp [show (30233088 * k + 8997136) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4498568) = 7558272 * k + 2249284 := by
    unfold C
    simp [show (15116544 * k + 4498568) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2249284) = 3779136 * k + 1124642 := by
    unfold C
    simp [show (7558272 * k + 2249284) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1124642) = 1889568 * k + 562321 := by
    unfold C
    simp [show (3779136 * k + 1124642) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 562321) = 5668704 * k + 1686964 := by
    unfold C
    simp [show (1889568 * k + 562321) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1686964) = 2834352 * k + 843482 := by
    unfold C
    simp [show (5668704 * k + 1686964) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 843482) = 1417176 * k + 421741 := by
    unfold C
    simp [show (2834352 * k + 843482) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 421741) = 4251528 * k + 1265224 := by
    unfold C
    simp [show (1417176 * k + 421741) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1265224) = 2125764 * k + 632612 := by
    unfold C
    simp [show (4251528 * k + 1265224) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 632612) = 1062882 * k + 316306 := by
    unfold C
    simp [show (2125764 * k + 632612) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 316306) = 531441 * k + 158153 := by
    unfold C
    simp [show (1062882 * k + 316306) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 312047) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 312047)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard041
