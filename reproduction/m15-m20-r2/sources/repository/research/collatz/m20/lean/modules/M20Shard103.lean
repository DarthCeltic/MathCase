import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard103

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_805615 : ∀ k : Nat,
    iterate (1048576 * k + 805615) 32 = 531441 * k + 408304 ∧
      531441 * k + 408304 < 1048576 * k + 805615 := by
  intro k
  have h1 : C (1048576 * k + 805615) = 3145728 * k + 2416846 := by
    unfold C
    simp [show (1048576 * k + 805615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2416846) = 1572864 * k + 1208423 := by
    unfold C
    simp [show (3145728 * k + 2416846) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1208423) = 4718592 * k + 3625270 := by
    unfold C
    simp [show (1572864 * k + 1208423) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3625270) = 2359296 * k + 1812635 := by
    unfold C
    simp [show (4718592 * k + 3625270) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1812635) = 7077888 * k + 5437906 := by
    unfold C
    simp [show (2359296 * k + 1812635) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5437906) = 3538944 * k + 2718953 := by
    unfold C
    simp [show (7077888 * k + 5437906) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2718953) = 10616832 * k + 8156860 := by
    unfold C
    simp [show (3538944 * k + 2718953) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8156860) = 5308416 * k + 4078430 := by
    unfold C
    simp [show (10616832 * k + 8156860) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4078430) = 2654208 * k + 2039215 := by
    unfold C
    simp [show (5308416 * k + 4078430) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2039215) = 7962624 * k + 6117646 := by
    unfold C
    simp [show (2654208 * k + 2039215) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6117646) = 3981312 * k + 3058823 := by
    unfold C
    simp [show (7962624 * k + 6117646) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3058823) = 11943936 * k + 9176470 := by
    unfold C
    simp [show (3981312 * k + 3058823) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9176470) = 5971968 * k + 4588235 := by
    unfold C
    simp [show (11943936 * k + 9176470) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4588235) = 17915904 * k + 13764706 := by
    unfold C
    simp [show (5971968 * k + 4588235) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13764706) = 8957952 * k + 6882353 := by
    unfold C
    simp [show (17915904 * k + 13764706) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6882353) = 26873856 * k + 20647060 := by
    unfold C
    simp [show (8957952 * k + 6882353) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 20647060) = 13436928 * k + 10323530 := by
    unfold C
    simp [show (26873856 * k + 20647060) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10323530) = 6718464 * k + 5161765 := by
    unfold C
    simp [show (13436928 * k + 10323530) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5161765) = 20155392 * k + 15485296 := by
    unfold C
    simp [show (6718464 * k + 5161765) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15485296) = 10077696 * k + 7742648 := by
    unfold C
    simp [show (20155392 * k + 15485296) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7742648) = 5038848 * k + 3871324 := by
    unfold C
    simp [show (10077696 * k + 7742648) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3871324) = 2519424 * k + 1935662 := by
    unfold C
    simp [show (5038848 * k + 3871324) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1935662) = 1259712 * k + 967831 := by
    unfold C
    simp [show (2519424 * k + 1935662) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 967831) = 3779136 * k + 2903494 := by
    unfold C
    simp [show (1259712 * k + 967831) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2903494) = 1889568 * k + 1451747 := by
    unfold C
    simp [show (3779136 * k + 2903494) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1451747) = 5668704 * k + 4355242 := by
    unfold C
    simp [show (1889568 * k + 1451747) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4355242) = 2834352 * k + 2177621 := by
    unfold C
    simp [show (5668704 * k + 4355242) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2177621) = 8503056 * k + 6532864 := by
    unfold C
    simp [show (2834352 * k + 2177621) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6532864) = 4251528 * k + 3266432 := by
    unfold C
    simp [show (8503056 * k + 6532864) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3266432) = 2125764 * k + 1633216 := by
    unfold C
    simp [show (4251528 * k + 3266432) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1633216) = 1062882 * k + 816608 := by
    unfold C
    simp [show (2125764 * k + 1633216) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 816608) = 531441 * k + 408304 := by
    unfold C
    simp [show (1062882 * k + 816608) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 805615) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 805615)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_805919 : ∀ k : Nat,
    iterate (1048576 * k + 805919) 32 = 531441 * k + 408458 ∧
      531441 * k + 408458 < 1048576 * k + 805919 := by
  intro k
  have h1 : C (1048576 * k + 805919) = 3145728 * k + 2417758 := by
    unfold C
    simp [show (1048576 * k + 805919) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2417758) = 1572864 * k + 1208879 := by
    unfold C
    simp [show (3145728 * k + 2417758) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1208879) = 4718592 * k + 3626638 := by
    unfold C
    simp [show (1572864 * k + 1208879) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3626638) = 2359296 * k + 1813319 := by
    unfold C
    simp [show (4718592 * k + 3626638) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1813319) = 7077888 * k + 5439958 := by
    unfold C
    simp [show (2359296 * k + 1813319) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5439958) = 3538944 * k + 2719979 := by
    unfold C
    simp [show (7077888 * k + 5439958) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2719979) = 10616832 * k + 8159938 := by
    unfold C
    simp [show (3538944 * k + 2719979) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8159938) = 5308416 * k + 4079969 := by
    unfold C
    simp [show (10616832 * k + 8159938) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4079969) = 15925248 * k + 12239908 := by
    unfold C
    simp [show (5308416 * k + 4079969) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12239908) = 7962624 * k + 6119954 := by
    unfold C
    simp [show (15925248 * k + 12239908) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6119954) = 3981312 * k + 3059977 := by
    unfold C
    simp [show (7962624 * k + 6119954) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3059977) = 11943936 * k + 9179932 := by
    unfold C
    simp [show (3981312 * k + 3059977) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9179932) = 5971968 * k + 4589966 := by
    unfold C
    simp [show (11943936 * k + 9179932) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4589966) = 2985984 * k + 2294983 := by
    unfold C
    simp [show (5971968 * k + 4589966) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2294983) = 8957952 * k + 6884950 := by
    unfold C
    simp [show (2985984 * k + 2294983) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6884950) = 4478976 * k + 3442475 := by
    unfold C
    simp [show (8957952 * k + 6884950) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3442475) = 13436928 * k + 10327426 := by
    unfold C
    simp [show (4478976 * k + 3442475) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10327426) = 6718464 * k + 5163713 := by
    unfold C
    simp [show (13436928 * k + 10327426) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5163713) = 20155392 * k + 15491140 := by
    unfold C
    simp [show (6718464 * k + 5163713) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15491140) = 10077696 * k + 7745570 := by
    unfold C
    simp [show (20155392 * k + 15491140) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7745570) = 5038848 * k + 3872785 := by
    unfold C
    simp [show (10077696 * k + 7745570) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3872785) = 15116544 * k + 11618356 := by
    unfold C
    simp [show (5038848 * k + 3872785) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11618356) = 7558272 * k + 5809178 := by
    unfold C
    simp [show (15116544 * k + 11618356) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5809178) = 3779136 * k + 2904589 := by
    unfold C
    simp [show (7558272 * k + 5809178) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2904589) = 11337408 * k + 8713768 := by
    unfold C
    simp [show (3779136 * k + 2904589) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8713768) = 5668704 * k + 4356884 := by
    unfold C
    simp [show (11337408 * k + 8713768) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4356884) = 2834352 * k + 2178442 := by
    unfold C
    simp [show (5668704 * k + 4356884) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2178442) = 1417176 * k + 1089221 := by
    unfold C
    simp [show (2834352 * k + 2178442) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1089221) = 4251528 * k + 3267664 := by
    unfold C
    simp [show (1417176 * k + 1089221) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3267664) = 2125764 * k + 1633832 := by
    unfold C
    simp [show (4251528 * k + 3267664) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1633832) = 1062882 * k + 816916 := by
    unfold C
    simp [show (2125764 * k + 1633832) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 816916) = 531441 * k + 408458 := by
    unfold C
    simp [show (1062882 * k + 816916) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 805919) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 805919)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_806191 : ∀ k : Nat,
    iterate (1048576 * k + 806191) 32 = 531441 * k + 408596 ∧
      531441 * k + 408596 < 1048576 * k + 806191 := by
  intro k
  have h1 : C (1048576 * k + 806191) = 3145728 * k + 2418574 := by
    unfold C
    simp [show (1048576 * k + 806191) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2418574) = 1572864 * k + 1209287 := by
    unfold C
    simp [show (3145728 * k + 2418574) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1209287) = 4718592 * k + 3627862 := by
    unfold C
    simp [show (1572864 * k + 1209287) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3627862) = 2359296 * k + 1813931 := by
    unfold C
    simp [show (4718592 * k + 3627862) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1813931) = 7077888 * k + 5441794 := by
    unfold C
    simp [show (2359296 * k + 1813931) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5441794) = 3538944 * k + 2720897 := by
    unfold C
    simp [show (7077888 * k + 5441794) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2720897) = 10616832 * k + 8162692 := by
    unfold C
    simp [show (3538944 * k + 2720897) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8162692) = 5308416 * k + 4081346 := by
    unfold C
    simp [show (10616832 * k + 8162692) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4081346) = 2654208 * k + 2040673 := by
    unfold C
    simp [show (5308416 * k + 4081346) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2040673) = 7962624 * k + 6122020 := by
    unfold C
    simp [show (2654208 * k + 2040673) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6122020) = 3981312 * k + 3061010 := by
    unfold C
    simp [show (7962624 * k + 6122020) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3061010) = 1990656 * k + 1530505 := by
    unfold C
    simp [show (3981312 * k + 3061010) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1530505) = 5971968 * k + 4591516 := by
    unfold C
    simp [show (1990656 * k + 1530505) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4591516) = 2985984 * k + 2295758 := by
    unfold C
    simp [show (5971968 * k + 4591516) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2295758) = 1492992 * k + 1147879 := by
    unfold C
    simp [show (2985984 * k + 2295758) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1147879) = 4478976 * k + 3443638 := by
    unfold C
    simp [show (1492992 * k + 1147879) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3443638) = 2239488 * k + 1721819 := by
    unfold C
    simp [show (4478976 * k + 3443638) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1721819) = 6718464 * k + 5165458 := by
    unfold C
    simp [show (2239488 * k + 1721819) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5165458) = 3359232 * k + 2582729 := by
    unfold C
    simp [show (6718464 * k + 5165458) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2582729) = 10077696 * k + 7748188 := by
    unfold C
    simp [show (3359232 * k + 2582729) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7748188) = 5038848 * k + 3874094 := by
    unfold C
    simp [show (10077696 * k + 7748188) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3874094) = 2519424 * k + 1937047 := by
    unfold C
    simp [show (5038848 * k + 3874094) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1937047) = 7558272 * k + 5811142 := by
    unfold C
    simp [show (2519424 * k + 1937047) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5811142) = 3779136 * k + 2905571 := by
    unfold C
    simp [show (7558272 * k + 5811142) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2905571) = 11337408 * k + 8716714 := by
    unfold C
    simp [show (3779136 * k + 2905571) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8716714) = 5668704 * k + 4358357 := by
    unfold C
    simp [show (11337408 * k + 8716714) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4358357) = 17006112 * k + 13075072 := by
    unfold C
    simp [show (5668704 * k + 4358357) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13075072) = 8503056 * k + 6537536 := by
    unfold C
    simp [show (17006112 * k + 13075072) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6537536) = 4251528 * k + 3268768 := by
    unfold C
    simp [show (8503056 * k + 6537536) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3268768) = 2125764 * k + 1634384 := by
    unfold C
    simp [show (4251528 * k + 3268768) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1634384) = 1062882 * k + 817192 := by
    unfold C
    simp [show (2125764 * k + 1634384) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 817192) = 531441 * k + 408596 := by
    unfold C
    simp [show (1062882 * k + 817192) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 806191) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 806191)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_807079 : ∀ k : Nat,
    iterate (1048576 * k + 807079) 32 = 531441 * k + 409046 ∧
      531441 * k + 409046 < 1048576 * k + 807079 := by
  intro k
  have h1 : C (1048576 * k + 807079) = 3145728 * k + 2421238 := by
    unfold C
    simp [show (1048576 * k + 807079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2421238) = 1572864 * k + 1210619 := by
    unfold C
    simp [show (3145728 * k + 2421238) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1210619) = 4718592 * k + 3631858 := by
    unfold C
    simp [show (1572864 * k + 1210619) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3631858) = 2359296 * k + 1815929 := by
    unfold C
    simp [show (4718592 * k + 3631858) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1815929) = 7077888 * k + 5447788 := by
    unfold C
    simp [show (2359296 * k + 1815929) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5447788) = 3538944 * k + 2723894 := by
    unfold C
    simp [show (7077888 * k + 5447788) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2723894) = 1769472 * k + 1361947 := by
    unfold C
    simp [show (3538944 * k + 2723894) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1361947) = 5308416 * k + 4085842 := by
    unfold C
    simp [show (1769472 * k + 1361947) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4085842) = 2654208 * k + 2042921 := by
    unfold C
    simp [show (5308416 * k + 4085842) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2042921) = 7962624 * k + 6128764 := by
    unfold C
    simp [show (2654208 * k + 2042921) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6128764) = 3981312 * k + 3064382 := by
    unfold C
    simp [show (7962624 * k + 6128764) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3064382) = 1990656 * k + 1532191 := by
    unfold C
    simp [show (3981312 * k + 3064382) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1532191) = 5971968 * k + 4596574 := by
    unfold C
    simp [show (1990656 * k + 1532191) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4596574) = 2985984 * k + 2298287 := by
    unfold C
    simp [show (5971968 * k + 4596574) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2298287) = 8957952 * k + 6894862 := by
    unfold C
    simp [show (2985984 * k + 2298287) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6894862) = 4478976 * k + 3447431 := by
    unfold C
    simp [show (8957952 * k + 6894862) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3447431) = 13436928 * k + 10342294 := by
    unfold C
    simp [show (4478976 * k + 3447431) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10342294) = 6718464 * k + 5171147 := by
    unfold C
    simp [show (13436928 * k + 10342294) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5171147) = 20155392 * k + 15513442 := by
    unfold C
    simp [show (6718464 * k + 5171147) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15513442) = 10077696 * k + 7756721 := by
    unfold C
    simp [show (20155392 * k + 15513442) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7756721) = 30233088 * k + 23270164 := by
    unfold C
    simp [show (10077696 * k + 7756721) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 23270164) = 15116544 * k + 11635082 := by
    unfold C
    simp [show (30233088 * k + 23270164) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11635082) = 7558272 * k + 5817541 := by
    unfold C
    simp [show (15116544 * k + 11635082) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5817541) = 22674816 * k + 17452624 := by
    unfold C
    simp [show (7558272 * k + 5817541) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 17452624) = 11337408 * k + 8726312 := by
    unfold C
    simp [show (22674816 * k + 17452624) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8726312) = 5668704 * k + 4363156 := by
    unfold C
    simp [show (11337408 * k + 8726312) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4363156) = 2834352 * k + 2181578 := by
    unfold C
    simp [show (5668704 * k + 4363156) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2181578) = 1417176 * k + 1090789 := by
    unfold C
    simp [show (2834352 * k + 2181578) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1090789) = 4251528 * k + 3272368 := by
    unfold C
    simp [show (1417176 * k + 1090789) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3272368) = 2125764 * k + 1636184 := by
    unfold C
    simp [show (4251528 * k + 3272368) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1636184) = 1062882 * k + 818092 := by
    unfold C
    simp [show (2125764 * k + 1636184) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 818092) = 531441 * k + 409046 := by
    unfold C
    simp [show (1062882 * k + 818092) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 807079) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 807079)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_807391 : ∀ k : Nat,
    iterate (1048576 * k + 807391) 32 = 531441 * k + 409204 ∧
      531441 * k + 409204 < 1048576 * k + 807391 := by
  intro k
  have h1 : C (1048576 * k + 807391) = 3145728 * k + 2422174 := by
    unfold C
    simp [show (1048576 * k + 807391) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2422174) = 1572864 * k + 1211087 := by
    unfold C
    simp [show (3145728 * k + 2422174) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1211087) = 4718592 * k + 3633262 := by
    unfold C
    simp [show (1572864 * k + 1211087) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3633262) = 2359296 * k + 1816631 := by
    unfold C
    simp [show (4718592 * k + 3633262) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1816631) = 7077888 * k + 5449894 := by
    unfold C
    simp [show (2359296 * k + 1816631) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5449894) = 3538944 * k + 2724947 := by
    unfold C
    simp [show (7077888 * k + 5449894) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2724947) = 10616832 * k + 8174842 := by
    unfold C
    simp [show (3538944 * k + 2724947) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8174842) = 5308416 * k + 4087421 := by
    unfold C
    simp [show (10616832 * k + 8174842) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4087421) = 15925248 * k + 12262264 := by
    unfold C
    simp [show (5308416 * k + 4087421) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12262264) = 7962624 * k + 6131132 := by
    unfold C
    simp [show (15925248 * k + 12262264) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6131132) = 3981312 * k + 3065566 := by
    unfold C
    simp [show (7962624 * k + 6131132) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3065566) = 1990656 * k + 1532783 := by
    unfold C
    simp [show (3981312 * k + 3065566) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1532783) = 5971968 * k + 4598350 := by
    unfold C
    simp [show (1990656 * k + 1532783) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4598350) = 2985984 * k + 2299175 := by
    unfold C
    simp [show (5971968 * k + 4598350) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2299175) = 8957952 * k + 6897526 := by
    unfold C
    simp [show (2985984 * k + 2299175) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6897526) = 4478976 * k + 3448763 := by
    unfold C
    simp [show (8957952 * k + 6897526) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3448763) = 13436928 * k + 10346290 := by
    unfold C
    simp [show (4478976 * k + 3448763) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10346290) = 6718464 * k + 5173145 := by
    unfold C
    simp [show (13436928 * k + 10346290) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5173145) = 20155392 * k + 15519436 := by
    unfold C
    simp [show (6718464 * k + 5173145) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15519436) = 10077696 * k + 7759718 := by
    unfold C
    simp [show (20155392 * k + 15519436) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7759718) = 5038848 * k + 3879859 := by
    unfold C
    simp [show (10077696 * k + 7759718) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3879859) = 15116544 * k + 11639578 := by
    unfold C
    simp [show (5038848 * k + 3879859) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11639578) = 7558272 * k + 5819789 := by
    unfold C
    simp [show (15116544 * k + 11639578) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5819789) = 22674816 * k + 17459368 := by
    unfold C
    simp [show (7558272 * k + 5819789) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 17459368) = 11337408 * k + 8729684 := by
    unfold C
    simp [show (22674816 * k + 17459368) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8729684) = 5668704 * k + 4364842 := by
    unfold C
    simp [show (11337408 * k + 8729684) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4364842) = 2834352 * k + 2182421 := by
    unfold C
    simp [show (5668704 * k + 4364842) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2182421) = 8503056 * k + 6547264 := by
    unfold C
    simp [show (2834352 * k + 2182421) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6547264) = 4251528 * k + 3273632 := by
    unfold C
    simp [show (8503056 * k + 6547264) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3273632) = 2125764 * k + 1636816 := by
    unfold C
    simp [show (4251528 * k + 3273632) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1636816) = 1062882 * k + 818408 := by
    unfold C
    simp [show (2125764 * k + 1636816) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 818408) = 531441 * k + 409204 := by
    unfold C
    simp [show (1062882 * k + 818408) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 807391) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 807391)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_807423 : ∀ k : Nat,
    iterate (1048576 * k + 807423) 32 = 531441 * k + 409220 ∧
      531441 * k + 409220 < 1048576 * k + 807423 := by
  intro k
  have h1 : C (1048576 * k + 807423) = 3145728 * k + 2422270 := by
    unfold C
    simp [show (1048576 * k + 807423) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2422270) = 1572864 * k + 1211135 := by
    unfold C
    simp [show (3145728 * k + 2422270) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1211135) = 4718592 * k + 3633406 := by
    unfold C
    simp [show (1572864 * k + 1211135) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3633406) = 2359296 * k + 1816703 := by
    unfold C
    simp [show (4718592 * k + 3633406) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1816703) = 7077888 * k + 5450110 := by
    unfold C
    simp [show (2359296 * k + 1816703) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5450110) = 3538944 * k + 2725055 := by
    unfold C
    simp [show (7077888 * k + 5450110) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2725055) = 10616832 * k + 8175166 := by
    unfold C
    simp [show (3538944 * k + 2725055) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8175166) = 5308416 * k + 4087583 := by
    unfold C
    simp [show (10616832 * k + 8175166) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4087583) = 15925248 * k + 12262750 := by
    unfold C
    simp [show (5308416 * k + 4087583) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12262750) = 7962624 * k + 6131375 := by
    unfold C
    simp [show (15925248 * k + 12262750) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6131375) = 23887872 * k + 18394126 := by
    unfold C
    simp [show (7962624 * k + 6131375) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 18394126) = 11943936 * k + 9197063 := by
    unfold C
    simp [show (23887872 * k + 18394126) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9197063) = 35831808 * k + 27591190 := by
    unfold C
    simp [show (11943936 * k + 9197063) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 27591190) = 17915904 * k + 13795595 := by
    unfold C
    simp [show (35831808 * k + 27591190) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 13795595) = 53747712 * k + 41386786 := by
    unfold C
    simp [show (17915904 * k + 13795595) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 41386786) = 26873856 * k + 20693393 := by
    unfold C
    simp [show (53747712 * k + 41386786) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 20693393) = 80621568 * k + 62080180 := by
    unfold C
    simp [show (26873856 * k + 20693393) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 62080180) = 40310784 * k + 31040090 := by
    unfold C
    simp [show (80621568 * k + 62080180) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 31040090) = 20155392 * k + 15520045 := by
    unfold C
    simp [show (40310784 * k + 31040090) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15520045) = 60466176 * k + 46560136 := by
    unfold C
    simp [show (20155392 * k + 15520045) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 46560136) = 30233088 * k + 23280068 := by
    unfold C
    simp [show (60466176 * k + 46560136) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 23280068) = 15116544 * k + 11640034 := by
    unfold C
    simp [show (30233088 * k + 23280068) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11640034) = 7558272 * k + 5820017 := by
    unfold C
    simp [show (15116544 * k + 11640034) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5820017) = 22674816 * k + 17460052 := by
    unfold C
    simp [show (7558272 * k + 5820017) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 17460052) = 11337408 * k + 8730026 := by
    unfold C
    simp [show (22674816 * k + 17460052) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8730026) = 5668704 * k + 4365013 := by
    unfold C
    simp [show (11337408 * k + 8730026) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4365013) = 17006112 * k + 13095040 := by
    unfold C
    simp [show (5668704 * k + 4365013) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13095040) = 8503056 * k + 6547520 := by
    unfold C
    simp [show (17006112 * k + 13095040) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6547520) = 4251528 * k + 3273760 := by
    unfold C
    simp [show (8503056 * k + 6547520) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3273760) = 2125764 * k + 1636880 := by
    unfold C
    simp [show (4251528 * k + 3273760) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1636880) = 1062882 * k + 818440 := by
    unfold C
    simp [show (2125764 * k + 1636880) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 818440) = 531441 * k + 409220 := by
    unfold C
    simp [show (1062882 * k + 818440) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 807423) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 807423)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_807551 : ∀ k : Nat,
    iterate (1048576 * k + 807551) 32 = 531441 * k + 409285 ∧
      531441 * k + 409285 < 1048576 * k + 807551 := by
  intro k
  have h1 : C (1048576 * k + 807551) = 3145728 * k + 2422654 := by
    unfold C
    simp [show (1048576 * k + 807551) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2422654) = 1572864 * k + 1211327 := by
    unfold C
    simp [show (3145728 * k + 2422654) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1211327) = 4718592 * k + 3633982 := by
    unfold C
    simp [show (1572864 * k + 1211327) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3633982) = 2359296 * k + 1816991 := by
    unfold C
    simp [show (4718592 * k + 3633982) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1816991) = 7077888 * k + 5450974 := by
    unfold C
    simp [show (2359296 * k + 1816991) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5450974) = 3538944 * k + 2725487 := by
    unfold C
    simp [show (7077888 * k + 5450974) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2725487) = 10616832 * k + 8176462 := by
    unfold C
    simp [show (3538944 * k + 2725487) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8176462) = 5308416 * k + 4088231 := by
    unfold C
    simp [show (10616832 * k + 8176462) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4088231) = 15925248 * k + 12264694 := by
    unfold C
    simp [show (5308416 * k + 4088231) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12264694) = 7962624 * k + 6132347 := by
    unfold C
    simp [show (15925248 * k + 12264694) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6132347) = 23887872 * k + 18397042 := by
    unfold C
    simp [show (7962624 * k + 6132347) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 18397042) = 11943936 * k + 9198521 := by
    unfold C
    simp [show (23887872 * k + 18397042) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9198521) = 35831808 * k + 27595564 := by
    unfold C
    simp [show (11943936 * k + 9198521) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 27595564) = 17915904 * k + 13797782 := by
    unfold C
    simp [show (35831808 * k + 27595564) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 13797782) = 8957952 * k + 6898891 := by
    unfold C
    simp [show (17915904 * k + 13797782) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6898891) = 26873856 * k + 20696674 := by
    unfold C
    simp [show (8957952 * k + 6898891) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 20696674) = 13436928 * k + 10348337 := by
    unfold C
    simp [show (26873856 * k + 20696674) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10348337) = 40310784 * k + 31045012 := by
    unfold C
    simp [show (13436928 * k + 10348337) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 31045012) = 20155392 * k + 15522506 := by
    unfold C
    simp [show (40310784 * k + 31045012) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15522506) = 10077696 * k + 7761253 := by
    unfold C
    simp [show (20155392 * k + 15522506) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7761253) = 30233088 * k + 23283760 := by
    unfold C
    simp [show (10077696 * k + 7761253) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 23283760) = 15116544 * k + 11641880 := by
    unfold C
    simp [show (30233088 * k + 23283760) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11641880) = 7558272 * k + 5820940 := by
    unfold C
    simp [show (15116544 * k + 11641880) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5820940) = 3779136 * k + 2910470 := by
    unfold C
    simp [show (7558272 * k + 5820940) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2910470) = 1889568 * k + 1455235 := by
    unfold C
    simp [show (3779136 * k + 2910470) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1455235) = 5668704 * k + 4365706 := by
    unfold C
    simp [show (1889568 * k + 1455235) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4365706) = 2834352 * k + 2182853 := by
    unfold C
    simp [show (5668704 * k + 4365706) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2182853) = 8503056 * k + 6548560 := by
    unfold C
    simp [show (2834352 * k + 2182853) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6548560) = 4251528 * k + 3274280 := by
    unfold C
    simp [show (8503056 * k + 6548560) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3274280) = 2125764 * k + 1637140 := by
    unfold C
    simp [show (4251528 * k + 3274280) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1637140) = 1062882 * k + 818570 := by
    unfold C
    simp [show (2125764 * k + 1637140) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 818570) = 531441 * k + 409285 := by
    unfold C
    simp [show (1062882 * k + 818570) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 807551) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 807551)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_807967 : ∀ k : Nat,
    iterate (1048576 * k + 807967) 32 = 531441 * k + 409496 ∧
      531441 * k + 409496 < 1048576 * k + 807967 := by
  intro k
  have h1 : C (1048576 * k + 807967) = 3145728 * k + 2423902 := by
    unfold C
    simp [show (1048576 * k + 807967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2423902) = 1572864 * k + 1211951 := by
    unfold C
    simp [show (3145728 * k + 2423902) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1211951) = 4718592 * k + 3635854 := by
    unfold C
    simp [show (1572864 * k + 1211951) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3635854) = 2359296 * k + 1817927 := by
    unfold C
    simp [show (4718592 * k + 3635854) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1817927) = 7077888 * k + 5453782 := by
    unfold C
    simp [show (2359296 * k + 1817927) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5453782) = 3538944 * k + 2726891 := by
    unfold C
    simp [show (7077888 * k + 5453782) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2726891) = 10616832 * k + 8180674 := by
    unfold C
    simp [show (3538944 * k + 2726891) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8180674) = 5308416 * k + 4090337 := by
    unfold C
    simp [show (10616832 * k + 8180674) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4090337) = 15925248 * k + 12271012 := by
    unfold C
    simp [show (5308416 * k + 4090337) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12271012) = 7962624 * k + 6135506 := by
    unfold C
    simp [show (15925248 * k + 12271012) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6135506) = 3981312 * k + 3067753 := by
    unfold C
    simp [show (7962624 * k + 6135506) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3067753) = 11943936 * k + 9203260 := by
    unfold C
    simp [show (3981312 * k + 3067753) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9203260) = 5971968 * k + 4601630 := by
    unfold C
    simp [show (11943936 * k + 9203260) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4601630) = 2985984 * k + 2300815 := by
    unfold C
    simp [show (5971968 * k + 4601630) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2300815) = 8957952 * k + 6902446 := by
    unfold C
    simp [show (2985984 * k + 2300815) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6902446) = 4478976 * k + 3451223 := by
    unfold C
    simp [show (8957952 * k + 6902446) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3451223) = 13436928 * k + 10353670 := by
    unfold C
    simp [show (4478976 * k + 3451223) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10353670) = 6718464 * k + 5176835 := by
    unfold C
    simp [show (13436928 * k + 10353670) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5176835) = 20155392 * k + 15530506 := by
    unfold C
    simp [show (6718464 * k + 5176835) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15530506) = 10077696 * k + 7765253 := by
    unfold C
    simp [show (20155392 * k + 15530506) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7765253) = 30233088 * k + 23295760 := by
    unfold C
    simp [show (10077696 * k + 7765253) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 23295760) = 15116544 * k + 11647880 := by
    unfold C
    simp [show (30233088 * k + 23295760) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11647880) = 7558272 * k + 5823940 := by
    unfold C
    simp [show (15116544 * k + 11647880) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5823940) = 3779136 * k + 2911970 := by
    unfold C
    simp [show (7558272 * k + 5823940) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2911970) = 1889568 * k + 1455985 := by
    unfold C
    simp [show (3779136 * k + 2911970) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1455985) = 5668704 * k + 4367956 := by
    unfold C
    simp [show (1889568 * k + 1455985) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4367956) = 2834352 * k + 2183978 := by
    unfold C
    simp [show (5668704 * k + 4367956) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2183978) = 1417176 * k + 1091989 := by
    unfold C
    simp [show (2834352 * k + 2183978) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1091989) = 4251528 * k + 3275968 := by
    unfold C
    simp [show (1417176 * k + 1091989) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3275968) = 2125764 * k + 1637984 := by
    unfold C
    simp [show (4251528 * k + 3275968) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1637984) = 1062882 * k + 818992 := by
    unfold C
    simp [show (2125764 * k + 1637984) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 818992) = 531441 * k + 409496 := by
    unfold C
    simp [show (1062882 * k + 818992) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 807967) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 807967)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_809287 : ∀ k : Nat,
    iterate (1048576 * k + 809287) 32 = 531441 * k + 410165 ∧
      531441 * k + 410165 < 1048576 * k + 809287 := by
  intro k
  have h1 : C (1048576 * k + 809287) = 3145728 * k + 2427862 := by
    unfold C
    simp [show (1048576 * k + 809287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2427862) = 1572864 * k + 1213931 := by
    unfold C
    simp [show (3145728 * k + 2427862) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1213931) = 4718592 * k + 3641794 := by
    unfold C
    simp [show (1572864 * k + 1213931) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3641794) = 2359296 * k + 1820897 := by
    unfold C
    simp [show (4718592 * k + 3641794) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1820897) = 7077888 * k + 5462692 := by
    unfold C
    simp [show (2359296 * k + 1820897) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5462692) = 3538944 * k + 2731346 := by
    unfold C
    simp [show (7077888 * k + 5462692) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2731346) = 1769472 * k + 1365673 := by
    unfold C
    simp [show (3538944 * k + 2731346) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1365673) = 5308416 * k + 4097020 := by
    unfold C
    simp [show (1769472 * k + 1365673) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4097020) = 2654208 * k + 2048510 := by
    unfold C
    simp [show (5308416 * k + 4097020) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2048510) = 1327104 * k + 1024255 := by
    unfold C
    simp [show (2654208 * k + 2048510) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1024255) = 3981312 * k + 3072766 := by
    unfold C
    simp [show (1327104 * k + 1024255) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3072766) = 1990656 * k + 1536383 := by
    unfold C
    simp [show (3981312 * k + 3072766) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1536383) = 5971968 * k + 4609150 := by
    unfold C
    simp [show (1990656 * k + 1536383) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4609150) = 2985984 * k + 2304575 := by
    unfold C
    simp [show (5971968 * k + 4609150) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2304575) = 8957952 * k + 6913726 := by
    unfold C
    simp [show (2985984 * k + 2304575) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6913726) = 4478976 * k + 3456863 := by
    unfold C
    simp [show (8957952 * k + 6913726) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3456863) = 13436928 * k + 10370590 := by
    unfold C
    simp [show (4478976 * k + 3456863) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10370590) = 6718464 * k + 5185295 := by
    unfold C
    simp [show (13436928 * k + 10370590) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5185295) = 20155392 * k + 15555886 := by
    unfold C
    simp [show (6718464 * k + 5185295) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15555886) = 10077696 * k + 7777943 := by
    unfold C
    simp [show (20155392 * k + 15555886) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7777943) = 30233088 * k + 23333830 := by
    unfold C
    simp [show (10077696 * k + 7777943) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 23333830) = 15116544 * k + 11666915 := by
    unfold C
    simp [show (30233088 * k + 23333830) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11666915) = 45349632 * k + 35000746 := by
    unfold C
    simp [show (15116544 * k + 11666915) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 35000746) = 22674816 * k + 17500373 := by
    unfold C
    simp [show (45349632 * k + 35000746) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 17500373) = 68024448 * k + 52501120 := by
    unfold C
    simp [show (22674816 * k + 17500373) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 52501120) = 34012224 * k + 26250560 := by
    unfold C
    simp [show (68024448 * k + 52501120) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 26250560) = 17006112 * k + 13125280 := by
    unfold C
    simp [show (34012224 * k + 26250560) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 13125280) = 8503056 * k + 6562640 := by
    unfold C
    simp [show (17006112 * k + 13125280) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6562640) = 4251528 * k + 3281320 := by
    unfold C
    simp [show (8503056 * k + 6562640) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3281320) = 2125764 * k + 1640660 := by
    unfold C
    simp [show (4251528 * k + 3281320) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1640660) = 1062882 * k + 820330 := by
    unfold C
    simp [show (2125764 * k + 1640660) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 820330) = 531441 * k + 410165 := by
    unfold C
    simp [show (1062882 * k + 820330) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 809287) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 809287)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_809583 : ∀ k : Nat,
    iterate (1048576 * k + 809583) 32 = 531441 * k + 410315 ∧
      531441 * k + 410315 < 1048576 * k + 809583 := by
  intro k
  have h1 : C (1048576 * k + 809583) = 3145728 * k + 2428750 := by
    unfold C
    simp [show (1048576 * k + 809583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2428750) = 1572864 * k + 1214375 := by
    unfold C
    simp [show (3145728 * k + 2428750) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1214375) = 4718592 * k + 3643126 := by
    unfold C
    simp [show (1572864 * k + 1214375) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3643126) = 2359296 * k + 1821563 := by
    unfold C
    simp [show (4718592 * k + 3643126) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1821563) = 7077888 * k + 5464690 := by
    unfold C
    simp [show (2359296 * k + 1821563) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5464690) = 3538944 * k + 2732345 := by
    unfold C
    simp [show (7077888 * k + 5464690) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2732345) = 10616832 * k + 8197036 := by
    unfold C
    simp [show (3538944 * k + 2732345) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8197036) = 5308416 * k + 4098518 := by
    unfold C
    simp [show (10616832 * k + 8197036) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4098518) = 2654208 * k + 2049259 := by
    unfold C
    simp [show (5308416 * k + 4098518) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2049259) = 7962624 * k + 6147778 := by
    unfold C
    simp [show (2654208 * k + 2049259) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6147778) = 3981312 * k + 3073889 := by
    unfold C
    simp [show (7962624 * k + 6147778) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3073889) = 11943936 * k + 9221668 := by
    unfold C
    simp [show (3981312 * k + 3073889) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9221668) = 5971968 * k + 4610834 := by
    unfold C
    simp [show (11943936 * k + 9221668) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4610834) = 2985984 * k + 2305417 := by
    unfold C
    simp [show (5971968 * k + 4610834) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2305417) = 8957952 * k + 6916252 := by
    unfold C
    simp [show (2985984 * k + 2305417) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6916252) = 4478976 * k + 3458126 := by
    unfold C
    simp [show (8957952 * k + 6916252) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3458126) = 2239488 * k + 1729063 := by
    unfold C
    simp [show (4478976 * k + 3458126) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1729063) = 6718464 * k + 5187190 := by
    unfold C
    simp [show (2239488 * k + 1729063) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5187190) = 3359232 * k + 2593595 := by
    unfold C
    simp [show (6718464 * k + 5187190) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2593595) = 10077696 * k + 7780786 := by
    unfold C
    simp [show (3359232 * k + 2593595) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7780786) = 5038848 * k + 3890393 := by
    unfold C
    simp [show (10077696 * k + 7780786) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3890393) = 15116544 * k + 11671180 := by
    unfold C
    simp [show (5038848 * k + 3890393) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11671180) = 7558272 * k + 5835590 := by
    unfold C
    simp [show (15116544 * k + 11671180) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5835590) = 3779136 * k + 2917795 := by
    unfold C
    simp [show (7558272 * k + 5835590) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2917795) = 11337408 * k + 8753386 := by
    unfold C
    simp [show (3779136 * k + 2917795) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8753386) = 5668704 * k + 4376693 := by
    unfold C
    simp [show (11337408 * k + 8753386) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4376693) = 17006112 * k + 13130080 := by
    unfold C
    simp [show (5668704 * k + 4376693) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13130080) = 8503056 * k + 6565040 := by
    unfold C
    simp [show (17006112 * k + 13130080) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6565040) = 4251528 * k + 3282520 := by
    unfold C
    simp [show (8503056 * k + 6565040) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3282520) = 2125764 * k + 1641260 := by
    unfold C
    simp [show (4251528 * k + 3282520) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1641260) = 1062882 * k + 820630 := by
    unfold C
    simp [show (2125764 * k + 1641260) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 820630) = 531441 * k + 410315 := by
    unfold C
    simp [show (1062882 * k + 820630) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 809583) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 809583)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_810151 : ∀ k : Nat,
    iterate (1048576 * k + 810151) 32 = 531441 * k + 410603 ∧
      531441 * k + 410603 < 1048576 * k + 810151 := by
  intro k
  have h1 : C (1048576 * k + 810151) = 3145728 * k + 2430454 := by
    unfold C
    simp [show (1048576 * k + 810151) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2430454) = 1572864 * k + 1215227 := by
    unfold C
    simp [show (3145728 * k + 2430454) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1215227) = 4718592 * k + 3645682 := by
    unfold C
    simp [show (1572864 * k + 1215227) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3645682) = 2359296 * k + 1822841 := by
    unfold C
    simp [show (4718592 * k + 3645682) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1822841) = 7077888 * k + 5468524 := by
    unfold C
    simp [show (2359296 * k + 1822841) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5468524) = 3538944 * k + 2734262 := by
    unfold C
    simp [show (7077888 * k + 5468524) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2734262) = 1769472 * k + 1367131 := by
    unfold C
    simp [show (3538944 * k + 2734262) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1367131) = 5308416 * k + 4101394 := by
    unfold C
    simp [show (1769472 * k + 1367131) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4101394) = 2654208 * k + 2050697 := by
    unfold C
    simp [show (5308416 * k + 4101394) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2050697) = 7962624 * k + 6152092 := by
    unfold C
    simp [show (2654208 * k + 2050697) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6152092) = 3981312 * k + 3076046 := by
    unfold C
    simp [show (7962624 * k + 6152092) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3076046) = 1990656 * k + 1538023 := by
    unfold C
    simp [show (3981312 * k + 3076046) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1538023) = 5971968 * k + 4614070 := by
    unfold C
    simp [show (1990656 * k + 1538023) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4614070) = 2985984 * k + 2307035 := by
    unfold C
    simp [show (5971968 * k + 4614070) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2307035) = 8957952 * k + 6921106 := by
    unfold C
    simp [show (2985984 * k + 2307035) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6921106) = 4478976 * k + 3460553 := by
    unfold C
    simp [show (8957952 * k + 6921106) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3460553) = 13436928 * k + 10381660 := by
    unfold C
    simp [show (4478976 * k + 3460553) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10381660) = 6718464 * k + 5190830 := by
    unfold C
    simp [show (13436928 * k + 10381660) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5190830) = 3359232 * k + 2595415 := by
    unfold C
    simp [show (6718464 * k + 5190830) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2595415) = 10077696 * k + 7786246 := by
    unfold C
    simp [show (3359232 * k + 2595415) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7786246) = 5038848 * k + 3893123 := by
    unfold C
    simp [show (10077696 * k + 7786246) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3893123) = 15116544 * k + 11679370 := by
    unfold C
    simp [show (5038848 * k + 3893123) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11679370) = 7558272 * k + 5839685 := by
    unfold C
    simp [show (15116544 * k + 11679370) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5839685) = 22674816 * k + 17519056 := by
    unfold C
    simp [show (7558272 * k + 5839685) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 17519056) = 11337408 * k + 8759528 := by
    unfold C
    simp [show (22674816 * k + 17519056) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8759528) = 5668704 * k + 4379764 := by
    unfold C
    simp [show (11337408 * k + 8759528) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4379764) = 2834352 * k + 2189882 := by
    unfold C
    simp [show (5668704 * k + 4379764) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2189882) = 1417176 * k + 1094941 := by
    unfold C
    simp [show (2834352 * k + 2189882) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1094941) = 4251528 * k + 3284824 := by
    unfold C
    simp [show (1417176 * k + 1094941) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3284824) = 2125764 * k + 1642412 := by
    unfold C
    simp [show (4251528 * k + 3284824) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1642412) = 1062882 * k + 821206 := by
    unfold C
    simp [show (2125764 * k + 1642412) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 821206) = 531441 * k + 410603 := by
    unfold C
    simp [show (1062882 * k + 821206) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 810151) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 810151)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_810287 : ∀ k : Nat,
    iterate (1048576 * k + 810287) 32 = 531441 * k + 410672 ∧
      531441 * k + 410672 < 1048576 * k + 810287 := by
  intro k
  have h1 : C (1048576 * k + 810287) = 3145728 * k + 2430862 := by
    unfold C
    simp [show (1048576 * k + 810287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2430862) = 1572864 * k + 1215431 := by
    unfold C
    simp [show (3145728 * k + 2430862) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1215431) = 4718592 * k + 3646294 := by
    unfold C
    simp [show (1572864 * k + 1215431) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3646294) = 2359296 * k + 1823147 := by
    unfold C
    simp [show (4718592 * k + 3646294) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1823147) = 7077888 * k + 5469442 := by
    unfold C
    simp [show (2359296 * k + 1823147) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5469442) = 3538944 * k + 2734721 := by
    unfold C
    simp [show (7077888 * k + 5469442) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2734721) = 10616832 * k + 8204164 := by
    unfold C
    simp [show (3538944 * k + 2734721) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8204164) = 5308416 * k + 4102082 := by
    unfold C
    simp [show (10616832 * k + 8204164) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4102082) = 2654208 * k + 2051041 := by
    unfold C
    simp [show (5308416 * k + 4102082) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2051041) = 7962624 * k + 6153124 := by
    unfold C
    simp [show (2654208 * k + 2051041) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6153124) = 3981312 * k + 3076562 := by
    unfold C
    simp [show (7962624 * k + 6153124) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3076562) = 1990656 * k + 1538281 := by
    unfold C
    simp [show (3981312 * k + 3076562) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1538281) = 5971968 * k + 4614844 := by
    unfold C
    simp [show (1990656 * k + 1538281) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4614844) = 2985984 * k + 2307422 := by
    unfold C
    simp [show (5971968 * k + 4614844) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2307422) = 1492992 * k + 1153711 := by
    unfold C
    simp [show (2985984 * k + 2307422) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1153711) = 4478976 * k + 3461134 := by
    unfold C
    simp [show (1492992 * k + 1153711) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3461134) = 2239488 * k + 1730567 := by
    unfold C
    simp [show (4478976 * k + 3461134) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1730567) = 6718464 * k + 5191702 := by
    unfold C
    simp [show (2239488 * k + 1730567) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5191702) = 3359232 * k + 2595851 := by
    unfold C
    simp [show (6718464 * k + 5191702) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2595851) = 10077696 * k + 7787554 := by
    unfold C
    simp [show (3359232 * k + 2595851) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7787554) = 5038848 * k + 3893777 := by
    unfold C
    simp [show (10077696 * k + 7787554) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3893777) = 15116544 * k + 11681332 := by
    unfold C
    simp [show (5038848 * k + 3893777) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11681332) = 7558272 * k + 5840666 := by
    unfold C
    simp [show (15116544 * k + 11681332) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5840666) = 3779136 * k + 2920333 := by
    unfold C
    simp [show (7558272 * k + 5840666) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2920333) = 11337408 * k + 8761000 := by
    unfold C
    simp [show (3779136 * k + 2920333) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8761000) = 5668704 * k + 4380500 := by
    unfold C
    simp [show (11337408 * k + 8761000) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4380500) = 2834352 * k + 2190250 := by
    unfold C
    simp [show (5668704 * k + 4380500) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2190250) = 1417176 * k + 1095125 := by
    unfold C
    simp [show (2834352 * k + 2190250) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1095125) = 4251528 * k + 3285376 := by
    unfold C
    simp [show (1417176 * k + 1095125) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3285376) = 2125764 * k + 1642688 := by
    unfold C
    simp [show (4251528 * k + 3285376) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1642688) = 1062882 * k + 821344 := by
    unfold C
    simp [show (2125764 * k + 1642688) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 821344) = 531441 * k + 410672 := by
    unfold C
    simp [show (1062882 * k + 821344) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 810287) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 810287)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_810303 : ∀ k : Nat,
    iterate (1048576 * k + 810303) 32 = 531441 * k + 410680 ∧
      531441 * k + 410680 < 1048576 * k + 810303 := by
  intro k
  have h1 : C (1048576 * k + 810303) = 3145728 * k + 2430910 := by
    unfold C
    simp [show (1048576 * k + 810303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2430910) = 1572864 * k + 1215455 := by
    unfold C
    simp [show (3145728 * k + 2430910) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1215455) = 4718592 * k + 3646366 := by
    unfold C
    simp [show (1572864 * k + 1215455) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3646366) = 2359296 * k + 1823183 := by
    unfold C
    simp [show (4718592 * k + 3646366) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1823183) = 7077888 * k + 5469550 := by
    unfold C
    simp [show (2359296 * k + 1823183) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5469550) = 3538944 * k + 2734775 := by
    unfold C
    simp [show (7077888 * k + 5469550) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2734775) = 10616832 * k + 8204326 := by
    unfold C
    simp [show (3538944 * k + 2734775) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8204326) = 5308416 * k + 4102163 := by
    unfold C
    simp [show (10616832 * k + 8204326) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4102163) = 15925248 * k + 12306490 := by
    unfold C
    simp [show (5308416 * k + 4102163) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12306490) = 7962624 * k + 6153245 := by
    unfold C
    simp [show (15925248 * k + 12306490) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6153245) = 23887872 * k + 18459736 := by
    unfold C
    simp [show (7962624 * k + 6153245) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 18459736) = 11943936 * k + 9229868 := by
    unfold C
    simp [show (23887872 * k + 18459736) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9229868) = 5971968 * k + 4614934 := by
    unfold C
    simp [show (11943936 * k + 9229868) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4614934) = 2985984 * k + 2307467 := by
    unfold C
    simp [show (5971968 * k + 4614934) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2307467) = 8957952 * k + 6922402 := by
    unfold C
    simp [show (2985984 * k + 2307467) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6922402) = 4478976 * k + 3461201 := by
    unfold C
    simp [show (8957952 * k + 6922402) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3461201) = 13436928 * k + 10383604 := by
    unfold C
    simp [show (4478976 * k + 3461201) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10383604) = 6718464 * k + 5191802 := by
    unfold C
    simp [show (13436928 * k + 10383604) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5191802) = 3359232 * k + 2595901 := by
    unfold C
    simp [show (6718464 * k + 5191802) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2595901) = 10077696 * k + 7787704 := by
    unfold C
    simp [show (3359232 * k + 2595901) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7787704) = 5038848 * k + 3893852 := by
    unfold C
    simp [show (10077696 * k + 7787704) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3893852) = 2519424 * k + 1946926 := by
    unfold C
    simp [show (5038848 * k + 3893852) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1946926) = 1259712 * k + 973463 := by
    unfold C
    simp [show (2519424 * k + 1946926) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 973463) = 3779136 * k + 2920390 := by
    unfold C
    simp [show (1259712 * k + 973463) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2920390) = 1889568 * k + 1460195 := by
    unfold C
    simp [show (3779136 * k + 2920390) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1460195) = 5668704 * k + 4380586 := by
    unfold C
    simp [show (1889568 * k + 1460195) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4380586) = 2834352 * k + 2190293 := by
    unfold C
    simp [show (5668704 * k + 4380586) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2190293) = 8503056 * k + 6570880 := by
    unfold C
    simp [show (2834352 * k + 2190293) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6570880) = 4251528 * k + 3285440 := by
    unfold C
    simp [show (8503056 * k + 6570880) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3285440) = 2125764 * k + 1642720 := by
    unfold C
    simp [show (4251528 * k + 3285440) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1642720) = 1062882 * k + 821360 := by
    unfold C
    simp [show (2125764 * k + 1642720) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 821360) = 531441 * k + 410680 := by
    unfold C
    simp [show (1062882 * k + 821360) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 810303) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 810303)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_810843 : ∀ k : Nat,
    iterate (1048576 * k + 810843) 32 = 531441 * k + 410954 ∧
      531441 * k + 410954 < 1048576 * k + 810843 := by
  intro k
  have h1 : C (1048576 * k + 810843) = 3145728 * k + 2432530 := by
    unfold C
    simp [show (1048576 * k + 810843) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2432530) = 1572864 * k + 1216265 := by
    unfold C
    simp [show (3145728 * k + 2432530) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1216265) = 4718592 * k + 3648796 := by
    unfold C
    simp [show (1572864 * k + 1216265) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3648796) = 2359296 * k + 1824398 := by
    unfold C
    simp [show (4718592 * k + 3648796) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1824398) = 1179648 * k + 912199 := by
    unfold C
    simp [show (2359296 * k + 1824398) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 912199) = 3538944 * k + 2736598 := by
    unfold C
    simp [show (1179648 * k + 912199) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2736598) = 1769472 * k + 1368299 := by
    unfold C
    simp [show (3538944 * k + 2736598) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1368299) = 5308416 * k + 4104898 := by
    unfold C
    simp [show (1769472 * k + 1368299) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4104898) = 2654208 * k + 2052449 := by
    unfold C
    simp [show (5308416 * k + 4104898) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2052449) = 7962624 * k + 6157348 := by
    unfold C
    simp [show (2654208 * k + 2052449) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6157348) = 3981312 * k + 3078674 := by
    unfold C
    simp [show (7962624 * k + 6157348) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3078674) = 1990656 * k + 1539337 := by
    unfold C
    simp [show (3981312 * k + 3078674) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1539337) = 5971968 * k + 4618012 := by
    unfold C
    simp [show (1990656 * k + 1539337) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4618012) = 2985984 * k + 2309006 := by
    unfold C
    simp [show (5971968 * k + 4618012) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2309006) = 1492992 * k + 1154503 := by
    unfold C
    simp [show (2985984 * k + 2309006) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1154503) = 4478976 * k + 3463510 := by
    unfold C
    simp [show (1492992 * k + 1154503) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3463510) = 2239488 * k + 1731755 := by
    unfold C
    simp [show (4478976 * k + 3463510) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1731755) = 6718464 * k + 5195266 := by
    unfold C
    simp [show (2239488 * k + 1731755) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5195266) = 3359232 * k + 2597633 := by
    unfold C
    simp [show (6718464 * k + 5195266) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2597633) = 10077696 * k + 7792900 := by
    unfold C
    simp [show (3359232 * k + 2597633) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7792900) = 5038848 * k + 3896450 := by
    unfold C
    simp [show (10077696 * k + 7792900) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3896450) = 2519424 * k + 1948225 := by
    unfold C
    simp [show (5038848 * k + 3896450) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1948225) = 7558272 * k + 5844676 := by
    unfold C
    simp [show (2519424 * k + 1948225) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5844676) = 3779136 * k + 2922338 := by
    unfold C
    simp [show (7558272 * k + 5844676) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2922338) = 1889568 * k + 1461169 := by
    unfold C
    simp [show (3779136 * k + 2922338) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1461169) = 5668704 * k + 4383508 := by
    unfold C
    simp [show (1889568 * k + 1461169) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4383508) = 2834352 * k + 2191754 := by
    unfold C
    simp [show (5668704 * k + 4383508) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2191754) = 1417176 * k + 1095877 := by
    unfold C
    simp [show (2834352 * k + 2191754) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1095877) = 4251528 * k + 3287632 := by
    unfold C
    simp [show (1417176 * k + 1095877) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3287632) = 2125764 * k + 1643816 := by
    unfold C
    simp [show (4251528 * k + 3287632) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1643816) = 1062882 * k + 821908 := by
    unfold C
    simp [show (2125764 * k + 1643816) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 821908) = 531441 * k + 410954 := by
    unfold C
    simp [show (1062882 * k + 821908) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 810843) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 810843)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_810879 : ∀ k : Nat,
    iterate (1048576 * k + 810879) 32 = 531441 * k + 410972 ∧
      531441 * k + 410972 < 1048576 * k + 810879 := by
  intro k
  have h1 : C (1048576 * k + 810879) = 3145728 * k + 2432638 := by
    unfold C
    simp [show (1048576 * k + 810879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2432638) = 1572864 * k + 1216319 := by
    unfold C
    simp [show (3145728 * k + 2432638) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1216319) = 4718592 * k + 3648958 := by
    unfold C
    simp [show (1572864 * k + 1216319) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3648958) = 2359296 * k + 1824479 := by
    unfold C
    simp [show (4718592 * k + 3648958) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1824479) = 7077888 * k + 5473438 := by
    unfold C
    simp [show (2359296 * k + 1824479) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5473438) = 3538944 * k + 2736719 := by
    unfold C
    simp [show (7077888 * k + 5473438) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2736719) = 10616832 * k + 8210158 := by
    unfold C
    simp [show (3538944 * k + 2736719) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8210158) = 5308416 * k + 4105079 := by
    unfold C
    simp [show (10616832 * k + 8210158) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4105079) = 15925248 * k + 12315238 := by
    unfold C
    simp [show (5308416 * k + 4105079) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12315238) = 7962624 * k + 6157619 := by
    unfold C
    simp [show (15925248 * k + 12315238) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6157619) = 23887872 * k + 18472858 := by
    unfold C
    simp [show (7962624 * k + 6157619) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 18472858) = 11943936 * k + 9236429 := by
    unfold C
    simp [show (23887872 * k + 18472858) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9236429) = 35831808 * k + 27709288 := by
    unfold C
    simp [show (11943936 * k + 9236429) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 27709288) = 17915904 * k + 13854644 := by
    unfold C
    simp [show (35831808 * k + 27709288) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 13854644) = 8957952 * k + 6927322 := by
    unfold C
    simp [show (17915904 * k + 13854644) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6927322) = 4478976 * k + 3463661 := by
    unfold C
    simp [show (8957952 * k + 6927322) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3463661) = 13436928 * k + 10390984 := by
    unfold C
    simp [show (4478976 * k + 3463661) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10390984) = 6718464 * k + 5195492 := by
    unfold C
    simp [show (13436928 * k + 10390984) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5195492) = 3359232 * k + 2597746 := by
    unfold C
    simp [show (6718464 * k + 5195492) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2597746) = 1679616 * k + 1298873 := by
    unfold C
    simp [show (3359232 * k + 2597746) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1298873) = 5038848 * k + 3896620 := by
    unfold C
    simp [show (1679616 * k + 1298873) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3896620) = 2519424 * k + 1948310 := by
    unfold C
    simp [show (5038848 * k + 3896620) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1948310) = 1259712 * k + 974155 := by
    unfold C
    simp [show (2519424 * k + 1948310) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 974155) = 3779136 * k + 2922466 := by
    unfold C
    simp [show (1259712 * k + 974155) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2922466) = 1889568 * k + 1461233 := by
    unfold C
    simp [show (3779136 * k + 2922466) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1461233) = 5668704 * k + 4383700 := by
    unfold C
    simp [show (1889568 * k + 1461233) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4383700) = 2834352 * k + 2191850 := by
    unfold C
    simp [show (5668704 * k + 4383700) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2191850) = 1417176 * k + 1095925 := by
    unfold C
    simp [show (2834352 * k + 2191850) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1095925) = 4251528 * k + 3287776 := by
    unfold C
    simp [show (1417176 * k + 1095925) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3287776) = 2125764 * k + 1643888 := by
    unfold C
    simp [show (4251528 * k + 3287776) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1643888) = 1062882 * k + 821944 := by
    unfold C
    simp [show (2125764 * k + 1643888) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 821944) = 531441 * k + 410972 := by
    unfold C
    simp [show (1062882 * k + 821944) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 810879) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 810879)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_811039 : ∀ k : Nat,
    iterate (1048576 * k + 811039) 32 = 531441 * k + 411053 ∧
      531441 * k + 411053 < 1048576 * k + 811039 := by
  intro k
  have h1 : C (1048576 * k + 811039) = 3145728 * k + 2433118 := by
    unfold C
    simp [show (1048576 * k + 811039) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2433118) = 1572864 * k + 1216559 := by
    unfold C
    simp [show (3145728 * k + 2433118) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1216559) = 4718592 * k + 3649678 := by
    unfold C
    simp [show (1572864 * k + 1216559) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3649678) = 2359296 * k + 1824839 := by
    unfold C
    simp [show (4718592 * k + 3649678) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1824839) = 7077888 * k + 5474518 := by
    unfold C
    simp [show (2359296 * k + 1824839) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5474518) = 3538944 * k + 2737259 := by
    unfold C
    simp [show (7077888 * k + 5474518) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2737259) = 10616832 * k + 8211778 := by
    unfold C
    simp [show (3538944 * k + 2737259) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8211778) = 5308416 * k + 4105889 := by
    unfold C
    simp [show (10616832 * k + 8211778) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4105889) = 15925248 * k + 12317668 := by
    unfold C
    simp [show (5308416 * k + 4105889) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12317668) = 7962624 * k + 6158834 := by
    unfold C
    simp [show (15925248 * k + 12317668) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6158834) = 3981312 * k + 3079417 := by
    unfold C
    simp [show (7962624 * k + 6158834) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3079417) = 11943936 * k + 9238252 := by
    unfold C
    simp [show (3981312 * k + 3079417) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9238252) = 5971968 * k + 4619126 := by
    unfold C
    simp [show (11943936 * k + 9238252) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4619126) = 2985984 * k + 2309563 := by
    unfold C
    simp [show (5971968 * k + 4619126) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2309563) = 8957952 * k + 6928690 := by
    unfold C
    simp [show (2985984 * k + 2309563) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6928690) = 4478976 * k + 3464345 := by
    unfold C
    simp [show (8957952 * k + 6928690) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3464345) = 13436928 * k + 10393036 := by
    unfold C
    simp [show (4478976 * k + 3464345) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10393036) = 6718464 * k + 5196518 := by
    unfold C
    simp [show (13436928 * k + 10393036) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5196518) = 3359232 * k + 2598259 := by
    unfold C
    simp [show (6718464 * k + 5196518) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2598259) = 10077696 * k + 7794778 := by
    unfold C
    simp [show (3359232 * k + 2598259) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7794778) = 5038848 * k + 3897389 := by
    unfold C
    simp [show (10077696 * k + 7794778) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3897389) = 15116544 * k + 11692168 := by
    unfold C
    simp [show (5038848 * k + 3897389) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11692168) = 7558272 * k + 5846084 := by
    unfold C
    simp [show (15116544 * k + 11692168) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5846084) = 3779136 * k + 2923042 := by
    unfold C
    simp [show (7558272 * k + 5846084) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2923042) = 1889568 * k + 1461521 := by
    unfold C
    simp [show (3779136 * k + 2923042) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1461521) = 5668704 * k + 4384564 := by
    unfold C
    simp [show (1889568 * k + 1461521) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4384564) = 2834352 * k + 2192282 := by
    unfold C
    simp [show (5668704 * k + 4384564) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2192282) = 1417176 * k + 1096141 := by
    unfold C
    simp [show (2834352 * k + 2192282) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1096141) = 4251528 * k + 3288424 := by
    unfold C
    simp [show (1417176 * k + 1096141) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3288424) = 2125764 * k + 1644212 := by
    unfold C
    simp [show (4251528 * k + 3288424) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1644212) = 1062882 * k + 822106 := by
    unfold C
    simp [show (2125764 * k + 1644212) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 822106) = 531441 * k + 411053 := by
    unfold C
    simp [show (1062882 * k + 822106) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 811039) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 811039)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_811487 : ∀ k : Nat,
    iterate (1048576 * k + 811487) 32 = 531441 * k + 411280 ∧
      531441 * k + 411280 < 1048576 * k + 811487 := by
  intro k
  have h1 : C (1048576 * k + 811487) = 3145728 * k + 2434462 := by
    unfold C
    simp [show (1048576 * k + 811487) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2434462) = 1572864 * k + 1217231 := by
    unfold C
    simp [show (3145728 * k + 2434462) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1217231) = 4718592 * k + 3651694 := by
    unfold C
    simp [show (1572864 * k + 1217231) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3651694) = 2359296 * k + 1825847 := by
    unfold C
    simp [show (4718592 * k + 3651694) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1825847) = 7077888 * k + 5477542 := by
    unfold C
    simp [show (2359296 * k + 1825847) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5477542) = 3538944 * k + 2738771 := by
    unfold C
    simp [show (7077888 * k + 5477542) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2738771) = 10616832 * k + 8216314 := by
    unfold C
    simp [show (3538944 * k + 2738771) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8216314) = 5308416 * k + 4108157 := by
    unfold C
    simp [show (10616832 * k + 8216314) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4108157) = 15925248 * k + 12324472 := by
    unfold C
    simp [show (5308416 * k + 4108157) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12324472) = 7962624 * k + 6162236 := by
    unfold C
    simp [show (15925248 * k + 12324472) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6162236) = 3981312 * k + 3081118 := by
    unfold C
    simp [show (7962624 * k + 6162236) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3081118) = 1990656 * k + 1540559 := by
    unfold C
    simp [show (3981312 * k + 3081118) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1540559) = 5971968 * k + 4621678 := by
    unfold C
    simp [show (1990656 * k + 1540559) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4621678) = 2985984 * k + 2310839 := by
    unfold C
    simp [show (5971968 * k + 4621678) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2310839) = 8957952 * k + 6932518 := by
    unfold C
    simp [show (2985984 * k + 2310839) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6932518) = 4478976 * k + 3466259 := by
    unfold C
    simp [show (8957952 * k + 6932518) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3466259) = 13436928 * k + 10398778 := by
    unfold C
    simp [show (4478976 * k + 3466259) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10398778) = 6718464 * k + 5199389 := by
    unfold C
    simp [show (13436928 * k + 10398778) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5199389) = 20155392 * k + 15598168 := by
    unfold C
    simp [show (6718464 * k + 5199389) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15598168) = 10077696 * k + 7799084 := by
    unfold C
    simp [show (20155392 * k + 15598168) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7799084) = 5038848 * k + 3899542 := by
    unfold C
    simp [show (10077696 * k + 7799084) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3899542) = 2519424 * k + 1949771 := by
    unfold C
    simp [show (5038848 * k + 3899542) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1949771) = 7558272 * k + 5849314 := by
    unfold C
    simp [show (2519424 * k + 1949771) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5849314) = 3779136 * k + 2924657 := by
    unfold C
    simp [show (7558272 * k + 5849314) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2924657) = 11337408 * k + 8773972 := by
    unfold C
    simp [show (3779136 * k + 2924657) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8773972) = 5668704 * k + 4386986 := by
    unfold C
    simp [show (11337408 * k + 8773972) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4386986) = 2834352 * k + 2193493 := by
    unfold C
    simp [show (5668704 * k + 4386986) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2193493) = 8503056 * k + 6580480 := by
    unfold C
    simp [show (2834352 * k + 2193493) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6580480) = 4251528 * k + 3290240 := by
    unfold C
    simp [show (8503056 * k + 6580480) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3290240) = 2125764 * k + 1645120 := by
    unfold C
    simp [show (4251528 * k + 3290240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1645120) = 1062882 * k + 822560 := by
    unfold C
    simp [show (2125764 * k + 1645120) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 822560) = 531441 * k + 411280 := by
    unfold C
    simp [show (1062882 * k + 822560) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 811487) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 811487)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_812647 : ∀ k : Nat,
    iterate (1048576 * k + 812647) 32 = 531441 * k + 411868 ∧
      531441 * k + 411868 < 1048576 * k + 812647 := by
  intro k
  have h1 : C (1048576 * k + 812647) = 3145728 * k + 2437942 := by
    unfold C
    simp [show (1048576 * k + 812647) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2437942) = 1572864 * k + 1218971 := by
    unfold C
    simp [show (3145728 * k + 2437942) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1218971) = 4718592 * k + 3656914 := by
    unfold C
    simp [show (1572864 * k + 1218971) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3656914) = 2359296 * k + 1828457 := by
    unfold C
    simp [show (4718592 * k + 3656914) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1828457) = 7077888 * k + 5485372 := by
    unfold C
    simp [show (2359296 * k + 1828457) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5485372) = 3538944 * k + 2742686 := by
    unfold C
    simp [show (7077888 * k + 5485372) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2742686) = 1769472 * k + 1371343 := by
    unfold C
    simp [show (3538944 * k + 2742686) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1371343) = 5308416 * k + 4114030 := by
    unfold C
    simp [show (1769472 * k + 1371343) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4114030) = 2654208 * k + 2057015 := by
    unfold C
    simp [show (5308416 * k + 4114030) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2057015) = 7962624 * k + 6171046 := by
    unfold C
    simp [show (2654208 * k + 2057015) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6171046) = 3981312 * k + 3085523 := by
    unfold C
    simp [show (7962624 * k + 6171046) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3085523) = 11943936 * k + 9256570 := by
    unfold C
    simp [show (3981312 * k + 3085523) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9256570) = 5971968 * k + 4628285 := by
    unfold C
    simp [show (11943936 * k + 9256570) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4628285) = 17915904 * k + 13884856 := by
    unfold C
    simp [show (5971968 * k + 4628285) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13884856) = 8957952 * k + 6942428 := by
    unfold C
    simp [show (17915904 * k + 13884856) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6942428) = 4478976 * k + 3471214 := by
    unfold C
    simp [show (8957952 * k + 6942428) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3471214) = 2239488 * k + 1735607 := by
    unfold C
    simp [show (4478976 * k + 3471214) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1735607) = 6718464 * k + 5206822 := by
    unfold C
    simp [show (2239488 * k + 1735607) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5206822) = 3359232 * k + 2603411 := by
    unfold C
    simp [show (6718464 * k + 5206822) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2603411) = 10077696 * k + 7810234 := by
    unfold C
    simp [show (3359232 * k + 2603411) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7810234) = 5038848 * k + 3905117 := by
    unfold C
    simp [show (10077696 * k + 7810234) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3905117) = 15116544 * k + 11715352 := by
    unfold C
    simp [show (5038848 * k + 3905117) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11715352) = 7558272 * k + 5857676 := by
    unfold C
    simp [show (15116544 * k + 11715352) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5857676) = 3779136 * k + 2928838 := by
    unfold C
    simp [show (7558272 * k + 5857676) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2928838) = 1889568 * k + 1464419 := by
    unfold C
    simp [show (3779136 * k + 2928838) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1464419) = 5668704 * k + 4393258 := by
    unfold C
    simp [show (1889568 * k + 1464419) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4393258) = 2834352 * k + 2196629 := by
    unfold C
    simp [show (5668704 * k + 4393258) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2196629) = 8503056 * k + 6589888 := by
    unfold C
    simp [show (2834352 * k + 2196629) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6589888) = 4251528 * k + 3294944 := by
    unfold C
    simp [show (8503056 * k + 6589888) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3294944) = 2125764 * k + 1647472 := by
    unfold C
    simp [show (4251528 * k + 3294944) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1647472) = 1062882 * k + 823736 := by
    unfold C
    simp [show (2125764 * k + 1647472) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 823736) = 531441 * k + 411868 := by
    unfold C
    simp [show (1062882 * k + 823736) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 812647) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 812647)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_813223 : ∀ k : Nat,
    iterate (1048576 * k + 813223) 32 = 531441 * k + 412160 ∧
      531441 * k + 412160 < 1048576 * k + 813223 := by
  intro k
  have h1 : C (1048576 * k + 813223) = 3145728 * k + 2439670 := by
    unfold C
    simp [show (1048576 * k + 813223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2439670) = 1572864 * k + 1219835 := by
    unfold C
    simp [show (3145728 * k + 2439670) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1219835) = 4718592 * k + 3659506 := by
    unfold C
    simp [show (1572864 * k + 1219835) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3659506) = 2359296 * k + 1829753 := by
    unfold C
    simp [show (4718592 * k + 3659506) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1829753) = 7077888 * k + 5489260 := by
    unfold C
    simp [show (2359296 * k + 1829753) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5489260) = 3538944 * k + 2744630 := by
    unfold C
    simp [show (7077888 * k + 5489260) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2744630) = 1769472 * k + 1372315 := by
    unfold C
    simp [show (3538944 * k + 2744630) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1372315) = 5308416 * k + 4116946 := by
    unfold C
    simp [show (1769472 * k + 1372315) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4116946) = 2654208 * k + 2058473 := by
    unfold C
    simp [show (5308416 * k + 4116946) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2058473) = 7962624 * k + 6175420 := by
    unfold C
    simp [show (2654208 * k + 2058473) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6175420) = 3981312 * k + 3087710 := by
    unfold C
    simp [show (7962624 * k + 6175420) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3087710) = 1990656 * k + 1543855 := by
    unfold C
    simp [show (3981312 * k + 3087710) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1543855) = 5971968 * k + 4631566 := by
    unfold C
    simp [show (1990656 * k + 1543855) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4631566) = 2985984 * k + 2315783 := by
    unfold C
    simp [show (5971968 * k + 4631566) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2315783) = 8957952 * k + 6947350 := by
    unfold C
    simp [show (2985984 * k + 2315783) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6947350) = 4478976 * k + 3473675 := by
    unfold C
    simp [show (8957952 * k + 6947350) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3473675) = 13436928 * k + 10421026 := by
    unfold C
    simp [show (4478976 * k + 3473675) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10421026) = 6718464 * k + 5210513 := by
    unfold C
    simp [show (13436928 * k + 10421026) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5210513) = 20155392 * k + 15631540 := by
    unfold C
    simp [show (6718464 * k + 5210513) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15631540) = 10077696 * k + 7815770 := by
    unfold C
    simp [show (20155392 * k + 15631540) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7815770) = 5038848 * k + 3907885 := by
    unfold C
    simp [show (10077696 * k + 7815770) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3907885) = 15116544 * k + 11723656 := by
    unfold C
    simp [show (5038848 * k + 3907885) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11723656) = 7558272 * k + 5861828 := by
    unfold C
    simp [show (15116544 * k + 11723656) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5861828) = 3779136 * k + 2930914 := by
    unfold C
    simp [show (7558272 * k + 5861828) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2930914) = 1889568 * k + 1465457 := by
    unfold C
    simp [show (3779136 * k + 2930914) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1465457) = 5668704 * k + 4396372 := by
    unfold C
    simp [show (1889568 * k + 1465457) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4396372) = 2834352 * k + 2198186 := by
    unfold C
    simp [show (5668704 * k + 4396372) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2198186) = 1417176 * k + 1099093 := by
    unfold C
    simp [show (2834352 * k + 2198186) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1099093) = 4251528 * k + 3297280 := by
    unfold C
    simp [show (1417176 * k + 1099093) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3297280) = 2125764 * k + 1648640 := by
    unfold C
    simp [show (4251528 * k + 3297280) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1648640) = 1062882 * k + 824320 := by
    unfold C
    simp [show (2125764 * k + 1648640) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 824320) = 531441 * k + 412160 := by
    unfold C
    simp [show (1062882 * k + 824320) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 813223) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 813223)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_813383 : ∀ k : Nat,
    iterate (1048576 * k + 813383) 32 = 531441 * k + 412241 ∧
      531441 * k + 412241 < 1048576 * k + 813383 := by
  intro k
  have h1 : C (1048576 * k + 813383) = 3145728 * k + 2440150 := by
    unfold C
    simp [show (1048576 * k + 813383) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2440150) = 1572864 * k + 1220075 := by
    unfold C
    simp [show (3145728 * k + 2440150) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1220075) = 4718592 * k + 3660226 := by
    unfold C
    simp [show (1572864 * k + 1220075) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3660226) = 2359296 * k + 1830113 := by
    unfold C
    simp [show (4718592 * k + 3660226) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1830113) = 7077888 * k + 5490340 := by
    unfold C
    simp [show (2359296 * k + 1830113) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5490340) = 3538944 * k + 2745170 := by
    unfold C
    simp [show (7077888 * k + 5490340) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2745170) = 1769472 * k + 1372585 := by
    unfold C
    simp [show (3538944 * k + 2745170) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1372585) = 5308416 * k + 4117756 := by
    unfold C
    simp [show (1769472 * k + 1372585) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4117756) = 2654208 * k + 2058878 := by
    unfold C
    simp [show (5308416 * k + 4117756) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2058878) = 1327104 * k + 1029439 := by
    unfold C
    simp [show (2654208 * k + 2058878) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1029439) = 3981312 * k + 3088318 := by
    unfold C
    simp [show (1327104 * k + 1029439) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3088318) = 1990656 * k + 1544159 := by
    unfold C
    simp [show (3981312 * k + 3088318) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1544159) = 5971968 * k + 4632478 := by
    unfold C
    simp [show (1990656 * k + 1544159) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4632478) = 2985984 * k + 2316239 := by
    unfold C
    simp [show (5971968 * k + 4632478) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2316239) = 8957952 * k + 6948718 := by
    unfold C
    simp [show (2985984 * k + 2316239) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6948718) = 4478976 * k + 3474359 := by
    unfold C
    simp [show (8957952 * k + 6948718) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3474359) = 13436928 * k + 10423078 := by
    unfold C
    simp [show (4478976 * k + 3474359) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10423078) = 6718464 * k + 5211539 := by
    unfold C
    simp [show (13436928 * k + 10423078) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5211539) = 20155392 * k + 15634618 := by
    unfold C
    simp [show (6718464 * k + 5211539) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15634618) = 10077696 * k + 7817309 := by
    unfold C
    simp [show (20155392 * k + 15634618) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7817309) = 30233088 * k + 23451928 := by
    unfold C
    simp [show (10077696 * k + 7817309) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 23451928) = 15116544 * k + 11725964 := by
    unfold C
    simp [show (30233088 * k + 23451928) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11725964) = 7558272 * k + 5862982 := by
    unfold C
    simp [show (15116544 * k + 11725964) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5862982) = 3779136 * k + 2931491 := by
    unfold C
    simp [show (7558272 * k + 5862982) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2931491) = 11337408 * k + 8794474 := by
    unfold C
    simp [show (3779136 * k + 2931491) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8794474) = 5668704 * k + 4397237 := by
    unfold C
    simp [show (11337408 * k + 8794474) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4397237) = 17006112 * k + 13191712 := by
    unfold C
    simp [show (5668704 * k + 4397237) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13191712) = 8503056 * k + 6595856 := by
    unfold C
    simp [show (17006112 * k + 13191712) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6595856) = 4251528 * k + 3297928 := by
    unfold C
    simp [show (8503056 * k + 6595856) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3297928) = 2125764 * k + 1648964 := by
    unfold C
    simp [show (4251528 * k + 3297928) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1648964) = 1062882 * k + 824482 := by
    unfold C
    simp [show (2125764 * k + 1648964) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 824482) = 531441 * k + 412241 := by
    unfold C
    simp [show (1062882 * k + 824482) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 813383) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 813383)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard103
