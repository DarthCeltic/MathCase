import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard131

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_1029583 : ∀ k : Nat,
    iterate (1048576 * k + 1029583) 32 = 531441 * k + 521816 ∧
      531441 * k + 521816 < 1048576 * k + 1029583 := by
  intro k
  have h1 : C (1048576 * k + 1029583) = 3145728 * k + 3088750 := by
    unfold C
    simp [show (1048576 * k + 1029583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3088750) = 1572864 * k + 1544375 := by
    unfold C
    simp [show (3145728 * k + 3088750) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1544375) = 4718592 * k + 4633126 := by
    unfold C
    simp [show (1572864 * k + 1544375) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4633126) = 2359296 * k + 2316563 := by
    unfold C
    simp [show (4718592 * k + 4633126) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2316563) = 7077888 * k + 6949690 := by
    unfold C
    simp [show (2359296 * k + 2316563) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6949690) = 3538944 * k + 3474845 := by
    unfold C
    simp [show (7077888 * k + 6949690) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3474845) = 10616832 * k + 10424536 := by
    unfold C
    simp [show (3538944 * k + 3474845) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10424536) = 5308416 * k + 5212268 := by
    unfold C
    simp [show (10616832 * k + 10424536) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5212268) = 2654208 * k + 2606134 := by
    unfold C
    simp [show (5308416 * k + 5212268) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2606134) = 1327104 * k + 1303067 := by
    unfold C
    simp [show (2654208 * k + 2606134) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1303067) = 3981312 * k + 3909202 := by
    unfold C
    simp [show (1327104 * k + 1303067) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3909202) = 1990656 * k + 1954601 := by
    unfold C
    simp [show (3981312 * k + 3909202) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1954601) = 5971968 * k + 5863804 := by
    unfold C
    simp [show (1990656 * k + 1954601) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5863804) = 2985984 * k + 2931902 := by
    unfold C
    simp [show (5971968 * k + 5863804) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2931902) = 1492992 * k + 1465951 := by
    unfold C
    simp [show (2985984 * k + 2931902) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1465951) = 4478976 * k + 4397854 := by
    unfold C
    simp [show (1492992 * k + 1465951) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4397854) = 2239488 * k + 2198927 := by
    unfold C
    simp [show (4478976 * k + 4397854) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2198927) = 6718464 * k + 6596782 := by
    unfold C
    simp [show (2239488 * k + 2198927) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6596782) = 3359232 * k + 3298391 := by
    unfold C
    simp [show (6718464 * k + 6596782) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3298391) = 10077696 * k + 9895174 := by
    unfold C
    simp [show (3359232 * k + 3298391) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9895174) = 5038848 * k + 4947587 := by
    unfold C
    simp [show (10077696 * k + 9895174) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4947587) = 15116544 * k + 14842762 := by
    unfold C
    simp [show (5038848 * k + 4947587) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14842762) = 7558272 * k + 7421381 := by
    unfold C
    simp [show (15116544 * k + 14842762) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7421381) = 22674816 * k + 22264144 := by
    unfold C
    simp [show (7558272 * k + 7421381) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 22264144) = 11337408 * k + 11132072 := by
    unfold C
    simp [show (22674816 * k + 22264144) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 11132072) = 5668704 * k + 5566036 := by
    unfold C
    simp [show (11337408 * k + 11132072) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5566036) = 2834352 * k + 2783018 := by
    unfold C
    simp [show (5668704 * k + 5566036) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2783018) = 1417176 * k + 1391509 := by
    unfold C
    simp [show (2834352 * k + 2783018) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1391509) = 4251528 * k + 4174528 := by
    unfold C
    simp [show (1417176 * k + 1391509) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4174528) = 2125764 * k + 2087264 := by
    unfold C
    simp [show (4251528 * k + 4174528) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2087264) = 1062882 * k + 1043632 := by
    unfold C
    simp [show (2125764 * k + 2087264) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1043632) = 531441 * k + 521816 := by
    unfold C
    simp [show (1062882 * k + 1043632) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1029583) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1029583)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1029631 : ∀ k : Nat,
    iterate (1048576 * k + 1029631) 32 = 531441 * k + 521840 ∧
      531441 * k + 521840 < 1048576 * k + 1029631 := by
  intro k
  have h1 : C (1048576 * k + 1029631) = 3145728 * k + 3088894 := by
    unfold C
    simp [show (1048576 * k + 1029631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3088894) = 1572864 * k + 1544447 := by
    unfold C
    simp [show (3145728 * k + 3088894) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1544447) = 4718592 * k + 4633342 := by
    unfold C
    simp [show (1572864 * k + 1544447) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4633342) = 2359296 * k + 2316671 := by
    unfold C
    simp [show (4718592 * k + 4633342) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2316671) = 7077888 * k + 6950014 := by
    unfold C
    simp [show (2359296 * k + 2316671) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6950014) = 3538944 * k + 3475007 := by
    unfold C
    simp [show (7077888 * k + 6950014) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3475007) = 10616832 * k + 10425022 := by
    unfold C
    simp [show (3538944 * k + 3475007) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10425022) = 5308416 * k + 5212511 := by
    unfold C
    simp [show (10616832 * k + 10425022) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5212511) = 15925248 * k + 15637534 := by
    unfold C
    simp [show (5308416 * k + 5212511) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15637534) = 7962624 * k + 7818767 := by
    unfold C
    simp [show (15925248 * k + 15637534) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7818767) = 23887872 * k + 23456302 := by
    unfold C
    simp [show (7962624 * k + 7818767) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23456302) = 11943936 * k + 11728151 := by
    unfold C
    simp [show (23887872 * k + 23456302) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11728151) = 35831808 * k + 35184454 := by
    unfold C
    simp [show (11943936 * k + 11728151) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 35184454) = 17915904 * k + 17592227 := by
    unfold C
    simp [show (35831808 * k + 35184454) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 17592227) = 53747712 * k + 52776682 := by
    unfold C
    simp [show (17915904 * k + 17592227) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 52776682) = 26873856 * k + 26388341 := by
    unfold C
    simp [show (53747712 * k + 52776682) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 26388341) = 80621568 * k + 79165024 := by
    unfold C
    simp [show (26873856 * k + 26388341) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 79165024) = 40310784 * k + 39582512 := by
    unfold C
    simp [show (80621568 * k + 79165024) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 39582512) = 20155392 * k + 19791256 := by
    unfold C
    simp [show (40310784 * k + 39582512) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19791256) = 10077696 * k + 9895628 := by
    unfold C
    simp [show (20155392 * k + 19791256) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9895628) = 5038848 * k + 4947814 := by
    unfold C
    simp [show (10077696 * k + 9895628) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4947814) = 2519424 * k + 2473907 := by
    unfold C
    simp [show (5038848 * k + 4947814) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2473907) = 7558272 * k + 7421722 := by
    unfold C
    simp [show (2519424 * k + 2473907) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7421722) = 3779136 * k + 3710861 := by
    unfold C
    simp [show (7558272 * k + 7421722) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3710861) = 11337408 * k + 11132584 := by
    unfold C
    simp [show (3779136 * k + 3710861) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11132584) = 5668704 * k + 5566292 := by
    unfold C
    simp [show (11337408 * k + 11132584) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5566292) = 2834352 * k + 2783146 := by
    unfold C
    simp [show (5668704 * k + 5566292) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2783146) = 1417176 * k + 1391573 := by
    unfold C
    simp [show (2834352 * k + 2783146) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1391573) = 4251528 * k + 4174720 := by
    unfold C
    simp [show (1417176 * k + 1391573) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4174720) = 2125764 * k + 2087360 := by
    unfold C
    simp [show (4251528 * k + 4174720) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2087360) = 1062882 * k + 1043680 := by
    unfold C
    simp [show (2125764 * k + 2087360) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1043680) = 531441 * k + 521840 := by
    unfold C
    simp [show (1062882 * k + 1043680) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1029631) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1029631)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1029735 : ∀ k : Nat,
    iterate (1048576 * k + 1029735) 32 = 531441 * k + 521893 ∧
      531441 * k + 521893 < 1048576 * k + 1029735 := by
  intro k
  have h1 : C (1048576 * k + 1029735) = 3145728 * k + 3089206 := by
    unfold C
    simp [show (1048576 * k + 1029735) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3089206) = 1572864 * k + 1544603 := by
    unfold C
    simp [show (3145728 * k + 3089206) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1544603) = 4718592 * k + 4633810 := by
    unfold C
    simp [show (1572864 * k + 1544603) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4633810) = 2359296 * k + 2316905 := by
    unfold C
    simp [show (4718592 * k + 4633810) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2316905) = 7077888 * k + 6950716 := by
    unfold C
    simp [show (2359296 * k + 2316905) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6950716) = 3538944 * k + 3475358 := by
    unfold C
    simp [show (7077888 * k + 6950716) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3475358) = 1769472 * k + 1737679 := by
    unfold C
    simp [show (3538944 * k + 3475358) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1737679) = 5308416 * k + 5213038 := by
    unfold C
    simp [show (1769472 * k + 1737679) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5213038) = 2654208 * k + 2606519 := by
    unfold C
    simp [show (5308416 * k + 5213038) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2606519) = 7962624 * k + 7819558 := by
    unfold C
    simp [show (2654208 * k + 2606519) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7819558) = 3981312 * k + 3909779 := by
    unfold C
    simp [show (7962624 * k + 7819558) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3909779) = 11943936 * k + 11729338 := by
    unfold C
    simp [show (3981312 * k + 3909779) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11729338) = 5971968 * k + 5864669 := by
    unfold C
    simp [show (11943936 * k + 11729338) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5864669) = 17915904 * k + 17594008 := by
    unfold C
    simp [show (5971968 * k + 5864669) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17594008) = 8957952 * k + 8797004 := by
    unfold C
    simp [show (17915904 * k + 17594008) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8797004) = 4478976 * k + 4398502 := by
    unfold C
    simp [show (8957952 * k + 8797004) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4398502) = 2239488 * k + 2199251 := by
    unfold C
    simp [show (4478976 * k + 4398502) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2199251) = 6718464 * k + 6597754 := by
    unfold C
    simp [show (2239488 * k + 2199251) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6597754) = 3359232 * k + 3298877 := by
    unfold C
    simp [show (6718464 * k + 6597754) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3298877) = 10077696 * k + 9896632 := by
    unfold C
    simp [show (3359232 * k + 3298877) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9896632) = 5038848 * k + 4948316 := by
    unfold C
    simp [show (10077696 * k + 9896632) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4948316) = 2519424 * k + 2474158 := by
    unfold C
    simp [show (5038848 * k + 4948316) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2474158) = 1259712 * k + 1237079 := by
    unfold C
    simp [show (2519424 * k + 2474158) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1237079) = 3779136 * k + 3711238 := by
    unfold C
    simp [show (1259712 * k + 1237079) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3711238) = 1889568 * k + 1855619 := by
    unfold C
    simp [show (3779136 * k + 3711238) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1855619) = 5668704 * k + 5566858 := by
    unfold C
    simp [show (1889568 * k + 1855619) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5566858) = 2834352 * k + 2783429 := by
    unfold C
    simp [show (5668704 * k + 5566858) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2783429) = 8503056 * k + 8350288 := by
    unfold C
    simp [show (2834352 * k + 2783429) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8350288) = 4251528 * k + 4175144 := by
    unfold C
    simp [show (8503056 * k + 8350288) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4175144) = 2125764 * k + 2087572 := by
    unfold C
    simp [show (4251528 * k + 4175144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2087572) = 1062882 * k + 1043786 := by
    unfold C
    simp [show (2125764 * k + 2087572) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1043786) = 531441 * k + 521893 := by
    unfold C
    simp [show (1062882 * k + 1043786) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1029735) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1029735)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1030311 : ∀ k : Nat,
    iterate (1048576 * k + 1030311) 32 = 531441 * k + 522185 ∧
      531441 * k + 522185 < 1048576 * k + 1030311 := by
  intro k
  have h1 : C (1048576 * k + 1030311) = 3145728 * k + 3090934 := by
    unfold C
    simp [show (1048576 * k + 1030311) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3090934) = 1572864 * k + 1545467 := by
    unfold C
    simp [show (3145728 * k + 3090934) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1545467) = 4718592 * k + 4636402 := by
    unfold C
    simp [show (1572864 * k + 1545467) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4636402) = 2359296 * k + 2318201 := by
    unfold C
    simp [show (4718592 * k + 4636402) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2318201) = 7077888 * k + 6954604 := by
    unfold C
    simp [show (2359296 * k + 2318201) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6954604) = 3538944 * k + 3477302 := by
    unfold C
    simp [show (7077888 * k + 6954604) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3477302) = 1769472 * k + 1738651 := by
    unfold C
    simp [show (3538944 * k + 3477302) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1738651) = 5308416 * k + 5215954 := by
    unfold C
    simp [show (1769472 * k + 1738651) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5215954) = 2654208 * k + 2607977 := by
    unfold C
    simp [show (5308416 * k + 5215954) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2607977) = 7962624 * k + 7823932 := by
    unfold C
    simp [show (2654208 * k + 2607977) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7823932) = 3981312 * k + 3911966 := by
    unfold C
    simp [show (7962624 * k + 7823932) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3911966) = 1990656 * k + 1955983 := by
    unfold C
    simp [show (3981312 * k + 3911966) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1955983) = 5971968 * k + 5867950 := by
    unfold C
    simp [show (1990656 * k + 1955983) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5867950) = 2985984 * k + 2933975 := by
    unfold C
    simp [show (5971968 * k + 5867950) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2933975) = 8957952 * k + 8801926 := by
    unfold C
    simp [show (2985984 * k + 2933975) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8801926) = 4478976 * k + 4400963 := by
    unfold C
    simp [show (8957952 * k + 8801926) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4400963) = 13436928 * k + 13202890 := by
    unfold C
    simp [show (4478976 * k + 4400963) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 13202890) = 6718464 * k + 6601445 := by
    unfold C
    simp [show (13436928 * k + 13202890) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6601445) = 20155392 * k + 19804336 := by
    unfold C
    simp [show (6718464 * k + 6601445) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19804336) = 10077696 * k + 9902168 := by
    unfold C
    simp [show (20155392 * k + 19804336) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9902168) = 5038848 * k + 4951084 := by
    unfold C
    simp [show (10077696 * k + 9902168) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4951084) = 2519424 * k + 2475542 := by
    unfold C
    simp [show (5038848 * k + 4951084) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2475542) = 1259712 * k + 1237771 := by
    unfold C
    simp [show (2519424 * k + 2475542) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1237771) = 3779136 * k + 3713314 := by
    unfold C
    simp [show (1259712 * k + 1237771) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3713314) = 1889568 * k + 1856657 := by
    unfold C
    simp [show (3779136 * k + 3713314) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1856657) = 5668704 * k + 5569972 := by
    unfold C
    simp [show (1889568 * k + 1856657) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5569972) = 2834352 * k + 2784986 := by
    unfold C
    simp [show (5668704 * k + 5569972) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2784986) = 1417176 * k + 1392493 := by
    unfold C
    simp [show (2834352 * k + 2784986) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1392493) = 4251528 * k + 4177480 := by
    unfold C
    simp [show (1417176 * k + 1392493) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4177480) = 2125764 * k + 2088740 := by
    unfold C
    simp [show (4251528 * k + 4177480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2088740) = 1062882 * k + 1044370 := by
    unfold C
    simp [show (2125764 * k + 2088740) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1044370) = 531441 * k + 522185 := by
    unfold C
    simp [show (1062882 * k + 1044370) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1030311) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1030311)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1030759 : ∀ k : Nat,
    iterate (1048576 * k + 1030759) 32 = 531441 * k + 522412 ∧
      531441 * k + 522412 < 1048576 * k + 1030759 := by
  intro k
  have h1 : C (1048576 * k + 1030759) = 3145728 * k + 3092278 := by
    unfold C
    simp [show (1048576 * k + 1030759) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3092278) = 1572864 * k + 1546139 := by
    unfold C
    simp [show (3145728 * k + 3092278) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1546139) = 4718592 * k + 4638418 := by
    unfold C
    simp [show (1572864 * k + 1546139) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4638418) = 2359296 * k + 2319209 := by
    unfold C
    simp [show (4718592 * k + 4638418) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2319209) = 7077888 * k + 6957628 := by
    unfold C
    simp [show (2359296 * k + 2319209) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6957628) = 3538944 * k + 3478814 := by
    unfold C
    simp [show (7077888 * k + 6957628) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3478814) = 1769472 * k + 1739407 := by
    unfold C
    simp [show (3538944 * k + 3478814) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1739407) = 5308416 * k + 5218222 := by
    unfold C
    simp [show (1769472 * k + 1739407) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5218222) = 2654208 * k + 2609111 := by
    unfold C
    simp [show (5308416 * k + 5218222) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2609111) = 7962624 * k + 7827334 := by
    unfold C
    simp [show (2654208 * k + 2609111) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7827334) = 3981312 * k + 3913667 := by
    unfold C
    simp [show (7962624 * k + 7827334) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3913667) = 11943936 * k + 11741002 := by
    unfold C
    simp [show (3981312 * k + 3913667) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11741002) = 5971968 * k + 5870501 := by
    unfold C
    simp [show (11943936 * k + 11741002) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5870501) = 17915904 * k + 17611504 := by
    unfold C
    simp [show (5971968 * k + 5870501) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17611504) = 8957952 * k + 8805752 := by
    unfold C
    simp [show (17915904 * k + 17611504) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8805752) = 4478976 * k + 4402876 := by
    unfold C
    simp [show (8957952 * k + 8805752) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4402876) = 2239488 * k + 2201438 := by
    unfold C
    simp [show (4478976 * k + 4402876) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2201438) = 1119744 * k + 1100719 := by
    unfold C
    simp [show (2239488 * k + 2201438) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 1100719) = 3359232 * k + 3302158 := by
    unfold C
    simp [show (1119744 * k + 1100719) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 3302158) = 1679616 * k + 1651079 := by
    unfold C
    simp [show (3359232 * k + 3302158) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1651079) = 5038848 * k + 4953238 := by
    unfold C
    simp [show (1679616 * k + 1651079) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4953238) = 2519424 * k + 2476619 := by
    unfold C
    simp [show (5038848 * k + 4953238) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2476619) = 7558272 * k + 7429858 := by
    unfold C
    simp [show (2519424 * k + 2476619) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7429858) = 3779136 * k + 3714929 := by
    unfold C
    simp [show (7558272 * k + 7429858) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3714929) = 11337408 * k + 11144788 := by
    unfold C
    simp [show (3779136 * k + 3714929) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11144788) = 5668704 * k + 5572394 := by
    unfold C
    simp [show (11337408 * k + 11144788) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5572394) = 2834352 * k + 2786197 := by
    unfold C
    simp [show (5668704 * k + 5572394) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2786197) = 8503056 * k + 8358592 := by
    unfold C
    simp [show (2834352 * k + 2786197) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8358592) = 4251528 * k + 4179296 := by
    unfold C
    simp [show (8503056 * k + 8358592) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4179296) = 2125764 * k + 2089648 := by
    unfold C
    simp [show (4251528 * k + 4179296) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2089648) = 1062882 * k + 1044824 := by
    unfold C
    simp [show (2125764 * k + 2089648) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1044824) = 531441 * k + 522412 := by
    unfold C
    simp [show (1062882 * k + 1044824) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1030759) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1030759)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1031163 : ∀ k : Nat,
    iterate (1048576 * k + 1031163) 32 = 531441 * k + 522617 ∧
      531441 * k + 522617 < 1048576 * k + 1031163 := by
  intro k
  have h1 : C (1048576 * k + 1031163) = 3145728 * k + 3093490 := by
    unfold C
    simp [show (1048576 * k + 1031163) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3093490) = 1572864 * k + 1546745 := by
    unfold C
    simp [show (3145728 * k + 3093490) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1546745) = 4718592 * k + 4640236 := by
    unfold C
    simp [show (1572864 * k + 1546745) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4640236) = 2359296 * k + 2320118 := by
    unfold C
    simp [show (4718592 * k + 4640236) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2320118) = 1179648 * k + 1160059 := by
    unfold C
    simp [show (2359296 * k + 2320118) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1160059) = 3538944 * k + 3480178 := by
    unfold C
    simp [show (1179648 * k + 1160059) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3480178) = 1769472 * k + 1740089 := by
    unfold C
    simp [show (3538944 * k + 3480178) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1740089) = 5308416 * k + 5220268 := by
    unfold C
    simp [show (1769472 * k + 1740089) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5220268) = 2654208 * k + 2610134 := by
    unfold C
    simp [show (5308416 * k + 5220268) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2610134) = 1327104 * k + 1305067 := by
    unfold C
    simp [show (2654208 * k + 2610134) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1305067) = 3981312 * k + 3915202 := by
    unfold C
    simp [show (1327104 * k + 1305067) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3915202) = 1990656 * k + 1957601 := by
    unfold C
    simp [show (3981312 * k + 3915202) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1957601) = 5971968 * k + 5872804 := by
    unfold C
    simp [show (1990656 * k + 1957601) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5872804) = 2985984 * k + 2936402 := by
    unfold C
    simp [show (5971968 * k + 5872804) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2936402) = 1492992 * k + 1468201 := by
    unfold C
    simp [show (2985984 * k + 2936402) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1468201) = 4478976 * k + 4404604 := by
    unfold C
    simp [show (1492992 * k + 1468201) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4404604) = 2239488 * k + 2202302 := by
    unfold C
    simp [show (4478976 * k + 4404604) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2202302) = 1119744 * k + 1101151 := by
    unfold C
    simp [show (2239488 * k + 2202302) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 1101151) = 3359232 * k + 3303454 := by
    unfold C
    simp [show (1119744 * k + 1101151) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 3303454) = 1679616 * k + 1651727 := by
    unfold C
    simp [show (3359232 * k + 3303454) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1651727) = 5038848 * k + 4955182 := by
    unfold C
    simp [show (1679616 * k + 1651727) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4955182) = 2519424 * k + 2477591 := by
    unfold C
    simp [show (5038848 * k + 4955182) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2477591) = 7558272 * k + 7432774 := by
    unfold C
    simp [show (2519424 * k + 2477591) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7432774) = 3779136 * k + 3716387 := by
    unfold C
    simp [show (7558272 * k + 7432774) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3716387) = 11337408 * k + 11149162 := by
    unfold C
    simp [show (3779136 * k + 3716387) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11149162) = 5668704 * k + 5574581 := by
    unfold C
    simp [show (11337408 * k + 11149162) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5574581) = 17006112 * k + 16723744 := by
    unfold C
    simp [show (5668704 * k + 5574581) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 16723744) = 8503056 * k + 8361872 := by
    unfold C
    simp [show (17006112 * k + 16723744) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8361872) = 4251528 * k + 4180936 := by
    unfold C
    simp [show (8503056 * k + 8361872) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4180936) = 2125764 * k + 2090468 := by
    unfold C
    simp [show (4251528 * k + 4180936) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2090468) = 1062882 * k + 1045234 := by
    unfold C
    simp [show (2125764 * k + 2090468) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1045234) = 531441 * k + 522617 := by
    unfold C
    simp [show (1062882 * k + 1045234) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1031163) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1031163)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1031323 : ∀ k : Nat,
    iterate (1048576 * k + 1031323) 32 = 531441 * k + 522698 ∧
      531441 * k + 522698 < 1048576 * k + 1031323 := by
  intro k
  have h1 : C (1048576 * k + 1031323) = 3145728 * k + 3093970 := by
    unfold C
    simp [show (1048576 * k + 1031323) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3093970) = 1572864 * k + 1546985 := by
    unfold C
    simp [show (3145728 * k + 3093970) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1546985) = 4718592 * k + 4640956 := by
    unfold C
    simp [show (1572864 * k + 1546985) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4640956) = 2359296 * k + 2320478 := by
    unfold C
    simp [show (4718592 * k + 4640956) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2320478) = 1179648 * k + 1160239 := by
    unfold C
    simp [show (2359296 * k + 2320478) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1160239) = 3538944 * k + 3480718 := by
    unfold C
    simp [show (1179648 * k + 1160239) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3480718) = 1769472 * k + 1740359 := by
    unfold C
    simp [show (3538944 * k + 3480718) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1740359) = 5308416 * k + 5221078 := by
    unfold C
    simp [show (1769472 * k + 1740359) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5221078) = 2654208 * k + 2610539 := by
    unfold C
    simp [show (5308416 * k + 5221078) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2610539) = 7962624 * k + 7831618 := by
    unfold C
    simp [show (2654208 * k + 2610539) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7831618) = 3981312 * k + 3915809 := by
    unfold C
    simp [show (7962624 * k + 7831618) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3915809) = 11943936 * k + 11747428 := by
    unfold C
    simp [show (3981312 * k + 3915809) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11747428) = 5971968 * k + 5873714 := by
    unfold C
    simp [show (11943936 * k + 11747428) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5873714) = 2985984 * k + 2936857 := by
    unfold C
    simp [show (5971968 * k + 5873714) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2936857) = 8957952 * k + 8810572 := by
    unfold C
    simp [show (2985984 * k + 2936857) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8810572) = 4478976 * k + 4405286 := by
    unfold C
    simp [show (8957952 * k + 8810572) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4405286) = 2239488 * k + 2202643 := by
    unfold C
    simp [show (4478976 * k + 4405286) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2202643) = 6718464 * k + 6607930 := by
    unfold C
    simp [show (2239488 * k + 2202643) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6607930) = 3359232 * k + 3303965 := by
    unfold C
    simp [show (6718464 * k + 6607930) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3303965) = 10077696 * k + 9911896 := by
    unfold C
    simp [show (3359232 * k + 3303965) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9911896) = 5038848 * k + 4955948 := by
    unfold C
    simp [show (10077696 * k + 9911896) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4955948) = 2519424 * k + 2477974 := by
    unfold C
    simp [show (5038848 * k + 4955948) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2477974) = 1259712 * k + 1238987 := by
    unfold C
    simp [show (2519424 * k + 2477974) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1238987) = 3779136 * k + 3716962 := by
    unfold C
    simp [show (1259712 * k + 1238987) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3716962) = 1889568 * k + 1858481 := by
    unfold C
    simp [show (3779136 * k + 3716962) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1858481) = 5668704 * k + 5575444 := by
    unfold C
    simp [show (1889568 * k + 1858481) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5575444) = 2834352 * k + 2787722 := by
    unfold C
    simp [show (5668704 * k + 5575444) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2787722) = 1417176 * k + 1393861 := by
    unfold C
    simp [show (2834352 * k + 2787722) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1393861) = 4251528 * k + 4181584 := by
    unfold C
    simp [show (1417176 * k + 1393861) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4181584) = 2125764 * k + 2090792 := by
    unfold C
    simp [show (4251528 * k + 4181584) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2090792) = 1062882 * k + 1045396 := by
    unfold C
    simp [show (2125764 * k + 2090792) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1045396) = 531441 * k + 522698 := by
    unfold C
    simp [show (1062882 * k + 1045396) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1031323) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1031323)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1031839 : ∀ k : Nat,
    iterate (1048576 * k + 1031839) 32 = 531441 * k + 522959 ∧
      531441 * k + 522959 < 1048576 * k + 1031839 := by
  intro k
  have h1 : C (1048576 * k + 1031839) = 3145728 * k + 3095518 := by
    unfold C
    simp [show (1048576 * k + 1031839) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3095518) = 1572864 * k + 1547759 := by
    unfold C
    simp [show (3145728 * k + 3095518) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1547759) = 4718592 * k + 4643278 := by
    unfold C
    simp [show (1572864 * k + 1547759) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4643278) = 2359296 * k + 2321639 := by
    unfold C
    simp [show (4718592 * k + 4643278) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2321639) = 7077888 * k + 6964918 := by
    unfold C
    simp [show (2359296 * k + 2321639) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6964918) = 3538944 * k + 3482459 := by
    unfold C
    simp [show (7077888 * k + 6964918) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3482459) = 10616832 * k + 10447378 := by
    unfold C
    simp [show (3538944 * k + 3482459) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10447378) = 5308416 * k + 5223689 := by
    unfold C
    simp [show (10616832 * k + 10447378) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5223689) = 15925248 * k + 15671068 := by
    unfold C
    simp [show (5308416 * k + 5223689) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15671068) = 7962624 * k + 7835534 := by
    unfold C
    simp [show (15925248 * k + 15671068) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7835534) = 3981312 * k + 3917767 := by
    unfold C
    simp [show (7962624 * k + 7835534) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3917767) = 11943936 * k + 11753302 := by
    unfold C
    simp [show (3981312 * k + 3917767) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11753302) = 5971968 * k + 5876651 := by
    unfold C
    simp [show (11943936 * k + 11753302) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5876651) = 17915904 * k + 17629954 := by
    unfold C
    simp [show (5971968 * k + 5876651) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17629954) = 8957952 * k + 8814977 := by
    unfold C
    simp [show (17915904 * k + 17629954) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8814977) = 26873856 * k + 26444932 := by
    unfold C
    simp [show (8957952 * k + 8814977) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 26444932) = 13436928 * k + 13222466 := by
    unfold C
    simp [show (26873856 * k + 26444932) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 13222466) = 6718464 * k + 6611233 := by
    unfold C
    simp [show (13436928 * k + 13222466) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6611233) = 20155392 * k + 19833700 := by
    unfold C
    simp [show (6718464 * k + 6611233) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19833700) = 10077696 * k + 9916850 := by
    unfold C
    simp [show (20155392 * k + 19833700) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9916850) = 5038848 * k + 4958425 := by
    unfold C
    simp [show (10077696 * k + 9916850) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4958425) = 15116544 * k + 14875276 := by
    unfold C
    simp [show (5038848 * k + 4958425) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14875276) = 7558272 * k + 7437638 := by
    unfold C
    simp [show (15116544 * k + 14875276) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7437638) = 3779136 * k + 3718819 := by
    unfold C
    simp [show (7558272 * k + 7437638) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3718819) = 11337408 * k + 11156458 := by
    unfold C
    simp [show (3779136 * k + 3718819) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11156458) = 5668704 * k + 5578229 := by
    unfold C
    simp [show (11337408 * k + 11156458) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5578229) = 17006112 * k + 16734688 := by
    unfold C
    simp [show (5668704 * k + 5578229) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 16734688) = 8503056 * k + 8367344 := by
    unfold C
    simp [show (17006112 * k + 16734688) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8367344) = 4251528 * k + 4183672 := by
    unfold C
    simp [show (8503056 * k + 8367344) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4183672) = 2125764 * k + 2091836 := by
    unfold C
    simp [show (4251528 * k + 4183672) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2091836) = 1062882 * k + 1045918 := by
    unfold C
    simp [show (2125764 * k + 2091836) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1045918) = 531441 * k + 522959 := by
    unfold C
    simp [show (1062882 * k + 1045918) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1031839) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1031839)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1032127 : ∀ k : Nat,
    iterate (1048576 * k + 1032127) 32 = 531441 * k + 523105 ∧
      531441 * k + 523105 < 1048576 * k + 1032127 := by
  intro k
  have h1 : C (1048576 * k + 1032127) = 3145728 * k + 3096382 := by
    unfold C
    simp [show (1048576 * k + 1032127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3096382) = 1572864 * k + 1548191 := by
    unfold C
    simp [show (3145728 * k + 3096382) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1548191) = 4718592 * k + 4644574 := by
    unfold C
    simp [show (1572864 * k + 1548191) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4644574) = 2359296 * k + 2322287 := by
    unfold C
    simp [show (4718592 * k + 4644574) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2322287) = 7077888 * k + 6966862 := by
    unfold C
    simp [show (2359296 * k + 2322287) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6966862) = 3538944 * k + 3483431 := by
    unfold C
    simp [show (7077888 * k + 6966862) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3483431) = 10616832 * k + 10450294 := by
    unfold C
    simp [show (3538944 * k + 3483431) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10450294) = 5308416 * k + 5225147 := by
    unfold C
    simp [show (10616832 * k + 10450294) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5225147) = 15925248 * k + 15675442 := by
    unfold C
    simp [show (5308416 * k + 5225147) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15675442) = 7962624 * k + 7837721 := by
    unfold C
    simp [show (15925248 * k + 15675442) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7837721) = 23887872 * k + 23513164 := by
    unfold C
    simp [show (7962624 * k + 7837721) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23513164) = 11943936 * k + 11756582 := by
    unfold C
    simp [show (23887872 * k + 23513164) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11756582) = 5971968 * k + 5878291 := by
    unfold C
    simp [show (11943936 * k + 11756582) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5878291) = 17915904 * k + 17634874 := by
    unfold C
    simp [show (5971968 * k + 5878291) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17634874) = 8957952 * k + 8817437 := by
    unfold C
    simp [show (17915904 * k + 17634874) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8817437) = 26873856 * k + 26452312 := by
    unfold C
    simp [show (8957952 * k + 8817437) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 26452312) = 13436928 * k + 13226156 := by
    unfold C
    simp [show (26873856 * k + 26452312) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 13226156) = 6718464 * k + 6613078 := by
    unfold C
    simp [show (13436928 * k + 13226156) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6613078) = 3359232 * k + 3306539 := by
    unfold C
    simp [show (6718464 * k + 6613078) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3306539) = 10077696 * k + 9919618 := by
    unfold C
    simp [show (3359232 * k + 3306539) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9919618) = 5038848 * k + 4959809 := by
    unfold C
    simp [show (10077696 * k + 9919618) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4959809) = 15116544 * k + 14879428 := by
    unfold C
    simp [show (5038848 * k + 4959809) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14879428) = 7558272 * k + 7439714 := by
    unfold C
    simp [show (15116544 * k + 14879428) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7439714) = 3779136 * k + 3719857 := by
    unfold C
    simp [show (7558272 * k + 7439714) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3719857) = 11337408 * k + 11159572 := by
    unfold C
    simp [show (3779136 * k + 3719857) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11159572) = 5668704 * k + 5579786 := by
    unfold C
    simp [show (11337408 * k + 11159572) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5579786) = 2834352 * k + 2789893 := by
    unfold C
    simp [show (5668704 * k + 5579786) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2789893) = 8503056 * k + 8369680 := by
    unfold C
    simp [show (2834352 * k + 2789893) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8369680) = 4251528 * k + 4184840 := by
    unfold C
    simp [show (8503056 * k + 8369680) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4184840) = 2125764 * k + 2092420 := by
    unfold C
    simp [show (4251528 * k + 4184840) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2092420) = 1062882 * k + 1046210 := by
    unfold C
    simp [show (2125764 * k + 2092420) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1046210) = 531441 * k + 523105 := by
    unfold C
    simp [show (1062882 * k + 1046210) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1032127) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1032127)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1032187 : ∀ k : Nat,
    iterate (1048576 * k + 1032187) 32 = 531441 * k + 523136 ∧
      531441 * k + 523136 < 1048576 * k + 1032187 := by
  intro k
  have h1 : C (1048576 * k + 1032187) = 3145728 * k + 3096562 := by
    unfold C
    simp [show (1048576 * k + 1032187) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3096562) = 1572864 * k + 1548281 := by
    unfold C
    simp [show (3145728 * k + 3096562) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1548281) = 4718592 * k + 4644844 := by
    unfold C
    simp [show (1572864 * k + 1548281) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4644844) = 2359296 * k + 2322422 := by
    unfold C
    simp [show (4718592 * k + 4644844) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2322422) = 1179648 * k + 1161211 := by
    unfold C
    simp [show (2359296 * k + 2322422) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1161211) = 3538944 * k + 3483634 := by
    unfold C
    simp [show (1179648 * k + 1161211) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3483634) = 1769472 * k + 1741817 := by
    unfold C
    simp [show (3538944 * k + 3483634) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1741817) = 5308416 * k + 5225452 := by
    unfold C
    simp [show (1769472 * k + 1741817) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5225452) = 2654208 * k + 2612726 := by
    unfold C
    simp [show (5308416 * k + 5225452) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2612726) = 1327104 * k + 1306363 := by
    unfold C
    simp [show (2654208 * k + 2612726) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1306363) = 3981312 * k + 3919090 := by
    unfold C
    simp [show (1327104 * k + 1306363) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3919090) = 1990656 * k + 1959545 := by
    unfold C
    simp [show (3981312 * k + 3919090) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1959545) = 5971968 * k + 5878636 := by
    unfold C
    simp [show (1990656 * k + 1959545) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5878636) = 2985984 * k + 2939318 := by
    unfold C
    simp [show (5971968 * k + 5878636) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2939318) = 1492992 * k + 1469659 := by
    unfold C
    simp [show (2985984 * k + 2939318) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1469659) = 4478976 * k + 4408978 := by
    unfold C
    simp [show (1492992 * k + 1469659) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4408978) = 2239488 * k + 2204489 := by
    unfold C
    simp [show (4478976 * k + 4408978) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2204489) = 6718464 * k + 6613468 := by
    unfold C
    simp [show (2239488 * k + 2204489) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6613468) = 3359232 * k + 3306734 := by
    unfold C
    simp [show (6718464 * k + 6613468) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3306734) = 1679616 * k + 1653367 := by
    unfold C
    simp [show (3359232 * k + 3306734) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1653367) = 5038848 * k + 4960102 := by
    unfold C
    simp [show (1679616 * k + 1653367) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4960102) = 2519424 * k + 2480051 := by
    unfold C
    simp [show (5038848 * k + 4960102) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2480051) = 7558272 * k + 7440154 := by
    unfold C
    simp [show (2519424 * k + 2480051) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7440154) = 3779136 * k + 3720077 := by
    unfold C
    simp [show (7558272 * k + 7440154) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3720077) = 11337408 * k + 11160232 := by
    unfold C
    simp [show (3779136 * k + 3720077) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11160232) = 5668704 * k + 5580116 := by
    unfold C
    simp [show (11337408 * k + 11160232) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5580116) = 2834352 * k + 2790058 := by
    unfold C
    simp [show (5668704 * k + 5580116) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2790058) = 1417176 * k + 1395029 := by
    unfold C
    simp [show (2834352 * k + 2790058) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1395029) = 4251528 * k + 4185088 := by
    unfold C
    simp [show (1417176 * k + 1395029) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4185088) = 2125764 * k + 2092544 := by
    unfold C
    simp [show (4251528 * k + 4185088) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2092544) = 1062882 * k + 1046272 := by
    unfold C
    simp [show (2125764 * k + 2092544) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1046272) = 531441 * k + 523136 := by
    unfold C
    simp [show (1062882 * k + 1046272) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1032187) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1032187)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1032239 : ∀ k : Nat,
    iterate (1048576 * k + 1032239) 32 = 531441 * k + 523162 ∧
      531441 * k + 523162 < 1048576 * k + 1032239 := by
  intro k
  have h1 : C (1048576 * k + 1032239) = 3145728 * k + 3096718 := by
    unfold C
    simp [show (1048576 * k + 1032239) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3096718) = 1572864 * k + 1548359 := by
    unfold C
    simp [show (3145728 * k + 3096718) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1548359) = 4718592 * k + 4645078 := by
    unfold C
    simp [show (1572864 * k + 1548359) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4645078) = 2359296 * k + 2322539 := by
    unfold C
    simp [show (4718592 * k + 4645078) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2322539) = 7077888 * k + 6967618 := by
    unfold C
    simp [show (2359296 * k + 2322539) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6967618) = 3538944 * k + 3483809 := by
    unfold C
    simp [show (7077888 * k + 6967618) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3483809) = 10616832 * k + 10451428 := by
    unfold C
    simp [show (3538944 * k + 3483809) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10451428) = 5308416 * k + 5225714 := by
    unfold C
    simp [show (10616832 * k + 10451428) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5225714) = 2654208 * k + 2612857 := by
    unfold C
    simp [show (5308416 * k + 5225714) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2612857) = 7962624 * k + 7838572 := by
    unfold C
    simp [show (2654208 * k + 2612857) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7838572) = 3981312 * k + 3919286 := by
    unfold C
    simp [show (7962624 * k + 7838572) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3919286) = 1990656 * k + 1959643 := by
    unfold C
    simp [show (3981312 * k + 3919286) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1959643) = 5971968 * k + 5878930 := by
    unfold C
    simp [show (1990656 * k + 1959643) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5878930) = 2985984 * k + 2939465 := by
    unfold C
    simp [show (5971968 * k + 5878930) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2939465) = 8957952 * k + 8818396 := by
    unfold C
    simp [show (2985984 * k + 2939465) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8818396) = 4478976 * k + 4409198 := by
    unfold C
    simp [show (8957952 * k + 8818396) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4409198) = 2239488 * k + 2204599 := by
    unfold C
    simp [show (4478976 * k + 4409198) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2204599) = 6718464 * k + 6613798 := by
    unfold C
    simp [show (2239488 * k + 2204599) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6613798) = 3359232 * k + 3306899 := by
    unfold C
    simp [show (6718464 * k + 6613798) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3306899) = 10077696 * k + 9920698 := by
    unfold C
    simp [show (3359232 * k + 3306899) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9920698) = 5038848 * k + 4960349 := by
    unfold C
    simp [show (10077696 * k + 9920698) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4960349) = 15116544 * k + 14881048 := by
    unfold C
    simp [show (5038848 * k + 4960349) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14881048) = 7558272 * k + 7440524 := by
    unfold C
    simp [show (15116544 * k + 14881048) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7440524) = 3779136 * k + 3720262 := by
    unfold C
    simp [show (7558272 * k + 7440524) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3720262) = 1889568 * k + 1860131 := by
    unfold C
    simp [show (3779136 * k + 3720262) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1860131) = 5668704 * k + 5580394 := by
    unfold C
    simp [show (1889568 * k + 1860131) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5580394) = 2834352 * k + 2790197 := by
    unfold C
    simp [show (5668704 * k + 5580394) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2790197) = 8503056 * k + 8370592 := by
    unfold C
    simp [show (2834352 * k + 2790197) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8370592) = 4251528 * k + 4185296 := by
    unfold C
    simp [show (8503056 * k + 8370592) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4185296) = 2125764 * k + 2092648 := by
    unfold C
    simp [show (4251528 * k + 4185296) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2092648) = 1062882 * k + 1046324 := by
    unfold C
    simp [show (2125764 * k + 2092648) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1046324) = 531441 * k + 523162 := by
    unfold C
    simp [show (1062882 * k + 1046324) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1032239) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1032239)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1032347 : ∀ k : Nat,
    iterate (1048576 * k + 1032347) 32 = 531441 * k + 523217 ∧
      531441 * k + 523217 < 1048576 * k + 1032347 := by
  intro k
  have h1 : C (1048576 * k + 1032347) = 3145728 * k + 3097042 := by
    unfold C
    simp [show (1048576 * k + 1032347) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3097042) = 1572864 * k + 1548521 := by
    unfold C
    simp [show (3145728 * k + 3097042) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1548521) = 4718592 * k + 4645564 := by
    unfold C
    simp [show (1572864 * k + 1548521) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4645564) = 2359296 * k + 2322782 := by
    unfold C
    simp [show (4718592 * k + 4645564) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2322782) = 1179648 * k + 1161391 := by
    unfold C
    simp [show (2359296 * k + 2322782) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1161391) = 3538944 * k + 3484174 := by
    unfold C
    simp [show (1179648 * k + 1161391) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3484174) = 1769472 * k + 1742087 := by
    unfold C
    simp [show (3538944 * k + 3484174) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1742087) = 5308416 * k + 5226262 := by
    unfold C
    simp [show (1769472 * k + 1742087) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5226262) = 2654208 * k + 2613131 := by
    unfold C
    simp [show (5308416 * k + 5226262) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2613131) = 7962624 * k + 7839394 := by
    unfold C
    simp [show (2654208 * k + 2613131) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7839394) = 3981312 * k + 3919697 := by
    unfold C
    simp [show (7962624 * k + 7839394) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3919697) = 11943936 * k + 11759092 := by
    unfold C
    simp [show (3981312 * k + 3919697) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11759092) = 5971968 * k + 5879546 := by
    unfold C
    simp [show (11943936 * k + 11759092) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5879546) = 2985984 * k + 2939773 := by
    unfold C
    simp [show (5971968 * k + 5879546) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2939773) = 8957952 * k + 8819320 := by
    unfold C
    simp [show (2985984 * k + 2939773) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8819320) = 4478976 * k + 4409660 := by
    unfold C
    simp [show (8957952 * k + 8819320) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4409660) = 2239488 * k + 2204830 := by
    unfold C
    simp [show (4478976 * k + 4409660) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2204830) = 1119744 * k + 1102415 := by
    unfold C
    simp [show (2239488 * k + 2204830) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 1102415) = 3359232 * k + 3307246 := by
    unfold C
    simp [show (1119744 * k + 1102415) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 3307246) = 1679616 * k + 1653623 := by
    unfold C
    simp [show (3359232 * k + 3307246) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1653623) = 5038848 * k + 4960870 := by
    unfold C
    simp [show (1679616 * k + 1653623) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4960870) = 2519424 * k + 2480435 := by
    unfold C
    simp [show (5038848 * k + 4960870) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2480435) = 7558272 * k + 7441306 := by
    unfold C
    simp [show (2519424 * k + 2480435) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7441306) = 3779136 * k + 3720653 := by
    unfold C
    simp [show (7558272 * k + 7441306) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3720653) = 11337408 * k + 11161960 := by
    unfold C
    simp [show (3779136 * k + 3720653) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11161960) = 5668704 * k + 5580980 := by
    unfold C
    simp [show (11337408 * k + 11161960) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5580980) = 2834352 * k + 2790490 := by
    unfold C
    simp [show (5668704 * k + 5580980) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2790490) = 1417176 * k + 1395245 := by
    unfold C
    simp [show (2834352 * k + 2790490) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1395245) = 4251528 * k + 4185736 := by
    unfold C
    simp [show (1417176 * k + 1395245) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4185736) = 2125764 * k + 2092868 := by
    unfold C
    simp [show (4251528 * k + 4185736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2092868) = 1062882 * k + 1046434 := by
    unfold C
    simp [show (2125764 * k + 2092868) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1046434) = 531441 * k + 523217 := by
    unfold C
    simp [show (1062882 * k + 1046434) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1032347) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1032347)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1033679 : ∀ k : Nat,
    iterate (1048576 * k + 1033679) 32 = 531441 * k + 523892 ∧
      531441 * k + 523892 < 1048576 * k + 1033679 := by
  intro k
  have h1 : C (1048576 * k + 1033679) = 3145728 * k + 3101038 := by
    unfold C
    simp [show (1048576 * k + 1033679) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3101038) = 1572864 * k + 1550519 := by
    unfold C
    simp [show (3145728 * k + 3101038) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1550519) = 4718592 * k + 4651558 := by
    unfold C
    simp [show (1572864 * k + 1550519) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4651558) = 2359296 * k + 2325779 := by
    unfold C
    simp [show (4718592 * k + 4651558) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2325779) = 7077888 * k + 6977338 := by
    unfold C
    simp [show (2359296 * k + 2325779) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6977338) = 3538944 * k + 3488669 := by
    unfold C
    simp [show (7077888 * k + 6977338) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3488669) = 10616832 * k + 10466008 := by
    unfold C
    simp [show (3538944 * k + 3488669) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10466008) = 5308416 * k + 5233004 := by
    unfold C
    simp [show (10616832 * k + 10466008) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5233004) = 2654208 * k + 2616502 := by
    unfold C
    simp [show (5308416 * k + 5233004) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2616502) = 1327104 * k + 1308251 := by
    unfold C
    simp [show (2654208 * k + 2616502) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1308251) = 3981312 * k + 3924754 := by
    unfold C
    simp [show (1327104 * k + 1308251) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3924754) = 1990656 * k + 1962377 := by
    unfold C
    simp [show (3981312 * k + 3924754) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1962377) = 5971968 * k + 5887132 := by
    unfold C
    simp [show (1990656 * k + 1962377) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5887132) = 2985984 * k + 2943566 := by
    unfold C
    simp [show (5971968 * k + 5887132) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2943566) = 1492992 * k + 1471783 := by
    unfold C
    simp [show (2985984 * k + 2943566) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1471783) = 4478976 * k + 4415350 := by
    unfold C
    simp [show (1492992 * k + 1471783) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4415350) = 2239488 * k + 2207675 := by
    unfold C
    simp [show (4478976 * k + 4415350) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2207675) = 6718464 * k + 6623026 := by
    unfold C
    simp [show (2239488 * k + 2207675) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6623026) = 3359232 * k + 3311513 := by
    unfold C
    simp [show (6718464 * k + 6623026) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3311513) = 10077696 * k + 9934540 := by
    unfold C
    simp [show (3359232 * k + 3311513) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9934540) = 5038848 * k + 4967270 := by
    unfold C
    simp [show (10077696 * k + 9934540) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4967270) = 2519424 * k + 2483635 := by
    unfold C
    simp [show (5038848 * k + 4967270) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2483635) = 7558272 * k + 7450906 := by
    unfold C
    simp [show (2519424 * k + 2483635) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7450906) = 3779136 * k + 3725453 := by
    unfold C
    simp [show (7558272 * k + 7450906) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3725453) = 11337408 * k + 11176360 := by
    unfold C
    simp [show (3779136 * k + 3725453) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11176360) = 5668704 * k + 5588180 := by
    unfold C
    simp [show (11337408 * k + 11176360) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5588180) = 2834352 * k + 2794090 := by
    unfold C
    simp [show (5668704 * k + 5588180) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2794090) = 1417176 * k + 1397045 := by
    unfold C
    simp [show (2834352 * k + 2794090) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1397045) = 4251528 * k + 4191136 := by
    unfold C
    simp [show (1417176 * k + 1397045) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4191136) = 2125764 * k + 2095568 := by
    unfold C
    simp [show (4251528 * k + 4191136) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2095568) = 1062882 * k + 1047784 := by
    unfold C
    simp [show (2125764 * k + 2095568) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1047784) = 531441 * k + 523892 := by
    unfold C
    simp [show (1062882 * k + 1047784) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1033679) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1033679)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1035003 : ∀ k : Nat,
    iterate (1048576 * k + 1035003) 32 = 531441 * k + 524563 ∧
      531441 * k + 524563 < 1048576 * k + 1035003 := by
  intro k
  have h1 : C (1048576 * k + 1035003) = 3145728 * k + 3105010 := by
    unfold C
    simp [show (1048576 * k + 1035003) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3105010) = 1572864 * k + 1552505 := by
    unfold C
    simp [show (3145728 * k + 3105010) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1552505) = 4718592 * k + 4657516 := by
    unfold C
    simp [show (1572864 * k + 1552505) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4657516) = 2359296 * k + 2328758 := by
    unfold C
    simp [show (4718592 * k + 4657516) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2328758) = 1179648 * k + 1164379 := by
    unfold C
    simp [show (2359296 * k + 2328758) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1164379) = 3538944 * k + 3493138 := by
    unfold C
    simp [show (1179648 * k + 1164379) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3493138) = 1769472 * k + 1746569 := by
    unfold C
    simp [show (3538944 * k + 3493138) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1746569) = 5308416 * k + 5239708 := by
    unfold C
    simp [show (1769472 * k + 1746569) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5239708) = 2654208 * k + 2619854 := by
    unfold C
    simp [show (5308416 * k + 5239708) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2619854) = 1327104 * k + 1309927 := by
    unfold C
    simp [show (2654208 * k + 2619854) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1309927) = 3981312 * k + 3929782 := by
    unfold C
    simp [show (1327104 * k + 1309927) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3929782) = 1990656 * k + 1964891 := by
    unfold C
    simp [show (3981312 * k + 3929782) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1964891) = 5971968 * k + 5894674 := by
    unfold C
    simp [show (1990656 * k + 1964891) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5894674) = 2985984 * k + 2947337 := by
    unfold C
    simp [show (5971968 * k + 5894674) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2947337) = 8957952 * k + 8842012 := by
    unfold C
    simp [show (2985984 * k + 2947337) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8842012) = 4478976 * k + 4421006 := by
    unfold C
    simp [show (8957952 * k + 8842012) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4421006) = 2239488 * k + 2210503 := by
    unfold C
    simp [show (4478976 * k + 4421006) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2210503) = 6718464 * k + 6631510 := by
    unfold C
    simp [show (2239488 * k + 2210503) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6631510) = 3359232 * k + 3315755 := by
    unfold C
    simp [show (6718464 * k + 6631510) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3315755) = 10077696 * k + 9947266 := by
    unfold C
    simp [show (3359232 * k + 3315755) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9947266) = 5038848 * k + 4973633 := by
    unfold C
    simp [show (10077696 * k + 9947266) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4973633) = 15116544 * k + 14920900 := by
    unfold C
    simp [show (5038848 * k + 4973633) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14920900) = 7558272 * k + 7460450 := by
    unfold C
    simp [show (15116544 * k + 14920900) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7460450) = 3779136 * k + 3730225 := by
    unfold C
    simp [show (7558272 * k + 7460450) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3730225) = 11337408 * k + 11190676 := by
    unfold C
    simp [show (3779136 * k + 3730225) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11190676) = 5668704 * k + 5595338 := by
    unfold C
    simp [show (11337408 * k + 11190676) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5595338) = 2834352 * k + 2797669 := by
    unfold C
    simp [show (5668704 * k + 5595338) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2797669) = 8503056 * k + 8393008 := by
    unfold C
    simp [show (2834352 * k + 2797669) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8393008) = 4251528 * k + 4196504 := by
    unfold C
    simp [show (8503056 * k + 8393008) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4196504) = 2125764 * k + 2098252 := by
    unfold C
    simp [show (4251528 * k + 4196504) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2098252) = 1062882 * k + 1049126 := by
    unfold C
    simp [show (2125764 * k + 2098252) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1049126) = 531441 * k + 524563 := by
    unfold C
    simp [show (1062882 * k + 1049126) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1035003) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1035003)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1035035 : ∀ k : Nat,
    iterate (1048576 * k + 1035035) 32 = 531441 * k + 524579 ∧
      531441 * k + 524579 < 1048576 * k + 1035035 := by
  intro k
  have h1 : C (1048576 * k + 1035035) = 3145728 * k + 3105106 := by
    unfold C
    simp [show (1048576 * k + 1035035) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3105106) = 1572864 * k + 1552553 := by
    unfold C
    simp [show (3145728 * k + 3105106) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1552553) = 4718592 * k + 4657660 := by
    unfold C
    simp [show (1572864 * k + 1552553) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4657660) = 2359296 * k + 2328830 := by
    unfold C
    simp [show (4718592 * k + 4657660) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2328830) = 1179648 * k + 1164415 := by
    unfold C
    simp [show (2359296 * k + 2328830) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1164415) = 3538944 * k + 3493246 := by
    unfold C
    simp [show (1179648 * k + 1164415) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3493246) = 1769472 * k + 1746623 := by
    unfold C
    simp [show (3538944 * k + 3493246) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1746623) = 5308416 * k + 5239870 := by
    unfold C
    simp [show (1769472 * k + 1746623) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5239870) = 2654208 * k + 2619935 := by
    unfold C
    simp [show (5308416 * k + 5239870) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2619935) = 7962624 * k + 7859806 := by
    unfold C
    simp [show (2654208 * k + 2619935) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7859806) = 3981312 * k + 3929903 := by
    unfold C
    simp [show (7962624 * k + 7859806) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3929903) = 11943936 * k + 11789710 := by
    unfold C
    simp [show (3981312 * k + 3929903) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11789710) = 5971968 * k + 5894855 := by
    unfold C
    simp [show (11943936 * k + 11789710) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5894855) = 17915904 * k + 17684566 := by
    unfold C
    simp [show (5971968 * k + 5894855) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17684566) = 8957952 * k + 8842283 := by
    unfold C
    simp [show (17915904 * k + 17684566) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8842283) = 26873856 * k + 26526850 := by
    unfold C
    simp [show (8957952 * k + 8842283) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 26526850) = 13436928 * k + 13263425 := by
    unfold C
    simp [show (26873856 * k + 26526850) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 13263425) = 40310784 * k + 39790276 := by
    unfold C
    simp [show (13436928 * k + 13263425) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 39790276) = 20155392 * k + 19895138 := by
    unfold C
    simp [show (40310784 * k + 39790276) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19895138) = 10077696 * k + 9947569 := by
    unfold C
    simp [show (20155392 * k + 19895138) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9947569) = 30233088 * k + 29842708 := by
    unfold C
    simp [show (10077696 * k + 9947569) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 29842708) = 15116544 * k + 14921354 := by
    unfold C
    simp [show (30233088 * k + 29842708) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14921354) = 7558272 * k + 7460677 := by
    unfold C
    simp [show (15116544 * k + 14921354) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7460677) = 22674816 * k + 22382032 := by
    unfold C
    simp [show (7558272 * k + 7460677) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 22382032) = 11337408 * k + 11191016 := by
    unfold C
    simp [show (22674816 * k + 22382032) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 11191016) = 5668704 * k + 5595508 := by
    unfold C
    simp [show (11337408 * k + 11191016) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5595508) = 2834352 * k + 2797754 := by
    unfold C
    simp [show (5668704 * k + 5595508) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2797754) = 1417176 * k + 1398877 := by
    unfold C
    simp [show (2834352 * k + 2797754) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1398877) = 4251528 * k + 4196632 := by
    unfold C
    simp [show (1417176 * k + 1398877) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4196632) = 2125764 * k + 2098316 := by
    unfold C
    simp [show (4251528 * k + 4196632) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2098316) = 1062882 * k + 1049158 := by
    unfold C
    simp [show (2125764 * k + 2098316) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1049158) = 531441 * k + 524579 := by
    unfold C
    simp [show (1062882 * k + 1049158) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1035035) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1035035)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1035519 : ∀ k : Nat,
    iterate (1048576 * k + 1035519) 32 = 531441 * k + 524824 ∧
      531441 * k + 524824 < 1048576 * k + 1035519 := by
  intro k
  have h1 : C (1048576 * k + 1035519) = 3145728 * k + 3106558 := by
    unfold C
    simp [show (1048576 * k + 1035519) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3106558) = 1572864 * k + 1553279 := by
    unfold C
    simp [show (3145728 * k + 3106558) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1553279) = 4718592 * k + 4659838 := by
    unfold C
    simp [show (1572864 * k + 1553279) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4659838) = 2359296 * k + 2329919 := by
    unfold C
    simp [show (4718592 * k + 4659838) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2329919) = 7077888 * k + 6989758 := by
    unfold C
    simp [show (2359296 * k + 2329919) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6989758) = 3538944 * k + 3494879 := by
    unfold C
    simp [show (7077888 * k + 6989758) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3494879) = 10616832 * k + 10484638 := by
    unfold C
    simp [show (3538944 * k + 3494879) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10484638) = 5308416 * k + 5242319 := by
    unfold C
    simp [show (10616832 * k + 10484638) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5242319) = 15925248 * k + 15726958 := by
    unfold C
    simp [show (5308416 * k + 5242319) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15726958) = 7962624 * k + 7863479 := by
    unfold C
    simp [show (15925248 * k + 15726958) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7863479) = 23887872 * k + 23590438 := by
    unfold C
    simp [show (7962624 * k + 7863479) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23590438) = 11943936 * k + 11795219 := by
    unfold C
    simp [show (23887872 * k + 23590438) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11795219) = 35831808 * k + 35385658 := by
    unfold C
    simp [show (11943936 * k + 11795219) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 35385658) = 17915904 * k + 17692829 := by
    unfold C
    simp [show (35831808 * k + 35385658) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 17692829) = 53747712 * k + 53078488 := by
    unfold C
    simp [show (17915904 * k + 17692829) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 53078488) = 26873856 * k + 26539244 := by
    unfold C
    simp [show (53747712 * k + 53078488) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 26539244) = 13436928 * k + 13269622 := by
    unfold C
    simp [show (26873856 * k + 26539244) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 13269622) = 6718464 * k + 6634811 := by
    unfold C
    simp [show (13436928 * k + 13269622) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6634811) = 20155392 * k + 19904434 := by
    unfold C
    simp [show (6718464 * k + 6634811) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19904434) = 10077696 * k + 9952217 := by
    unfold C
    simp [show (20155392 * k + 19904434) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9952217) = 30233088 * k + 29856652 := by
    unfold C
    simp [show (10077696 * k + 9952217) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 29856652) = 15116544 * k + 14928326 := by
    unfold C
    simp [show (30233088 * k + 29856652) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14928326) = 7558272 * k + 7464163 := by
    unfold C
    simp [show (15116544 * k + 14928326) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7464163) = 22674816 * k + 22392490 := by
    unfold C
    simp [show (7558272 * k + 7464163) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 22392490) = 11337408 * k + 11196245 := by
    unfold C
    simp [show (22674816 * k + 22392490) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 11196245) = 34012224 * k + 33588736 := by
    unfold C
    simp [show (11337408 * k + 11196245) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 33588736) = 17006112 * k + 16794368 := by
    unfold C
    simp [show (34012224 * k + 33588736) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 16794368) = 8503056 * k + 8397184 := by
    unfold C
    simp [show (17006112 * k + 16794368) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8397184) = 4251528 * k + 4198592 := by
    unfold C
    simp [show (8503056 * k + 8397184) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4198592) = 2125764 * k + 2099296 := by
    unfold C
    simp [show (4251528 * k + 4198592) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2099296) = 1062882 * k + 1049648 := by
    unfold C
    simp [show (2125764 * k + 2099296) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1049648) = 531441 * k + 524824 := by
    unfold C
    simp [show (1062882 * k + 1049648) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1035519) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1035519)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1036059 : ∀ k : Nat,
    iterate (1048576 * k + 1036059) 32 = 531441 * k + 525098 ∧
      531441 * k + 525098 < 1048576 * k + 1036059 := by
  intro k
  have h1 : C (1048576 * k + 1036059) = 3145728 * k + 3108178 := by
    unfold C
    simp [show (1048576 * k + 1036059) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3108178) = 1572864 * k + 1554089 := by
    unfold C
    simp [show (3145728 * k + 3108178) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1554089) = 4718592 * k + 4662268 := by
    unfold C
    simp [show (1572864 * k + 1554089) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4662268) = 2359296 * k + 2331134 := by
    unfold C
    simp [show (4718592 * k + 4662268) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2331134) = 1179648 * k + 1165567 := by
    unfold C
    simp [show (2359296 * k + 2331134) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1165567) = 3538944 * k + 3496702 := by
    unfold C
    simp [show (1179648 * k + 1165567) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3496702) = 1769472 * k + 1748351 := by
    unfold C
    simp [show (3538944 * k + 3496702) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1748351) = 5308416 * k + 5245054 := by
    unfold C
    simp [show (1769472 * k + 1748351) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5245054) = 2654208 * k + 2622527 := by
    unfold C
    simp [show (5308416 * k + 5245054) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2622527) = 7962624 * k + 7867582 := by
    unfold C
    simp [show (2654208 * k + 2622527) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7867582) = 3981312 * k + 3933791 := by
    unfold C
    simp [show (7962624 * k + 7867582) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3933791) = 11943936 * k + 11801374 := by
    unfold C
    simp [show (3981312 * k + 3933791) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11801374) = 5971968 * k + 5900687 := by
    unfold C
    simp [show (11943936 * k + 11801374) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5900687) = 17915904 * k + 17702062 := by
    unfold C
    simp [show (5971968 * k + 5900687) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17702062) = 8957952 * k + 8851031 := by
    unfold C
    simp [show (17915904 * k + 17702062) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8851031) = 26873856 * k + 26553094 := by
    unfold C
    simp [show (8957952 * k + 8851031) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 26553094) = 13436928 * k + 13276547 := by
    unfold C
    simp [show (26873856 * k + 26553094) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 13276547) = 40310784 * k + 39829642 := by
    unfold C
    simp [show (13436928 * k + 13276547) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 39829642) = 20155392 * k + 19914821 := by
    unfold C
    simp [show (40310784 * k + 39829642) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19914821) = 60466176 * k + 59744464 := by
    unfold C
    simp [show (20155392 * k + 19914821) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 59744464) = 30233088 * k + 29872232 := by
    unfold C
    simp [show (60466176 * k + 59744464) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 29872232) = 15116544 * k + 14936116 := by
    unfold C
    simp [show (30233088 * k + 29872232) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14936116) = 7558272 * k + 7468058 := by
    unfold C
    simp [show (15116544 * k + 14936116) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7468058) = 3779136 * k + 3734029 := by
    unfold C
    simp [show (7558272 * k + 7468058) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3734029) = 11337408 * k + 11202088 := by
    unfold C
    simp [show (3779136 * k + 3734029) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11202088) = 5668704 * k + 5601044 := by
    unfold C
    simp [show (11337408 * k + 11202088) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5601044) = 2834352 * k + 2800522 := by
    unfold C
    simp [show (5668704 * k + 5601044) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2800522) = 1417176 * k + 1400261 := by
    unfold C
    simp [show (2834352 * k + 2800522) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1400261) = 4251528 * k + 4200784 := by
    unfold C
    simp [show (1417176 * k + 1400261) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4200784) = 2125764 * k + 2100392 := by
    unfold C
    simp [show (4251528 * k + 4200784) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2100392) = 1062882 * k + 1050196 := by
    unfold C
    simp [show (2125764 * k + 2100392) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1050196) = 531441 * k + 525098 := by
    unfold C
    simp [show (1062882 * k + 1050196) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1036059) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1036059)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1036527 : ∀ k : Nat,
    iterate (1048576 * k + 1036527) 32 = 531441 * k + 525335 ∧
      531441 * k + 525335 < 1048576 * k + 1036527 := by
  intro k
  have h1 : C (1048576 * k + 1036527) = 3145728 * k + 3109582 := by
    unfold C
    simp [show (1048576 * k + 1036527) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3109582) = 1572864 * k + 1554791 := by
    unfold C
    simp [show (3145728 * k + 3109582) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1554791) = 4718592 * k + 4664374 := by
    unfold C
    simp [show (1572864 * k + 1554791) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4664374) = 2359296 * k + 2332187 := by
    unfold C
    simp [show (4718592 * k + 4664374) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2332187) = 7077888 * k + 6996562 := by
    unfold C
    simp [show (2359296 * k + 2332187) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6996562) = 3538944 * k + 3498281 := by
    unfold C
    simp [show (7077888 * k + 6996562) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3498281) = 10616832 * k + 10494844 := by
    unfold C
    simp [show (3538944 * k + 3498281) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10494844) = 5308416 * k + 5247422 := by
    unfold C
    simp [show (10616832 * k + 10494844) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5247422) = 2654208 * k + 2623711 := by
    unfold C
    simp [show (5308416 * k + 5247422) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2623711) = 7962624 * k + 7871134 := by
    unfold C
    simp [show (2654208 * k + 2623711) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7871134) = 3981312 * k + 3935567 := by
    unfold C
    simp [show (7962624 * k + 7871134) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3935567) = 11943936 * k + 11806702 := by
    unfold C
    simp [show (3981312 * k + 3935567) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11806702) = 5971968 * k + 5903351 := by
    unfold C
    simp [show (11943936 * k + 11806702) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5903351) = 17915904 * k + 17710054 := by
    unfold C
    simp [show (5971968 * k + 5903351) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17710054) = 8957952 * k + 8855027 := by
    unfold C
    simp [show (17915904 * k + 17710054) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8855027) = 26873856 * k + 26565082 := by
    unfold C
    simp [show (8957952 * k + 8855027) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 26565082) = 13436928 * k + 13282541 := by
    unfold C
    simp [show (26873856 * k + 26565082) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 13282541) = 40310784 * k + 39847624 := by
    unfold C
    simp [show (13436928 * k + 13282541) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 39847624) = 20155392 * k + 19923812 := by
    unfold C
    simp [show (40310784 * k + 39847624) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19923812) = 10077696 * k + 9961906 := by
    unfold C
    simp [show (20155392 * k + 19923812) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9961906) = 5038848 * k + 4980953 := by
    unfold C
    simp [show (10077696 * k + 9961906) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4980953) = 15116544 * k + 14942860 := by
    unfold C
    simp [show (5038848 * k + 4980953) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14942860) = 7558272 * k + 7471430 := by
    unfold C
    simp [show (15116544 * k + 14942860) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7471430) = 3779136 * k + 3735715 := by
    unfold C
    simp [show (7558272 * k + 7471430) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3735715) = 11337408 * k + 11207146 := by
    unfold C
    simp [show (3779136 * k + 3735715) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11207146) = 5668704 * k + 5603573 := by
    unfold C
    simp [show (11337408 * k + 11207146) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5603573) = 17006112 * k + 16810720 := by
    unfold C
    simp [show (5668704 * k + 5603573) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 16810720) = 8503056 * k + 8405360 := by
    unfold C
    simp [show (17006112 * k + 16810720) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8405360) = 4251528 * k + 4202680 := by
    unfold C
    simp [show (8503056 * k + 8405360) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4202680) = 2125764 * k + 2101340 := by
    unfold C
    simp [show (4251528 * k + 4202680) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2101340) = 1062882 * k + 1050670 := by
    unfold C
    simp [show (2125764 * k + 2101340) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1050670) = 531441 * k + 525335 := by
    unfold C
    simp [show (1062882 * k + 1050670) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1036527) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1036527)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1036615 : ∀ k : Nat,
    iterate (1048576 * k + 1036615) 32 = 531441 * k + 525380 ∧
      531441 * k + 525380 < 1048576 * k + 1036615 := by
  intro k
  have h1 : C (1048576 * k + 1036615) = 3145728 * k + 3109846 := by
    unfold C
    simp [show (1048576 * k + 1036615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3109846) = 1572864 * k + 1554923 := by
    unfold C
    simp [show (3145728 * k + 3109846) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1554923) = 4718592 * k + 4664770 := by
    unfold C
    simp [show (1572864 * k + 1554923) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4664770) = 2359296 * k + 2332385 := by
    unfold C
    simp [show (4718592 * k + 4664770) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2332385) = 7077888 * k + 6997156 := by
    unfold C
    simp [show (2359296 * k + 2332385) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6997156) = 3538944 * k + 3498578 := by
    unfold C
    simp [show (7077888 * k + 6997156) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3498578) = 1769472 * k + 1749289 := by
    unfold C
    simp [show (3538944 * k + 3498578) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1749289) = 5308416 * k + 5247868 := by
    unfold C
    simp [show (1769472 * k + 1749289) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5247868) = 2654208 * k + 2623934 := by
    unfold C
    simp [show (5308416 * k + 5247868) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2623934) = 1327104 * k + 1311967 := by
    unfold C
    simp [show (2654208 * k + 2623934) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1311967) = 3981312 * k + 3935902 := by
    unfold C
    simp [show (1327104 * k + 1311967) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3935902) = 1990656 * k + 1967951 := by
    unfold C
    simp [show (3981312 * k + 3935902) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1967951) = 5971968 * k + 5903854 := by
    unfold C
    simp [show (1990656 * k + 1967951) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5903854) = 2985984 * k + 2951927 := by
    unfold C
    simp [show (5971968 * k + 5903854) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2951927) = 8957952 * k + 8855782 := by
    unfold C
    simp [show (2985984 * k + 2951927) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8855782) = 4478976 * k + 4427891 := by
    unfold C
    simp [show (8957952 * k + 8855782) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4427891) = 13436928 * k + 13283674 := by
    unfold C
    simp [show (4478976 * k + 4427891) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 13283674) = 6718464 * k + 6641837 := by
    unfold C
    simp [show (13436928 * k + 13283674) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6641837) = 20155392 * k + 19925512 := by
    unfold C
    simp [show (6718464 * k + 6641837) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19925512) = 10077696 * k + 9962756 := by
    unfold C
    simp [show (20155392 * k + 19925512) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9962756) = 5038848 * k + 4981378 := by
    unfold C
    simp [show (10077696 * k + 9962756) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4981378) = 2519424 * k + 2490689 := by
    unfold C
    simp [show (5038848 * k + 4981378) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2490689) = 7558272 * k + 7472068 := by
    unfold C
    simp [show (2519424 * k + 2490689) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7472068) = 3779136 * k + 3736034 := by
    unfold C
    simp [show (7558272 * k + 7472068) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3736034) = 1889568 * k + 1868017 := by
    unfold C
    simp [show (3779136 * k + 3736034) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1868017) = 5668704 * k + 5604052 := by
    unfold C
    simp [show (1889568 * k + 1868017) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5604052) = 2834352 * k + 2802026 := by
    unfold C
    simp [show (5668704 * k + 5604052) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2802026) = 1417176 * k + 1401013 := by
    unfold C
    simp [show (2834352 * k + 2802026) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1401013) = 4251528 * k + 4203040 := by
    unfold C
    simp [show (1417176 * k + 1401013) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4203040) = 2125764 * k + 2101520 := by
    unfold C
    simp [show (4251528 * k + 4203040) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2101520) = 1062882 * k + 1050760 := by
    unfold C
    simp [show (2125764 * k + 2101520) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1050760) = 531441 * k + 525380 := by
    unfold C
    simp [show (1062882 * k + 1050760) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1036615) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1036615)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1036775 : ∀ k : Nat,
    iterate (1048576 * k + 1036775) 32 = 531441 * k + 525461 ∧
      531441 * k + 525461 < 1048576 * k + 1036775 := by
  intro k
  have h1 : C (1048576 * k + 1036775) = 3145728 * k + 3110326 := by
    unfold C
    simp [show (1048576 * k + 1036775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3110326) = 1572864 * k + 1555163 := by
    unfold C
    simp [show (3145728 * k + 3110326) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1555163) = 4718592 * k + 4665490 := by
    unfold C
    simp [show (1572864 * k + 1555163) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4665490) = 2359296 * k + 2332745 := by
    unfold C
    simp [show (4718592 * k + 4665490) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2332745) = 7077888 * k + 6998236 := by
    unfold C
    simp [show (2359296 * k + 2332745) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6998236) = 3538944 * k + 3499118 := by
    unfold C
    simp [show (7077888 * k + 6998236) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3499118) = 1769472 * k + 1749559 := by
    unfold C
    simp [show (3538944 * k + 3499118) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1749559) = 5308416 * k + 5248678 := by
    unfold C
    simp [show (1769472 * k + 1749559) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5248678) = 2654208 * k + 2624339 := by
    unfold C
    simp [show (5308416 * k + 5248678) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2624339) = 7962624 * k + 7873018 := by
    unfold C
    simp [show (2654208 * k + 2624339) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7873018) = 3981312 * k + 3936509 := by
    unfold C
    simp [show (7962624 * k + 7873018) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3936509) = 11943936 * k + 11809528 := by
    unfold C
    simp [show (3981312 * k + 3936509) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11809528) = 5971968 * k + 5904764 := by
    unfold C
    simp [show (11943936 * k + 11809528) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5904764) = 2985984 * k + 2952382 := by
    unfold C
    simp [show (5971968 * k + 5904764) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2952382) = 1492992 * k + 1476191 := by
    unfold C
    simp [show (2985984 * k + 2952382) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1476191) = 4478976 * k + 4428574 := by
    unfold C
    simp [show (1492992 * k + 1476191) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4428574) = 2239488 * k + 2214287 := by
    unfold C
    simp [show (4478976 * k + 4428574) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2214287) = 6718464 * k + 6642862 := by
    unfold C
    simp [show (2239488 * k + 2214287) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6642862) = 3359232 * k + 3321431 := by
    unfold C
    simp [show (6718464 * k + 6642862) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3321431) = 10077696 * k + 9964294 := by
    unfold C
    simp [show (3359232 * k + 3321431) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9964294) = 5038848 * k + 4982147 := by
    unfold C
    simp [show (10077696 * k + 9964294) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4982147) = 15116544 * k + 14946442 := by
    unfold C
    simp [show (5038848 * k + 4982147) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14946442) = 7558272 * k + 7473221 := by
    unfold C
    simp [show (15116544 * k + 14946442) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7473221) = 22674816 * k + 22419664 := by
    unfold C
    simp [show (7558272 * k + 7473221) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 22419664) = 11337408 * k + 11209832 := by
    unfold C
    simp [show (22674816 * k + 22419664) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 11209832) = 5668704 * k + 5604916 := by
    unfold C
    simp [show (11337408 * k + 11209832) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5604916) = 2834352 * k + 2802458 := by
    unfold C
    simp [show (5668704 * k + 5604916) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2802458) = 1417176 * k + 1401229 := by
    unfold C
    simp [show (2834352 * k + 2802458) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1401229) = 4251528 * k + 4203688 := by
    unfold C
    simp [show (1417176 * k + 1401229) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4203688) = 2125764 * k + 2101844 := by
    unfold C
    simp [show (4251528 * k + 4203688) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2101844) = 1062882 * k + 1050922 := by
    unfold C
    simp [show (2125764 * k + 2101844) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1050922) = 531441 * k + 525461 := by
    unfold C
    simp [show (1062882 * k + 1050922) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1036775) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1036775)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard131
