import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard058

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_455399 : ∀ k : Nat,
    iterate (1048576 * k + 455399) 32 = 531441 * k + 230807 ∧
      531441 * k + 230807 < 1048576 * k + 455399 := by
  intro k
  have h1 : C (1048576 * k + 455399) = 3145728 * k + 1366198 := by
    unfold C
    simp [show (1048576 * k + 455399) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1366198) = 1572864 * k + 683099 := by
    unfold C
    simp [show (3145728 * k + 1366198) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 683099) = 4718592 * k + 2049298 := by
    unfold C
    simp [show (1572864 * k + 683099) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2049298) = 2359296 * k + 1024649 := by
    unfold C
    simp [show (4718592 * k + 2049298) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1024649) = 7077888 * k + 3073948 := by
    unfold C
    simp [show (2359296 * k + 1024649) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3073948) = 3538944 * k + 1536974 := by
    unfold C
    simp [show (7077888 * k + 3073948) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1536974) = 1769472 * k + 768487 := by
    unfold C
    simp [show (3538944 * k + 1536974) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 768487) = 5308416 * k + 2305462 := by
    unfold C
    simp [show (1769472 * k + 768487) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2305462) = 2654208 * k + 1152731 := by
    unfold C
    simp [show (5308416 * k + 2305462) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1152731) = 7962624 * k + 3458194 := by
    unfold C
    simp [show (2654208 * k + 1152731) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3458194) = 3981312 * k + 1729097 := by
    unfold C
    simp [show (7962624 * k + 3458194) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1729097) = 11943936 * k + 5187292 := by
    unfold C
    simp [show (3981312 * k + 1729097) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5187292) = 5971968 * k + 2593646 := by
    unfold C
    simp [show (11943936 * k + 5187292) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2593646) = 2985984 * k + 1296823 := by
    unfold C
    simp [show (5971968 * k + 2593646) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1296823) = 8957952 * k + 3890470 := by
    unfold C
    simp [show (2985984 * k + 1296823) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3890470) = 4478976 * k + 1945235 := by
    unfold C
    simp [show (8957952 * k + 3890470) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1945235) = 13436928 * k + 5835706 := by
    unfold C
    simp [show (4478976 * k + 1945235) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5835706) = 6718464 * k + 2917853 := by
    unfold C
    simp [show (13436928 * k + 5835706) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2917853) = 20155392 * k + 8753560 := by
    unfold C
    simp [show (6718464 * k + 2917853) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8753560) = 10077696 * k + 4376780 := by
    unfold C
    simp [show (20155392 * k + 8753560) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4376780) = 5038848 * k + 2188390 := by
    unfold C
    simp [show (10077696 * k + 4376780) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2188390) = 2519424 * k + 1094195 := by
    unfold C
    simp [show (5038848 * k + 2188390) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1094195) = 7558272 * k + 3282586 := by
    unfold C
    simp [show (2519424 * k + 1094195) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3282586) = 3779136 * k + 1641293 := by
    unfold C
    simp [show (7558272 * k + 3282586) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1641293) = 11337408 * k + 4923880 := by
    unfold C
    simp [show (3779136 * k + 1641293) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4923880) = 5668704 * k + 2461940 := by
    unfold C
    simp [show (11337408 * k + 4923880) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2461940) = 2834352 * k + 1230970 := by
    unfold C
    simp [show (5668704 * k + 2461940) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1230970) = 1417176 * k + 615485 := by
    unfold C
    simp [show (2834352 * k + 1230970) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 615485) = 4251528 * k + 1846456 := by
    unfold C
    simp [show (1417176 * k + 615485) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1846456) = 2125764 * k + 923228 := by
    unfold C
    simp [show (4251528 * k + 1846456) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 923228) = 1062882 * k + 461614 := by
    unfold C
    simp [show (2125764 * k + 923228) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 461614) = 531441 * k + 230807 := by
    unfold C
    simp [show (1062882 * k + 461614) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 455399) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 455399)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_455707 : ∀ k : Nat,
    iterate (1048576 * k + 455707) 32 = 531441 * k + 230963 ∧
      531441 * k + 230963 < 1048576 * k + 455707 := by
  intro k
  have h1 : C (1048576 * k + 455707) = 3145728 * k + 1367122 := by
    unfold C
    simp [show (1048576 * k + 455707) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1367122) = 1572864 * k + 683561 := by
    unfold C
    simp [show (3145728 * k + 1367122) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 683561) = 4718592 * k + 2050684 := by
    unfold C
    simp [show (1572864 * k + 683561) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2050684) = 2359296 * k + 1025342 := by
    unfold C
    simp [show (4718592 * k + 2050684) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1025342) = 1179648 * k + 512671 := by
    unfold C
    simp [show (2359296 * k + 1025342) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 512671) = 3538944 * k + 1538014 := by
    unfold C
    simp [show (1179648 * k + 512671) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1538014) = 1769472 * k + 769007 := by
    unfold C
    simp [show (3538944 * k + 1538014) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 769007) = 5308416 * k + 2307022 := by
    unfold C
    simp [show (1769472 * k + 769007) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2307022) = 2654208 * k + 1153511 := by
    unfold C
    simp [show (5308416 * k + 2307022) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1153511) = 7962624 * k + 3460534 := by
    unfold C
    simp [show (2654208 * k + 1153511) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3460534) = 3981312 * k + 1730267 := by
    unfold C
    simp [show (7962624 * k + 3460534) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1730267) = 11943936 * k + 5190802 := by
    unfold C
    simp [show (3981312 * k + 1730267) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5190802) = 5971968 * k + 2595401 := by
    unfold C
    simp [show (11943936 * k + 5190802) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2595401) = 17915904 * k + 7786204 := by
    unfold C
    simp [show (5971968 * k + 2595401) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7786204) = 8957952 * k + 3893102 := by
    unfold C
    simp [show (17915904 * k + 7786204) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3893102) = 4478976 * k + 1946551 := by
    unfold C
    simp [show (8957952 * k + 3893102) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1946551) = 13436928 * k + 5839654 := by
    unfold C
    simp [show (4478976 * k + 1946551) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5839654) = 6718464 * k + 2919827 := by
    unfold C
    simp [show (13436928 * k + 5839654) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2919827) = 20155392 * k + 8759482 := by
    unfold C
    simp [show (6718464 * k + 2919827) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8759482) = 10077696 * k + 4379741 := by
    unfold C
    simp [show (20155392 * k + 8759482) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4379741) = 30233088 * k + 13139224 := by
    unfold C
    simp [show (10077696 * k + 4379741) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 13139224) = 15116544 * k + 6569612 := by
    unfold C
    simp [show (30233088 * k + 13139224) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6569612) = 7558272 * k + 3284806 := by
    unfold C
    simp [show (15116544 * k + 6569612) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3284806) = 3779136 * k + 1642403 := by
    unfold C
    simp [show (7558272 * k + 3284806) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1642403) = 11337408 * k + 4927210 := by
    unfold C
    simp [show (3779136 * k + 1642403) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4927210) = 5668704 * k + 2463605 := by
    unfold C
    simp [show (11337408 * k + 4927210) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2463605) = 17006112 * k + 7390816 := by
    unfold C
    simp [show (5668704 * k + 2463605) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7390816) = 8503056 * k + 3695408 := by
    unfold C
    simp [show (17006112 * k + 7390816) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3695408) = 4251528 * k + 1847704 := by
    unfold C
    simp [show (8503056 * k + 3695408) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1847704) = 2125764 * k + 923852 := by
    unfold C
    simp [show (4251528 * k + 1847704) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 923852) = 1062882 * k + 461926 := by
    unfold C
    simp [show (2125764 * k + 923852) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 461926) = 531441 * k + 230963 := by
    unfold C
    simp [show (1062882 * k + 461926) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 455707) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 455707)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_456399 : ∀ k : Nat,
    iterate (1048576 * k + 456399) 32 = 531441 * k + 231314 ∧
      531441 * k + 231314 < 1048576 * k + 456399 := by
  intro k
  have h1 : C (1048576 * k + 456399) = 3145728 * k + 1369198 := by
    unfold C
    simp [show (1048576 * k + 456399) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1369198) = 1572864 * k + 684599 := by
    unfold C
    simp [show (3145728 * k + 1369198) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 684599) = 4718592 * k + 2053798 := by
    unfold C
    simp [show (1572864 * k + 684599) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2053798) = 2359296 * k + 1026899 := by
    unfold C
    simp [show (4718592 * k + 2053798) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1026899) = 7077888 * k + 3080698 := by
    unfold C
    simp [show (2359296 * k + 1026899) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3080698) = 3538944 * k + 1540349 := by
    unfold C
    simp [show (7077888 * k + 3080698) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1540349) = 10616832 * k + 4621048 := by
    unfold C
    simp [show (3538944 * k + 1540349) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4621048) = 5308416 * k + 2310524 := by
    unfold C
    simp [show (10616832 * k + 4621048) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2310524) = 2654208 * k + 1155262 := by
    unfold C
    simp [show (5308416 * k + 2310524) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1155262) = 1327104 * k + 577631 := by
    unfold C
    simp [show (2654208 * k + 1155262) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 577631) = 3981312 * k + 1732894 := by
    unfold C
    simp [show (1327104 * k + 577631) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1732894) = 1990656 * k + 866447 := by
    unfold C
    simp [show (3981312 * k + 1732894) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 866447) = 5971968 * k + 2599342 := by
    unfold C
    simp [show (1990656 * k + 866447) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2599342) = 2985984 * k + 1299671 := by
    unfold C
    simp [show (5971968 * k + 2599342) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1299671) = 8957952 * k + 3899014 := by
    unfold C
    simp [show (2985984 * k + 1299671) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3899014) = 4478976 * k + 1949507 := by
    unfold C
    simp [show (8957952 * k + 3899014) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1949507) = 13436928 * k + 5848522 := by
    unfold C
    simp [show (4478976 * k + 1949507) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5848522) = 6718464 * k + 2924261 := by
    unfold C
    simp [show (13436928 * k + 5848522) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2924261) = 20155392 * k + 8772784 := by
    unfold C
    simp [show (6718464 * k + 2924261) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8772784) = 10077696 * k + 4386392 := by
    unfold C
    simp [show (20155392 * k + 8772784) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4386392) = 5038848 * k + 2193196 := by
    unfold C
    simp [show (10077696 * k + 4386392) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2193196) = 2519424 * k + 1096598 := by
    unfold C
    simp [show (5038848 * k + 2193196) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1096598) = 1259712 * k + 548299 := by
    unfold C
    simp [show (2519424 * k + 1096598) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 548299) = 3779136 * k + 1644898 := by
    unfold C
    simp [show (1259712 * k + 548299) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1644898) = 1889568 * k + 822449 := by
    unfold C
    simp [show (3779136 * k + 1644898) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 822449) = 5668704 * k + 2467348 := by
    unfold C
    simp [show (1889568 * k + 822449) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2467348) = 2834352 * k + 1233674 := by
    unfold C
    simp [show (5668704 * k + 2467348) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1233674) = 1417176 * k + 616837 := by
    unfold C
    simp [show (2834352 * k + 1233674) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 616837) = 4251528 * k + 1850512 := by
    unfold C
    simp [show (1417176 * k + 616837) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1850512) = 2125764 * k + 925256 := by
    unfold C
    simp [show (4251528 * k + 1850512) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 925256) = 1062882 * k + 462628 := by
    unfold C
    simp [show (2125764 * k + 925256) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 462628) = 531441 * k + 231314 := by
    unfold C
    simp [show (1062882 * k + 462628) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 456399) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 456399)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_456559 : ∀ k : Nat,
    iterate (1048576 * k + 456559) 32 = 531441 * k + 231395 ∧
      531441 * k + 231395 < 1048576 * k + 456559 := by
  intro k
  have h1 : C (1048576 * k + 456559) = 3145728 * k + 1369678 := by
    unfold C
    simp [show (1048576 * k + 456559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1369678) = 1572864 * k + 684839 := by
    unfold C
    simp [show (3145728 * k + 1369678) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 684839) = 4718592 * k + 2054518 := by
    unfold C
    simp [show (1572864 * k + 684839) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2054518) = 2359296 * k + 1027259 := by
    unfold C
    simp [show (4718592 * k + 2054518) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1027259) = 7077888 * k + 3081778 := by
    unfold C
    simp [show (2359296 * k + 1027259) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3081778) = 3538944 * k + 1540889 := by
    unfold C
    simp [show (7077888 * k + 3081778) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1540889) = 10616832 * k + 4622668 := by
    unfold C
    simp [show (3538944 * k + 1540889) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4622668) = 5308416 * k + 2311334 := by
    unfold C
    simp [show (10616832 * k + 4622668) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2311334) = 2654208 * k + 1155667 := by
    unfold C
    simp [show (5308416 * k + 2311334) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1155667) = 7962624 * k + 3467002 := by
    unfold C
    simp [show (2654208 * k + 1155667) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3467002) = 3981312 * k + 1733501 := by
    unfold C
    simp [show (7962624 * k + 3467002) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1733501) = 11943936 * k + 5200504 := by
    unfold C
    simp [show (3981312 * k + 1733501) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5200504) = 5971968 * k + 2600252 := by
    unfold C
    simp [show (11943936 * k + 5200504) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2600252) = 2985984 * k + 1300126 := by
    unfold C
    simp [show (5971968 * k + 2600252) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1300126) = 1492992 * k + 650063 := by
    unfold C
    simp [show (2985984 * k + 1300126) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 650063) = 4478976 * k + 1950190 := by
    unfold C
    simp [show (1492992 * k + 650063) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1950190) = 2239488 * k + 975095 := by
    unfold C
    simp [show (4478976 * k + 1950190) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 975095) = 6718464 * k + 2925286 := by
    unfold C
    simp [show (2239488 * k + 975095) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2925286) = 3359232 * k + 1462643 := by
    unfold C
    simp [show (6718464 * k + 2925286) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1462643) = 10077696 * k + 4387930 := by
    unfold C
    simp [show (3359232 * k + 1462643) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4387930) = 5038848 * k + 2193965 := by
    unfold C
    simp [show (10077696 * k + 4387930) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2193965) = 15116544 * k + 6581896 := by
    unfold C
    simp [show (5038848 * k + 2193965) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6581896) = 7558272 * k + 3290948 := by
    unfold C
    simp [show (15116544 * k + 6581896) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3290948) = 3779136 * k + 1645474 := by
    unfold C
    simp [show (7558272 * k + 3290948) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1645474) = 1889568 * k + 822737 := by
    unfold C
    simp [show (3779136 * k + 1645474) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 822737) = 5668704 * k + 2468212 := by
    unfold C
    simp [show (1889568 * k + 822737) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2468212) = 2834352 * k + 1234106 := by
    unfold C
    simp [show (5668704 * k + 2468212) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1234106) = 1417176 * k + 617053 := by
    unfold C
    simp [show (2834352 * k + 1234106) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 617053) = 4251528 * k + 1851160 := by
    unfold C
    simp [show (1417176 * k + 617053) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1851160) = 2125764 * k + 925580 := by
    unfold C
    simp [show (4251528 * k + 1851160) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 925580) = 1062882 * k + 462790 := by
    unfold C
    simp [show (2125764 * k + 925580) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 462790) = 531441 * k + 231395 := by
    unfold C
    simp [show (1062882 * k + 462790) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 456559) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 456559)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_457327 : ∀ k : Nat,
    iterate (1048576 * k + 457327) 32 = 531441 * k + 231784 ∧
      531441 * k + 231784 < 1048576 * k + 457327 := by
  intro k
  have h1 : C (1048576 * k + 457327) = 3145728 * k + 1371982 := by
    unfold C
    simp [show (1048576 * k + 457327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1371982) = 1572864 * k + 685991 := by
    unfold C
    simp [show (3145728 * k + 1371982) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 685991) = 4718592 * k + 2057974 := by
    unfold C
    simp [show (1572864 * k + 685991) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2057974) = 2359296 * k + 1028987 := by
    unfold C
    simp [show (4718592 * k + 2057974) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1028987) = 7077888 * k + 3086962 := by
    unfold C
    simp [show (2359296 * k + 1028987) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3086962) = 3538944 * k + 1543481 := by
    unfold C
    simp [show (7077888 * k + 3086962) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1543481) = 10616832 * k + 4630444 := by
    unfold C
    simp [show (3538944 * k + 1543481) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4630444) = 5308416 * k + 2315222 := by
    unfold C
    simp [show (10616832 * k + 4630444) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2315222) = 2654208 * k + 1157611 := by
    unfold C
    simp [show (5308416 * k + 2315222) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1157611) = 7962624 * k + 3472834 := by
    unfold C
    simp [show (2654208 * k + 1157611) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3472834) = 3981312 * k + 1736417 := by
    unfold C
    simp [show (7962624 * k + 3472834) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1736417) = 11943936 * k + 5209252 := by
    unfold C
    simp [show (3981312 * k + 1736417) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5209252) = 5971968 * k + 2604626 := by
    unfold C
    simp [show (11943936 * k + 5209252) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2604626) = 2985984 * k + 1302313 := by
    unfold C
    simp [show (5971968 * k + 2604626) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1302313) = 8957952 * k + 3906940 := by
    unfold C
    simp [show (2985984 * k + 1302313) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3906940) = 4478976 * k + 1953470 := by
    unfold C
    simp [show (8957952 * k + 3906940) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1953470) = 2239488 * k + 976735 := by
    unfold C
    simp [show (4478976 * k + 1953470) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 976735) = 6718464 * k + 2930206 := by
    unfold C
    simp [show (2239488 * k + 976735) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2930206) = 3359232 * k + 1465103 := by
    unfold C
    simp [show (6718464 * k + 2930206) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1465103) = 10077696 * k + 4395310 := by
    unfold C
    simp [show (3359232 * k + 1465103) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4395310) = 5038848 * k + 2197655 := by
    unfold C
    simp [show (10077696 * k + 4395310) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2197655) = 15116544 * k + 6592966 := by
    unfold C
    simp [show (5038848 * k + 2197655) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6592966) = 7558272 * k + 3296483 := by
    unfold C
    simp [show (15116544 * k + 6592966) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3296483) = 22674816 * k + 9889450 := by
    unfold C
    simp [show (7558272 * k + 3296483) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 9889450) = 11337408 * k + 4944725 := by
    unfold C
    simp [show (22674816 * k + 9889450) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4944725) = 34012224 * k + 14834176 := by
    unfold C
    simp [show (11337408 * k + 4944725) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 14834176) = 17006112 * k + 7417088 := by
    unfold C
    simp [show (34012224 * k + 14834176) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 7417088) = 8503056 * k + 3708544 := by
    unfold C
    simp [show (17006112 * k + 7417088) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3708544) = 4251528 * k + 1854272 := by
    unfold C
    simp [show (8503056 * k + 3708544) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1854272) = 2125764 * k + 927136 := by
    unfold C
    simp [show (4251528 * k + 1854272) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 927136) = 1062882 * k + 463568 := by
    unfold C
    simp [show (2125764 * k + 927136) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 463568) = 531441 * k + 231784 := by
    unfold C
    simp [show (1062882 * k + 463568) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 457327) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 457327)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_457759 : ∀ k : Nat,
    iterate (1048576 * k + 457759) 32 = 531441 * k + 232003 ∧
      531441 * k + 232003 < 1048576 * k + 457759 := by
  intro k
  have h1 : C (1048576 * k + 457759) = 3145728 * k + 1373278 := by
    unfold C
    simp [show (1048576 * k + 457759) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1373278) = 1572864 * k + 686639 := by
    unfold C
    simp [show (3145728 * k + 1373278) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 686639) = 4718592 * k + 2059918 := by
    unfold C
    simp [show (1572864 * k + 686639) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2059918) = 2359296 * k + 1029959 := by
    unfold C
    simp [show (4718592 * k + 2059918) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1029959) = 7077888 * k + 3089878 := by
    unfold C
    simp [show (2359296 * k + 1029959) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3089878) = 3538944 * k + 1544939 := by
    unfold C
    simp [show (7077888 * k + 3089878) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1544939) = 10616832 * k + 4634818 := by
    unfold C
    simp [show (3538944 * k + 1544939) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4634818) = 5308416 * k + 2317409 := by
    unfold C
    simp [show (10616832 * k + 4634818) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2317409) = 15925248 * k + 6952228 := by
    unfold C
    simp [show (5308416 * k + 2317409) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6952228) = 7962624 * k + 3476114 := by
    unfold C
    simp [show (15925248 * k + 6952228) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3476114) = 3981312 * k + 1738057 := by
    unfold C
    simp [show (7962624 * k + 3476114) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1738057) = 11943936 * k + 5214172 := by
    unfold C
    simp [show (3981312 * k + 1738057) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5214172) = 5971968 * k + 2607086 := by
    unfold C
    simp [show (11943936 * k + 5214172) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2607086) = 2985984 * k + 1303543 := by
    unfold C
    simp [show (5971968 * k + 2607086) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1303543) = 8957952 * k + 3910630 := by
    unfold C
    simp [show (2985984 * k + 1303543) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3910630) = 4478976 * k + 1955315 := by
    unfold C
    simp [show (8957952 * k + 3910630) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1955315) = 13436928 * k + 5865946 := by
    unfold C
    simp [show (4478976 * k + 1955315) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5865946) = 6718464 * k + 2932973 := by
    unfold C
    simp [show (13436928 * k + 5865946) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2932973) = 20155392 * k + 8798920 := by
    unfold C
    simp [show (6718464 * k + 2932973) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8798920) = 10077696 * k + 4399460 := by
    unfold C
    simp [show (20155392 * k + 8798920) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4399460) = 5038848 * k + 2199730 := by
    unfold C
    simp [show (10077696 * k + 4399460) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2199730) = 2519424 * k + 1099865 := by
    unfold C
    simp [show (5038848 * k + 2199730) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1099865) = 7558272 * k + 3299596 := by
    unfold C
    simp [show (2519424 * k + 1099865) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3299596) = 3779136 * k + 1649798 := by
    unfold C
    simp [show (7558272 * k + 3299596) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1649798) = 1889568 * k + 824899 := by
    unfold C
    simp [show (3779136 * k + 1649798) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 824899) = 5668704 * k + 2474698 := by
    unfold C
    simp [show (1889568 * k + 824899) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2474698) = 2834352 * k + 1237349 := by
    unfold C
    simp [show (5668704 * k + 2474698) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1237349) = 8503056 * k + 3712048 := by
    unfold C
    simp [show (2834352 * k + 1237349) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3712048) = 4251528 * k + 1856024 := by
    unfold C
    simp [show (8503056 * k + 3712048) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1856024) = 2125764 * k + 928012 := by
    unfold C
    simp [show (4251528 * k + 1856024) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 928012) = 1062882 * k + 464006 := by
    unfold C
    simp [show (2125764 * k + 928012) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 464006) = 531441 * k + 232003 := by
    unfold C
    simp [show (1062882 * k + 464006) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 457759) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 457759)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_457895 : ∀ k : Nat,
    iterate (1048576 * k + 457895) 32 = 531441 * k + 232072 ∧
      531441 * k + 232072 < 1048576 * k + 457895 := by
  intro k
  have h1 : C (1048576 * k + 457895) = 3145728 * k + 1373686 := by
    unfold C
    simp [show (1048576 * k + 457895) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1373686) = 1572864 * k + 686843 := by
    unfold C
    simp [show (3145728 * k + 1373686) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 686843) = 4718592 * k + 2060530 := by
    unfold C
    simp [show (1572864 * k + 686843) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2060530) = 2359296 * k + 1030265 := by
    unfold C
    simp [show (4718592 * k + 2060530) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1030265) = 7077888 * k + 3090796 := by
    unfold C
    simp [show (2359296 * k + 1030265) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3090796) = 3538944 * k + 1545398 := by
    unfold C
    simp [show (7077888 * k + 3090796) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1545398) = 1769472 * k + 772699 := by
    unfold C
    simp [show (3538944 * k + 1545398) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 772699) = 5308416 * k + 2318098 := by
    unfold C
    simp [show (1769472 * k + 772699) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2318098) = 2654208 * k + 1159049 := by
    unfold C
    simp [show (5308416 * k + 2318098) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1159049) = 7962624 * k + 3477148 := by
    unfold C
    simp [show (2654208 * k + 1159049) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3477148) = 3981312 * k + 1738574 := by
    unfold C
    simp [show (7962624 * k + 3477148) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1738574) = 1990656 * k + 869287 := by
    unfold C
    simp [show (3981312 * k + 1738574) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 869287) = 5971968 * k + 2607862 := by
    unfold C
    simp [show (1990656 * k + 869287) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2607862) = 2985984 * k + 1303931 := by
    unfold C
    simp [show (5971968 * k + 2607862) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1303931) = 8957952 * k + 3911794 := by
    unfold C
    simp [show (2985984 * k + 1303931) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3911794) = 4478976 * k + 1955897 := by
    unfold C
    simp [show (8957952 * k + 3911794) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1955897) = 13436928 * k + 5867692 := by
    unfold C
    simp [show (4478976 * k + 1955897) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5867692) = 6718464 * k + 2933846 := by
    unfold C
    simp [show (13436928 * k + 5867692) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2933846) = 3359232 * k + 1466923 := by
    unfold C
    simp [show (6718464 * k + 2933846) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1466923) = 10077696 * k + 4400770 := by
    unfold C
    simp [show (3359232 * k + 1466923) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4400770) = 5038848 * k + 2200385 := by
    unfold C
    simp [show (10077696 * k + 4400770) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2200385) = 15116544 * k + 6601156 := by
    unfold C
    simp [show (5038848 * k + 2200385) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6601156) = 7558272 * k + 3300578 := by
    unfold C
    simp [show (15116544 * k + 6601156) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3300578) = 3779136 * k + 1650289 := by
    unfold C
    simp [show (7558272 * k + 3300578) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1650289) = 11337408 * k + 4950868 := by
    unfold C
    simp [show (3779136 * k + 1650289) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4950868) = 5668704 * k + 2475434 := by
    unfold C
    simp [show (11337408 * k + 4950868) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2475434) = 2834352 * k + 1237717 := by
    unfold C
    simp [show (5668704 * k + 2475434) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1237717) = 8503056 * k + 3713152 := by
    unfold C
    simp [show (2834352 * k + 1237717) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3713152) = 4251528 * k + 1856576 := by
    unfold C
    simp [show (8503056 * k + 3713152) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1856576) = 2125764 * k + 928288 := by
    unfold C
    simp [show (4251528 * k + 1856576) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 928288) = 1062882 * k + 464144 := by
    unfold C
    simp [show (2125764 * k + 928288) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 464144) = 531441 * k + 232072 := by
    unfold C
    simp [show (1062882 * k + 464144) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 457895) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 457895)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_457919 : ∀ k : Nat,
    iterate (1048576 * k + 457919) 32 = 531441 * k + 232084 ∧
      531441 * k + 232084 < 1048576 * k + 457919 := by
  intro k
  have h1 : C (1048576 * k + 457919) = 3145728 * k + 1373758 := by
    unfold C
    simp [show (1048576 * k + 457919) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1373758) = 1572864 * k + 686879 := by
    unfold C
    simp [show (3145728 * k + 1373758) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 686879) = 4718592 * k + 2060638 := by
    unfold C
    simp [show (1572864 * k + 686879) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2060638) = 2359296 * k + 1030319 := by
    unfold C
    simp [show (4718592 * k + 2060638) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1030319) = 7077888 * k + 3090958 := by
    unfold C
    simp [show (2359296 * k + 1030319) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3090958) = 3538944 * k + 1545479 := by
    unfold C
    simp [show (7077888 * k + 3090958) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1545479) = 10616832 * k + 4636438 := by
    unfold C
    simp [show (3538944 * k + 1545479) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4636438) = 5308416 * k + 2318219 := by
    unfold C
    simp [show (10616832 * k + 4636438) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2318219) = 15925248 * k + 6954658 := by
    unfold C
    simp [show (5308416 * k + 2318219) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6954658) = 7962624 * k + 3477329 := by
    unfold C
    simp [show (15925248 * k + 6954658) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3477329) = 23887872 * k + 10431988 := by
    unfold C
    simp [show (7962624 * k + 3477329) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 10431988) = 11943936 * k + 5215994 := by
    unfold C
    simp [show (23887872 * k + 10431988) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5215994) = 5971968 * k + 2607997 := by
    unfold C
    simp [show (11943936 * k + 5215994) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2607997) = 17915904 * k + 7823992 := by
    unfold C
    simp [show (5971968 * k + 2607997) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7823992) = 8957952 * k + 3911996 := by
    unfold C
    simp [show (17915904 * k + 7823992) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3911996) = 4478976 * k + 1955998 := by
    unfold C
    simp [show (8957952 * k + 3911996) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1955998) = 2239488 * k + 977999 := by
    unfold C
    simp [show (4478976 * k + 1955998) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 977999) = 6718464 * k + 2933998 := by
    unfold C
    simp [show (2239488 * k + 977999) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2933998) = 3359232 * k + 1466999 := by
    unfold C
    simp [show (6718464 * k + 2933998) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1466999) = 10077696 * k + 4400998 := by
    unfold C
    simp [show (3359232 * k + 1466999) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4400998) = 5038848 * k + 2200499 := by
    unfold C
    simp [show (10077696 * k + 4400998) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2200499) = 15116544 * k + 6601498 := by
    unfold C
    simp [show (5038848 * k + 2200499) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6601498) = 7558272 * k + 3300749 := by
    unfold C
    simp [show (15116544 * k + 6601498) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3300749) = 22674816 * k + 9902248 := by
    unfold C
    simp [show (7558272 * k + 3300749) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 9902248) = 11337408 * k + 4951124 := by
    unfold C
    simp [show (22674816 * k + 9902248) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4951124) = 5668704 * k + 2475562 := by
    unfold C
    simp [show (11337408 * k + 4951124) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2475562) = 2834352 * k + 1237781 := by
    unfold C
    simp [show (5668704 * k + 2475562) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1237781) = 8503056 * k + 3713344 := by
    unfold C
    simp [show (2834352 * k + 1237781) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3713344) = 4251528 * k + 1856672 := by
    unfold C
    simp [show (8503056 * k + 3713344) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1856672) = 2125764 * k + 928336 := by
    unfold C
    simp [show (4251528 * k + 1856672) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 928336) = 1062882 * k + 464168 := by
    unfold C
    simp [show (2125764 * k + 928336) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 464168) = 531441 * k + 232084 := by
    unfold C
    simp [show (1062882 * k + 464168) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 457919) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 457919)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_458779 : ∀ k : Nat,
    iterate (1048576 * k + 458779) 32 = 531441 * k + 232520 ∧
      531441 * k + 232520 < 1048576 * k + 458779 := by
  intro k
  have h1 : C (1048576 * k + 458779) = 3145728 * k + 1376338 := by
    unfold C
    simp [show (1048576 * k + 458779) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1376338) = 1572864 * k + 688169 := by
    unfold C
    simp [show (3145728 * k + 1376338) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 688169) = 4718592 * k + 2064508 := by
    unfold C
    simp [show (1572864 * k + 688169) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2064508) = 2359296 * k + 1032254 := by
    unfold C
    simp [show (4718592 * k + 2064508) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1032254) = 1179648 * k + 516127 := by
    unfold C
    simp [show (2359296 * k + 1032254) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 516127) = 3538944 * k + 1548382 := by
    unfold C
    simp [show (1179648 * k + 516127) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1548382) = 1769472 * k + 774191 := by
    unfold C
    simp [show (3538944 * k + 1548382) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 774191) = 5308416 * k + 2322574 := by
    unfold C
    simp [show (1769472 * k + 774191) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2322574) = 2654208 * k + 1161287 := by
    unfold C
    simp [show (5308416 * k + 2322574) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1161287) = 7962624 * k + 3483862 := by
    unfold C
    simp [show (2654208 * k + 1161287) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3483862) = 3981312 * k + 1741931 := by
    unfold C
    simp [show (7962624 * k + 3483862) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1741931) = 11943936 * k + 5225794 := by
    unfold C
    simp [show (3981312 * k + 1741931) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5225794) = 5971968 * k + 2612897 := by
    unfold C
    simp [show (11943936 * k + 5225794) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2612897) = 17915904 * k + 7838692 := by
    unfold C
    simp [show (5971968 * k + 2612897) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7838692) = 8957952 * k + 3919346 := by
    unfold C
    simp [show (17915904 * k + 7838692) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3919346) = 4478976 * k + 1959673 := by
    unfold C
    simp [show (8957952 * k + 3919346) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1959673) = 13436928 * k + 5879020 := by
    unfold C
    simp [show (4478976 * k + 1959673) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5879020) = 6718464 * k + 2939510 := by
    unfold C
    simp [show (13436928 * k + 5879020) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2939510) = 3359232 * k + 1469755 := by
    unfold C
    simp [show (6718464 * k + 2939510) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1469755) = 10077696 * k + 4409266 := by
    unfold C
    simp [show (3359232 * k + 1469755) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4409266) = 5038848 * k + 2204633 := by
    unfold C
    simp [show (10077696 * k + 4409266) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2204633) = 15116544 * k + 6613900 := by
    unfold C
    simp [show (5038848 * k + 2204633) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6613900) = 7558272 * k + 3306950 := by
    unfold C
    simp [show (15116544 * k + 6613900) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3306950) = 3779136 * k + 1653475 := by
    unfold C
    simp [show (7558272 * k + 3306950) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1653475) = 11337408 * k + 4960426 := by
    unfold C
    simp [show (3779136 * k + 1653475) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4960426) = 5668704 * k + 2480213 := by
    unfold C
    simp [show (11337408 * k + 4960426) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2480213) = 17006112 * k + 7440640 := by
    unfold C
    simp [show (5668704 * k + 2480213) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7440640) = 8503056 * k + 3720320 := by
    unfold C
    simp [show (17006112 * k + 7440640) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3720320) = 4251528 * k + 1860160 := by
    unfold C
    simp [show (8503056 * k + 3720320) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1860160) = 2125764 * k + 930080 := by
    unfold C
    simp [show (4251528 * k + 1860160) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 930080) = 1062882 * k + 465040 := by
    unfold C
    simp [show (2125764 * k + 930080) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 465040) = 531441 * k + 232520 := by
    unfold C
    simp [show (1062882 * k + 465040) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 458779) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 458779)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_459247 : ∀ k : Nat,
    iterate (1048576 * k + 459247) 32 = 531441 * k + 232757 ∧
      531441 * k + 232757 < 1048576 * k + 459247 := by
  intro k
  have h1 : C (1048576 * k + 459247) = 3145728 * k + 1377742 := by
    unfold C
    simp [show (1048576 * k + 459247) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1377742) = 1572864 * k + 688871 := by
    unfold C
    simp [show (3145728 * k + 1377742) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 688871) = 4718592 * k + 2066614 := by
    unfold C
    simp [show (1572864 * k + 688871) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2066614) = 2359296 * k + 1033307 := by
    unfold C
    simp [show (4718592 * k + 2066614) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1033307) = 7077888 * k + 3099922 := by
    unfold C
    simp [show (2359296 * k + 1033307) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3099922) = 3538944 * k + 1549961 := by
    unfold C
    simp [show (7077888 * k + 3099922) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1549961) = 10616832 * k + 4649884 := by
    unfold C
    simp [show (3538944 * k + 1549961) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4649884) = 5308416 * k + 2324942 := by
    unfold C
    simp [show (10616832 * k + 4649884) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2324942) = 2654208 * k + 1162471 := by
    unfold C
    simp [show (5308416 * k + 2324942) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1162471) = 7962624 * k + 3487414 := by
    unfold C
    simp [show (2654208 * k + 1162471) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3487414) = 3981312 * k + 1743707 := by
    unfold C
    simp [show (7962624 * k + 3487414) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1743707) = 11943936 * k + 5231122 := by
    unfold C
    simp [show (3981312 * k + 1743707) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5231122) = 5971968 * k + 2615561 := by
    unfold C
    simp [show (11943936 * k + 5231122) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2615561) = 17915904 * k + 7846684 := by
    unfold C
    simp [show (5971968 * k + 2615561) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7846684) = 8957952 * k + 3923342 := by
    unfold C
    simp [show (17915904 * k + 7846684) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3923342) = 4478976 * k + 1961671 := by
    unfold C
    simp [show (8957952 * k + 3923342) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1961671) = 13436928 * k + 5885014 := by
    unfold C
    simp [show (4478976 * k + 1961671) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5885014) = 6718464 * k + 2942507 := by
    unfold C
    simp [show (13436928 * k + 5885014) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2942507) = 20155392 * k + 8827522 := by
    unfold C
    simp [show (6718464 * k + 2942507) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8827522) = 10077696 * k + 4413761 := by
    unfold C
    simp [show (20155392 * k + 8827522) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4413761) = 30233088 * k + 13241284 := by
    unfold C
    simp [show (10077696 * k + 4413761) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 13241284) = 15116544 * k + 6620642 := by
    unfold C
    simp [show (30233088 * k + 13241284) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6620642) = 7558272 * k + 3310321 := by
    unfold C
    simp [show (15116544 * k + 6620642) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3310321) = 22674816 * k + 9930964 := by
    unfold C
    simp [show (7558272 * k + 3310321) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 9930964) = 11337408 * k + 4965482 := by
    unfold C
    simp [show (22674816 * k + 9930964) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4965482) = 5668704 * k + 2482741 := by
    unfold C
    simp [show (11337408 * k + 4965482) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2482741) = 17006112 * k + 7448224 := by
    unfold C
    simp [show (5668704 * k + 2482741) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7448224) = 8503056 * k + 3724112 := by
    unfold C
    simp [show (17006112 * k + 7448224) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3724112) = 4251528 * k + 1862056 := by
    unfold C
    simp [show (8503056 * k + 3724112) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1862056) = 2125764 * k + 931028 := by
    unfold C
    simp [show (4251528 * k + 1862056) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 931028) = 1062882 * k + 465514 := by
    unfold C
    simp [show (2125764 * k + 931028) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 465514) = 531441 * k + 232757 := by
    unfold C
    simp [show (1062882 * k + 465514) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 459247) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 459247)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_459263 : ∀ k : Nat,
    iterate (1048576 * k + 459263) 32 = 531441 * k + 232765 ∧
      531441 * k + 232765 < 1048576 * k + 459263 := by
  intro k
  have h1 : C (1048576 * k + 459263) = 3145728 * k + 1377790 := by
    unfold C
    simp [show (1048576 * k + 459263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1377790) = 1572864 * k + 688895 := by
    unfold C
    simp [show (3145728 * k + 1377790) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 688895) = 4718592 * k + 2066686 := by
    unfold C
    simp [show (1572864 * k + 688895) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2066686) = 2359296 * k + 1033343 := by
    unfold C
    simp [show (4718592 * k + 2066686) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1033343) = 7077888 * k + 3100030 := by
    unfold C
    simp [show (2359296 * k + 1033343) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3100030) = 3538944 * k + 1550015 := by
    unfold C
    simp [show (7077888 * k + 3100030) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1550015) = 10616832 * k + 4650046 := by
    unfold C
    simp [show (3538944 * k + 1550015) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4650046) = 5308416 * k + 2325023 := by
    unfold C
    simp [show (10616832 * k + 4650046) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2325023) = 15925248 * k + 6975070 := by
    unfold C
    simp [show (5308416 * k + 2325023) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6975070) = 7962624 * k + 3487535 := by
    unfold C
    simp [show (15925248 * k + 6975070) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3487535) = 23887872 * k + 10462606 := by
    unfold C
    simp [show (7962624 * k + 3487535) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 10462606) = 11943936 * k + 5231303 := by
    unfold C
    simp [show (23887872 * k + 10462606) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5231303) = 35831808 * k + 15693910 := by
    unfold C
    simp [show (11943936 * k + 5231303) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 15693910) = 17915904 * k + 7846955 := by
    unfold C
    simp [show (35831808 * k + 15693910) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 7846955) = 53747712 * k + 23540866 := by
    unfold C
    simp [show (17915904 * k + 7846955) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 23540866) = 26873856 * k + 11770433 := by
    unfold C
    simp [show (53747712 * k + 23540866) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 11770433) = 80621568 * k + 35311300 := by
    unfold C
    simp [show (26873856 * k + 11770433) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 35311300) = 40310784 * k + 17655650 := by
    unfold C
    simp [show (80621568 * k + 35311300) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 17655650) = 20155392 * k + 8827825 := by
    unfold C
    simp [show (40310784 * k + 17655650) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 8827825) = 60466176 * k + 26483476 := by
    unfold C
    simp [show (20155392 * k + 8827825) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 26483476) = 30233088 * k + 13241738 := by
    unfold C
    simp [show (60466176 * k + 26483476) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 13241738) = 15116544 * k + 6620869 := by
    unfold C
    simp [show (30233088 * k + 13241738) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6620869) = 45349632 * k + 19862608 := by
    unfold C
    simp [show (15116544 * k + 6620869) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 19862608) = 22674816 * k + 9931304 := by
    unfold C
    simp [show (45349632 * k + 19862608) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 9931304) = 11337408 * k + 4965652 := by
    unfold C
    simp [show (22674816 * k + 9931304) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4965652) = 5668704 * k + 2482826 := by
    unfold C
    simp [show (11337408 * k + 4965652) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2482826) = 2834352 * k + 1241413 := by
    unfold C
    simp [show (5668704 * k + 2482826) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1241413) = 8503056 * k + 3724240 := by
    unfold C
    simp [show (2834352 * k + 1241413) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3724240) = 4251528 * k + 1862120 := by
    unfold C
    simp [show (8503056 * k + 3724240) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1862120) = 2125764 * k + 931060 := by
    unfold C
    simp [show (4251528 * k + 1862120) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 931060) = 1062882 * k + 465530 := by
    unfold C
    simp [show (2125764 * k + 931060) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 465530) = 531441 * k + 232765 := by
    unfold C
    simp [show (1062882 * k + 465530) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 459263) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 459263)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_459803 : ∀ k : Nat,
    iterate (1048576 * k + 459803) 32 = 531441 * k + 233039 ∧
      531441 * k + 233039 < 1048576 * k + 459803 := by
  intro k
  have h1 : C (1048576 * k + 459803) = 3145728 * k + 1379410 := by
    unfold C
    simp [show (1048576 * k + 459803) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1379410) = 1572864 * k + 689705 := by
    unfold C
    simp [show (3145728 * k + 1379410) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 689705) = 4718592 * k + 2069116 := by
    unfold C
    simp [show (1572864 * k + 689705) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2069116) = 2359296 * k + 1034558 := by
    unfold C
    simp [show (4718592 * k + 2069116) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1034558) = 1179648 * k + 517279 := by
    unfold C
    simp [show (2359296 * k + 1034558) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 517279) = 3538944 * k + 1551838 := by
    unfold C
    simp [show (1179648 * k + 517279) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1551838) = 1769472 * k + 775919 := by
    unfold C
    simp [show (3538944 * k + 1551838) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 775919) = 5308416 * k + 2327758 := by
    unfold C
    simp [show (1769472 * k + 775919) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2327758) = 2654208 * k + 1163879 := by
    unfold C
    simp [show (5308416 * k + 2327758) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1163879) = 7962624 * k + 3491638 := by
    unfold C
    simp [show (2654208 * k + 1163879) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3491638) = 3981312 * k + 1745819 := by
    unfold C
    simp [show (7962624 * k + 3491638) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1745819) = 11943936 * k + 5237458 := by
    unfold C
    simp [show (3981312 * k + 1745819) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5237458) = 5971968 * k + 2618729 := by
    unfold C
    simp [show (11943936 * k + 5237458) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2618729) = 17915904 * k + 7856188 := by
    unfold C
    simp [show (5971968 * k + 2618729) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7856188) = 8957952 * k + 3928094 := by
    unfold C
    simp [show (17915904 * k + 7856188) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3928094) = 4478976 * k + 1964047 := by
    unfold C
    simp [show (8957952 * k + 3928094) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1964047) = 13436928 * k + 5892142 := by
    unfold C
    simp [show (4478976 * k + 1964047) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5892142) = 6718464 * k + 2946071 := by
    unfold C
    simp [show (13436928 * k + 5892142) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2946071) = 20155392 * k + 8838214 := by
    unfold C
    simp [show (6718464 * k + 2946071) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8838214) = 10077696 * k + 4419107 := by
    unfold C
    simp [show (20155392 * k + 8838214) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4419107) = 30233088 * k + 13257322 := by
    unfold C
    simp [show (10077696 * k + 4419107) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 13257322) = 15116544 * k + 6628661 := by
    unfold C
    simp [show (30233088 * k + 13257322) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6628661) = 45349632 * k + 19885984 := by
    unfold C
    simp [show (15116544 * k + 6628661) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 19885984) = 22674816 * k + 9942992 := by
    unfold C
    simp [show (45349632 * k + 19885984) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 9942992) = 11337408 * k + 4971496 := by
    unfold C
    simp [show (22674816 * k + 9942992) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4971496) = 5668704 * k + 2485748 := by
    unfold C
    simp [show (11337408 * k + 4971496) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2485748) = 2834352 * k + 1242874 := by
    unfold C
    simp [show (5668704 * k + 2485748) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1242874) = 1417176 * k + 621437 := by
    unfold C
    simp [show (2834352 * k + 1242874) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 621437) = 4251528 * k + 1864312 := by
    unfold C
    simp [show (1417176 * k + 621437) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1864312) = 2125764 * k + 932156 := by
    unfold C
    simp [show (4251528 * k + 1864312) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 932156) = 1062882 * k + 466078 := by
    unfold C
    simp [show (2125764 * k + 932156) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 466078) = 531441 * k + 233039 := by
    unfold C
    simp [show (1062882 * k + 466078) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 459803) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 459803)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_460519 : ∀ k : Nat,
    iterate (1048576 * k + 460519) 32 = 531441 * k + 233402 ∧
      531441 * k + 233402 < 1048576 * k + 460519 := by
  intro k
  have h1 : C (1048576 * k + 460519) = 3145728 * k + 1381558 := by
    unfold C
    simp [show (1048576 * k + 460519) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1381558) = 1572864 * k + 690779 := by
    unfold C
    simp [show (3145728 * k + 1381558) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 690779) = 4718592 * k + 2072338 := by
    unfold C
    simp [show (1572864 * k + 690779) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2072338) = 2359296 * k + 1036169 := by
    unfold C
    simp [show (4718592 * k + 2072338) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1036169) = 7077888 * k + 3108508 := by
    unfold C
    simp [show (2359296 * k + 1036169) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3108508) = 3538944 * k + 1554254 := by
    unfold C
    simp [show (7077888 * k + 3108508) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1554254) = 1769472 * k + 777127 := by
    unfold C
    simp [show (3538944 * k + 1554254) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 777127) = 5308416 * k + 2331382 := by
    unfold C
    simp [show (1769472 * k + 777127) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2331382) = 2654208 * k + 1165691 := by
    unfold C
    simp [show (5308416 * k + 2331382) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1165691) = 7962624 * k + 3497074 := by
    unfold C
    simp [show (2654208 * k + 1165691) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3497074) = 3981312 * k + 1748537 := by
    unfold C
    simp [show (7962624 * k + 3497074) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1748537) = 11943936 * k + 5245612 := by
    unfold C
    simp [show (3981312 * k + 1748537) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5245612) = 5971968 * k + 2622806 := by
    unfold C
    simp [show (11943936 * k + 5245612) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2622806) = 2985984 * k + 1311403 := by
    unfold C
    simp [show (5971968 * k + 2622806) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1311403) = 8957952 * k + 3934210 := by
    unfold C
    simp [show (2985984 * k + 1311403) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3934210) = 4478976 * k + 1967105 := by
    unfold C
    simp [show (8957952 * k + 3934210) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1967105) = 13436928 * k + 5901316 := by
    unfold C
    simp [show (4478976 * k + 1967105) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5901316) = 6718464 * k + 2950658 := by
    unfold C
    simp [show (13436928 * k + 5901316) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2950658) = 3359232 * k + 1475329 := by
    unfold C
    simp [show (6718464 * k + 2950658) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1475329) = 10077696 * k + 4425988 := by
    unfold C
    simp [show (3359232 * k + 1475329) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4425988) = 5038848 * k + 2212994 := by
    unfold C
    simp [show (10077696 * k + 4425988) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2212994) = 2519424 * k + 1106497 := by
    unfold C
    simp [show (5038848 * k + 2212994) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1106497) = 7558272 * k + 3319492 := by
    unfold C
    simp [show (2519424 * k + 1106497) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3319492) = 3779136 * k + 1659746 := by
    unfold C
    simp [show (7558272 * k + 3319492) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1659746) = 1889568 * k + 829873 := by
    unfold C
    simp [show (3779136 * k + 1659746) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 829873) = 5668704 * k + 2489620 := by
    unfold C
    simp [show (1889568 * k + 829873) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2489620) = 2834352 * k + 1244810 := by
    unfold C
    simp [show (5668704 * k + 2489620) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1244810) = 1417176 * k + 622405 := by
    unfold C
    simp [show (2834352 * k + 1244810) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 622405) = 4251528 * k + 1867216 := by
    unfold C
    simp [show (1417176 * k + 622405) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1867216) = 2125764 * k + 933608 := by
    unfold C
    simp [show (4251528 * k + 1867216) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 933608) = 1062882 * k + 466804 := by
    unfold C
    simp [show (2125764 * k + 933608) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 466804) = 531441 * k + 233402 := by
    unfold C
    simp [show (1062882 * k + 466804) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 460519) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 460519)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_460635 : ∀ k : Nat,
    iterate (1048576 * k + 460635) 32 = 531441 * k + 233461 ∧
      531441 * k + 233461 < 1048576 * k + 460635 := by
  intro k
  have h1 : C (1048576 * k + 460635) = 3145728 * k + 1381906 := by
    unfold C
    simp [show (1048576 * k + 460635) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1381906) = 1572864 * k + 690953 := by
    unfold C
    simp [show (3145728 * k + 1381906) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 690953) = 4718592 * k + 2072860 := by
    unfold C
    simp [show (1572864 * k + 690953) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2072860) = 2359296 * k + 1036430 := by
    unfold C
    simp [show (4718592 * k + 2072860) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1036430) = 1179648 * k + 518215 := by
    unfold C
    simp [show (2359296 * k + 1036430) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 518215) = 3538944 * k + 1554646 := by
    unfold C
    simp [show (1179648 * k + 518215) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1554646) = 1769472 * k + 777323 := by
    unfold C
    simp [show (3538944 * k + 1554646) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 777323) = 5308416 * k + 2331970 := by
    unfold C
    simp [show (1769472 * k + 777323) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2331970) = 2654208 * k + 1165985 := by
    unfold C
    simp [show (5308416 * k + 2331970) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1165985) = 7962624 * k + 3497956 := by
    unfold C
    simp [show (2654208 * k + 1165985) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3497956) = 3981312 * k + 1748978 := by
    unfold C
    simp [show (7962624 * k + 3497956) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1748978) = 1990656 * k + 874489 := by
    unfold C
    simp [show (3981312 * k + 1748978) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 874489) = 5971968 * k + 2623468 := by
    unfold C
    simp [show (1990656 * k + 874489) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2623468) = 2985984 * k + 1311734 := by
    unfold C
    simp [show (5971968 * k + 2623468) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1311734) = 1492992 * k + 655867 := by
    unfold C
    simp [show (2985984 * k + 1311734) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 655867) = 4478976 * k + 1967602 := by
    unfold C
    simp [show (1492992 * k + 655867) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1967602) = 2239488 * k + 983801 := by
    unfold C
    simp [show (4478976 * k + 1967602) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 983801) = 6718464 * k + 2951404 := by
    unfold C
    simp [show (2239488 * k + 983801) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2951404) = 3359232 * k + 1475702 := by
    unfold C
    simp [show (6718464 * k + 2951404) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1475702) = 1679616 * k + 737851 := by
    unfold C
    simp [show (3359232 * k + 1475702) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 737851) = 5038848 * k + 2213554 := by
    unfold C
    simp [show (1679616 * k + 737851) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2213554) = 2519424 * k + 1106777 := by
    unfold C
    simp [show (5038848 * k + 2213554) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1106777) = 7558272 * k + 3320332 := by
    unfold C
    simp [show (2519424 * k + 1106777) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3320332) = 3779136 * k + 1660166 := by
    unfold C
    simp [show (7558272 * k + 3320332) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1660166) = 1889568 * k + 830083 := by
    unfold C
    simp [show (3779136 * k + 1660166) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 830083) = 5668704 * k + 2490250 := by
    unfold C
    simp [show (1889568 * k + 830083) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2490250) = 2834352 * k + 1245125 := by
    unfold C
    simp [show (5668704 * k + 2490250) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1245125) = 8503056 * k + 3735376 := by
    unfold C
    simp [show (2834352 * k + 1245125) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3735376) = 4251528 * k + 1867688 := by
    unfold C
    simp [show (8503056 * k + 3735376) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1867688) = 2125764 * k + 933844 := by
    unfold C
    simp [show (4251528 * k + 1867688) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 933844) = 1062882 * k + 466922 := by
    unfold C
    simp [show (2125764 * k + 933844) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 466922) = 531441 * k + 233461 := by
    unfold C
    simp [show (1062882 * k + 466922) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 460635) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 460635)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_460795 : ∀ k : Nat,
    iterate (1048576 * k + 460795) 32 = 531441 * k + 233542 ∧
      531441 * k + 233542 < 1048576 * k + 460795 := by
  intro k
  have h1 : C (1048576 * k + 460795) = 3145728 * k + 1382386 := by
    unfold C
    simp [show (1048576 * k + 460795) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1382386) = 1572864 * k + 691193 := by
    unfold C
    simp [show (3145728 * k + 1382386) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 691193) = 4718592 * k + 2073580 := by
    unfold C
    simp [show (1572864 * k + 691193) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2073580) = 2359296 * k + 1036790 := by
    unfold C
    simp [show (4718592 * k + 2073580) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1036790) = 1179648 * k + 518395 := by
    unfold C
    simp [show (2359296 * k + 1036790) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 518395) = 3538944 * k + 1555186 := by
    unfold C
    simp [show (1179648 * k + 518395) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1555186) = 1769472 * k + 777593 := by
    unfold C
    simp [show (3538944 * k + 1555186) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 777593) = 5308416 * k + 2332780 := by
    unfold C
    simp [show (1769472 * k + 777593) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2332780) = 2654208 * k + 1166390 := by
    unfold C
    simp [show (5308416 * k + 2332780) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1166390) = 1327104 * k + 583195 := by
    unfold C
    simp [show (2654208 * k + 1166390) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 583195) = 3981312 * k + 1749586 := by
    unfold C
    simp [show (1327104 * k + 583195) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1749586) = 1990656 * k + 874793 := by
    unfold C
    simp [show (3981312 * k + 1749586) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 874793) = 5971968 * k + 2624380 := by
    unfold C
    simp [show (1990656 * k + 874793) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2624380) = 2985984 * k + 1312190 := by
    unfold C
    simp [show (5971968 * k + 2624380) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1312190) = 1492992 * k + 656095 := by
    unfold C
    simp [show (2985984 * k + 1312190) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 656095) = 4478976 * k + 1968286 := by
    unfold C
    simp [show (1492992 * k + 656095) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1968286) = 2239488 * k + 984143 := by
    unfold C
    simp [show (4478976 * k + 1968286) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 984143) = 6718464 * k + 2952430 := by
    unfold C
    simp [show (2239488 * k + 984143) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2952430) = 3359232 * k + 1476215 := by
    unfold C
    simp [show (6718464 * k + 2952430) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1476215) = 10077696 * k + 4428646 := by
    unfold C
    simp [show (3359232 * k + 1476215) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4428646) = 5038848 * k + 2214323 := by
    unfold C
    simp [show (10077696 * k + 4428646) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2214323) = 15116544 * k + 6642970 := by
    unfold C
    simp [show (5038848 * k + 2214323) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6642970) = 7558272 * k + 3321485 := by
    unfold C
    simp [show (15116544 * k + 6642970) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3321485) = 22674816 * k + 9964456 := by
    unfold C
    simp [show (7558272 * k + 3321485) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 9964456) = 11337408 * k + 4982228 := by
    unfold C
    simp [show (22674816 * k + 9964456) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4982228) = 5668704 * k + 2491114 := by
    unfold C
    simp [show (11337408 * k + 4982228) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2491114) = 2834352 * k + 1245557 := by
    unfold C
    simp [show (5668704 * k + 2491114) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1245557) = 8503056 * k + 3736672 := by
    unfold C
    simp [show (2834352 * k + 1245557) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3736672) = 4251528 * k + 1868336 := by
    unfold C
    simp [show (8503056 * k + 3736672) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1868336) = 2125764 * k + 934168 := by
    unfold C
    simp [show (4251528 * k + 1868336) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 934168) = 1062882 * k + 467084 := by
    unfold C
    simp [show (2125764 * k + 934168) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 467084) = 531441 * k + 233542 := by
    unfold C
    simp [show (1062882 * k + 467084) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 460795) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 460795)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_461127 : ∀ k : Nat,
    iterate (1048576 * k + 461127) 32 = 531441 * k + 233710 ∧
      531441 * k + 233710 < 1048576 * k + 461127 := by
  intro k
  have h1 : C (1048576 * k + 461127) = 3145728 * k + 1383382 := by
    unfold C
    simp [show (1048576 * k + 461127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1383382) = 1572864 * k + 691691 := by
    unfold C
    simp [show (3145728 * k + 1383382) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 691691) = 4718592 * k + 2075074 := by
    unfold C
    simp [show (1572864 * k + 691691) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2075074) = 2359296 * k + 1037537 := by
    unfold C
    simp [show (4718592 * k + 2075074) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1037537) = 7077888 * k + 3112612 := by
    unfold C
    simp [show (2359296 * k + 1037537) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3112612) = 3538944 * k + 1556306 := by
    unfold C
    simp [show (7077888 * k + 3112612) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1556306) = 1769472 * k + 778153 := by
    unfold C
    simp [show (3538944 * k + 1556306) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 778153) = 5308416 * k + 2334460 := by
    unfold C
    simp [show (1769472 * k + 778153) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2334460) = 2654208 * k + 1167230 := by
    unfold C
    simp [show (5308416 * k + 2334460) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1167230) = 1327104 * k + 583615 := by
    unfold C
    simp [show (2654208 * k + 1167230) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 583615) = 3981312 * k + 1750846 := by
    unfold C
    simp [show (1327104 * k + 583615) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1750846) = 1990656 * k + 875423 := by
    unfold C
    simp [show (3981312 * k + 1750846) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 875423) = 5971968 * k + 2626270 := by
    unfold C
    simp [show (1990656 * k + 875423) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2626270) = 2985984 * k + 1313135 := by
    unfold C
    simp [show (5971968 * k + 2626270) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1313135) = 8957952 * k + 3939406 := by
    unfold C
    simp [show (2985984 * k + 1313135) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3939406) = 4478976 * k + 1969703 := by
    unfold C
    simp [show (8957952 * k + 3939406) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1969703) = 13436928 * k + 5909110 := by
    unfold C
    simp [show (4478976 * k + 1969703) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5909110) = 6718464 * k + 2954555 := by
    unfold C
    simp [show (13436928 * k + 5909110) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2954555) = 20155392 * k + 8863666 := by
    unfold C
    simp [show (6718464 * k + 2954555) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8863666) = 10077696 * k + 4431833 := by
    unfold C
    simp [show (20155392 * k + 8863666) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4431833) = 30233088 * k + 13295500 := by
    unfold C
    simp [show (10077696 * k + 4431833) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 13295500) = 15116544 * k + 6647750 := by
    unfold C
    simp [show (30233088 * k + 13295500) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6647750) = 7558272 * k + 3323875 := by
    unfold C
    simp [show (15116544 * k + 6647750) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3323875) = 22674816 * k + 9971626 := by
    unfold C
    simp [show (7558272 * k + 3323875) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 9971626) = 11337408 * k + 4985813 := by
    unfold C
    simp [show (22674816 * k + 9971626) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4985813) = 34012224 * k + 14957440 := by
    unfold C
    simp [show (11337408 * k + 4985813) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 14957440) = 17006112 * k + 7478720 := by
    unfold C
    simp [show (34012224 * k + 14957440) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 7478720) = 8503056 * k + 3739360 := by
    unfold C
    simp [show (17006112 * k + 7478720) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3739360) = 4251528 * k + 1869680 := by
    unfold C
    simp [show (8503056 * k + 3739360) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1869680) = 2125764 * k + 934840 := by
    unfold C
    simp [show (4251528 * k + 1869680) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 934840) = 1062882 * k + 467420 := by
    unfold C
    simp [show (2125764 * k + 934840) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 467420) = 531441 * k + 233710 := by
    unfold C
    simp [show (1062882 * k + 467420) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 461127) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 461127)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_461567 : ∀ k : Nat,
    iterate (1048576 * k + 461567) 32 = 531441 * k + 233933 ∧
      531441 * k + 233933 < 1048576 * k + 461567 := by
  intro k
  have h1 : C (1048576 * k + 461567) = 3145728 * k + 1384702 := by
    unfold C
    simp [show (1048576 * k + 461567) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1384702) = 1572864 * k + 692351 := by
    unfold C
    simp [show (3145728 * k + 1384702) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 692351) = 4718592 * k + 2077054 := by
    unfold C
    simp [show (1572864 * k + 692351) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2077054) = 2359296 * k + 1038527 := by
    unfold C
    simp [show (4718592 * k + 2077054) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1038527) = 7077888 * k + 3115582 := by
    unfold C
    simp [show (2359296 * k + 1038527) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3115582) = 3538944 * k + 1557791 := by
    unfold C
    simp [show (7077888 * k + 3115582) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1557791) = 10616832 * k + 4673374 := by
    unfold C
    simp [show (3538944 * k + 1557791) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4673374) = 5308416 * k + 2336687 := by
    unfold C
    simp [show (10616832 * k + 4673374) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2336687) = 15925248 * k + 7010062 := by
    unfold C
    simp [show (5308416 * k + 2336687) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7010062) = 7962624 * k + 3505031 := by
    unfold C
    simp [show (15925248 * k + 7010062) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3505031) = 23887872 * k + 10515094 := by
    unfold C
    simp [show (7962624 * k + 3505031) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 10515094) = 11943936 * k + 5257547 := by
    unfold C
    simp [show (23887872 * k + 10515094) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5257547) = 35831808 * k + 15772642 := by
    unfold C
    simp [show (11943936 * k + 5257547) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 15772642) = 17915904 * k + 7886321 := by
    unfold C
    simp [show (35831808 * k + 15772642) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 7886321) = 53747712 * k + 23658964 := by
    unfold C
    simp [show (17915904 * k + 7886321) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 23658964) = 26873856 * k + 11829482 := by
    unfold C
    simp [show (53747712 * k + 23658964) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 11829482) = 13436928 * k + 5914741 := by
    unfold C
    simp [show (26873856 * k + 11829482) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5914741) = 40310784 * k + 17744224 := by
    unfold C
    simp [show (13436928 * k + 5914741) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 17744224) = 20155392 * k + 8872112 := by
    unfold C
    simp [show (40310784 * k + 17744224) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 8872112) = 10077696 * k + 4436056 := by
    unfold C
    simp [show (20155392 * k + 8872112) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4436056) = 5038848 * k + 2218028 := by
    unfold C
    simp [show (10077696 * k + 4436056) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2218028) = 2519424 * k + 1109014 := by
    unfold C
    simp [show (5038848 * k + 2218028) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1109014) = 1259712 * k + 554507 := by
    unfold C
    simp [show (2519424 * k + 1109014) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 554507) = 3779136 * k + 1663522 := by
    unfold C
    simp [show (1259712 * k + 554507) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1663522) = 1889568 * k + 831761 := by
    unfold C
    simp [show (3779136 * k + 1663522) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 831761) = 5668704 * k + 2495284 := by
    unfold C
    simp [show (1889568 * k + 831761) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2495284) = 2834352 * k + 1247642 := by
    unfold C
    simp [show (5668704 * k + 2495284) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1247642) = 1417176 * k + 623821 := by
    unfold C
    simp [show (2834352 * k + 1247642) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 623821) = 4251528 * k + 1871464 := by
    unfold C
    simp [show (1417176 * k + 623821) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1871464) = 2125764 * k + 935732 := by
    unfold C
    simp [show (4251528 * k + 1871464) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 935732) = 1062882 * k + 467866 := by
    unfold C
    simp [show (2125764 * k + 935732) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 467866) = 531441 * k + 233933 := by
    unfold C
    simp [show (1062882 * k + 467866) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 461567) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 461567)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_461851 : ∀ k : Nat,
    iterate (1048576 * k + 461851) 32 = 531441 * k + 234077 ∧
      531441 * k + 234077 < 1048576 * k + 461851 := by
  intro k
  have h1 : C (1048576 * k + 461851) = 3145728 * k + 1385554 := by
    unfold C
    simp [show (1048576 * k + 461851) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1385554) = 1572864 * k + 692777 := by
    unfold C
    simp [show (3145728 * k + 1385554) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 692777) = 4718592 * k + 2078332 := by
    unfold C
    simp [show (1572864 * k + 692777) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2078332) = 2359296 * k + 1039166 := by
    unfold C
    simp [show (4718592 * k + 2078332) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1039166) = 1179648 * k + 519583 := by
    unfold C
    simp [show (2359296 * k + 1039166) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 519583) = 3538944 * k + 1558750 := by
    unfold C
    simp [show (1179648 * k + 519583) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1558750) = 1769472 * k + 779375 := by
    unfold C
    simp [show (3538944 * k + 1558750) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 779375) = 5308416 * k + 2338126 := by
    unfold C
    simp [show (1769472 * k + 779375) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2338126) = 2654208 * k + 1169063 := by
    unfold C
    simp [show (5308416 * k + 2338126) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1169063) = 7962624 * k + 3507190 := by
    unfold C
    simp [show (2654208 * k + 1169063) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3507190) = 3981312 * k + 1753595 := by
    unfold C
    simp [show (7962624 * k + 3507190) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1753595) = 11943936 * k + 5260786 := by
    unfold C
    simp [show (3981312 * k + 1753595) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5260786) = 5971968 * k + 2630393 := by
    unfold C
    simp [show (11943936 * k + 5260786) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2630393) = 17915904 * k + 7891180 := by
    unfold C
    simp [show (5971968 * k + 2630393) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7891180) = 8957952 * k + 3945590 := by
    unfold C
    simp [show (17915904 * k + 7891180) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3945590) = 4478976 * k + 1972795 := by
    unfold C
    simp [show (8957952 * k + 3945590) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1972795) = 13436928 * k + 5918386 := by
    unfold C
    simp [show (4478976 * k + 1972795) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5918386) = 6718464 * k + 2959193 := by
    unfold C
    simp [show (13436928 * k + 5918386) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2959193) = 20155392 * k + 8877580 := by
    unfold C
    simp [show (6718464 * k + 2959193) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8877580) = 10077696 * k + 4438790 := by
    unfold C
    simp [show (20155392 * k + 8877580) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4438790) = 5038848 * k + 2219395 := by
    unfold C
    simp [show (10077696 * k + 4438790) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2219395) = 15116544 * k + 6658186 := by
    unfold C
    simp [show (5038848 * k + 2219395) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6658186) = 7558272 * k + 3329093 := by
    unfold C
    simp [show (15116544 * k + 6658186) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3329093) = 22674816 * k + 9987280 := by
    unfold C
    simp [show (7558272 * k + 3329093) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 9987280) = 11337408 * k + 4993640 := by
    unfold C
    simp [show (22674816 * k + 9987280) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4993640) = 5668704 * k + 2496820 := by
    unfold C
    simp [show (11337408 * k + 4993640) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2496820) = 2834352 * k + 1248410 := by
    unfold C
    simp [show (5668704 * k + 2496820) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1248410) = 1417176 * k + 624205 := by
    unfold C
    simp [show (2834352 * k + 1248410) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 624205) = 4251528 * k + 1872616 := by
    unfold C
    simp [show (1417176 * k + 624205) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1872616) = 2125764 * k + 936308 := by
    unfold C
    simp [show (4251528 * k + 1872616) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 936308) = 1062882 * k + 468154 := by
    unfold C
    simp [show (2125764 * k + 936308) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 468154) = 531441 * k + 234077 := by
    unfold C
    simp [show (1062882 * k + 468154) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 461851) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 461851)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_462015 : ∀ k : Nat,
    iterate (1048576 * k + 462015) 32 = 531441 * k + 234160 ∧
      531441 * k + 234160 < 1048576 * k + 462015 := by
  intro k
  have h1 : C (1048576 * k + 462015) = 3145728 * k + 1386046 := by
    unfold C
    simp [show (1048576 * k + 462015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1386046) = 1572864 * k + 693023 := by
    unfold C
    simp [show (3145728 * k + 1386046) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 693023) = 4718592 * k + 2079070 := by
    unfold C
    simp [show (1572864 * k + 693023) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2079070) = 2359296 * k + 1039535 := by
    unfold C
    simp [show (4718592 * k + 2079070) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1039535) = 7077888 * k + 3118606 := by
    unfold C
    simp [show (2359296 * k + 1039535) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3118606) = 3538944 * k + 1559303 := by
    unfold C
    simp [show (7077888 * k + 3118606) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1559303) = 10616832 * k + 4677910 := by
    unfold C
    simp [show (3538944 * k + 1559303) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4677910) = 5308416 * k + 2338955 := by
    unfold C
    simp [show (10616832 * k + 4677910) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2338955) = 15925248 * k + 7016866 := by
    unfold C
    simp [show (5308416 * k + 2338955) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7016866) = 7962624 * k + 3508433 := by
    unfold C
    simp [show (15925248 * k + 7016866) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3508433) = 23887872 * k + 10525300 := by
    unfold C
    simp [show (7962624 * k + 3508433) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 10525300) = 11943936 * k + 5262650 := by
    unfold C
    simp [show (23887872 * k + 10525300) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5262650) = 5971968 * k + 2631325 := by
    unfold C
    simp [show (11943936 * k + 5262650) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2631325) = 17915904 * k + 7893976 := by
    unfold C
    simp [show (5971968 * k + 2631325) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7893976) = 8957952 * k + 3946988 := by
    unfold C
    simp [show (17915904 * k + 7893976) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3946988) = 4478976 * k + 1973494 := by
    unfold C
    simp [show (8957952 * k + 3946988) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1973494) = 2239488 * k + 986747 := by
    unfold C
    simp [show (4478976 * k + 1973494) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 986747) = 6718464 * k + 2960242 := by
    unfold C
    simp [show (2239488 * k + 986747) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2960242) = 3359232 * k + 1480121 := by
    unfold C
    simp [show (6718464 * k + 2960242) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1480121) = 10077696 * k + 4440364 := by
    unfold C
    simp [show (3359232 * k + 1480121) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4440364) = 5038848 * k + 2220182 := by
    unfold C
    simp [show (10077696 * k + 4440364) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2220182) = 2519424 * k + 1110091 := by
    unfold C
    simp [show (5038848 * k + 2220182) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1110091) = 7558272 * k + 3330274 := by
    unfold C
    simp [show (2519424 * k + 1110091) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3330274) = 3779136 * k + 1665137 := by
    unfold C
    simp [show (7558272 * k + 3330274) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1665137) = 11337408 * k + 4995412 := by
    unfold C
    simp [show (3779136 * k + 1665137) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4995412) = 5668704 * k + 2497706 := by
    unfold C
    simp [show (11337408 * k + 4995412) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2497706) = 2834352 * k + 1248853 := by
    unfold C
    simp [show (5668704 * k + 2497706) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1248853) = 8503056 * k + 3746560 := by
    unfold C
    simp [show (2834352 * k + 1248853) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3746560) = 4251528 * k + 1873280 := by
    unfold C
    simp [show (8503056 * k + 3746560) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1873280) = 2125764 * k + 936640 := by
    unfold C
    simp [show (4251528 * k + 1873280) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 936640) = 1062882 * k + 468320 := by
    unfold C
    simp [show (2125764 * k + 936640) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 468320) = 531441 * k + 234160 := by
    unfold C
    simp [show (1062882 * k + 468320) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 462015) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 462015)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_462127 : ∀ k : Nat,
    iterate (1048576 * k + 462127) 32 = 531441 * k + 234217 ∧
      531441 * k + 234217 < 1048576 * k + 462127 := by
  intro k
  have h1 : C (1048576 * k + 462127) = 3145728 * k + 1386382 := by
    unfold C
    simp [show (1048576 * k + 462127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1386382) = 1572864 * k + 693191 := by
    unfold C
    simp [show (3145728 * k + 1386382) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 693191) = 4718592 * k + 2079574 := by
    unfold C
    simp [show (1572864 * k + 693191) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2079574) = 2359296 * k + 1039787 := by
    unfold C
    simp [show (4718592 * k + 2079574) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1039787) = 7077888 * k + 3119362 := by
    unfold C
    simp [show (2359296 * k + 1039787) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3119362) = 3538944 * k + 1559681 := by
    unfold C
    simp [show (7077888 * k + 3119362) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1559681) = 10616832 * k + 4679044 := by
    unfold C
    simp [show (3538944 * k + 1559681) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4679044) = 5308416 * k + 2339522 := by
    unfold C
    simp [show (10616832 * k + 4679044) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2339522) = 2654208 * k + 1169761 := by
    unfold C
    simp [show (5308416 * k + 2339522) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1169761) = 7962624 * k + 3509284 := by
    unfold C
    simp [show (2654208 * k + 1169761) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3509284) = 3981312 * k + 1754642 := by
    unfold C
    simp [show (7962624 * k + 3509284) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1754642) = 1990656 * k + 877321 := by
    unfold C
    simp [show (3981312 * k + 1754642) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 877321) = 5971968 * k + 2631964 := by
    unfold C
    simp [show (1990656 * k + 877321) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2631964) = 2985984 * k + 1315982 := by
    unfold C
    simp [show (5971968 * k + 2631964) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1315982) = 1492992 * k + 657991 := by
    unfold C
    simp [show (2985984 * k + 1315982) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 657991) = 4478976 * k + 1973974 := by
    unfold C
    simp [show (1492992 * k + 657991) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1973974) = 2239488 * k + 986987 := by
    unfold C
    simp [show (4478976 * k + 1973974) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 986987) = 6718464 * k + 2960962 := by
    unfold C
    simp [show (2239488 * k + 986987) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2960962) = 3359232 * k + 1480481 := by
    unfold C
    simp [show (6718464 * k + 2960962) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1480481) = 10077696 * k + 4441444 := by
    unfold C
    simp [show (3359232 * k + 1480481) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4441444) = 5038848 * k + 2220722 := by
    unfold C
    simp [show (10077696 * k + 4441444) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2220722) = 2519424 * k + 1110361 := by
    unfold C
    simp [show (5038848 * k + 2220722) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1110361) = 7558272 * k + 3331084 := by
    unfold C
    simp [show (2519424 * k + 1110361) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3331084) = 3779136 * k + 1665542 := by
    unfold C
    simp [show (7558272 * k + 3331084) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1665542) = 1889568 * k + 832771 := by
    unfold C
    simp [show (3779136 * k + 1665542) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 832771) = 5668704 * k + 2498314 := by
    unfold C
    simp [show (1889568 * k + 832771) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2498314) = 2834352 * k + 1249157 := by
    unfold C
    simp [show (5668704 * k + 2498314) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1249157) = 8503056 * k + 3747472 := by
    unfold C
    simp [show (2834352 * k + 1249157) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3747472) = 4251528 * k + 1873736 := by
    unfold C
    simp [show (8503056 * k + 3747472) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1873736) = 2125764 * k + 936868 := by
    unfold C
    simp [show (4251528 * k + 1873736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 936868) = 1062882 * k + 468434 := by
    unfold C
    simp [show (2125764 * k + 936868) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 468434) = 531441 * k + 234217 := by
    unfold C
    simp [show (1062882 * k + 468434) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 462127) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 462127)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard058
