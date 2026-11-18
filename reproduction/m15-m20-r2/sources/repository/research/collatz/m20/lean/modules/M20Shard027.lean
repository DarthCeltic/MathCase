import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard027

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_194047 : ∀ k : Nat,
    iterate (1048576 * k + 194047) 32 = 531441 * k + 98348 ∧
      531441 * k + 98348 < 1048576 * k + 194047 := by
  intro k
  have h1 : C (1048576 * k + 194047) = 3145728 * k + 582142 := by
    unfold C
    simp [show (1048576 * k + 194047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 582142) = 1572864 * k + 291071 := by
    unfold C
    simp [show (3145728 * k + 582142) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 291071) = 4718592 * k + 873214 := by
    unfold C
    simp [show (1572864 * k + 291071) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 873214) = 2359296 * k + 436607 := by
    unfold C
    simp [show (4718592 * k + 873214) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 436607) = 7077888 * k + 1309822 := by
    unfold C
    simp [show (2359296 * k + 436607) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1309822) = 3538944 * k + 654911 := by
    unfold C
    simp [show (7077888 * k + 1309822) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 654911) = 10616832 * k + 1964734 := by
    unfold C
    simp [show (3538944 * k + 654911) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1964734) = 5308416 * k + 982367 := by
    unfold C
    simp [show (10616832 * k + 1964734) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 982367) = 15925248 * k + 2947102 := by
    unfold C
    simp [show (5308416 * k + 982367) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2947102) = 7962624 * k + 1473551 := by
    unfold C
    simp [show (15925248 * k + 2947102) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1473551) = 23887872 * k + 4420654 := by
    unfold C
    simp [show (7962624 * k + 1473551) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 4420654) = 11943936 * k + 2210327 := by
    unfold C
    simp [show (23887872 * k + 4420654) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2210327) = 35831808 * k + 6630982 := by
    unfold C
    simp [show (11943936 * k + 2210327) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 6630982) = 17915904 * k + 3315491 := by
    unfold C
    simp [show (35831808 * k + 6630982) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 3315491) = 53747712 * k + 9946474 := by
    unfold C
    simp [show (17915904 * k + 3315491) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 9946474) = 26873856 * k + 4973237 := by
    unfold C
    simp [show (53747712 * k + 9946474) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 4973237) = 80621568 * k + 14919712 := by
    unfold C
    simp [show (26873856 * k + 4973237) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 14919712) = 40310784 * k + 7459856 := by
    unfold C
    simp [show (80621568 * k + 14919712) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 7459856) = 20155392 * k + 3729928 := by
    unfold C
    simp [show (40310784 * k + 7459856) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3729928) = 10077696 * k + 1864964 := by
    unfold C
    simp [show (20155392 * k + 3729928) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1864964) = 5038848 * k + 932482 := by
    unfold C
    simp [show (10077696 * k + 1864964) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 932482) = 2519424 * k + 466241 := by
    unfold C
    simp [show (5038848 * k + 932482) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 466241) = 7558272 * k + 1398724 := by
    unfold C
    simp [show (2519424 * k + 466241) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1398724) = 3779136 * k + 699362 := by
    unfold C
    simp [show (7558272 * k + 1398724) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 699362) = 1889568 * k + 349681 := by
    unfold C
    simp [show (3779136 * k + 699362) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 349681) = 5668704 * k + 1049044 := by
    unfold C
    simp [show (1889568 * k + 349681) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1049044) = 2834352 * k + 524522 := by
    unfold C
    simp [show (5668704 * k + 1049044) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 524522) = 1417176 * k + 262261 := by
    unfold C
    simp [show (2834352 * k + 524522) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 262261) = 4251528 * k + 786784 := by
    unfold C
    simp [show (1417176 * k + 262261) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 786784) = 2125764 * k + 393392 := by
    unfold C
    simp [show (4251528 * k + 786784) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 393392) = 1062882 * k + 196696 := by
    unfold C
    simp [show (2125764 * k + 393392) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 196696) = 531441 * k + 98348 := by
    unfold C
    simp [show (1062882 * k + 196696) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 194047) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 194047)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_194331 : ∀ k : Nat,
    iterate (1048576 * k + 194331) 32 = 531441 * k + 98492 ∧
      531441 * k + 98492 < 1048576 * k + 194331 := by
  intro k
  have h1 : C (1048576 * k + 194331) = 3145728 * k + 582994 := by
    unfold C
    simp [show (1048576 * k + 194331) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 582994) = 1572864 * k + 291497 := by
    unfold C
    simp [show (3145728 * k + 582994) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 291497) = 4718592 * k + 874492 := by
    unfold C
    simp [show (1572864 * k + 291497) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 874492) = 2359296 * k + 437246 := by
    unfold C
    simp [show (4718592 * k + 874492) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 437246) = 1179648 * k + 218623 := by
    unfold C
    simp [show (2359296 * k + 437246) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 218623) = 3538944 * k + 655870 := by
    unfold C
    simp [show (1179648 * k + 218623) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 655870) = 1769472 * k + 327935 := by
    unfold C
    simp [show (3538944 * k + 655870) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 327935) = 5308416 * k + 983806 := by
    unfold C
    simp [show (1769472 * k + 327935) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 983806) = 2654208 * k + 491903 := by
    unfold C
    simp [show (5308416 * k + 983806) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 491903) = 7962624 * k + 1475710 := by
    unfold C
    simp [show (2654208 * k + 491903) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1475710) = 3981312 * k + 737855 := by
    unfold C
    simp [show (7962624 * k + 1475710) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 737855) = 11943936 * k + 2213566 := by
    unfold C
    simp [show (3981312 * k + 737855) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2213566) = 5971968 * k + 1106783 := by
    unfold C
    simp [show (11943936 * k + 2213566) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1106783) = 17915904 * k + 3320350 := by
    unfold C
    simp [show (5971968 * k + 1106783) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3320350) = 8957952 * k + 1660175 := by
    unfold C
    simp [show (17915904 * k + 3320350) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1660175) = 26873856 * k + 4980526 := by
    unfold C
    simp [show (8957952 * k + 1660175) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4980526) = 13436928 * k + 2490263 := by
    unfold C
    simp [show (26873856 * k + 4980526) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2490263) = 40310784 * k + 7470790 := by
    unfold C
    simp [show (13436928 * k + 2490263) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 7470790) = 20155392 * k + 3735395 := by
    unfold C
    simp [show (40310784 * k + 7470790) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3735395) = 60466176 * k + 11206186 := by
    unfold C
    simp [show (20155392 * k + 3735395) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 11206186) = 30233088 * k + 5603093 := by
    unfold C
    simp [show (60466176 * k + 11206186) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 5603093) = 90699264 * k + 16809280 := by
    unfold C
    simp [show (30233088 * k + 5603093) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 16809280) = 45349632 * k + 8404640 := by
    unfold C
    simp [show (90699264 * k + 16809280) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 8404640) = 22674816 * k + 4202320 := by
    unfold C
    simp [show (45349632 * k + 8404640) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 4202320) = 11337408 * k + 2101160 := by
    unfold C
    simp [show (22674816 * k + 4202320) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2101160) = 5668704 * k + 1050580 := by
    unfold C
    simp [show (11337408 * k + 2101160) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1050580) = 2834352 * k + 525290 := by
    unfold C
    simp [show (5668704 * k + 1050580) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 525290) = 1417176 * k + 262645 := by
    unfold C
    simp [show (2834352 * k + 525290) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 262645) = 4251528 * k + 787936 := by
    unfold C
    simp [show (1417176 * k + 262645) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 787936) = 2125764 * k + 393968 := by
    unfold C
    simp [show (4251528 * k + 787936) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 393968) = 1062882 * k + 196984 := by
    unfold C
    simp [show (2125764 * k + 393968) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 196984) = 531441 * k + 98492 := by
    unfold C
    simp [show (1062882 * k + 196984) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 194331) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 194331)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_194799 : ∀ k : Nat,
    iterate (1048576 * k + 194799) 32 = 531441 * k + 98729 ∧
      531441 * k + 98729 < 1048576 * k + 194799 := by
  intro k
  have h1 : C (1048576 * k + 194799) = 3145728 * k + 584398 := by
    unfold C
    simp [show (1048576 * k + 194799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 584398) = 1572864 * k + 292199 := by
    unfold C
    simp [show (3145728 * k + 584398) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 292199) = 4718592 * k + 876598 := by
    unfold C
    simp [show (1572864 * k + 292199) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 876598) = 2359296 * k + 438299 := by
    unfold C
    simp [show (4718592 * k + 876598) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 438299) = 7077888 * k + 1314898 := by
    unfold C
    simp [show (2359296 * k + 438299) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1314898) = 3538944 * k + 657449 := by
    unfold C
    simp [show (7077888 * k + 1314898) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 657449) = 10616832 * k + 1972348 := by
    unfold C
    simp [show (3538944 * k + 657449) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1972348) = 5308416 * k + 986174 := by
    unfold C
    simp [show (10616832 * k + 1972348) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 986174) = 2654208 * k + 493087 := by
    unfold C
    simp [show (5308416 * k + 986174) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 493087) = 7962624 * k + 1479262 := by
    unfold C
    simp [show (2654208 * k + 493087) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1479262) = 3981312 * k + 739631 := by
    unfold C
    simp [show (7962624 * k + 1479262) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 739631) = 11943936 * k + 2218894 := by
    unfold C
    simp [show (3981312 * k + 739631) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2218894) = 5971968 * k + 1109447 := by
    unfold C
    simp [show (11943936 * k + 2218894) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1109447) = 17915904 * k + 3328342 := by
    unfold C
    simp [show (5971968 * k + 1109447) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3328342) = 8957952 * k + 1664171 := by
    unfold C
    simp [show (17915904 * k + 3328342) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1664171) = 26873856 * k + 4992514 := by
    unfold C
    simp [show (8957952 * k + 1664171) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4992514) = 13436928 * k + 2496257 := by
    unfold C
    simp [show (26873856 * k + 4992514) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2496257) = 40310784 * k + 7488772 := by
    unfold C
    simp [show (13436928 * k + 2496257) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 7488772) = 20155392 * k + 3744386 := by
    unfold C
    simp [show (40310784 * k + 7488772) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3744386) = 10077696 * k + 1872193 := by
    unfold C
    simp [show (20155392 * k + 3744386) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1872193) = 30233088 * k + 5616580 := by
    unfold C
    simp [show (10077696 * k + 1872193) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 5616580) = 15116544 * k + 2808290 := by
    unfold C
    simp [show (30233088 * k + 5616580) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2808290) = 7558272 * k + 1404145 := by
    unfold C
    simp [show (15116544 * k + 2808290) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1404145) = 22674816 * k + 4212436 := by
    unfold C
    simp [show (7558272 * k + 1404145) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 4212436) = 11337408 * k + 2106218 := by
    unfold C
    simp [show (22674816 * k + 4212436) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2106218) = 5668704 * k + 1053109 := by
    unfold C
    simp [show (11337408 * k + 2106218) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1053109) = 17006112 * k + 3159328 := by
    unfold C
    simp [show (5668704 * k + 1053109) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3159328) = 8503056 * k + 1579664 := by
    unfold C
    simp [show (17006112 * k + 3159328) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1579664) = 4251528 * k + 789832 := by
    unfold C
    simp [show (8503056 * k + 1579664) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 789832) = 2125764 * k + 394916 := by
    unfold C
    simp [show (4251528 * k + 789832) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 394916) = 1062882 * k + 197458 := by
    unfold C
    simp [show (2125764 * k + 394916) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 197458) = 531441 * k + 98729 := by
    unfold C
    simp [show (1062882 * k + 197458) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 194799) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 194799)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_195175 : ∀ k : Nat,
    iterate (1048576 * k + 195175) 32 = 531441 * k + 98920 ∧
      531441 * k + 98920 < 1048576 * k + 195175 := by
  intro k
  have h1 : C (1048576 * k + 195175) = 3145728 * k + 585526 := by
    unfold C
    simp [show (1048576 * k + 195175) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 585526) = 1572864 * k + 292763 := by
    unfold C
    simp [show (3145728 * k + 585526) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 292763) = 4718592 * k + 878290 := by
    unfold C
    simp [show (1572864 * k + 292763) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 878290) = 2359296 * k + 439145 := by
    unfold C
    simp [show (4718592 * k + 878290) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 439145) = 7077888 * k + 1317436 := by
    unfold C
    simp [show (2359296 * k + 439145) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1317436) = 3538944 * k + 658718 := by
    unfold C
    simp [show (7077888 * k + 1317436) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 658718) = 1769472 * k + 329359 := by
    unfold C
    simp [show (3538944 * k + 658718) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 329359) = 5308416 * k + 988078 := by
    unfold C
    simp [show (1769472 * k + 329359) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 988078) = 2654208 * k + 494039 := by
    unfold C
    simp [show (5308416 * k + 988078) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 494039) = 7962624 * k + 1482118 := by
    unfold C
    simp [show (2654208 * k + 494039) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1482118) = 3981312 * k + 741059 := by
    unfold C
    simp [show (7962624 * k + 1482118) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 741059) = 11943936 * k + 2223178 := by
    unfold C
    simp [show (3981312 * k + 741059) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2223178) = 5971968 * k + 1111589 := by
    unfold C
    simp [show (11943936 * k + 2223178) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1111589) = 17915904 * k + 3334768 := by
    unfold C
    simp [show (5971968 * k + 1111589) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3334768) = 8957952 * k + 1667384 := by
    unfold C
    simp [show (17915904 * k + 3334768) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1667384) = 4478976 * k + 833692 := by
    unfold C
    simp [show (8957952 * k + 1667384) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 833692) = 2239488 * k + 416846 := by
    unfold C
    simp [show (4478976 * k + 833692) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 416846) = 1119744 * k + 208423 := by
    unfold C
    simp [show (2239488 * k + 416846) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 208423) = 3359232 * k + 625270 := by
    unfold C
    simp [show (1119744 * k + 208423) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 625270) = 1679616 * k + 312635 := by
    unfold C
    simp [show (3359232 * k + 625270) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 312635) = 5038848 * k + 937906 := by
    unfold C
    simp [show (1679616 * k + 312635) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 937906) = 2519424 * k + 468953 := by
    unfold C
    simp [show (5038848 * k + 937906) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 468953) = 7558272 * k + 1406860 := by
    unfold C
    simp [show (2519424 * k + 468953) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1406860) = 3779136 * k + 703430 := by
    unfold C
    simp [show (7558272 * k + 1406860) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 703430) = 1889568 * k + 351715 := by
    unfold C
    simp [show (3779136 * k + 703430) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 351715) = 5668704 * k + 1055146 := by
    unfold C
    simp [show (1889568 * k + 351715) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1055146) = 2834352 * k + 527573 := by
    unfold C
    simp [show (5668704 * k + 1055146) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 527573) = 8503056 * k + 1582720 := by
    unfold C
    simp [show (2834352 * k + 527573) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1582720) = 4251528 * k + 791360 := by
    unfold C
    simp [show (8503056 * k + 1582720) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 791360) = 2125764 * k + 395680 := by
    unfold C
    simp [show (4251528 * k + 791360) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 395680) = 1062882 * k + 197840 := by
    unfold C
    simp [show (2125764 * k + 395680) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 197840) = 531441 * k + 98920 := by
    unfold C
    simp [show (1062882 * k + 197840) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 195175) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 195175)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_195355 : ∀ k : Nat,
    iterate (1048576 * k + 195355) 32 = 531441 * k + 99011 ∧
      531441 * k + 99011 < 1048576 * k + 195355 := by
  intro k
  have h1 : C (1048576 * k + 195355) = 3145728 * k + 586066 := by
    unfold C
    simp [show (1048576 * k + 195355) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 586066) = 1572864 * k + 293033 := by
    unfold C
    simp [show (3145728 * k + 586066) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 293033) = 4718592 * k + 879100 := by
    unfold C
    simp [show (1572864 * k + 293033) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 879100) = 2359296 * k + 439550 := by
    unfold C
    simp [show (4718592 * k + 879100) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 439550) = 1179648 * k + 219775 := by
    unfold C
    simp [show (2359296 * k + 439550) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 219775) = 3538944 * k + 659326 := by
    unfold C
    simp [show (1179648 * k + 219775) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 659326) = 1769472 * k + 329663 := by
    unfold C
    simp [show (3538944 * k + 659326) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 329663) = 5308416 * k + 988990 := by
    unfold C
    simp [show (1769472 * k + 329663) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 988990) = 2654208 * k + 494495 := by
    unfold C
    simp [show (5308416 * k + 988990) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 494495) = 7962624 * k + 1483486 := by
    unfold C
    simp [show (2654208 * k + 494495) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1483486) = 3981312 * k + 741743 := by
    unfold C
    simp [show (7962624 * k + 1483486) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 741743) = 11943936 * k + 2225230 := by
    unfold C
    simp [show (3981312 * k + 741743) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2225230) = 5971968 * k + 1112615 := by
    unfold C
    simp [show (11943936 * k + 2225230) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1112615) = 17915904 * k + 3337846 := by
    unfold C
    simp [show (5971968 * k + 1112615) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3337846) = 8957952 * k + 1668923 := by
    unfold C
    simp [show (17915904 * k + 3337846) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1668923) = 26873856 * k + 5006770 := by
    unfold C
    simp [show (8957952 * k + 1668923) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5006770) = 13436928 * k + 2503385 := by
    unfold C
    simp [show (26873856 * k + 5006770) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2503385) = 40310784 * k + 7510156 := by
    unfold C
    simp [show (13436928 * k + 2503385) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 7510156) = 20155392 * k + 3755078 := by
    unfold C
    simp [show (40310784 * k + 7510156) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3755078) = 10077696 * k + 1877539 := by
    unfold C
    simp [show (20155392 * k + 3755078) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1877539) = 30233088 * k + 5632618 := by
    unfold C
    simp [show (10077696 * k + 1877539) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 5632618) = 15116544 * k + 2816309 := by
    unfold C
    simp [show (30233088 * k + 5632618) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2816309) = 45349632 * k + 8448928 := by
    unfold C
    simp [show (15116544 * k + 2816309) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 8448928) = 22674816 * k + 4224464 := by
    unfold C
    simp [show (45349632 * k + 8448928) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 4224464) = 11337408 * k + 2112232 := by
    unfold C
    simp [show (22674816 * k + 4224464) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2112232) = 5668704 * k + 1056116 := by
    unfold C
    simp [show (11337408 * k + 2112232) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1056116) = 2834352 * k + 528058 := by
    unfold C
    simp [show (5668704 * k + 1056116) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 528058) = 1417176 * k + 264029 := by
    unfold C
    simp [show (2834352 * k + 528058) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 264029) = 4251528 * k + 792088 := by
    unfold C
    simp [show (1417176 * k + 264029) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 792088) = 2125764 * k + 396044 := by
    unfold C
    simp [show (4251528 * k + 792088) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 396044) = 1062882 * k + 198022 := by
    unfold C
    simp [show (2125764 * k + 396044) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 198022) = 531441 * k + 99011 := by
    unfold C
    simp [show (1062882 * k + 198022) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 195355) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 195355)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_195823 : ∀ k : Nat,
    iterate (1048576 * k + 195823) 32 = 531441 * k + 99248 ∧
      531441 * k + 99248 < 1048576 * k + 195823 := by
  intro k
  have h1 : C (1048576 * k + 195823) = 3145728 * k + 587470 := by
    unfold C
    simp [show (1048576 * k + 195823) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 587470) = 1572864 * k + 293735 := by
    unfold C
    simp [show (3145728 * k + 587470) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 293735) = 4718592 * k + 881206 := by
    unfold C
    simp [show (1572864 * k + 293735) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 881206) = 2359296 * k + 440603 := by
    unfold C
    simp [show (4718592 * k + 881206) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 440603) = 7077888 * k + 1321810 := by
    unfold C
    simp [show (2359296 * k + 440603) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1321810) = 3538944 * k + 660905 := by
    unfold C
    simp [show (7077888 * k + 1321810) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 660905) = 10616832 * k + 1982716 := by
    unfold C
    simp [show (3538944 * k + 660905) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1982716) = 5308416 * k + 991358 := by
    unfold C
    simp [show (10616832 * k + 1982716) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 991358) = 2654208 * k + 495679 := by
    unfold C
    simp [show (5308416 * k + 991358) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 495679) = 7962624 * k + 1487038 := by
    unfold C
    simp [show (2654208 * k + 495679) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1487038) = 3981312 * k + 743519 := by
    unfold C
    simp [show (7962624 * k + 1487038) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 743519) = 11943936 * k + 2230558 := by
    unfold C
    simp [show (3981312 * k + 743519) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2230558) = 5971968 * k + 1115279 := by
    unfold C
    simp [show (11943936 * k + 2230558) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1115279) = 17915904 * k + 3345838 := by
    unfold C
    simp [show (5971968 * k + 1115279) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3345838) = 8957952 * k + 1672919 := by
    unfold C
    simp [show (17915904 * k + 3345838) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1672919) = 26873856 * k + 5018758 := by
    unfold C
    simp [show (8957952 * k + 1672919) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5018758) = 13436928 * k + 2509379 := by
    unfold C
    simp [show (26873856 * k + 5018758) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2509379) = 40310784 * k + 7528138 := by
    unfold C
    simp [show (13436928 * k + 2509379) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 7528138) = 20155392 * k + 3764069 := by
    unfold C
    simp [show (40310784 * k + 7528138) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3764069) = 60466176 * k + 11292208 := by
    unfold C
    simp [show (20155392 * k + 3764069) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 11292208) = 30233088 * k + 5646104 := by
    unfold C
    simp [show (60466176 * k + 11292208) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 5646104) = 15116544 * k + 2823052 := by
    unfold C
    simp [show (30233088 * k + 5646104) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2823052) = 7558272 * k + 1411526 := by
    unfold C
    simp [show (15116544 * k + 2823052) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1411526) = 3779136 * k + 705763 := by
    unfold C
    simp [show (7558272 * k + 1411526) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 705763) = 11337408 * k + 2117290 := by
    unfold C
    simp [show (3779136 * k + 705763) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2117290) = 5668704 * k + 1058645 := by
    unfold C
    simp [show (11337408 * k + 2117290) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1058645) = 17006112 * k + 3175936 := by
    unfold C
    simp [show (5668704 * k + 1058645) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3175936) = 8503056 * k + 1587968 := by
    unfold C
    simp [show (17006112 * k + 3175936) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1587968) = 4251528 * k + 793984 := by
    unfold C
    simp [show (8503056 * k + 1587968) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 793984) = 2125764 * k + 396992 := by
    unfold C
    simp [show (4251528 * k + 793984) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 396992) = 1062882 * k + 198496 := by
    unfold C
    simp [show (2125764 * k + 396992) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 198496) = 531441 * k + 99248 := by
    unfold C
    simp [show (1062882 * k + 198496) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 195823) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 195823)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_195839 : ∀ k : Nat,
    iterate (1048576 * k + 195839) 32 = 531441 * k + 99256 ∧
      531441 * k + 99256 < 1048576 * k + 195839 := by
  intro k
  have h1 : C (1048576 * k + 195839) = 3145728 * k + 587518 := by
    unfold C
    simp [show (1048576 * k + 195839) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 587518) = 1572864 * k + 293759 := by
    unfold C
    simp [show (3145728 * k + 587518) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 293759) = 4718592 * k + 881278 := by
    unfold C
    simp [show (1572864 * k + 293759) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 881278) = 2359296 * k + 440639 := by
    unfold C
    simp [show (4718592 * k + 881278) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 440639) = 7077888 * k + 1321918 := by
    unfold C
    simp [show (2359296 * k + 440639) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1321918) = 3538944 * k + 660959 := by
    unfold C
    simp [show (7077888 * k + 1321918) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 660959) = 10616832 * k + 1982878 := by
    unfold C
    simp [show (3538944 * k + 660959) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1982878) = 5308416 * k + 991439 := by
    unfold C
    simp [show (10616832 * k + 1982878) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 991439) = 15925248 * k + 2974318 := by
    unfold C
    simp [show (5308416 * k + 991439) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2974318) = 7962624 * k + 1487159 := by
    unfold C
    simp [show (15925248 * k + 2974318) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1487159) = 23887872 * k + 4461478 := by
    unfold C
    simp [show (7962624 * k + 1487159) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 4461478) = 11943936 * k + 2230739 := by
    unfold C
    simp [show (23887872 * k + 4461478) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2230739) = 35831808 * k + 6692218 := by
    unfold C
    simp [show (11943936 * k + 2230739) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 6692218) = 17915904 * k + 3346109 := by
    unfold C
    simp [show (35831808 * k + 6692218) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 3346109) = 53747712 * k + 10038328 := by
    unfold C
    simp [show (17915904 * k + 3346109) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 10038328) = 26873856 * k + 5019164 := by
    unfold C
    simp [show (53747712 * k + 10038328) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 5019164) = 13436928 * k + 2509582 := by
    unfold C
    simp [show (26873856 * k + 5019164) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2509582) = 6718464 * k + 1254791 := by
    unfold C
    simp [show (13436928 * k + 2509582) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1254791) = 20155392 * k + 3764374 := by
    unfold C
    simp [show (6718464 * k + 1254791) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 3764374) = 10077696 * k + 1882187 := by
    unfold C
    simp [show (20155392 * k + 3764374) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1882187) = 30233088 * k + 5646562 := by
    unfold C
    simp [show (10077696 * k + 1882187) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 5646562) = 15116544 * k + 2823281 := by
    unfold C
    simp [show (30233088 * k + 5646562) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2823281) = 45349632 * k + 8469844 := by
    unfold C
    simp [show (15116544 * k + 2823281) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 8469844) = 22674816 * k + 4234922 := by
    unfold C
    simp [show (45349632 * k + 8469844) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 4234922) = 11337408 * k + 2117461 := by
    unfold C
    simp [show (22674816 * k + 4234922) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2117461) = 34012224 * k + 6352384 := by
    unfold C
    simp [show (11337408 * k + 2117461) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 6352384) = 17006112 * k + 3176192 := by
    unfold C
    simp [show (34012224 * k + 6352384) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 3176192) = 8503056 * k + 1588096 := by
    unfold C
    simp [show (17006112 * k + 3176192) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1588096) = 4251528 * k + 794048 := by
    unfold C
    simp [show (8503056 * k + 1588096) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 794048) = 2125764 * k + 397024 := by
    unfold C
    simp [show (4251528 * k + 794048) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 397024) = 1062882 * k + 198512 := by
    unfold C
    simp [show (2125764 * k + 397024) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 198512) = 531441 * k + 99256 := by
    unfold C
    simp [show (1062882 * k + 198512) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 195839) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 195839)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_196063 : ∀ k : Nat,
    iterate (1048576 * k + 196063) 32 = 531441 * k + 99370 ∧
      531441 * k + 99370 < 1048576 * k + 196063 := by
  intro k
  have h1 : C (1048576 * k + 196063) = 3145728 * k + 588190 := by
    unfold C
    simp [show (1048576 * k + 196063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 588190) = 1572864 * k + 294095 := by
    unfold C
    simp [show (3145728 * k + 588190) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 294095) = 4718592 * k + 882286 := by
    unfold C
    simp [show (1572864 * k + 294095) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 882286) = 2359296 * k + 441143 := by
    unfold C
    simp [show (4718592 * k + 882286) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 441143) = 7077888 * k + 1323430 := by
    unfold C
    simp [show (2359296 * k + 441143) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1323430) = 3538944 * k + 661715 := by
    unfold C
    simp [show (7077888 * k + 1323430) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 661715) = 10616832 * k + 1985146 := by
    unfold C
    simp [show (3538944 * k + 661715) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1985146) = 5308416 * k + 992573 := by
    unfold C
    simp [show (10616832 * k + 1985146) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 992573) = 15925248 * k + 2977720 := by
    unfold C
    simp [show (5308416 * k + 992573) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2977720) = 7962624 * k + 1488860 := by
    unfold C
    simp [show (15925248 * k + 2977720) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1488860) = 3981312 * k + 744430 := by
    unfold C
    simp [show (7962624 * k + 1488860) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 744430) = 1990656 * k + 372215 := by
    unfold C
    simp [show (3981312 * k + 744430) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 372215) = 5971968 * k + 1116646 := by
    unfold C
    simp [show (1990656 * k + 372215) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1116646) = 2985984 * k + 558323 := by
    unfold C
    simp [show (5971968 * k + 1116646) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 558323) = 8957952 * k + 1674970 := by
    unfold C
    simp [show (2985984 * k + 558323) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1674970) = 4478976 * k + 837485 := by
    unfold C
    simp [show (8957952 * k + 1674970) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 837485) = 13436928 * k + 2512456 := by
    unfold C
    simp [show (4478976 * k + 837485) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2512456) = 6718464 * k + 1256228 := by
    unfold C
    simp [show (13436928 * k + 2512456) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1256228) = 3359232 * k + 628114 := by
    unfold C
    simp [show (6718464 * k + 1256228) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 628114) = 1679616 * k + 314057 := by
    unfold C
    simp [show (3359232 * k + 628114) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 314057) = 5038848 * k + 942172 := by
    unfold C
    simp [show (1679616 * k + 314057) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 942172) = 2519424 * k + 471086 := by
    unfold C
    simp [show (5038848 * k + 942172) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 471086) = 1259712 * k + 235543 := by
    unfold C
    simp [show (2519424 * k + 471086) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 235543) = 3779136 * k + 706630 := by
    unfold C
    simp [show (1259712 * k + 235543) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 706630) = 1889568 * k + 353315 := by
    unfold C
    simp [show (3779136 * k + 706630) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 353315) = 5668704 * k + 1059946 := by
    unfold C
    simp [show (1889568 * k + 353315) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1059946) = 2834352 * k + 529973 := by
    unfold C
    simp [show (5668704 * k + 1059946) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 529973) = 8503056 * k + 1589920 := by
    unfold C
    simp [show (2834352 * k + 529973) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1589920) = 4251528 * k + 794960 := by
    unfold C
    simp [show (8503056 * k + 1589920) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 794960) = 2125764 * k + 397480 := by
    unfold C
    simp [show (4251528 * k + 794960) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 397480) = 1062882 * k + 198740 := by
    unfold C
    simp [show (2125764 * k + 397480) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 198740) = 531441 * k + 99370 := by
    unfold C
    simp [show (1062882 * k + 198740) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 196063) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 196063)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_196543 : ∀ k : Nat,
    iterate (1048576 * k + 196543) 32 = 531441 * k + 99613 ∧
      531441 * k + 99613 < 1048576 * k + 196543 := by
  intro k
  have h1 : C (1048576 * k + 196543) = 3145728 * k + 589630 := by
    unfold C
    simp [show (1048576 * k + 196543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 589630) = 1572864 * k + 294815 := by
    unfold C
    simp [show (3145728 * k + 589630) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 294815) = 4718592 * k + 884446 := by
    unfold C
    simp [show (1572864 * k + 294815) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 884446) = 2359296 * k + 442223 := by
    unfold C
    simp [show (4718592 * k + 884446) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 442223) = 7077888 * k + 1326670 := by
    unfold C
    simp [show (2359296 * k + 442223) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1326670) = 3538944 * k + 663335 := by
    unfold C
    simp [show (7077888 * k + 1326670) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 663335) = 10616832 * k + 1990006 := by
    unfold C
    simp [show (3538944 * k + 663335) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1990006) = 5308416 * k + 995003 := by
    unfold C
    simp [show (10616832 * k + 1990006) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 995003) = 15925248 * k + 2985010 := by
    unfold C
    simp [show (5308416 * k + 995003) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2985010) = 7962624 * k + 1492505 := by
    unfold C
    simp [show (15925248 * k + 2985010) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1492505) = 23887872 * k + 4477516 := by
    unfold C
    simp [show (7962624 * k + 1492505) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 4477516) = 11943936 * k + 2238758 := by
    unfold C
    simp [show (23887872 * k + 4477516) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2238758) = 5971968 * k + 1119379 := by
    unfold C
    simp [show (11943936 * k + 2238758) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1119379) = 17915904 * k + 3358138 := by
    unfold C
    simp [show (5971968 * k + 1119379) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3358138) = 8957952 * k + 1679069 := by
    unfold C
    simp [show (17915904 * k + 3358138) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1679069) = 26873856 * k + 5037208 := by
    unfold C
    simp [show (8957952 * k + 1679069) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5037208) = 13436928 * k + 2518604 := by
    unfold C
    simp [show (26873856 * k + 5037208) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2518604) = 6718464 * k + 1259302 := by
    unfold C
    simp [show (13436928 * k + 2518604) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1259302) = 3359232 * k + 629651 := by
    unfold C
    simp [show (6718464 * k + 1259302) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 629651) = 10077696 * k + 1888954 := by
    unfold C
    simp [show (3359232 * k + 629651) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1888954) = 5038848 * k + 944477 := by
    unfold C
    simp [show (10077696 * k + 1888954) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 944477) = 15116544 * k + 2833432 := by
    unfold C
    simp [show (5038848 * k + 944477) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2833432) = 7558272 * k + 1416716 := by
    unfold C
    simp [show (15116544 * k + 2833432) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1416716) = 3779136 * k + 708358 := by
    unfold C
    simp [show (7558272 * k + 1416716) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 708358) = 1889568 * k + 354179 := by
    unfold C
    simp [show (3779136 * k + 708358) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 354179) = 5668704 * k + 1062538 := by
    unfold C
    simp [show (1889568 * k + 354179) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1062538) = 2834352 * k + 531269 := by
    unfold C
    simp [show (5668704 * k + 1062538) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 531269) = 8503056 * k + 1593808 := by
    unfold C
    simp [show (2834352 * k + 531269) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1593808) = 4251528 * k + 796904 := by
    unfold C
    simp [show (8503056 * k + 1593808) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 796904) = 2125764 * k + 398452 := by
    unfold C
    simp [show (4251528 * k + 796904) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 398452) = 1062882 * k + 199226 := by
    unfold C
    simp [show (2125764 * k + 398452) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 199226) = 531441 * k + 99613 := by
    unfold C
    simp [show (1062882 * k + 199226) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 196543) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 196543)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_196603 : ∀ k : Nat,
    iterate (1048576 * k + 196603) 32 = 531441 * k + 99644 ∧
      531441 * k + 99644 < 1048576 * k + 196603 := by
  intro k
  have h1 : C (1048576 * k + 196603) = 3145728 * k + 589810 := by
    unfold C
    simp [show (1048576 * k + 196603) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 589810) = 1572864 * k + 294905 := by
    unfold C
    simp [show (3145728 * k + 589810) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 294905) = 4718592 * k + 884716 := by
    unfold C
    simp [show (1572864 * k + 294905) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 884716) = 2359296 * k + 442358 := by
    unfold C
    simp [show (4718592 * k + 884716) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 442358) = 1179648 * k + 221179 := by
    unfold C
    simp [show (2359296 * k + 442358) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 221179) = 3538944 * k + 663538 := by
    unfold C
    simp [show (1179648 * k + 221179) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 663538) = 1769472 * k + 331769 := by
    unfold C
    simp [show (3538944 * k + 663538) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 331769) = 5308416 * k + 995308 := by
    unfold C
    simp [show (1769472 * k + 331769) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 995308) = 2654208 * k + 497654 := by
    unfold C
    simp [show (5308416 * k + 995308) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 497654) = 1327104 * k + 248827 := by
    unfold C
    simp [show (2654208 * k + 497654) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 248827) = 3981312 * k + 746482 := by
    unfold C
    simp [show (1327104 * k + 248827) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 746482) = 1990656 * k + 373241 := by
    unfold C
    simp [show (3981312 * k + 746482) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 373241) = 5971968 * k + 1119724 := by
    unfold C
    simp [show (1990656 * k + 373241) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1119724) = 2985984 * k + 559862 := by
    unfold C
    simp [show (5971968 * k + 1119724) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 559862) = 1492992 * k + 279931 := by
    unfold C
    simp [show (2985984 * k + 559862) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 279931) = 4478976 * k + 839794 := by
    unfold C
    simp [show (1492992 * k + 279931) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 839794) = 2239488 * k + 419897 := by
    unfold C
    simp [show (4478976 * k + 839794) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 419897) = 6718464 * k + 1259692 := by
    unfold C
    simp [show (2239488 * k + 419897) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1259692) = 3359232 * k + 629846 := by
    unfold C
    simp [show (6718464 * k + 1259692) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 629846) = 1679616 * k + 314923 := by
    unfold C
    simp [show (3359232 * k + 629846) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 314923) = 5038848 * k + 944770 := by
    unfold C
    simp [show (1679616 * k + 314923) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 944770) = 2519424 * k + 472385 := by
    unfold C
    simp [show (5038848 * k + 944770) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 472385) = 7558272 * k + 1417156 := by
    unfold C
    simp [show (2519424 * k + 472385) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1417156) = 3779136 * k + 708578 := by
    unfold C
    simp [show (7558272 * k + 1417156) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 708578) = 1889568 * k + 354289 := by
    unfold C
    simp [show (3779136 * k + 708578) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 354289) = 5668704 * k + 1062868 := by
    unfold C
    simp [show (1889568 * k + 354289) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1062868) = 2834352 * k + 531434 := by
    unfold C
    simp [show (5668704 * k + 1062868) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 531434) = 1417176 * k + 265717 := by
    unfold C
    simp [show (2834352 * k + 531434) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 265717) = 4251528 * k + 797152 := by
    unfold C
    simp [show (1417176 * k + 265717) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 797152) = 2125764 * k + 398576 := by
    unfold C
    simp [show (4251528 * k + 797152) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 398576) = 1062882 * k + 199288 := by
    unfold C
    simp [show (2125764 * k + 398576) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 199288) = 531441 * k + 99644 := by
    unfold C
    simp [show (1062882 * k + 199288) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 196603) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 196603)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_196763 : ∀ k : Nat,
    iterate (1048576 * k + 196763) 32 = 531441 * k + 99725 ∧
      531441 * k + 99725 < 1048576 * k + 196763 := by
  intro k
  have h1 : C (1048576 * k + 196763) = 3145728 * k + 590290 := by
    unfold C
    simp [show (1048576 * k + 196763) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 590290) = 1572864 * k + 295145 := by
    unfold C
    simp [show (3145728 * k + 590290) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 295145) = 4718592 * k + 885436 := by
    unfold C
    simp [show (1572864 * k + 295145) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 885436) = 2359296 * k + 442718 := by
    unfold C
    simp [show (4718592 * k + 885436) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 442718) = 1179648 * k + 221359 := by
    unfold C
    simp [show (2359296 * k + 442718) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 221359) = 3538944 * k + 664078 := by
    unfold C
    simp [show (1179648 * k + 221359) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 664078) = 1769472 * k + 332039 := by
    unfold C
    simp [show (3538944 * k + 664078) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 332039) = 5308416 * k + 996118 := by
    unfold C
    simp [show (1769472 * k + 332039) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 996118) = 2654208 * k + 498059 := by
    unfold C
    simp [show (5308416 * k + 996118) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 498059) = 7962624 * k + 1494178 := by
    unfold C
    simp [show (2654208 * k + 498059) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1494178) = 3981312 * k + 747089 := by
    unfold C
    simp [show (7962624 * k + 1494178) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 747089) = 11943936 * k + 2241268 := by
    unfold C
    simp [show (3981312 * k + 747089) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2241268) = 5971968 * k + 1120634 := by
    unfold C
    simp [show (11943936 * k + 2241268) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1120634) = 2985984 * k + 560317 := by
    unfold C
    simp [show (5971968 * k + 1120634) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 560317) = 8957952 * k + 1680952 := by
    unfold C
    simp [show (2985984 * k + 560317) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1680952) = 4478976 * k + 840476 := by
    unfold C
    simp [show (8957952 * k + 1680952) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 840476) = 2239488 * k + 420238 := by
    unfold C
    simp [show (4478976 * k + 840476) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 420238) = 1119744 * k + 210119 := by
    unfold C
    simp [show (2239488 * k + 420238) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 210119) = 3359232 * k + 630358 := by
    unfold C
    simp [show (1119744 * k + 210119) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 630358) = 1679616 * k + 315179 := by
    unfold C
    simp [show (3359232 * k + 630358) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 315179) = 5038848 * k + 945538 := by
    unfold C
    simp [show (1679616 * k + 315179) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 945538) = 2519424 * k + 472769 := by
    unfold C
    simp [show (5038848 * k + 945538) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 472769) = 7558272 * k + 1418308 := by
    unfold C
    simp [show (2519424 * k + 472769) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1418308) = 3779136 * k + 709154 := by
    unfold C
    simp [show (7558272 * k + 1418308) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 709154) = 1889568 * k + 354577 := by
    unfold C
    simp [show (3779136 * k + 709154) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 354577) = 5668704 * k + 1063732 := by
    unfold C
    simp [show (1889568 * k + 354577) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1063732) = 2834352 * k + 531866 := by
    unfold C
    simp [show (5668704 * k + 1063732) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 531866) = 1417176 * k + 265933 := by
    unfold C
    simp [show (2834352 * k + 531866) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 265933) = 4251528 * k + 797800 := by
    unfold C
    simp [show (1417176 * k + 265933) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 797800) = 2125764 * k + 398900 := by
    unfold C
    simp [show (4251528 * k + 797800) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 398900) = 1062882 * k + 199450 := by
    unfold C
    simp [show (2125764 * k + 398900) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 199450) = 531441 * k + 99725 := by
    unfold C
    simp [show (1062882 * k + 199450) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 196763) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 196763)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_197279 : ∀ k : Nat,
    iterate (1048576 * k + 197279) 32 = 531441 * k + 99986 ∧
      531441 * k + 99986 < 1048576 * k + 197279 := by
  intro k
  have h1 : C (1048576 * k + 197279) = 3145728 * k + 591838 := by
    unfold C
    simp [show (1048576 * k + 197279) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 591838) = 1572864 * k + 295919 := by
    unfold C
    simp [show (3145728 * k + 591838) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 295919) = 4718592 * k + 887758 := by
    unfold C
    simp [show (1572864 * k + 295919) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 887758) = 2359296 * k + 443879 := by
    unfold C
    simp [show (4718592 * k + 887758) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 443879) = 7077888 * k + 1331638 := by
    unfold C
    simp [show (2359296 * k + 443879) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1331638) = 3538944 * k + 665819 := by
    unfold C
    simp [show (7077888 * k + 1331638) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 665819) = 10616832 * k + 1997458 := by
    unfold C
    simp [show (3538944 * k + 665819) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1997458) = 5308416 * k + 998729 := by
    unfold C
    simp [show (10616832 * k + 1997458) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 998729) = 15925248 * k + 2996188 := by
    unfold C
    simp [show (5308416 * k + 998729) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2996188) = 7962624 * k + 1498094 := by
    unfold C
    simp [show (15925248 * k + 2996188) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1498094) = 3981312 * k + 749047 := by
    unfold C
    simp [show (7962624 * k + 1498094) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 749047) = 11943936 * k + 2247142 := by
    unfold C
    simp [show (3981312 * k + 749047) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2247142) = 5971968 * k + 1123571 := by
    unfold C
    simp [show (11943936 * k + 2247142) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1123571) = 17915904 * k + 3370714 := by
    unfold C
    simp [show (5971968 * k + 1123571) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3370714) = 8957952 * k + 1685357 := by
    unfold C
    simp [show (17915904 * k + 3370714) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1685357) = 26873856 * k + 5056072 := by
    unfold C
    simp [show (8957952 * k + 1685357) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5056072) = 13436928 * k + 2528036 := by
    unfold C
    simp [show (26873856 * k + 5056072) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2528036) = 6718464 * k + 1264018 := by
    unfold C
    simp [show (13436928 * k + 2528036) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1264018) = 3359232 * k + 632009 := by
    unfold C
    simp [show (6718464 * k + 1264018) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 632009) = 10077696 * k + 1896028 := by
    unfold C
    simp [show (3359232 * k + 632009) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1896028) = 5038848 * k + 948014 := by
    unfold C
    simp [show (10077696 * k + 1896028) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 948014) = 2519424 * k + 474007 := by
    unfold C
    simp [show (5038848 * k + 948014) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 474007) = 7558272 * k + 1422022 := by
    unfold C
    simp [show (2519424 * k + 474007) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1422022) = 3779136 * k + 711011 := by
    unfold C
    simp [show (7558272 * k + 1422022) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 711011) = 11337408 * k + 2133034 := by
    unfold C
    simp [show (3779136 * k + 711011) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2133034) = 5668704 * k + 1066517 := by
    unfold C
    simp [show (11337408 * k + 2133034) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1066517) = 17006112 * k + 3199552 := by
    unfold C
    simp [show (5668704 * k + 1066517) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3199552) = 8503056 * k + 1599776 := by
    unfold C
    simp [show (17006112 * k + 3199552) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1599776) = 4251528 * k + 799888 := by
    unfold C
    simp [show (8503056 * k + 1599776) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 799888) = 2125764 * k + 399944 := by
    unfold C
    simp [show (4251528 * k + 799888) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 399944) = 1062882 * k + 199972 := by
    unfold C
    simp [show (2125764 * k + 399944) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 199972) = 531441 * k + 99986 := by
    unfold C
    simp [show (1062882 * k + 199972) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 197279) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 197279)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_197403 : ∀ k : Nat,
    iterate (1048576 * k + 197403) 32 = 531441 * k + 100049 ∧
      531441 * k + 100049 < 1048576 * k + 197403 := by
  intro k
  have h1 : C (1048576 * k + 197403) = 3145728 * k + 592210 := by
    unfold C
    simp [show (1048576 * k + 197403) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 592210) = 1572864 * k + 296105 := by
    unfold C
    simp [show (3145728 * k + 592210) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 296105) = 4718592 * k + 888316 := by
    unfold C
    simp [show (1572864 * k + 296105) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 888316) = 2359296 * k + 444158 := by
    unfold C
    simp [show (4718592 * k + 888316) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 444158) = 1179648 * k + 222079 := by
    unfold C
    simp [show (2359296 * k + 444158) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 222079) = 3538944 * k + 666238 := by
    unfold C
    simp [show (1179648 * k + 222079) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 666238) = 1769472 * k + 333119 := by
    unfold C
    simp [show (3538944 * k + 666238) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 333119) = 5308416 * k + 999358 := by
    unfold C
    simp [show (1769472 * k + 333119) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 999358) = 2654208 * k + 499679 := by
    unfold C
    simp [show (5308416 * k + 999358) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 499679) = 7962624 * k + 1499038 := by
    unfold C
    simp [show (2654208 * k + 499679) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1499038) = 3981312 * k + 749519 := by
    unfold C
    simp [show (7962624 * k + 1499038) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 749519) = 11943936 * k + 2248558 := by
    unfold C
    simp [show (3981312 * k + 749519) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2248558) = 5971968 * k + 1124279 := by
    unfold C
    simp [show (11943936 * k + 2248558) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1124279) = 17915904 * k + 3372838 := by
    unfold C
    simp [show (5971968 * k + 1124279) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3372838) = 8957952 * k + 1686419 := by
    unfold C
    simp [show (17915904 * k + 3372838) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1686419) = 26873856 * k + 5059258 := by
    unfold C
    simp [show (8957952 * k + 1686419) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5059258) = 13436928 * k + 2529629 := by
    unfold C
    simp [show (26873856 * k + 5059258) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2529629) = 40310784 * k + 7588888 := by
    unfold C
    simp [show (13436928 * k + 2529629) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 7588888) = 20155392 * k + 3794444 := by
    unfold C
    simp [show (40310784 * k + 7588888) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3794444) = 10077696 * k + 1897222 := by
    unfold C
    simp [show (20155392 * k + 3794444) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1897222) = 5038848 * k + 948611 := by
    unfold C
    simp [show (10077696 * k + 1897222) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 948611) = 15116544 * k + 2845834 := by
    unfold C
    simp [show (5038848 * k + 948611) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2845834) = 7558272 * k + 1422917 := by
    unfold C
    simp [show (15116544 * k + 2845834) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1422917) = 22674816 * k + 4268752 := by
    unfold C
    simp [show (7558272 * k + 1422917) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 4268752) = 11337408 * k + 2134376 := by
    unfold C
    simp [show (22674816 * k + 4268752) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2134376) = 5668704 * k + 1067188 := by
    unfold C
    simp [show (11337408 * k + 2134376) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1067188) = 2834352 * k + 533594 := by
    unfold C
    simp [show (5668704 * k + 1067188) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 533594) = 1417176 * k + 266797 := by
    unfold C
    simp [show (2834352 * k + 533594) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 266797) = 4251528 * k + 800392 := by
    unfold C
    simp [show (1417176 * k + 266797) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 800392) = 2125764 * k + 400196 := by
    unfold C
    simp [show (4251528 * k + 800392) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 400196) = 1062882 * k + 200098 := by
    unfold C
    simp [show (2125764 * k + 400196) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 200098) = 531441 * k + 100049 := by
    unfold C
    simp [show (1062882 * k + 200098) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 197403) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 197403)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_197887 : ∀ k : Nat,
    iterate (1048576 * k + 197887) 32 = 531441 * k + 100294 ∧
      531441 * k + 100294 < 1048576 * k + 197887 := by
  intro k
  have h1 : C (1048576 * k + 197887) = 3145728 * k + 593662 := by
    unfold C
    simp [show (1048576 * k + 197887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 593662) = 1572864 * k + 296831 := by
    unfold C
    simp [show (3145728 * k + 593662) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 296831) = 4718592 * k + 890494 := by
    unfold C
    simp [show (1572864 * k + 296831) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 890494) = 2359296 * k + 445247 := by
    unfold C
    simp [show (4718592 * k + 890494) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 445247) = 7077888 * k + 1335742 := by
    unfold C
    simp [show (2359296 * k + 445247) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1335742) = 3538944 * k + 667871 := by
    unfold C
    simp [show (7077888 * k + 1335742) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 667871) = 10616832 * k + 2003614 := by
    unfold C
    simp [show (3538944 * k + 667871) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2003614) = 5308416 * k + 1001807 := by
    unfold C
    simp [show (10616832 * k + 2003614) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1001807) = 15925248 * k + 3005422 := by
    unfold C
    simp [show (5308416 * k + 1001807) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3005422) = 7962624 * k + 1502711 := by
    unfold C
    simp [show (15925248 * k + 3005422) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1502711) = 23887872 * k + 4508134 := by
    unfold C
    simp [show (7962624 * k + 1502711) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 4508134) = 11943936 * k + 2254067 := by
    unfold C
    simp [show (23887872 * k + 4508134) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2254067) = 35831808 * k + 6762202 := by
    unfold C
    simp [show (11943936 * k + 2254067) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 6762202) = 17915904 * k + 3381101 := by
    unfold C
    simp [show (35831808 * k + 6762202) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 3381101) = 53747712 * k + 10143304 := by
    unfold C
    simp [show (17915904 * k + 3381101) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 10143304) = 26873856 * k + 5071652 := by
    unfold C
    simp [show (53747712 * k + 10143304) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 5071652) = 13436928 * k + 2535826 := by
    unfold C
    simp [show (26873856 * k + 5071652) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2535826) = 6718464 * k + 1267913 := by
    unfold C
    simp [show (13436928 * k + 2535826) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1267913) = 20155392 * k + 3803740 := by
    unfold C
    simp [show (6718464 * k + 1267913) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 3803740) = 10077696 * k + 1901870 := by
    unfold C
    simp [show (20155392 * k + 3803740) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1901870) = 5038848 * k + 950935 := by
    unfold C
    simp [show (10077696 * k + 1901870) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 950935) = 15116544 * k + 2852806 := by
    unfold C
    simp [show (5038848 * k + 950935) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2852806) = 7558272 * k + 1426403 := by
    unfold C
    simp [show (15116544 * k + 2852806) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1426403) = 22674816 * k + 4279210 := by
    unfold C
    simp [show (7558272 * k + 1426403) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 4279210) = 11337408 * k + 2139605 := by
    unfold C
    simp [show (22674816 * k + 4279210) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2139605) = 34012224 * k + 6418816 := by
    unfold C
    simp [show (11337408 * k + 2139605) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 6418816) = 17006112 * k + 3209408 := by
    unfold C
    simp [show (34012224 * k + 6418816) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 3209408) = 8503056 * k + 1604704 := by
    unfold C
    simp [show (17006112 * k + 3209408) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1604704) = 4251528 * k + 802352 := by
    unfold C
    simp [show (8503056 * k + 1604704) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 802352) = 2125764 * k + 401176 := by
    unfold C
    simp [show (4251528 * k + 802352) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 401176) = 1062882 * k + 200588 := by
    unfold C
    simp [show (2125764 * k + 401176) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 200588) = 531441 * k + 100294 := by
    unfold C
    simp [show (1062882 * k + 200588) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 197887) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 197887)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_198095 : ∀ k : Nat,
    iterate (1048576 * k + 198095) 32 = 531441 * k + 100400 ∧
      531441 * k + 100400 < 1048576 * k + 198095 := by
  intro k
  have h1 : C (1048576 * k + 198095) = 3145728 * k + 594286 := by
    unfold C
    simp [show (1048576 * k + 198095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 594286) = 1572864 * k + 297143 := by
    unfold C
    simp [show (3145728 * k + 594286) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 297143) = 4718592 * k + 891430 := by
    unfold C
    simp [show (1572864 * k + 297143) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 891430) = 2359296 * k + 445715 := by
    unfold C
    simp [show (4718592 * k + 891430) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 445715) = 7077888 * k + 1337146 := by
    unfold C
    simp [show (2359296 * k + 445715) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1337146) = 3538944 * k + 668573 := by
    unfold C
    simp [show (7077888 * k + 1337146) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 668573) = 10616832 * k + 2005720 := by
    unfold C
    simp [show (3538944 * k + 668573) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2005720) = 5308416 * k + 1002860 := by
    unfold C
    simp [show (10616832 * k + 2005720) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1002860) = 2654208 * k + 501430 := by
    unfold C
    simp [show (5308416 * k + 1002860) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 501430) = 1327104 * k + 250715 := by
    unfold C
    simp [show (2654208 * k + 501430) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 250715) = 3981312 * k + 752146 := by
    unfold C
    simp [show (1327104 * k + 250715) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 752146) = 1990656 * k + 376073 := by
    unfold C
    simp [show (3981312 * k + 752146) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 376073) = 5971968 * k + 1128220 := by
    unfold C
    simp [show (1990656 * k + 376073) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1128220) = 2985984 * k + 564110 := by
    unfold C
    simp [show (5971968 * k + 1128220) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 564110) = 1492992 * k + 282055 := by
    unfold C
    simp [show (2985984 * k + 564110) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 282055) = 4478976 * k + 846166 := by
    unfold C
    simp [show (1492992 * k + 282055) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 846166) = 2239488 * k + 423083 := by
    unfold C
    simp [show (4478976 * k + 846166) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 423083) = 6718464 * k + 1269250 := by
    unfold C
    simp [show (2239488 * k + 423083) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1269250) = 3359232 * k + 634625 := by
    unfold C
    simp [show (6718464 * k + 1269250) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 634625) = 10077696 * k + 1903876 := by
    unfold C
    simp [show (3359232 * k + 634625) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1903876) = 5038848 * k + 951938 := by
    unfold C
    simp [show (10077696 * k + 1903876) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 951938) = 2519424 * k + 475969 := by
    unfold C
    simp [show (5038848 * k + 951938) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 475969) = 7558272 * k + 1427908 := by
    unfold C
    simp [show (2519424 * k + 475969) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1427908) = 3779136 * k + 713954 := by
    unfold C
    simp [show (7558272 * k + 1427908) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 713954) = 1889568 * k + 356977 := by
    unfold C
    simp [show (3779136 * k + 713954) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 356977) = 5668704 * k + 1070932 := by
    unfold C
    simp [show (1889568 * k + 356977) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1070932) = 2834352 * k + 535466 := by
    unfold C
    simp [show (5668704 * k + 1070932) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 535466) = 1417176 * k + 267733 := by
    unfold C
    simp [show (2834352 * k + 535466) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 267733) = 4251528 * k + 803200 := by
    unfold C
    simp [show (1417176 * k + 267733) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 803200) = 2125764 * k + 401600 := by
    unfold C
    simp [show (4251528 * k + 803200) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 401600) = 1062882 * k + 200800 := by
    unfold C
    simp [show (2125764 * k + 401600) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 200800) = 531441 * k + 100400 := by
    unfold C
    simp [show (1062882 * k + 200800) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 198095) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 198095)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_198303 : ∀ k : Nat,
    iterate (1048576 * k + 198303) 32 = 531441 * k + 100505 ∧
      531441 * k + 100505 < 1048576 * k + 198303 := by
  intro k
  have h1 : C (1048576 * k + 198303) = 3145728 * k + 594910 := by
    unfold C
    simp [show (1048576 * k + 198303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 594910) = 1572864 * k + 297455 := by
    unfold C
    simp [show (3145728 * k + 594910) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 297455) = 4718592 * k + 892366 := by
    unfold C
    simp [show (1572864 * k + 297455) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 892366) = 2359296 * k + 446183 := by
    unfold C
    simp [show (4718592 * k + 892366) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 446183) = 7077888 * k + 1338550 := by
    unfold C
    simp [show (2359296 * k + 446183) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1338550) = 3538944 * k + 669275 := by
    unfold C
    simp [show (7077888 * k + 1338550) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 669275) = 10616832 * k + 2007826 := by
    unfold C
    simp [show (3538944 * k + 669275) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2007826) = 5308416 * k + 1003913 := by
    unfold C
    simp [show (10616832 * k + 2007826) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1003913) = 15925248 * k + 3011740 := by
    unfold C
    simp [show (5308416 * k + 1003913) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3011740) = 7962624 * k + 1505870 := by
    unfold C
    simp [show (15925248 * k + 3011740) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1505870) = 3981312 * k + 752935 := by
    unfold C
    simp [show (7962624 * k + 1505870) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 752935) = 11943936 * k + 2258806 := by
    unfold C
    simp [show (3981312 * k + 752935) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2258806) = 5971968 * k + 1129403 := by
    unfold C
    simp [show (11943936 * k + 2258806) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1129403) = 17915904 * k + 3388210 := by
    unfold C
    simp [show (5971968 * k + 1129403) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3388210) = 8957952 * k + 1694105 := by
    unfold C
    simp [show (17915904 * k + 3388210) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1694105) = 26873856 * k + 5082316 := by
    unfold C
    simp [show (8957952 * k + 1694105) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5082316) = 13436928 * k + 2541158 := by
    unfold C
    simp [show (26873856 * k + 5082316) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2541158) = 6718464 * k + 1270579 := by
    unfold C
    simp [show (13436928 * k + 2541158) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1270579) = 20155392 * k + 3811738 := by
    unfold C
    simp [show (6718464 * k + 1270579) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 3811738) = 10077696 * k + 1905869 := by
    unfold C
    simp [show (20155392 * k + 3811738) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1905869) = 30233088 * k + 5717608 := by
    unfold C
    simp [show (10077696 * k + 1905869) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 5717608) = 15116544 * k + 2858804 := by
    unfold C
    simp [show (30233088 * k + 5717608) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2858804) = 7558272 * k + 1429402 := by
    unfold C
    simp [show (15116544 * k + 2858804) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1429402) = 3779136 * k + 714701 := by
    unfold C
    simp [show (7558272 * k + 1429402) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 714701) = 11337408 * k + 2144104 := by
    unfold C
    simp [show (3779136 * k + 714701) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2144104) = 5668704 * k + 1072052 := by
    unfold C
    simp [show (11337408 * k + 2144104) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1072052) = 2834352 * k + 536026 := by
    unfold C
    simp [show (5668704 * k + 1072052) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 536026) = 1417176 * k + 268013 := by
    unfold C
    simp [show (2834352 * k + 536026) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 268013) = 4251528 * k + 804040 := by
    unfold C
    simp [show (1417176 * k + 268013) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 804040) = 2125764 * k + 402020 := by
    unfold C
    simp [show (4251528 * k + 804040) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 402020) = 1062882 * k + 201010 := by
    unfold C
    simp [show (2125764 * k + 402020) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 201010) = 531441 * k + 100505 := by
    unfold C
    simp [show (1062882 * k + 201010) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 198303) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 198303)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_199143 : ∀ k : Nat,
    iterate (1048576 * k + 199143) 32 = 531441 * k + 100931 ∧
      531441 * k + 100931 < 1048576 * k + 199143 := by
  intro k
  have h1 : C (1048576 * k + 199143) = 3145728 * k + 597430 := by
    unfold C
    simp [show (1048576 * k + 199143) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 597430) = 1572864 * k + 298715 := by
    unfold C
    simp [show (3145728 * k + 597430) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 298715) = 4718592 * k + 896146 := by
    unfold C
    simp [show (1572864 * k + 298715) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 896146) = 2359296 * k + 448073 := by
    unfold C
    simp [show (4718592 * k + 896146) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 448073) = 7077888 * k + 1344220 := by
    unfold C
    simp [show (2359296 * k + 448073) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1344220) = 3538944 * k + 672110 := by
    unfold C
    simp [show (7077888 * k + 1344220) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 672110) = 1769472 * k + 336055 := by
    unfold C
    simp [show (3538944 * k + 672110) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 336055) = 5308416 * k + 1008166 := by
    unfold C
    simp [show (1769472 * k + 336055) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1008166) = 2654208 * k + 504083 := by
    unfold C
    simp [show (5308416 * k + 1008166) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 504083) = 7962624 * k + 1512250 := by
    unfold C
    simp [show (2654208 * k + 504083) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1512250) = 3981312 * k + 756125 := by
    unfold C
    simp [show (7962624 * k + 1512250) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 756125) = 11943936 * k + 2268376 := by
    unfold C
    simp [show (3981312 * k + 756125) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2268376) = 5971968 * k + 1134188 := by
    unfold C
    simp [show (11943936 * k + 2268376) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1134188) = 2985984 * k + 567094 := by
    unfold C
    simp [show (5971968 * k + 1134188) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 567094) = 1492992 * k + 283547 := by
    unfold C
    simp [show (2985984 * k + 567094) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 283547) = 4478976 * k + 850642 := by
    unfold C
    simp [show (1492992 * k + 283547) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 850642) = 2239488 * k + 425321 := by
    unfold C
    simp [show (4478976 * k + 850642) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 425321) = 6718464 * k + 1275964 := by
    unfold C
    simp [show (2239488 * k + 425321) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1275964) = 3359232 * k + 637982 := by
    unfold C
    simp [show (6718464 * k + 1275964) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 637982) = 1679616 * k + 318991 := by
    unfold C
    simp [show (3359232 * k + 637982) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 318991) = 5038848 * k + 956974 := by
    unfold C
    simp [show (1679616 * k + 318991) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 956974) = 2519424 * k + 478487 := by
    unfold C
    simp [show (5038848 * k + 956974) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 478487) = 7558272 * k + 1435462 := by
    unfold C
    simp [show (2519424 * k + 478487) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1435462) = 3779136 * k + 717731 := by
    unfold C
    simp [show (7558272 * k + 1435462) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 717731) = 11337408 * k + 2153194 := by
    unfold C
    simp [show (3779136 * k + 717731) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2153194) = 5668704 * k + 1076597 := by
    unfold C
    simp [show (11337408 * k + 2153194) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1076597) = 17006112 * k + 3229792 := by
    unfold C
    simp [show (5668704 * k + 1076597) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3229792) = 8503056 * k + 1614896 := by
    unfold C
    simp [show (17006112 * k + 3229792) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1614896) = 4251528 * k + 807448 := by
    unfold C
    simp [show (8503056 * k + 1614896) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 807448) = 2125764 * k + 403724 := by
    unfold C
    simp [show (4251528 * k + 807448) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 403724) = 1062882 * k + 201862 := by
    unfold C
    simp [show (2125764 * k + 403724) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 201862) = 531441 * k + 100931 := by
    unfold C
    simp [show (1062882 * k + 201862) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 199143) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 199143)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_199259 : ∀ k : Nat,
    iterate (1048576 * k + 199259) 32 = 531441 * k + 100990 ∧
      531441 * k + 100990 < 1048576 * k + 199259 := by
  intro k
  have h1 : C (1048576 * k + 199259) = 3145728 * k + 597778 := by
    unfold C
    simp [show (1048576 * k + 199259) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 597778) = 1572864 * k + 298889 := by
    unfold C
    simp [show (3145728 * k + 597778) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 298889) = 4718592 * k + 896668 := by
    unfold C
    simp [show (1572864 * k + 298889) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 896668) = 2359296 * k + 448334 := by
    unfold C
    simp [show (4718592 * k + 896668) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 448334) = 1179648 * k + 224167 := by
    unfold C
    simp [show (2359296 * k + 448334) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 224167) = 3538944 * k + 672502 := by
    unfold C
    simp [show (1179648 * k + 224167) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 672502) = 1769472 * k + 336251 := by
    unfold C
    simp [show (3538944 * k + 672502) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 336251) = 5308416 * k + 1008754 := by
    unfold C
    simp [show (1769472 * k + 336251) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1008754) = 2654208 * k + 504377 := by
    unfold C
    simp [show (5308416 * k + 1008754) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 504377) = 7962624 * k + 1513132 := by
    unfold C
    simp [show (2654208 * k + 504377) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1513132) = 3981312 * k + 756566 := by
    unfold C
    simp [show (7962624 * k + 1513132) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 756566) = 1990656 * k + 378283 := by
    unfold C
    simp [show (3981312 * k + 756566) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 378283) = 5971968 * k + 1134850 := by
    unfold C
    simp [show (1990656 * k + 378283) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1134850) = 2985984 * k + 567425 := by
    unfold C
    simp [show (5971968 * k + 1134850) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 567425) = 8957952 * k + 1702276 := by
    unfold C
    simp [show (2985984 * k + 567425) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1702276) = 4478976 * k + 851138 := by
    unfold C
    simp [show (8957952 * k + 1702276) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 851138) = 2239488 * k + 425569 := by
    unfold C
    simp [show (4478976 * k + 851138) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 425569) = 6718464 * k + 1276708 := by
    unfold C
    simp [show (2239488 * k + 425569) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1276708) = 3359232 * k + 638354 := by
    unfold C
    simp [show (6718464 * k + 1276708) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 638354) = 1679616 * k + 319177 := by
    unfold C
    simp [show (3359232 * k + 638354) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 319177) = 5038848 * k + 957532 := by
    unfold C
    simp [show (1679616 * k + 319177) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 957532) = 2519424 * k + 478766 := by
    unfold C
    simp [show (5038848 * k + 957532) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 478766) = 1259712 * k + 239383 := by
    unfold C
    simp [show (2519424 * k + 478766) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 239383) = 3779136 * k + 718150 := by
    unfold C
    simp [show (1259712 * k + 239383) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 718150) = 1889568 * k + 359075 := by
    unfold C
    simp [show (3779136 * k + 718150) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 359075) = 5668704 * k + 1077226 := by
    unfold C
    simp [show (1889568 * k + 359075) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1077226) = 2834352 * k + 538613 := by
    unfold C
    simp [show (5668704 * k + 1077226) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 538613) = 8503056 * k + 1615840 := by
    unfold C
    simp [show (2834352 * k + 538613) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1615840) = 4251528 * k + 807920 := by
    unfold C
    simp [show (8503056 * k + 1615840) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 807920) = 2125764 * k + 403960 := by
    unfold C
    simp [show (4251528 * k + 807920) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 403960) = 1062882 * k + 201980 := by
    unfold C
    simp [show (2125764 * k + 403960) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 201980) = 531441 * k + 100990 := by
    unfold C
    simp [show (1062882 * k + 201980) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 199259) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 199259)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_199419 : ∀ k : Nat,
    iterate (1048576 * k + 199419) 32 = 531441 * k + 101071 ∧
      531441 * k + 101071 < 1048576 * k + 199419 := by
  intro k
  have h1 : C (1048576 * k + 199419) = 3145728 * k + 598258 := by
    unfold C
    simp [show (1048576 * k + 199419) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 598258) = 1572864 * k + 299129 := by
    unfold C
    simp [show (3145728 * k + 598258) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 299129) = 4718592 * k + 897388 := by
    unfold C
    simp [show (1572864 * k + 299129) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 897388) = 2359296 * k + 448694 := by
    unfold C
    simp [show (4718592 * k + 897388) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 448694) = 1179648 * k + 224347 := by
    unfold C
    simp [show (2359296 * k + 448694) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 224347) = 3538944 * k + 673042 := by
    unfold C
    simp [show (1179648 * k + 224347) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 673042) = 1769472 * k + 336521 := by
    unfold C
    simp [show (3538944 * k + 673042) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 336521) = 5308416 * k + 1009564 := by
    unfold C
    simp [show (1769472 * k + 336521) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1009564) = 2654208 * k + 504782 := by
    unfold C
    simp [show (5308416 * k + 1009564) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 504782) = 1327104 * k + 252391 := by
    unfold C
    simp [show (2654208 * k + 504782) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 252391) = 3981312 * k + 757174 := by
    unfold C
    simp [show (1327104 * k + 252391) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 757174) = 1990656 * k + 378587 := by
    unfold C
    simp [show (3981312 * k + 757174) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 378587) = 5971968 * k + 1135762 := by
    unfold C
    simp [show (1990656 * k + 378587) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1135762) = 2985984 * k + 567881 := by
    unfold C
    simp [show (5971968 * k + 1135762) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 567881) = 8957952 * k + 1703644 := by
    unfold C
    simp [show (2985984 * k + 567881) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1703644) = 4478976 * k + 851822 := by
    unfold C
    simp [show (8957952 * k + 1703644) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 851822) = 2239488 * k + 425911 := by
    unfold C
    simp [show (4478976 * k + 851822) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 425911) = 6718464 * k + 1277734 := by
    unfold C
    simp [show (2239488 * k + 425911) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1277734) = 3359232 * k + 638867 := by
    unfold C
    simp [show (6718464 * k + 1277734) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 638867) = 10077696 * k + 1916602 := by
    unfold C
    simp [show (3359232 * k + 638867) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1916602) = 5038848 * k + 958301 := by
    unfold C
    simp [show (10077696 * k + 1916602) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 958301) = 15116544 * k + 2874904 := by
    unfold C
    simp [show (5038848 * k + 958301) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2874904) = 7558272 * k + 1437452 := by
    unfold C
    simp [show (15116544 * k + 2874904) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1437452) = 3779136 * k + 718726 := by
    unfold C
    simp [show (7558272 * k + 1437452) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 718726) = 1889568 * k + 359363 := by
    unfold C
    simp [show (3779136 * k + 718726) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 359363) = 5668704 * k + 1078090 := by
    unfold C
    simp [show (1889568 * k + 359363) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1078090) = 2834352 * k + 539045 := by
    unfold C
    simp [show (5668704 * k + 1078090) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 539045) = 8503056 * k + 1617136 := by
    unfold C
    simp [show (2834352 * k + 539045) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1617136) = 4251528 * k + 808568 := by
    unfold C
    simp [show (8503056 * k + 1617136) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 808568) = 2125764 * k + 404284 := by
    unfold C
    simp [show (4251528 * k + 808568) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 404284) = 1062882 * k + 202142 := by
    unfold C
    simp [show (2125764 * k + 404284) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 202142) = 531441 * k + 101071 := by
    unfold C
    simp [show (1062882 * k + 202142) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 199419) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 199419)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_199919 : ∀ k : Nat,
    iterate (1048576 * k + 199919) 32 = 531441 * k + 101324 ∧
      531441 * k + 101324 < 1048576 * k + 199919 := by
  intro k
  have h1 : C (1048576 * k + 199919) = 3145728 * k + 599758 := by
    unfold C
    simp [show (1048576 * k + 199919) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 599758) = 1572864 * k + 299879 := by
    unfold C
    simp [show (3145728 * k + 599758) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 299879) = 4718592 * k + 899638 := by
    unfold C
    simp [show (1572864 * k + 299879) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 899638) = 2359296 * k + 449819 := by
    unfold C
    simp [show (4718592 * k + 899638) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 449819) = 7077888 * k + 1349458 := by
    unfold C
    simp [show (2359296 * k + 449819) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1349458) = 3538944 * k + 674729 := by
    unfold C
    simp [show (7077888 * k + 1349458) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 674729) = 10616832 * k + 2024188 := by
    unfold C
    simp [show (3538944 * k + 674729) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2024188) = 5308416 * k + 1012094 := by
    unfold C
    simp [show (10616832 * k + 2024188) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1012094) = 2654208 * k + 506047 := by
    unfold C
    simp [show (5308416 * k + 1012094) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 506047) = 7962624 * k + 1518142 := by
    unfold C
    simp [show (2654208 * k + 506047) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1518142) = 3981312 * k + 759071 := by
    unfold C
    simp [show (7962624 * k + 1518142) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 759071) = 11943936 * k + 2277214 := by
    unfold C
    simp [show (3981312 * k + 759071) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2277214) = 5971968 * k + 1138607 := by
    unfold C
    simp [show (11943936 * k + 2277214) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1138607) = 17915904 * k + 3415822 := by
    unfold C
    simp [show (5971968 * k + 1138607) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3415822) = 8957952 * k + 1707911 := by
    unfold C
    simp [show (17915904 * k + 3415822) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1707911) = 26873856 * k + 5123734 := by
    unfold C
    simp [show (8957952 * k + 1707911) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5123734) = 13436928 * k + 2561867 := by
    unfold C
    simp [show (26873856 * k + 5123734) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2561867) = 40310784 * k + 7685602 := by
    unfold C
    simp [show (13436928 * k + 2561867) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 7685602) = 20155392 * k + 3842801 := by
    unfold C
    simp [show (40310784 * k + 7685602) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3842801) = 60466176 * k + 11528404 := by
    unfold C
    simp [show (20155392 * k + 3842801) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 11528404) = 30233088 * k + 5764202 := by
    unfold C
    simp [show (60466176 * k + 11528404) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 5764202) = 15116544 * k + 2882101 := by
    unfold C
    simp [show (30233088 * k + 5764202) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2882101) = 45349632 * k + 8646304 := by
    unfold C
    simp [show (15116544 * k + 2882101) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 8646304) = 22674816 * k + 4323152 := by
    unfold C
    simp [show (45349632 * k + 8646304) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 4323152) = 11337408 * k + 2161576 := by
    unfold C
    simp [show (22674816 * k + 4323152) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2161576) = 5668704 * k + 1080788 := by
    unfold C
    simp [show (11337408 * k + 2161576) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1080788) = 2834352 * k + 540394 := by
    unfold C
    simp [show (5668704 * k + 1080788) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 540394) = 1417176 * k + 270197 := by
    unfold C
    simp [show (2834352 * k + 540394) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 270197) = 4251528 * k + 810592 := by
    unfold C
    simp [show (1417176 * k + 270197) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 810592) = 2125764 * k + 405296 := by
    unfold C
    simp [show (4251528 * k + 810592) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 405296) = 1062882 * k + 202648 := by
    unfold C
    simp [show (2125764 * k + 405296) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 202648) = 531441 * k + 101324 := by
    unfold C
    simp [show (1062882 * k + 202648) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 199919) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 199919)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard027
