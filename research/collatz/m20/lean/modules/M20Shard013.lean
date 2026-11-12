import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard013

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_82911 : ∀ k : Nat,
    iterate (1048576 * k + 82911) 32 = 531441 * k + 42022 ∧
      531441 * k + 42022 < 1048576 * k + 82911 := by
  intro k
  have h1 : C (1048576 * k + 82911) = 3145728 * k + 248734 := by
    unfold C
    simp [show (1048576 * k + 82911) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 248734) = 1572864 * k + 124367 := by
    unfold C
    simp [show (3145728 * k + 248734) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 124367) = 4718592 * k + 373102 := by
    unfold C
    simp [show (1572864 * k + 124367) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 373102) = 2359296 * k + 186551 := by
    unfold C
    simp [show (4718592 * k + 373102) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 186551) = 7077888 * k + 559654 := by
    unfold C
    simp [show (2359296 * k + 186551) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 559654) = 3538944 * k + 279827 := by
    unfold C
    simp [show (7077888 * k + 559654) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 279827) = 10616832 * k + 839482 := by
    unfold C
    simp [show (3538944 * k + 279827) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 839482) = 5308416 * k + 419741 := by
    unfold C
    simp [show (10616832 * k + 839482) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 419741) = 15925248 * k + 1259224 := by
    unfold C
    simp [show (5308416 * k + 419741) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1259224) = 7962624 * k + 629612 := by
    unfold C
    simp [show (15925248 * k + 1259224) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 629612) = 3981312 * k + 314806 := by
    unfold C
    simp [show (7962624 * k + 629612) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 314806) = 1990656 * k + 157403 := by
    unfold C
    simp [show (3981312 * k + 314806) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 157403) = 5971968 * k + 472210 := by
    unfold C
    simp [show (1990656 * k + 157403) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 472210) = 2985984 * k + 236105 := by
    unfold C
    simp [show (5971968 * k + 472210) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 236105) = 8957952 * k + 708316 := by
    unfold C
    simp [show (2985984 * k + 236105) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 708316) = 4478976 * k + 354158 := by
    unfold C
    simp [show (8957952 * k + 708316) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 354158) = 2239488 * k + 177079 := by
    unfold C
    simp [show (4478976 * k + 354158) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 177079) = 6718464 * k + 531238 := by
    unfold C
    simp [show (2239488 * k + 177079) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 531238) = 3359232 * k + 265619 := by
    unfold C
    simp [show (6718464 * k + 531238) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 265619) = 10077696 * k + 796858 := by
    unfold C
    simp [show (3359232 * k + 265619) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 796858) = 5038848 * k + 398429 := by
    unfold C
    simp [show (10077696 * k + 796858) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 398429) = 15116544 * k + 1195288 := by
    unfold C
    simp [show (5038848 * k + 398429) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1195288) = 7558272 * k + 597644 := by
    unfold C
    simp [show (15116544 * k + 1195288) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 597644) = 3779136 * k + 298822 := by
    unfold C
    simp [show (7558272 * k + 597644) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 298822) = 1889568 * k + 149411 := by
    unfold C
    simp [show (3779136 * k + 298822) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 149411) = 5668704 * k + 448234 := by
    unfold C
    simp [show (1889568 * k + 149411) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 448234) = 2834352 * k + 224117 := by
    unfold C
    simp [show (5668704 * k + 448234) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 224117) = 8503056 * k + 672352 := by
    unfold C
    simp [show (2834352 * k + 224117) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 672352) = 4251528 * k + 336176 := by
    unfold C
    simp [show (8503056 * k + 672352) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 336176) = 2125764 * k + 168088 := by
    unfold C
    simp [show (4251528 * k + 336176) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 168088) = 1062882 * k + 84044 := by
    unfold C
    simp [show (2125764 * k + 168088) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 84044) = 531441 * k + 42022 := by
    unfold C
    simp [show (1062882 * k + 84044) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 82911) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 82911)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_83035 : ∀ k : Nat,
    iterate (1048576 * k + 83035) 32 = 531441 * k + 42085 ∧
      531441 * k + 42085 < 1048576 * k + 83035 := by
  intro k
  have h1 : C (1048576 * k + 83035) = 3145728 * k + 249106 := by
    unfold C
    simp [show (1048576 * k + 83035) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 249106) = 1572864 * k + 124553 := by
    unfold C
    simp [show (3145728 * k + 249106) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 124553) = 4718592 * k + 373660 := by
    unfold C
    simp [show (1572864 * k + 124553) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 373660) = 2359296 * k + 186830 := by
    unfold C
    simp [show (4718592 * k + 373660) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 186830) = 1179648 * k + 93415 := by
    unfold C
    simp [show (2359296 * k + 186830) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 93415) = 3538944 * k + 280246 := by
    unfold C
    simp [show (1179648 * k + 93415) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 280246) = 1769472 * k + 140123 := by
    unfold C
    simp [show (3538944 * k + 280246) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 140123) = 5308416 * k + 420370 := by
    unfold C
    simp [show (1769472 * k + 140123) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 420370) = 2654208 * k + 210185 := by
    unfold C
    simp [show (5308416 * k + 420370) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 210185) = 7962624 * k + 630556 := by
    unfold C
    simp [show (2654208 * k + 210185) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 630556) = 3981312 * k + 315278 := by
    unfold C
    simp [show (7962624 * k + 630556) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 315278) = 1990656 * k + 157639 := by
    unfold C
    simp [show (3981312 * k + 315278) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 157639) = 5971968 * k + 472918 := by
    unfold C
    simp [show (1990656 * k + 157639) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 472918) = 2985984 * k + 236459 := by
    unfold C
    simp [show (5971968 * k + 472918) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 236459) = 8957952 * k + 709378 := by
    unfold C
    simp [show (2985984 * k + 236459) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 709378) = 4478976 * k + 354689 := by
    unfold C
    simp [show (8957952 * k + 709378) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 354689) = 13436928 * k + 1064068 := by
    unfold C
    simp [show (4478976 * k + 354689) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1064068) = 6718464 * k + 532034 := by
    unfold C
    simp [show (13436928 * k + 1064068) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 532034) = 3359232 * k + 266017 := by
    unfold C
    simp [show (6718464 * k + 532034) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 266017) = 10077696 * k + 798052 := by
    unfold C
    simp [show (3359232 * k + 266017) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 798052) = 5038848 * k + 399026 := by
    unfold C
    simp [show (10077696 * k + 798052) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 399026) = 2519424 * k + 199513 := by
    unfold C
    simp [show (5038848 * k + 399026) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 199513) = 7558272 * k + 598540 := by
    unfold C
    simp [show (2519424 * k + 199513) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 598540) = 3779136 * k + 299270 := by
    unfold C
    simp [show (7558272 * k + 598540) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 299270) = 1889568 * k + 149635 := by
    unfold C
    simp [show (3779136 * k + 299270) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 149635) = 5668704 * k + 448906 := by
    unfold C
    simp [show (1889568 * k + 149635) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 448906) = 2834352 * k + 224453 := by
    unfold C
    simp [show (5668704 * k + 448906) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 224453) = 8503056 * k + 673360 := by
    unfold C
    simp [show (2834352 * k + 224453) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 673360) = 4251528 * k + 336680 := by
    unfold C
    simp [show (8503056 * k + 673360) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 336680) = 2125764 * k + 168340 := by
    unfold C
    simp [show (4251528 * k + 336680) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 168340) = 1062882 * k + 84170 := by
    unfold C
    simp [show (2125764 * k + 168340) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 84170) = 531441 * k + 42085 := by
    unfold C
    simp [show (1062882 * k + 84170) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 83035) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 83035)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_83071 : ∀ k : Nat,
    iterate (1048576 * k + 83071) 32 = 531441 * k + 42103 ∧
      531441 * k + 42103 < 1048576 * k + 83071 := by
  intro k
  have h1 : C (1048576 * k + 83071) = 3145728 * k + 249214 := by
    unfold C
    simp [show (1048576 * k + 83071) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 249214) = 1572864 * k + 124607 := by
    unfold C
    simp [show (3145728 * k + 249214) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 124607) = 4718592 * k + 373822 := by
    unfold C
    simp [show (1572864 * k + 124607) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 373822) = 2359296 * k + 186911 := by
    unfold C
    simp [show (4718592 * k + 373822) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 186911) = 7077888 * k + 560734 := by
    unfold C
    simp [show (2359296 * k + 186911) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 560734) = 3538944 * k + 280367 := by
    unfold C
    simp [show (7077888 * k + 560734) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 280367) = 10616832 * k + 841102 := by
    unfold C
    simp [show (3538944 * k + 280367) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 841102) = 5308416 * k + 420551 := by
    unfold C
    simp [show (10616832 * k + 841102) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 420551) = 15925248 * k + 1261654 := by
    unfold C
    simp [show (5308416 * k + 420551) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1261654) = 7962624 * k + 630827 := by
    unfold C
    simp [show (15925248 * k + 1261654) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 630827) = 23887872 * k + 1892482 := by
    unfold C
    simp [show (7962624 * k + 630827) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1892482) = 11943936 * k + 946241 := by
    unfold C
    simp [show (23887872 * k + 1892482) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 946241) = 35831808 * k + 2838724 := by
    unfold C
    simp [show (11943936 * k + 946241) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 2838724) = 17915904 * k + 1419362 := by
    unfold C
    simp [show (35831808 * k + 2838724) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 1419362) = 8957952 * k + 709681 := by
    unfold C
    simp [show (17915904 * k + 1419362) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 709681) = 26873856 * k + 2129044 := by
    unfold C
    simp [show (8957952 * k + 709681) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2129044) = 13436928 * k + 1064522 := by
    unfold C
    simp [show (26873856 * k + 2129044) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1064522) = 6718464 * k + 532261 := by
    unfold C
    simp [show (13436928 * k + 1064522) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 532261) = 20155392 * k + 1596784 := by
    unfold C
    simp [show (6718464 * k + 532261) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1596784) = 10077696 * k + 798392 := by
    unfold C
    simp [show (20155392 * k + 1596784) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 798392) = 5038848 * k + 399196 := by
    unfold C
    simp [show (10077696 * k + 798392) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 399196) = 2519424 * k + 199598 := by
    unfold C
    simp [show (5038848 * k + 399196) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 199598) = 1259712 * k + 99799 := by
    unfold C
    simp [show (2519424 * k + 199598) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 99799) = 3779136 * k + 299398 := by
    unfold C
    simp [show (1259712 * k + 99799) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 299398) = 1889568 * k + 149699 := by
    unfold C
    simp [show (3779136 * k + 299398) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 149699) = 5668704 * k + 449098 := by
    unfold C
    simp [show (1889568 * k + 149699) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 449098) = 2834352 * k + 224549 := by
    unfold C
    simp [show (5668704 * k + 449098) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 224549) = 8503056 * k + 673648 := by
    unfold C
    simp [show (2834352 * k + 224549) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 673648) = 4251528 * k + 336824 := by
    unfold C
    simp [show (8503056 * k + 673648) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 336824) = 2125764 * k + 168412 := by
    unfold C
    simp [show (4251528 * k + 336824) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 168412) = 1062882 * k + 84206 := by
    unfold C
    simp [show (2125764 * k + 168412) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 84206) = 531441 * k + 42103 := by
    unfold C
    simp [show (1062882 * k + 84206) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 83071) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 83071)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_83227 : ∀ k : Nat,
    iterate (1048576 * k + 83227) 32 = 531441 * k + 42182 ∧
      531441 * k + 42182 < 1048576 * k + 83227 := by
  intro k
  have h1 : C (1048576 * k + 83227) = 3145728 * k + 249682 := by
    unfold C
    simp [show (1048576 * k + 83227) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 249682) = 1572864 * k + 124841 := by
    unfold C
    simp [show (3145728 * k + 249682) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 124841) = 4718592 * k + 374524 := by
    unfold C
    simp [show (1572864 * k + 124841) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 374524) = 2359296 * k + 187262 := by
    unfold C
    simp [show (4718592 * k + 374524) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 187262) = 1179648 * k + 93631 := by
    unfold C
    simp [show (2359296 * k + 187262) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 93631) = 3538944 * k + 280894 := by
    unfold C
    simp [show (1179648 * k + 93631) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 280894) = 1769472 * k + 140447 := by
    unfold C
    simp [show (3538944 * k + 280894) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 140447) = 5308416 * k + 421342 := by
    unfold C
    simp [show (1769472 * k + 140447) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 421342) = 2654208 * k + 210671 := by
    unfold C
    simp [show (5308416 * k + 421342) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 210671) = 7962624 * k + 632014 := by
    unfold C
    simp [show (2654208 * k + 210671) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 632014) = 3981312 * k + 316007 := by
    unfold C
    simp [show (7962624 * k + 632014) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 316007) = 11943936 * k + 948022 := by
    unfold C
    simp [show (3981312 * k + 316007) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 948022) = 5971968 * k + 474011 := by
    unfold C
    simp [show (11943936 * k + 948022) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 474011) = 17915904 * k + 1422034 := by
    unfold C
    simp [show (5971968 * k + 474011) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1422034) = 8957952 * k + 711017 := by
    unfold C
    simp [show (17915904 * k + 1422034) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 711017) = 26873856 * k + 2133052 := by
    unfold C
    simp [show (8957952 * k + 711017) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2133052) = 13436928 * k + 1066526 := by
    unfold C
    simp [show (26873856 * k + 2133052) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1066526) = 6718464 * k + 533263 := by
    unfold C
    simp [show (13436928 * k + 1066526) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 533263) = 20155392 * k + 1599790 := by
    unfold C
    simp [show (6718464 * k + 533263) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1599790) = 10077696 * k + 799895 := by
    unfold C
    simp [show (20155392 * k + 1599790) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 799895) = 30233088 * k + 2399686 := by
    unfold C
    simp [show (10077696 * k + 799895) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 2399686) = 15116544 * k + 1199843 := by
    unfold C
    simp [show (30233088 * k + 2399686) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1199843) = 45349632 * k + 3599530 := by
    unfold C
    simp [show (15116544 * k + 1199843) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 3599530) = 22674816 * k + 1799765 := by
    unfold C
    simp [show (45349632 * k + 3599530) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 1799765) = 68024448 * k + 5399296 := by
    unfold C
    simp [show (22674816 * k + 1799765) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 5399296) = 34012224 * k + 2699648 := by
    unfold C
    simp [show (68024448 * k + 5399296) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 2699648) = 17006112 * k + 1349824 := by
    unfold C
    simp [show (34012224 * k + 2699648) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 1349824) = 8503056 * k + 674912 := by
    unfold C
    simp [show (17006112 * k + 1349824) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 674912) = 4251528 * k + 337456 := by
    unfold C
    simp [show (8503056 * k + 674912) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 337456) = 2125764 * k + 168728 := by
    unfold C
    simp [show (4251528 * k + 337456) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 168728) = 1062882 * k + 84364 := by
    unfold C
    simp [show (2125764 * k + 168728) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 84364) = 531441 * k + 42182 := by
    unfold C
    simp [show (1062882 * k + 84364) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 83227) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 83227)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_83611 : ∀ k : Nat,
    iterate (1048576 * k + 83611) 32 = 531441 * k + 42377 ∧
      531441 * k + 42377 < 1048576 * k + 83611 := by
  intro k
  have h1 : C (1048576 * k + 83611) = 3145728 * k + 250834 := by
    unfold C
    simp [show (1048576 * k + 83611) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 250834) = 1572864 * k + 125417 := by
    unfold C
    simp [show (3145728 * k + 250834) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 125417) = 4718592 * k + 376252 := by
    unfold C
    simp [show (1572864 * k + 125417) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 376252) = 2359296 * k + 188126 := by
    unfold C
    simp [show (4718592 * k + 376252) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 188126) = 1179648 * k + 94063 := by
    unfold C
    simp [show (2359296 * k + 188126) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 94063) = 3538944 * k + 282190 := by
    unfold C
    simp [show (1179648 * k + 94063) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 282190) = 1769472 * k + 141095 := by
    unfold C
    simp [show (3538944 * k + 282190) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 141095) = 5308416 * k + 423286 := by
    unfold C
    simp [show (1769472 * k + 141095) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 423286) = 2654208 * k + 211643 := by
    unfold C
    simp [show (5308416 * k + 423286) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 211643) = 7962624 * k + 634930 := by
    unfold C
    simp [show (2654208 * k + 211643) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 634930) = 3981312 * k + 317465 := by
    unfold C
    simp [show (7962624 * k + 634930) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 317465) = 11943936 * k + 952396 := by
    unfold C
    simp [show (3981312 * k + 317465) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 952396) = 5971968 * k + 476198 := by
    unfold C
    simp [show (11943936 * k + 952396) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 476198) = 2985984 * k + 238099 := by
    unfold C
    simp [show (5971968 * k + 476198) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 238099) = 8957952 * k + 714298 := by
    unfold C
    simp [show (2985984 * k + 238099) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 714298) = 4478976 * k + 357149 := by
    unfold C
    simp [show (8957952 * k + 714298) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 357149) = 13436928 * k + 1071448 := by
    unfold C
    simp [show (4478976 * k + 357149) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1071448) = 6718464 * k + 535724 := by
    unfold C
    simp [show (13436928 * k + 1071448) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 535724) = 3359232 * k + 267862 := by
    unfold C
    simp [show (6718464 * k + 535724) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 267862) = 1679616 * k + 133931 := by
    unfold C
    simp [show (3359232 * k + 267862) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 133931) = 5038848 * k + 401794 := by
    unfold C
    simp [show (1679616 * k + 133931) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 401794) = 2519424 * k + 200897 := by
    unfold C
    simp [show (5038848 * k + 401794) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 200897) = 7558272 * k + 602692 := by
    unfold C
    simp [show (2519424 * k + 200897) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 602692) = 3779136 * k + 301346 := by
    unfold C
    simp [show (7558272 * k + 602692) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 301346) = 1889568 * k + 150673 := by
    unfold C
    simp [show (3779136 * k + 301346) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 150673) = 5668704 * k + 452020 := by
    unfold C
    simp [show (1889568 * k + 150673) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 452020) = 2834352 * k + 226010 := by
    unfold C
    simp [show (5668704 * k + 452020) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 226010) = 1417176 * k + 113005 := by
    unfold C
    simp [show (2834352 * k + 226010) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 113005) = 4251528 * k + 339016 := by
    unfold C
    simp [show (1417176 * k + 113005) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 339016) = 2125764 * k + 169508 := by
    unfold C
    simp [show (4251528 * k + 339016) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 169508) = 1062882 * k + 84754 := by
    unfold C
    simp [show (2125764 * k + 169508) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 84754) = 531441 * k + 42377 := by
    unfold C
    simp [show (1062882 * k + 84754) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 83611) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 83611)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_84415 : ∀ k : Nat,
    iterate (1048576 * k + 84415) 32 = 531441 * k + 42784 ∧
      531441 * k + 42784 < 1048576 * k + 84415 := by
  intro k
  have h1 : C (1048576 * k + 84415) = 3145728 * k + 253246 := by
    unfold C
    simp [show (1048576 * k + 84415) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 253246) = 1572864 * k + 126623 := by
    unfold C
    simp [show (3145728 * k + 253246) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 126623) = 4718592 * k + 379870 := by
    unfold C
    simp [show (1572864 * k + 126623) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 379870) = 2359296 * k + 189935 := by
    unfold C
    simp [show (4718592 * k + 379870) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 189935) = 7077888 * k + 569806 := by
    unfold C
    simp [show (2359296 * k + 189935) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 569806) = 3538944 * k + 284903 := by
    unfold C
    simp [show (7077888 * k + 569806) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 284903) = 10616832 * k + 854710 := by
    unfold C
    simp [show (3538944 * k + 284903) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 854710) = 5308416 * k + 427355 := by
    unfold C
    simp [show (10616832 * k + 854710) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 427355) = 15925248 * k + 1282066 := by
    unfold C
    simp [show (5308416 * k + 427355) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1282066) = 7962624 * k + 641033 := by
    unfold C
    simp [show (15925248 * k + 1282066) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 641033) = 23887872 * k + 1923100 := by
    unfold C
    simp [show (7962624 * k + 641033) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1923100) = 11943936 * k + 961550 := by
    unfold C
    simp [show (23887872 * k + 1923100) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 961550) = 5971968 * k + 480775 := by
    unfold C
    simp [show (11943936 * k + 961550) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 480775) = 17915904 * k + 1442326 := by
    unfold C
    simp [show (5971968 * k + 480775) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1442326) = 8957952 * k + 721163 := by
    unfold C
    simp [show (17915904 * k + 1442326) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 721163) = 26873856 * k + 2163490 := by
    unfold C
    simp [show (8957952 * k + 721163) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2163490) = 13436928 * k + 1081745 := by
    unfold C
    simp [show (26873856 * k + 2163490) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1081745) = 40310784 * k + 3245236 := by
    unfold C
    simp [show (13436928 * k + 1081745) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 3245236) = 20155392 * k + 1622618 := by
    unfold C
    simp [show (40310784 * k + 3245236) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 1622618) = 10077696 * k + 811309 := by
    unfold C
    simp [show (20155392 * k + 1622618) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 811309) = 30233088 * k + 2433928 := by
    unfold C
    simp [show (10077696 * k + 811309) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 2433928) = 15116544 * k + 1216964 := by
    unfold C
    simp [show (30233088 * k + 2433928) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1216964) = 7558272 * k + 608482 := by
    unfold C
    simp [show (15116544 * k + 1216964) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 608482) = 3779136 * k + 304241 := by
    unfold C
    simp [show (7558272 * k + 608482) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 304241) = 11337408 * k + 912724 := by
    unfold C
    simp [show (3779136 * k + 304241) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 912724) = 5668704 * k + 456362 := by
    unfold C
    simp [show (11337408 * k + 912724) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 456362) = 2834352 * k + 228181 := by
    unfold C
    simp [show (5668704 * k + 456362) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 228181) = 8503056 * k + 684544 := by
    unfold C
    simp [show (2834352 * k + 228181) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 684544) = 4251528 * k + 342272 := by
    unfold C
    simp [show (8503056 * k + 684544) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 342272) = 2125764 * k + 171136 := by
    unfold C
    simp [show (4251528 * k + 342272) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 171136) = 1062882 * k + 85568 := by
    unfold C
    simp [show (2125764 * k + 171136) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 85568) = 531441 * k + 42784 := by
    unfold C
    simp [show (1062882 * k + 85568) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 84415) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 84415)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_85103 : ∀ k : Nat,
    iterate (1048576 * k + 85103) 32 = 531441 * k + 43133 ∧
      531441 * k + 43133 < 1048576 * k + 85103 := by
  intro k
  have h1 : C (1048576 * k + 85103) = 3145728 * k + 255310 := by
    unfold C
    simp [show (1048576 * k + 85103) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 255310) = 1572864 * k + 127655 := by
    unfold C
    simp [show (3145728 * k + 255310) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 127655) = 4718592 * k + 382966 := by
    unfold C
    simp [show (1572864 * k + 127655) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 382966) = 2359296 * k + 191483 := by
    unfold C
    simp [show (4718592 * k + 382966) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 191483) = 7077888 * k + 574450 := by
    unfold C
    simp [show (2359296 * k + 191483) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 574450) = 3538944 * k + 287225 := by
    unfold C
    simp [show (7077888 * k + 574450) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 287225) = 10616832 * k + 861676 := by
    unfold C
    simp [show (3538944 * k + 287225) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 861676) = 5308416 * k + 430838 := by
    unfold C
    simp [show (10616832 * k + 861676) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 430838) = 2654208 * k + 215419 := by
    unfold C
    simp [show (5308416 * k + 430838) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 215419) = 7962624 * k + 646258 := by
    unfold C
    simp [show (2654208 * k + 215419) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 646258) = 3981312 * k + 323129 := by
    unfold C
    simp [show (7962624 * k + 646258) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 323129) = 11943936 * k + 969388 := by
    unfold C
    simp [show (3981312 * k + 323129) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 969388) = 5971968 * k + 484694 := by
    unfold C
    simp [show (11943936 * k + 969388) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 484694) = 2985984 * k + 242347 := by
    unfold C
    simp [show (5971968 * k + 484694) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 242347) = 8957952 * k + 727042 := by
    unfold C
    simp [show (2985984 * k + 242347) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 727042) = 4478976 * k + 363521 := by
    unfold C
    simp [show (8957952 * k + 727042) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 363521) = 13436928 * k + 1090564 := by
    unfold C
    simp [show (4478976 * k + 363521) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1090564) = 6718464 * k + 545282 := by
    unfold C
    simp [show (13436928 * k + 1090564) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 545282) = 3359232 * k + 272641 := by
    unfold C
    simp [show (6718464 * k + 545282) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 272641) = 10077696 * k + 817924 := by
    unfold C
    simp [show (3359232 * k + 272641) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 817924) = 5038848 * k + 408962 := by
    unfold C
    simp [show (10077696 * k + 817924) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 408962) = 2519424 * k + 204481 := by
    unfold C
    simp [show (5038848 * k + 408962) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 204481) = 7558272 * k + 613444 := by
    unfold C
    simp [show (2519424 * k + 204481) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 613444) = 3779136 * k + 306722 := by
    unfold C
    simp [show (7558272 * k + 613444) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 306722) = 1889568 * k + 153361 := by
    unfold C
    simp [show (3779136 * k + 306722) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 153361) = 5668704 * k + 460084 := by
    unfold C
    simp [show (1889568 * k + 153361) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 460084) = 2834352 * k + 230042 := by
    unfold C
    simp [show (5668704 * k + 460084) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 230042) = 1417176 * k + 115021 := by
    unfold C
    simp [show (2834352 * k + 230042) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 115021) = 4251528 * k + 345064 := by
    unfold C
    simp [show (1417176 * k + 115021) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 345064) = 2125764 * k + 172532 := by
    unfold C
    simp [show (4251528 * k + 345064) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 172532) = 1062882 * k + 86266 := by
    unfold C
    simp [show (2125764 * k + 172532) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 86266) = 531441 * k + 43133 := by
    unfold C
    simp [show (1062882 * k + 86266) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 85103) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 85103)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_85671 : ∀ k : Nat,
    iterate (1048576 * k + 85671) 32 = 531441 * k + 43421 ∧
      531441 * k + 43421 < 1048576 * k + 85671 := by
  intro k
  have h1 : C (1048576 * k + 85671) = 3145728 * k + 257014 := by
    unfold C
    simp [show (1048576 * k + 85671) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 257014) = 1572864 * k + 128507 := by
    unfold C
    simp [show (3145728 * k + 257014) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 128507) = 4718592 * k + 385522 := by
    unfold C
    simp [show (1572864 * k + 128507) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 385522) = 2359296 * k + 192761 := by
    unfold C
    simp [show (4718592 * k + 385522) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 192761) = 7077888 * k + 578284 := by
    unfold C
    simp [show (2359296 * k + 192761) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 578284) = 3538944 * k + 289142 := by
    unfold C
    simp [show (7077888 * k + 578284) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 289142) = 1769472 * k + 144571 := by
    unfold C
    simp [show (3538944 * k + 289142) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 144571) = 5308416 * k + 433714 := by
    unfold C
    simp [show (1769472 * k + 144571) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 433714) = 2654208 * k + 216857 := by
    unfold C
    simp [show (5308416 * k + 433714) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 216857) = 7962624 * k + 650572 := by
    unfold C
    simp [show (2654208 * k + 216857) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 650572) = 3981312 * k + 325286 := by
    unfold C
    simp [show (7962624 * k + 650572) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 325286) = 1990656 * k + 162643 := by
    unfold C
    simp [show (3981312 * k + 325286) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 162643) = 5971968 * k + 487930 := by
    unfold C
    simp [show (1990656 * k + 162643) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 487930) = 2985984 * k + 243965 := by
    unfold C
    simp [show (5971968 * k + 487930) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 243965) = 8957952 * k + 731896 := by
    unfold C
    simp [show (2985984 * k + 243965) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 731896) = 4478976 * k + 365948 := by
    unfold C
    simp [show (8957952 * k + 731896) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 365948) = 2239488 * k + 182974 := by
    unfold C
    simp [show (4478976 * k + 365948) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 182974) = 1119744 * k + 91487 := by
    unfold C
    simp [show (2239488 * k + 182974) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 91487) = 3359232 * k + 274462 := by
    unfold C
    simp [show (1119744 * k + 91487) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 274462) = 1679616 * k + 137231 := by
    unfold C
    simp [show (3359232 * k + 274462) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 137231) = 5038848 * k + 411694 := by
    unfold C
    simp [show (1679616 * k + 137231) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 411694) = 2519424 * k + 205847 := by
    unfold C
    simp [show (5038848 * k + 411694) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 205847) = 7558272 * k + 617542 := by
    unfold C
    simp [show (2519424 * k + 205847) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 617542) = 3779136 * k + 308771 := by
    unfold C
    simp [show (7558272 * k + 617542) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 308771) = 11337408 * k + 926314 := by
    unfold C
    simp [show (3779136 * k + 308771) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 926314) = 5668704 * k + 463157 := by
    unfold C
    simp [show (11337408 * k + 926314) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 463157) = 17006112 * k + 1389472 := by
    unfold C
    simp [show (5668704 * k + 463157) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1389472) = 8503056 * k + 694736 := by
    unfold C
    simp [show (17006112 * k + 1389472) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 694736) = 4251528 * k + 347368 := by
    unfold C
    simp [show (8503056 * k + 694736) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 347368) = 2125764 * k + 173684 := by
    unfold C
    simp [show (4251528 * k + 347368) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 173684) = 1062882 * k + 86842 := by
    unfold C
    simp [show (2125764 * k + 173684) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 86842) = 531441 * k + 43421 := by
    unfold C
    simp [show (1062882 * k + 86842) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 85671) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 85671)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_85711 : ∀ k : Nat,
    iterate (1048576 * k + 85711) 32 = 531441 * k + 43441 ∧
      531441 * k + 43441 < 1048576 * k + 85711 := by
  intro k
  have h1 : C (1048576 * k + 85711) = 3145728 * k + 257134 := by
    unfold C
    simp [show (1048576 * k + 85711) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 257134) = 1572864 * k + 128567 := by
    unfold C
    simp [show (3145728 * k + 257134) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 128567) = 4718592 * k + 385702 := by
    unfold C
    simp [show (1572864 * k + 128567) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 385702) = 2359296 * k + 192851 := by
    unfold C
    simp [show (4718592 * k + 385702) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 192851) = 7077888 * k + 578554 := by
    unfold C
    simp [show (2359296 * k + 192851) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 578554) = 3538944 * k + 289277 := by
    unfold C
    simp [show (7077888 * k + 578554) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 289277) = 10616832 * k + 867832 := by
    unfold C
    simp [show (3538944 * k + 289277) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 867832) = 5308416 * k + 433916 := by
    unfold C
    simp [show (10616832 * k + 867832) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 433916) = 2654208 * k + 216958 := by
    unfold C
    simp [show (5308416 * k + 433916) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 216958) = 1327104 * k + 108479 := by
    unfold C
    simp [show (2654208 * k + 216958) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 108479) = 3981312 * k + 325438 := by
    unfold C
    simp [show (1327104 * k + 108479) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 325438) = 1990656 * k + 162719 := by
    unfold C
    simp [show (3981312 * k + 325438) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 162719) = 5971968 * k + 488158 := by
    unfold C
    simp [show (1990656 * k + 162719) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 488158) = 2985984 * k + 244079 := by
    unfold C
    simp [show (5971968 * k + 488158) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 244079) = 8957952 * k + 732238 := by
    unfold C
    simp [show (2985984 * k + 244079) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 732238) = 4478976 * k + 366119 := by
    unfold C
    simp [show (8957952 * k + 732238) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 366119) = 13436928 * k + 1098358 := by
    unfold C
    simp [show (4478976 * k + 366119) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1098358) = 6718464 * k + 549179 := by
    unfold C
    simp [show (13436928 * k + 1098358) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 549179) = 20155392 * k + 1647538 := by
    unfold C
    simp [show (6718464 * k + 549179) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1647538) = 10077696 * k + 823769 := by
    unfold C
    simp [show (20155392 * k + 1647538) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 823769) = 30233088 * k + 2471308 := by
    unfold C
    simp [show (10077696 * k + 823769) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 2471308) = 15116544 * k + 1235654 := by
    unfold C
    simp [show (30233088 * k + 2471308) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1235654) = 7558272 * k + 617827 := by
    unfold C
    simp [show (15116544 * k + 1235654) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 617827) = 22674816 * k + 1853482 := by
    unfold C
    simp [show (7558272 * k + 617827) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 1853482) = 11337408 * k + 926741 := by
    unfold C
    simp [show (22674816 * k + 1853482) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 926741) = 34012224 * k + 2780224 := by
    unfold C
    simp [show (11337408 * k + 926741) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 2780224) = 17006112 * k + 1390112 := by
    unfold C
    simp [show (34012224 * k + 2780224) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 1390112) = 8503056 * k + 695056 := by
    unfold C
    simp [show (17006112 * k + 1390112) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 695056) = 4251528 * k + 347528 := by
    unfold C
    simp [show (8503056 * k + 695056) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 347528) = 2125764 * k + 173764 := by
    unfold C
    simp [show (4251528 * k + 347528) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 173764) = 1062882 * k + 86882 := by
    unfold C
    simp [show (2125764 * k + 173764) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 86882) = 531441 * k + 43441 := by
    unfold C
    simp [show (1062882 * k + 86882) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 85711) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 85711)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_86107 : ∀ k : Nat,
    iterate (1048576 * k + 86107) 32 = 531441 * k + 43642 ∧
      531441 * k + 43642 < 1048576 * k + 86107 := by
  intro k
  have h1 : C (1048576 * k + 86107) = 3145728 * k + 258322 := by
    unfold C
    simp [show (1048576 * k + 86107) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 258322) = 1572864 * k + 129161 := by
    unfold C
    simp [show (3145728 * k + 258322) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 129161) = 4718592 * k + 387484 := by
    unfold C
    simp [show (1572864 * k + 129161) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 387484) = 2359296 * k + 193742 := by
    unfold C
    simp [show (4718592 * k + 387484) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 193742) = 1179648 * k + 96871 := by
    unfold C
    simp [show (2359296 * k + 193742) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 96871) = 3538944 * k + 290614 := by
    unfold C
    simp [show (1179648 * k + 96871) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 290614) = 1769472 * k + 145307 := by
    unfold C
    simp [show (3538944 * k + 290614) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 145307) = 5308416 * k + 435922 := by
    unfold C
    simp [show (1769472 * k + 145307) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 435922) = 2654208 * k + 217961 := by
    unfold C
    simp [show (5308416 * k + 435922) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 217961) = 7962624 * k + 653884 := by
    unfold C
    simp [show (2654208 * k + 217961) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 653884) = 3981312 * k + 326942 := by
    unfold C
    simp [show (7962624 * k + 653884) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 326942) = 1990656 * k + 163471 := by
    unfold C
    simp [show (3981312 * k + 326942) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 163471) = 5971968 * k + 490414 := by
    unfold C
    simp [show (1990656 * k + 163471) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 490414) = 2985984 * k + 245207 := by
    unfold C
    simp [show (5971968 * k + 490414) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 245207) = 8957952 * k + 735622 := by
    unfold C
    simp [show (2985984 * k + 245207) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 735622) = 4478976 * k + 367811 := by
    unfold C
    simp [show (8957952 * k + 735622) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 367811) = 13436928 * k + 1103434 := by
    unfold C
    simp [show (4478976 * k + 367811) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1103434) = 6718464 * k + 551717 := by
    unfold C
    simp [show (13436928 * k + 1103434) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 551717) = 20155392 * k + 1655152 := by
    unfold C
    simp [show (6718464 * k + 551717) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1655152) = 10077696 * k + 827576 := by
    unfold C
    simp [show (20155392 * k + 1655152) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 827576) = 5038848 * k + 413788 := by
    unfold C
    simp [show (10077696 * k + 827576) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 413788) = 2519424 * k + 206894 := by
    unfold C
    simp [show (5038848 * k + 413788) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 206894) = 1259712 * k + 103447 := by
    unfold C
    simp [show (2519424 * k + 206894) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 103447) = 3779136 * k + 310342 := by
    unfold C
    simp [show (1259712 * k + 103447) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 310342) = 1889568 * k + 155171 := by
    unfold C
    simp [show (3779136 * k + 310342) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 155171) = 5668704 * k + 465514 := by
    unfold C
    simp [show (1889568 * k + 155171) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 465514) = 2834352 * k + 232757 := by
    unfold C
    simp [show (5668704 * k + 465514) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 232757) = 8503056 * k + 698272 := by
    unfold C
    simp [show (2834352 * k + 232757) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 698272) = 4251528 * k + 349136 := by
    unfold C
    simp [show (8503056 * k + 698272) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 349136) = 2125764 * k + 174568 := by
    unfold C
    simp [show (4251528 * k + 349136) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 174568) = 1062882 * k + 87284 := by
    unfold C
    simp [show (2125764 * k + 174568) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 87284) = 531441 * k + 43642 := by
    unfold C
    simp [show (1062882 * k + 87284) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 86107) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 86107)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_86695 : ∀ k : Nat,
    iterate (1048576 * k + 86695) 32 = 531441 * k + 43940 ∧
      531441 * k + 43940 < 1048576 * k + 86695 := by
  intro k
  have h1 : C (1048576 * k + 86695) = 3145728 * k + 260086 := by
    unfold C
    simp [show (1048576 * k + 86695) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 260086) = 1572864 * k + 130043 := by
    unfold C
    simp [show (3145728 * k + 260086) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 130043) = 4718592 * k + 390130 := by
    unfold C
    simp [show (1572864 * k + 130043) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 390130) = 2359296 * k + 195065 := by
    unfold C
    simp [show (4718592 * k + 390130) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 195065) = 7077888 * k + 585196 := by
    unfold C
    simp [show (2359296 * k + 195065) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 585196) = 3538944 * k + 292598 := by
    unfold C
    simp [show (7077888 * k + 585196) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 292598) = 1769472 * k + 146299 := by
    unfold C
    simp [show (3538944 * k + 292598) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 146299) = 5308416 * k + 438898 := by
    unfold C
    simp [show (1769472 * k + 146299) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 438898) = 2654208 * k + 219449 := by
    unfold C
    simp [show (5308416 * k + 438898) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 219449) = 7962624 * k + 658348 := by
    unfold C
    simp [show (2654208 * k + 219449) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 658348) = 3981312 * k + 329174 := by
    unfold C
    simp [show (7962624 * k + 658348) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 329174) = 1990656 * k + 164587 := by
    unfold C
    simp [show (3981312 * k + 329174) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 164587) = 5971968 * k + 493762 := by
    unfold C
    simp [show (1990656 * k + 164587) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 493762) = 2985984 * k + 246881 := by
    unfold C
    simp [show (5971968 * k + 493762) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 246881) = 8957952 * k + 740644 := by
    unfold C
    simp [show (2985984 * k + 246881) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 740644) = 4478976 * k + 370322 := by
    unfold C
    simp [show (8957952 * k + 740644) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 370322) = 2239488 * k + 185161 := by
    unfold C
    simp [show (4478976 * k + 370322) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 185161) = 6718464 * k + 555484 := by
    unfold C
    simp [show (2239488 * k + 185161) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 555484) = 3359232 * k + 277742 := by
    unfold C
    simp [show (6718464 * k + 555484) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 277742) = 1679616 * k + 138871 := by
    unfold C
    simp [show (3359232 * k + 277742) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 138871) = 5038848 * k + 416614 := by
    unfold C
    simp [show (1679616 * k + 138871) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 416614) = 2519424 * k + 208307 := by
    unfold C
    simp [show (5038848 * k + 416614) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 208307) = 7558272 * k + 624922 := by
    unfold C
    simp [show (2519424 * k + 208307) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 624922) = 3779136 * k + 312461 := by
    unfold C
    simp [show (7558272 * k + 624922) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 312461) = 11337408 * k + 937384 := by
    unfold C
    simp [show (3779136 * k + 312461) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 937384) = 5668704 * k + 468692 := by
    unfold C
    simp [show (11337408 * k + 937384) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 468692) = 2834352 * k + 234346 := by
    unfold C
    simp [show (5668704 * k + 468692) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 234346) = 1417176 * k + 117173 := by
    unfold C
    simp [show (2834352 * k + 234346) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 117173) = 4251528 * k + 351520 := by
    unfold C
    simp [show (1417176 * k + 117173) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 351520) = 2125764 * k + 175760 := by
    unfold C
    simp [show (4251528 * k + 351520) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 175760) = 1062882 * k + 87880 := by
    unfold C
    simp [show (2125764 * k + 175760) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 87880) = 531441 * k + 43940 := by
    unfold C
    simp [show (1062882 * k + 87880) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 86695) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 86695)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_87199 : ∀ k : Nat,
    iterate (1048576 * k + 87199) 32 = 531441 * k + 44195 ∧
      531441 * k + 44195 < 1048576 * k + 87199 := by
  intro k
  have h1 : C (1048576 * k + 87199) = 3145728 * k + 261598 := by
    unfold C
    simp [show (1048576 * k + 87199) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 261598) = 1572864 * k + 130799 := by
    unfold C
    simp [show (3145728 * k + 261598) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 130799) = 4718592 * k + 392398 := by
    unfold C
    simp [show (1572864 * k + 130799) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 392398) = 2359296 * k + 196199 := by
    unfold C
    simp [show (4718592 * k + 392398) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 196199) = 7077888 * k + 588598 := by
    unfold C
    simp [show (2359296 * k + 196199) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 588598) = 3538944 * k + 294299 := by
    unfold C
    simp [show (7077888 * k + 588598) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 294299) = 10616832 * k + 882898 := by
    unfold C
    simp [show (3538944 * k + 294299) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 882898) = 5308416 * k + 441449 := by
    unfold C
    simp [show (10616832 * k + 882898) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 441449) = 15925248 * k + 1324348 := by
    unfold C
    simp [show (5308416 * k + 441449) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1324348) = 7962624 * k + 662174 := by
    unfold C
    simp [show (15925248 * k + 1324348) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 662174) = 3981312 * k + 331087 := by
    unfold C
    simp [show (7962624 * k + 662174) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 331087) = 11943936 * k + 993262 := by
    unfold C
    simp [show (3981312 * k + 331087) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 993262) = 5971968 * k + 496631 := by
    unfold C
    simp [show (11943936 * k + 993262) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 496631) = 17915904 * k + 1489894 := by
    unfold C
    simp [show (5971968 * k + 496631) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1489894) = 8957952 * k + 744947 := by
    unfold C
    simp [show (17915904 * k + 1489894) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 744947) = 26873856 * k + 2234842 := by
    unfold C
    simp [show (8957952 * k + 744947) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2234842) = 13436928 * k + 1117421 := by
    unfold C
    simp [show (26873856 * k + 2234842) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1117421) = 40310784 * k + 3352264 := by
    unfold C
    simp [show (13436928 * k + 1117421) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 3352264) = 20155392 * k + 1676132 := by
    unfold C
    simp [show (40310784 * k + 3352264) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 1676132) = 10077696 * k + 838066 := by
    unfold C
    simp [show (20155392 * k + 1676132) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 838066) = 5038848 * k + 419033 := by
    unfold C
    simp [show (10077696 * k + 838066) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 419033) = 15116544 * k + 1257100 := by
    unfold C
    simp [show (5038848 * k + 419033) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1257100) = 7558272 * k + 628550 := by
    unfold C
    simp [show (15116544 * k + 1257100) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 628550) = 3779136 * k + 314275 := by
    unfold C
    simp [show (7558272 * k + 628550) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 314275) = 11337408 * k + 942826 := by
    unfold C
    simp [show (3779136 * k + 314275) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 942826) = 5668704 * k + 471413 := by
    unfold C
    simp [show (11337408 * k + 942826) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 471413) = 17006112 * k + 1414240 := by
    unfold C
    simp [show (5668704 * k + 471413) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1414240) = 8503056 * k + 707120 := by
    unfold C
    simp [show (17006112 * k + 1414240) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 707120) = 4251528 * k + 353560 := by
    unfold C
    simp [show (8503056 * k + 707120) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 353560) = 2125764 * k + 176780 := by
    unfold C
    simp [show (4251528 * k + 353560) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 176780) = 1062882 * k + 88390 := by
    unfold C
    simp [show (2125764 * k + 176780) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 88390) = 531441 * k + 44195 := by
    unfold C
    simp [show (1062882 * k + 88390) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 87199) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 87199)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_87323 : ∀ k : Nat,
    iterate (1048576 * k + 87323) 32 = 531441 * k + 44258 ∧
      531441 * k + 44258 < 1048576 * k + 87323 := by
  intro k
  have h1 : C (1048576 * k + 87323) = 3145728 * k + 261970 := by
    unfold C
    simp [show (1048576 * k + 87323) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 261970) = 1572864 * k + 130985 := by
    unfold C
    simp [show (3145728 * k + 261970) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 130985) = 4718592 * k + 392956 := by
    unfold C
    simp [show (1572864 * k + 130985) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 392956) = 2359296 * k + 196478 := by
    unfold C
    simp [show (4718592 * k + 392956) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 196478) = 1179648 * k + 98239 := by
    unfold C
    simp [show (2359296 * k + 196478) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 98239) = 3538944 * k + 294718 := by
    unfold C
    simp [show (1179648 * k + 98239) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 294718) = 1769472 * k + 147359 := by
    unfold C
    simp [show (3538944 * k + 294718) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 147359) = 5308416 * k + 442078 := by
    unfold C
    simp [show (1769472 * k + 147359) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 442078) = 2654208 * k + 221039 := by
    unfold C
    simp [show (5308416 * k + 442078) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 221039) = 7962624 * k + 663118 := by
    unfold C
    simp [show (2654208 * k + 221039) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 663118) = 3981312 * k + 331559 := by
    unfold C
    simp [show (7962624 * k + 663118) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 331559) = 11943936 * k + 994678 := by
    unfold C
    simp [show (3981312 * k + 331559) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 994678) = 5971968 * k + 497339 := by
    unfold C
    simp [show (11943936 * k + 994678) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 497339) = 17915904 * k + 1492018 := by
    unfold C
    simp [show (5971968 * k + 497339) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1492018) = 8957952 * k + 746009 := by
    unfold C
    simp [show (17915904 * k + 1492018) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 746009) = 26873856 * k + 2238028 := by
    unfold C
    simp [show (8957952 * k + 746009) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2238028) = 13436928 * k + 1119014 := by
    unfold C
    simp [show (26873856 * k + 2238028) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1119014) = 6718464 * k + 559507 := by
    unfold C
    simp [show (13436928 * k + 1119014) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 559507) = 20155392 * k + 1678522 := by
    unfold C
    simp [show (6718464 * k + 559507) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1678522) = 10077696 * k + 839261 := by
    unfold C
    simp [show (20155392 * k + 1678522) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 839261) = 30233088 * k + 2517784 := by
    unfold C
    simp [show (10077696 * k + 839261) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 2517784) = 15116544 * k + 1258892 := by
    unfold C
    simp [show (30233088 * k + 2517784) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1258892) = 7558272 * k + 629446 := by
    unfold C
    simp [show (15116544 * k + 1258892) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 629446) = 3779136 * k + 314723 := by
    unfold C
    simp [show (7558272 * k + 629446) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 314723) = 11337408 * k + 944170 := by
    unfold C
    simp [show (3779136 * k + 314723) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 944170) = 5668704 * k + 472085 := by
    unfold C
    simp [show (11337408 * k + 944170) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 472085) = 17006112 * k + 1416256 := by
    unfold C
    simp [show (5668704 * k + 472085) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1416256) = 8503056 * k + 708128 := by
    unfold C
    simp [show (17006112 * k + 1416256) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 708128) = 4251528 * k + 354064 := by
    unfold C
    simp [show (8503056 * k + 708128) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 354064) = 2125764 * k + 177032 := by
    unfold C
    simp [show (4251528 * k + 354064) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 177032) = 1062882 * k + 88516 := by
    unfold C
    simp [show (2125764 * k + 177032) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 88516) = 531441 * k + 44258 := by
    unfold C
    simp [show (1062882 * k + 88516) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 87323) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 87323)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_88175 : ∀ k : Nat,
    iterate (1048576 * k + 88175) 32 = 531441 * k + 44690 ∧
      531441 * k + 44690 < 1048576 * k + 88175 := by
  intro k
  have h1 : C (1048576 * k + 88175) = 3145728 * k + 264526 := by
    unfold C
    simp [show (1048576 * k + 88175) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 264526) = 1572864 * k + 132263 := by
    unfold C
    simp [show (3145728 * k + 264526) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 132263) = 4718592 * k + 396790 := by
    unfold C
    simp [show (1572864 * k + 132263) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 396790) = 2359296 * k + 198395 := by
    unfold C
    simp [show (4718592 * k + 396790) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 198395) = 7077888 * k + 595186 := by
    unfold C
    simp [show (2359296 * k + 198395) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 595186) = 3538944 * k + 297593 := by
    unfold C
    simp [show (7077888 * k + 595186) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 297593) = 10616832 * k + 892780 := by
    unfold C
    simp [show (3538944 * k + 297593) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 892780) = 5308416 * k + 446390 := by
    unfold C
    simp [show (10616832 * k + 892780) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 446390) = 2654208 * k + 223195 := by
    unfold C
    simp [show (5308416 * k + 446390) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 223195) = 7962624 * k + 669586 := by
    unfold C
    simp [show (2654208 * k + 223195) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 669586) = 3981312 * k + 334793 := by
    unfold C
    simp [show (7962624 * k + 669586) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 334793) = 11943936 * k + 1004380 := by
    unfold C
    simp [show (3981312 * k + 334793) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1004380) = 5971968 * k + 502190 := by
    unfold C
    simp [show (11943936 * k + 1004380) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 502190) = 2985984 * k + 251095 := by
    unfold C
    simp [show (5971968 * k + 502190) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 251095) = 8957952 * k + 753286 := by
    unfold C
    simp [show (2985984 * k + 251095) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 753286) = 4478976 * k + 376643 := by
    unfold C
    simp [show (8957952 * k + 753286) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 376643) = 13436928 * k + 1129930 := by
    unfold C
    simp [show (4478976 * k + 376643) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1129930) = 6718464 * k + 564965 := by
    unfold C
    simp [show (13436928 * k + 1129930) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 564965) = 20155392 * k + 1694896 := by
    unfold C
    simp [show (6718464 * k + 564965) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1694896) = 10077696 * k + 847448 := by
    unfold C
    simp [show (20155392 * k + 1694896) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 847448) = 5038848 * k + 423724 := by
    unfold C
    simp [show (10077696 * k + 847448) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 423724) = 2519424 * k + 211862 := by
    unfold C
    simp [show (5038848 * k + 423724) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 211862) = 1259712 * k + 105931 := by
    unfold C
    simp [show (2519424 * k + 211862) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 105931) = 3779136 * k + 317794 := by
    unfold C
    simp [show (1259712 * k + 105931) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 317794) = 1889568 * k + 158897 := by
    unfold C
    simp [show (3779136 * k + 317794) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 158897) = 5668704 * k + 476692 := by
    unfold C
    simp [show (1889568 * k + 158897) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 476692) = 2834352 * k + 238346 := by
    unfold C
    simp [show (5668704 * k + 476692) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 238346) = 1417176 * k + 119173 := by
    unfold C
    simp [show (2834352 * k + 238346) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 119173) = 4251528 * k + 357520 := by
    unfold C
    simp [show (1417176 * k + 119173) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 357520) = 2125764 * k + 178760 := by
    unfold C
    simp [show (4251528 * k + 357520) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 178760) = 1062882 * k + 89380 := by
    unfold C
    simp [show (2125764 * k + 178760) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 89380) = 531441 * k + 44690 := by
    unfold C
    simp [show (1062882 * k + 89380) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 88175) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 88175)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_88623 : ∀ k : Nat,
    iterate (1048576 * k + 88623) 32 = 531441 * k + 44917 ∧
      531441 * k + 44917 < 1048576 * k + 88623 := by
  intro k
  have h1 : C (1048576 * k + 88623) = 3145728 * k + 265870 := by
    unfold C
    simp [show (1048576 * k + 88623) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 265870) = 1572864 * k + 132935 := by
    unfold C
    simp [show (3145728 * k + 265870) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 132935) = 4718592 * k + 398806 := by
    unfold C
    simp [show (1572864 * k + 132935) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 398806) = 2359296 * k + 199403 := by
    unfold C
    simp [show (4718592 * k + 398806) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 199403) = 7077888 * k + 598210 := by
    unfold C
    simp [show (2359296 * k + 199403) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 598210) = 3538944 * k + 299105 := by
    unfold C
    simp [show (7077888 * k + 598210) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 299105) = 10616832 * k + 897316 := by
    unfold C
    simp [show (3538944 * k + 299105) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 897316) = 5308416 * k + 448658 := by
    unfold C
    simp [show (10616832 * k + 897316) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 448658) = 2654208 * k + 224329 := by
    unfold C
    simp [show (5308416 * k + 448658) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 224329) = 7962624 * k + 672988 := by
    unfold C
    simp [show (2654208 * k + 224329) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 672988) = 3981312 * k + 336494 := by
    unfold C
    simp [show (7962624 * k + 672988) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 336494) = 1990656 * k + 168247 := by
    unfold C
    simp [show (3981312 * k + 336494) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 168247) = 5971968 * k + 504742 := by
    unfold C
    simp [show (1990656 * k + 168247) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 504742) = 2985984 * k + 252371 := by
    unfold C
    simp [show (5971968 * k + 504742) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 252371) = 8957952 * k + 757114 := by
    unfold C
    simp [show (2985984 * k + 252371) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 757114) = 4478976 * k + 378557 := by
    unfold C
    simp [show (8957952 * k + 757114) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 378557) = 13436928 * k + 1135672 := by
    unfold C
    simp [show (4478976 * k + 378557) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1135672) = 6718464 * k + 567836 := by
    unfold C
    simp [show (13436928 * k + 1135672) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 567836) = 3359232 * k + 283918 := by
    unfold C
    simp [show (6718464 * k + 567836) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 283918) = 1679616 * k + 141959 := by
    unfold C
    simp [show (3359232 * k + 283918) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 141959) = 5038848 * k + 425878 := by
    unfold C
    simp [show (1679616 * k + 141959) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 425878) = 2519424 * k + 212939 := by
    unfold C
    simp [show (5038848 * k + 425878) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 212939) = 7558272 * k + 638818 := by
    unfold C
    simp [show (2519424 * k + 212939) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 638818) = 3779136 * k + 319409 := by
    unfold C
    simp [show (7558272 * k + 638818) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 319409) = 11337408 * k + 958228 := by
    unfold C
    simp [show (3779136 * k + 319409) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 958228) = 5668704 * k + 479114 := by
    unfold C
    simp [show (11337408 * k + 958228) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 479114) = 2834352 * k + 239557 := by
    unfold C
    simp [show (5668704 * k + 479114) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 239557) = 8503056 * k + 718672 := by
    unfold C
    simp [show (2834352 * k + 239557) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 718672) = 4251528 * k + 359336 := by
    unfold C
    simp [show (8503056 * k + 718672) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 359336) = 2125764 * k + 179668 := by
    unfold C
    simp [show (4251528 * k + 359336) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 179668) = 1062882 * k + 89834 := by
    unfold C
    simp [show (2125764 * k + 179668) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 89834) = 531441 * k + 44917 := by
    unfold C
    simp [show (1062882 * k + 89834) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 88623) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 88623)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_88783 : ∀ k : Nat,
    iterate (1048576 * k + 88783) 32 = 531441 * k + 44998 ∧
      531441 * k + 44998 < 1048576 * k + 88783 := by
  intro k
  have h1 : C (1048576 * k + 88783) = 3145728 * k + 266350 := by
    unfold C
    simp [show (1048576 * k + 88783) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 266350) = 1572864 * k + 133175 := by
    unfold C
    simp [show (3145728 * k + 266350) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 133175) = 4718592 * k + 399526 := by
    unfold C
    simp [show (1572864 * k + 133175) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 399526) = 2359296 * k + 199763 := by
    unfold C
    simp [show (4718592 * k + 399526) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 199763) = 7077888 * k + 599290 := by
    unfold C
    simp [show (2359296 * k + 199763) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 599290) = 3538944 * k + 299645 := by
    unfold C
    simp [show (7077888 * k + 599290) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 299645) = 10616832 * k + 898936 := by
    unfold C
    simp [show (3538944 * k + 299645) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 898936) = 5308416 * k + 449468 := by
    unfold C
    simp [show (10616832 * k + 898936) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 449468) = 2654208 * k + 224734 := by
    unfold C
    simp [show (5308416 * k + 449468) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 224734) = 1327104 * k + 112367 := by
    unfold C
    simp [show (2654208 * k + 224734) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 112367) = 3981312 * k + 337102 := by
    unfold C
    simp [show (1327104 * k + 112367) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 337102) = 1990656 * k + 168551 := by
    unfold C
    simp [show (3981312 * k + 337102) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 168551) = 5971968 * k + 505654 := by
    unfold C
    simp [show (1990656 * k + 168551) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 505654) = 2985984 * k + 252827 := by
    unfold C
    simp [show (5971968 * k + 505654) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 252827) = 8957952 * k + 758482 := by
    unfold C
    simp [show (2985984 * k + 252827) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 758482) = 4478976 * k + 379241 := by
    unfold C
    simp [show (8957952 * k + 758482) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 379241) = 13436928 * k + 1137724 := by
    unfold C
    simp [show (4478976 * k + 379241) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1137724) = 6718464 * k + 568862 := by
    unfold C
    simp [show (13436928 * k + 1137724) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 568862) = 3359232 * k + 284431 := by
    unfold C
    simp [show (6718464 * k + 568862) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 284431) = 10077696 * k + 853294 := by
    unfold C
    simp [show (3359232 * k + 284431) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 853294) = 5038848 * k + 426647 := by
    unfold C
    simp [show (10077696 * k + 853294) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 426647) = 15116544 * k + 1279942 := by
    unfold C
    simp [show (5038848 * k + 426647) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1279942) = 7558272 * k + 639971 := by
    unfold C
    simp [show (15116544 * k + 1279942) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 639971) = 22674816 * k + 1919914 := by
    unfold C
    simp [show (7558272 * k + 639971) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 1919914) = 11337408 * k + 959957 := by
    unfold C
    simp [show (22674816 * k + 1919914) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 959957) = 34012224 * k + 2879872 := by
    unfold C
    simp [show (11337408 * k + 959957) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 2879872) = 17006112 * k + 1439936 := by
    unfold C
    simp [show (34012224 * k + 2879872) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 1439936) = 8503056 * k + 719968 := by
    unfold C
    simp [show (17006112 * k + 1439936) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 719968) = 4251528 * k + 359984 := by
    unfold C
    simp [show (8503056 * k + 719968) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 359984) = 2125764 * k + 179992 := by
    unfold C
    simp [show (4251528 * k + 359984) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 179992) = 1062882 * k + 89996 := by
    unfold C
    simp [show (2125764 * k + 179992) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 89996) = 531441 * k + 44998 := by
    unfold C
    simp [show (1062882 * k + 89996) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 88783) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 88783)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_89055 : ∀ k : Nat,
    iterate (1048576 * k + 89055) 32 = 531441 * k + 45136 ∧
      531441 * k + 45136 < 1048576 * k + 89055 := by
  intro k
  have h1 : C (1048576 * k + 89055) = 3145728 * k + 267166 := by
    unfold C
    simp [show (1048576 * k + 89055) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 267166) = 1572864 * k + 133583 := by
    unfold C
    simp [show (3145728 * k + 267166) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 133583) = 4718592 * k + 400750 := by
    unfold C
    simp [show (1572864 * k + 133583) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 400750) = 2359296 * k + 200375 := by
    unfold C
    simp [show (4718592 * k + 400750) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 200375) = 7077888 * k + 601126 := by
    unfold C
    simp [show (2359296 * k + 200375) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 601126) = 3538944 * k + 300563 := by
    unfold C
    simp [show (7077888 * k + 601126) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 300563) = 10616832 * k + 901690 := by
    unfold C
    simp [show (3538944 * k + 300563) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 901690) = 5308416 * k + 450845 := by
    unfold C
    simp [show (10616832 * k + 901690) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 450845) = 15925248 * k + 1352536 := by
    unfold C
    simp [show (5308416 * k + 450845) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1352536) = 7962624 * k + 676268 := by
    unfold C
    simp [show (15925248 * k + 1352536) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 676268) = 3981312 * k + 338134 := by
    unfold C
    simp [show (7962624 * k + 676268) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 338134) = 1990656 * k + 169067 := by
    unfold C
    simp [show (3981312 * k + 338134) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 169067) = 5971968 * k + 507202 := by
    unfold C
    simp [show (1990656 * k + 169067) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 507202) = 2985984 * k + 253601 := by
    unfold C
    simp [show (5971968 * k + 507202) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 253601) = 8957952 * k + 760804 := by
    unfold C
    simp [show (2985984 * k + 253601) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 760804) = 4478976 * k + 380402 := by
    unfold C
    simp [show (8957952 * k + 760804) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 380402) = 2239488 * k + 190201 := by
    unfold C
    simp [show (4478976 * k + 380402) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 190201) = 6718464 * k + 570604 := by
    unfold C
    simp [show (2239488 * k + 190201) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 570604) = 3359232 * k + 285302 := by
    unfold C
    simp [show (6718464 * k + 570604) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 285302) = 1679616 * k + 142651 := by
    unfold C
    simp [show (3359232 * k + 285302) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 142651) = 5038848 * k + 427954 := by
    unfold C
    simp [show (1679616 * k + 142651) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 427954) = 2519424 * k + 213977 := by
    unfold C
    simp [show (5038848 * k + 427954) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 213977) = 7558272 * k + 641932 := by
    unfold C
    simp [show (2519424 * k + 213977) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 641932) = 3779136 * k + 320966 := by
    unfold C
    simp [show (7558272 * k + 641932) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 320966) = 1889568 * k + 160483 := by
    unfold C
    simp [show (3779136 * k + 320966) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 160483) = 5668704 * k + 481450 := by
    unfold C
    simp [show (1889568 * k + 160483) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 481450) = 2834352 * k + 240725 := by
    unfold C
    simp [show (5668704 * k + 481450) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 240725) = 8503056 * k + 722176 := by
    unfold C
    simp [show (2834352 * k + 240725) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 722176) = 4251528 * k + 361088 := by
    unfold C
    simp [show (8503056 * k + 722176) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 361088) = 2125764 * k + 180544 := by
    unfold C
    simp [show (4251528 * k + 361088) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 180544) = 1062882 * k + 90272 := by
    unfold C
    simp [show (2125764 * k + 180544) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 90272) = 531441 * k + 45136 := by
    unfold C
    simp [show (1062882 * k + 90272) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 89055) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 89055)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_90271 : ∀ k : Nat,
    iterate (1048576 * k + 90271) 32 = 531441 * k + 45752 ∧
      531441 * k + 45752 < 1048576 * k + 90271 := by
  intro k
  have h1 : C (1048576 * k + 90271) = 3145728 * k + 270814 := by
    unfold C
    simp [show (1048576 * k + 90271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 270814) = 1572864 * k + 135407 := by
    unfold C
    simp [show (3145728 * k + 270814) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 135407) = 4718592 * k + 406222 := by
    unfold C
    simp [show (1572864 * k + 135407) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 406222) = 2359296 * k + 203111 := by
    unfold C
    simp [show (4718592 * k + 406222) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 203111) = 7077888 * k + 609334 := by
    unfold C
    simp [show (2359296 * k + 203111) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 609334) = 3538944 * k + 304667 := by
    unfold C
    simp [show (7077888 * k + 609334) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 304667) = 10616832 * k + 914002 := by
    unfold C
    simp [show (3538944 * k + 304667) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 914002) = 5308416 * k + 457001 := by
    unfold C
    simp [show (10616832 * k + 914002) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 457001) = 15925248 * k + 1371004 := by
    unfold C
    simp [show (5308416 * k + 457001) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1371004) = 7962624 * k + 685502 := by
    unfold C
    simp [show (15925248 * k + 1371004) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 685502) = 3981312 * k + 342751 := by
    unfold C
    simp [show (7962624 * k + 685502) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 342751) = 11943936 * k + 1028254 := by
    unfold C
    simp [show (3981312 * k + 342751) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1028254) = 5971968 * k + 514127 := by
    unfold C
    simp [show (11943936 * k + 1028254) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 514127) = 17915904 * k + 1542382 := by
    unfold C
    simp [show (5971968 * k + 514127) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1542382) = 8957952 * k + 771191 := by
    unfold C
    simp [show (17915904 * k + 1542382) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 771191) = 26873856 * k + 2313574 := by
    unfold C
    simp [show (8957952 * k + 771191) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2313574) = 13436928 * k + 1156787 := by
    unfold C
    simp [show (26873856 * k + 2313574) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1156787) = 40310784 * k + 3470362 := by
    unfold C
    simp [show (13436928 * k + 1156787) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 3470362) = 20155392 * k + 1735181 := by
    unfold C
    simp [show (40310784 * k + 3470362) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 1735181) = 60466176 * k + 5205544 := by
    unfold C
    simp [show (20155392 * k + 1735181) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 5205544) = 30233088 * k + 2602772 := by
    unfold C
    simp [show (60466176 * k + 5205544) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 2602772) = 15116544 * k + 1301386 := by
    unfold C
    simp [show (30233088 * k + 2602772) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1301386) = 7558272 * k + 650693 := by
    unfold C
    simp [show (15116544 * k + 1301386) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 650693) = 22674816 * k + 1952080 := by
    unfold C
    simp [show (7558272 * k + 650693) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 1952080) = 11337408 * k + 976040 := by
    unfold C
    simp [show (22674816 * k + 1952080) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 976040) = 5668704 * k + 488020 := by
    unfold C
    simp [show (11337408 * k + 976040) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 488020) = 2834352 * k + 244010 := by
    unfold C
    simp [show (5668704 * k + 488020) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 244010) = 1417176 * k + 122005 := by
    unfold C
    simp [show (2834352 * k + 244010) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 122005) = 4251528 * k + 366016 := by
    unfold C
    simp [show (1417176 * k + 122005) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 366016) = 2125764 * k + 183008 := by
    unfold C
    simp [show (4251528 * k + 366016) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 183008) = 1062882 * k + 91504 := by
    unfold C
    simp [show (2125764 * k + 183008) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 91504) = 531441 * k + 45752 := by
    unfold C
    simp [show (1062882 * k + 91504) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 90271) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 90271)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_90395 : ∀ k : Nat,
    iterate (1048576 * k + 90395) 32 = 531441 * k + 45815 ∧
      531441 * k + 45815 < 1048576 * k + 90395 := by
  intro k
  have h1 : C (1048576 * k + 90395) = 3145728 * k + 271186 := by
    unfold C
    simp [show (1048576 * k + 90395) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 271186) = 1572864 * k + 135593 := by
    unfold C
    simp [show (3145728 * k + 271186) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 135593) = 4718592 * k + 406780 := by
    unfold C
    simp [show (1572864 * k + 135593) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 406780) = 2359296 * k + 203390 := by
    unfold C
    simp [show (4718592 * k + 406780) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 203390) = 1179648 * k + 101695 := by
    unfold C
    simp [show (2359296 * k + 203390) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 101695) = 3538944 * k + 305086 := by
    unfold C
    simp [show (1179648 * k + 101695) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 305086) = 1769472 * k + 152543 := by
    unfold C
    simp [show (3538944 * k + 305086) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 152543) = 5308416 * k + 457630 := by
    unfold C
    simp [show (1769472 * k + 152543) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 457630) = 2654208 * k + 228815 := by
    unfold C
    simp [show (5308416 * k + 457630) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 228815) = 7962624 * k + 686446 := by
    unfold C
    simp [show (2654208 * k + 228815) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 686446) = 3981312 * k + 343223 := by
    unfold C
    simp [show (7962624 * k + 686446) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 343223) = 11943936 * k + 1029670 := by
    unfold C
    simp [show (3981312 * k + 343223) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1029670) = 5971968 * k + 514835 := by
    unfold C
    simp [show (11943936 * k + 1029670) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 514835) = 17915904 * k + 1544506 := by
    unfold C
    simp [show (5971968 * k + 514835) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1544506) = 8957952 * k + 772253 := by
    unfold C
    simp [show (17915904 * k + 1544506) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 772253) = 26873856 * k + 2316760 := by
    unfold C
    simp [show (8957952 * k + 772253) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2316760) = 13436928 * k + 1158380 := by
    unfold C
    simp [show (26873856 * k + 2316760) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1158380) = 6718464 * k + 579190 := by
    unfold C
    simp [show (13436928 * k + 1158380) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 579190) = 3359232 * k + 289595 := by
    unfold C
    simp [show (6718464 * k + 579190) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 289595) = 10077696 * k + 868786 := by
    unfold C
    simp [show (3359232 * k + 289595) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 868786) = 5038848 * k + 434393 := by
    unfold C
    simp [show (10077696 * k + 868786) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 434393) = 15116544 * k + 1303180 := by
    unfold C
    simp [show (5038848 * k + 434393) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1303180) = 7558272 * k + 651590 := by
    unfold C
    simp [show (15116544 * k + 1303180) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 651590) = 3779136 * k + 325795 := by
    unfold C
    simp [show (7558272 * k + 651590) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 325795) = 11337408 * k + 977386 := by
    unfold C
    simp [show (3779136 * k + 325795) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 977386) = 5668704 * k + 488693 := by
    unfold C
    simp [show (11337408 * k + 977386) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 488693) = 17006112 * k + 1466080 := by
    unfold C
    simp [show (5668704 * k + 488693) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1466080) = 8503056 * k + 733040 := by
    unfold C
    simp [show (17006112 * k + 1466080) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 733040) = 4251528 * k + 366520 := by
    unfold C
    simp [show (8503056 * k + 733040) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 366520) = 2125764 * k + 183260 := by
    unfold C
    simp [show (4251528 * k + 366520) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 183260) = 1062882 * k + 91630 := by
    unfold C
    simp [show (2125764 * k + 183260) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 91630) = 531441 * k + 45815 := by
    unfold C
    simp [show (1062882 * k + 91630) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 90395) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 90395)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_90863 : ∀ k : Nat,
    iterate (1048576 * k + 90863) 32 = 531441 * k + 46052 ∧
      531441 * k + 46052 < 1048576 * k + 90863 := by
  intro k
  have h1 : C (1048576 * k + 90863) = 3145728 * k + 272590 := by
    unfold C
    simp [show (1048576 * k + 90863) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 272590) = 1572864 * k + 136295 := by
    unfold C
    simp [show (3145728 * k + 272590) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 136295) = 4718592 * k + 408886 := by
    unfold C
    simp [show (1572864 * k + 136295) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 408886) = 2359296 * k + 204443 := by
    unfold C
    simp [show (4718592 * k + 408886) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 204443) = 7077888 * k + 613330 := by
    unfold C
    simp [show (2359296 * k + 204443) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 613330) = 3538944 * k + 306665 := by
    unfold C
    simp [show (7077888 * k + 613330) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 306665) = 10616832 * k + 919996 := by
    unfold C
    simp [show (3538944 * k + 306665) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 919996) = 5308416 * k + 459998 := by
    unfold C
    simp [show (10616832 * k + 919996) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 459998) = 2654208 * k + 229999 := by
    unfold C
    simp [show (5308416 * k + 459998) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 229999) = 7962624 * k + 689998 := by
    unfold C
    simp [show (2654208 * k + 229999) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 689998) = 3981312 * k + 344999 := by
    unfold C
    simp [show (7962624 * k + 689998) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 344999) = 11943936 * k + 1034998 := by
    unfold C
    simp [show (3981312 * k + 344999) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1034998) = 5971968 * k + 517499 := by
    unfold C
    simp [show (11943936 * k + 1034998) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 517499) = 17915904 * k + 1552498 := by
    unfold C
    simp [show (5971968 * k + 517499) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1552498) = 8957952 * k + 776249 := by
    unfold C
    simp [show (17915904 * k + 1552498) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 776249) = 26873856 * k + 2328748 := by
    unfold C
    simp [show (8957952 * k + 776249) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2328748) = 13436928 * k + 1164374 := by
    unfold C
    simp [show (26873856 * k + 2328748) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1164374) = 6718464 * k + 582187 := by
    unfold C
    simp [show (13436928 * k + 1164374) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 582187) = 20155392 * k + 1746562 := by
    unfold C
    simp [show (6718464 * k + 582187) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1746562) = 10077696 * k + 873281 := by
    unfold C
    simp [show (20155392 * k + 1746562) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 873281) = 30233088 * k + 2619844 := by
    unfold C
    simp [show (10077696 * k + 873281) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 2619844) = 15116544 * k + 1309922 := by
    unfold C
    simp [show (30233088 * k + 2619844) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1309922) = 7558272 * k + 654961 := by
    unfold C
    simp [show (15116544 * k + 1309922) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 654961) = 22674816 * k + 1964884 := by
    unfold C
    simp [show (7558272 * k + 654961) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 1964884) = 11337408 * k + 982442 := by
    unfold C
    simp [show (22674816 * k + 1964884) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 982442) = 5668704 * k + 491221 := by
    unfold C
    simp [show (11337408 * k + 982442) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 491221) = 17006112 * k + 1473664 := by
    unfold C
    simp [show (5668704 * k + 491221) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1473664) = 8503056 * k + 736832 := by
    unfold C
    simp [show (17006112 * k + 1473664) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 736832) = 4251528 * k + 368416 := by
    unfold C
    simp [show (8503056 * k + 736832) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 368416) = 2125764 * k + 184208 := by
    unfold C
    simp [show (4251528 * k + 368416) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 184208) = 1062882 * k + 92104 := by
    unfold C
    simp [show (2125764 * k + 184208) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 92104) = 531441 * k + 46052 := by
    unfold C
    simp [show (1062882 * k + 92104) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 90863) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 90863)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard013
