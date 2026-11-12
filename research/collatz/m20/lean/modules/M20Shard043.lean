import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard043

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_321263 : ∀ k : Nat,
    iterate (1048576 * k + 321263) 32 = 531441 * k + 162824 ∧
      531441 * k + 162824 < 1048576 * k + 321263 := by
  intro k
  have h1 : C (1048576 * k + 321263) = 3145728 * k + 963790 := by
    unfold C
    simp [show (1048576 * k + 321263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 963790) = 1572864 * k + 481895 := by
    unfold C
    simp [show (3145728 * k + 963790) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 481895) = 4718592 * k + 1445686 := by
    unfold C
    simp [show (1572864 * k + 481895) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1445686) = 2359296 * k + 722843 := by
    unfold C
    simp [show (4718592 * k + 1445686) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 722843) = 7077888 * k + 2168530 := by
    unfold C
    simp [show (2359296 * k + 722843) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2168530) = 3538944 * k + 1084265 := by
    unfold C
    simp [show (7077888 * k + 2168530) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1084265) = 10616832 * k + 3252796 := by
    unfold C
    simp [show (3538944 * k + 1084265) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3252796) = 5308416 * k + 1626398 := by
    unfold C
    simp [show (10616832 * k + 3252796) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1626398) = 2654208 * k + 813199 := by
    unfold C
    simp [show (5308416 * k + 1626398) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 813199) = 7962624 * k + 2439598 := by
    unfold C
    simp [show (2654208 * k + 813199) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2439598) = 3981312 * k + 1219799 := by
    unfold C
    simp [show (7962624 * k + 2439598) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1219799) = 11943936 * k + 3659398 := by
    unfold C
    simp [show (3981312 * k + 1219799) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3659398) = 5971968 * k + 1829699 := by
    unfold C
    simp [show (11943936 * k + 3659398) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1829699) = 17915904 * k + 5489098 := by
    unfold C
    simp [show (5971968 * k + 1829699) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5489098) = 8957952 * k + 2744549 := by
    unfold C
    simp [show (17915904 * k + 5489098) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2744549) = 26873856 * k + 8233648 := by
    unfold C
    simp [show (8957952 * k + 2744549) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 8233648) = 13436928 * k + 4116824 := by
    unfold C
    simp [show (26873856 * k + 8233648) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4116824) = 6718464 * k + 2058412 := by
    unfold C
    simp [show (13436928 * k + 4116824) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2058412) = 3359232 * k + 1029206 := by
    unfold C
    simp [show (6718464 * k + 2058412) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1029206) = 1679616 * k + 514603 := by
    unfold C
    simp [show (3359232 * k + 1029206) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 514603) = 5038848 * k + 1543810 := by
    unfold C
    simp [show (1679616 * k + 514603) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1543810) = 2519424 * k + 771905 := by
    unfold C
    simp [show (5038848 * k + 1543810) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 771905) = 7558272 * k + 2315716 := by
    unfold C
    simp [show (2519424 * k + 771905) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2315716) = 3779136 * k + 1157858 := by
    unfold C
    simp [show (7558272 * k + 2315716) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1157858) = 1889568 * k + 578929 := by
    unfold C
    simp [show (3779136 * k + 1157858) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 578929) = 5668704 * k + 1736788 := by
    unfold C
    simp [show (1889568 * k + 578929) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1736788) = 2834352 * k + 868394 := by
    unfold C
    simp [show (5668704 * k + 1736788) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 868394) = 1417176 * k + 434197 := by
    unfold C
    simp [show (2834352 * k + 868394) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 434197) = 4251528 * k + 1302592 := by
    unfold C
    simp [show (1417176 * k + 434197) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1302592) = 2125764 * k + 651296 := by
    unfold C
    simp [show (4251528 * k + 1302592) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 651296) = 1062882 * k + 325648 := by
    unfold C
    simp [show (2125764 * k + 651296) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 325648) = 531441 * k + 162824 := by
    unfold C
    simp [show (1062882 * k + 325648) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 321263) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 321263)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_321351 : ∀ k : Nat,
    iterate (1048576 * k + 321351) 32 = 531441 * k + 162869 ∧
      531441 * k + 162869 < 1048576 * k + 321351 := by
  intro k
  have h1 : C (1048576 * k + 321351) = 3145728 * k + 964054 := by
    unfold C
    simp [show (1048576 * k + 321351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 964054) = 1572864 * k + 482027 := by
    unfold C
    simp [show (3145728 * k + 964054) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 482027) = 4718592 * k + 1446082 := by
    unfold C
    simp [show (1572864 * k + 482027) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1446082) = 2359296 * k + 723041 := by
    unfold C
    simp [show (4718592 * k + 1446082) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 723041) = 7077888 * k + 2169124 := by
    unfold C
    simp [show (2359296 * k + 723041) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2169124) = 3538944 * k + 1084562 := by
    unfold C
    simp [show (7077888 * k + 2169124) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1084562) = 1769472 * k + 542281 := by
    unfold C
    simp [show (3538944 * k + 1084562) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 542281) = 5308416 * k + 1626844 := by
    unfold C
    simp [show (1769472 * k + 542281) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1626844) = 2654208 * k + 813422 := by
    unfold C
    simp [show (5308416 * k + 1626844) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 813422) = 1327104 * k + 406711 := by
    unfold C
    simp [show (2654208 * k + 813422) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 406711) = 3981312 * k + 1220134 := by
    unfold C
    simp [show (1327104 * k + 406711) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1220134) = 1990656 * k + 610067 := by
    unfold C
    simp [show (3981312 * k + 1220134) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 610067) = 5971968 * k + 1830202 := by
    unfold C
    simp [show (1990656 * k + 610067) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1830202) = 2985984 * k + 915101 := by
    unfold C
    simp [show (5971968 * k + 1830202) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 915101) = 8957952 * k + 2745304 := by
    unfold C
    simp [show (2985984 * k + 915101) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2745304) = 4478976 * k + 1372652 := by
    unfold C
    simp [show (8957952 * k + 2745304) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1372652) = 2239488 * k + 686326 := by
    unfold C
    simp [show (4478976 * k + 1372652) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 686326) = 1119744 * k + 343163 := by
    unfold C
    simp [show (2239488 * k + 686326) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 343163) = 3359232 * k + 1029490 := by
    unfold C
    simp [show (1119744 * k + 343163) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1029490) = 1679616 * k + 514745 := by
    unfold C
    simp [show (3359232 * k + 1029490) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 514745) = 5038848 * k + 1544236 := by
    unfold C
    simp [show (1679616 * k + 514745) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1544236) = 2519424 * k + 772118 := by
    unfold C
    simp [show (5038848 * k + 1544236) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 772118) = 1259712 * k + 386059 := by
    unfold C
    simp [show (2519424 * k + 772118) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 386059) = 3779136 * k + 1158178 := by
    unfold C
    simp [show (1259712 * k + 386059) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1158178) = 1889568 * k + 579089 := by
    unfold C
    simp [show (3779136 * k + 1158178) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 579089) = 5668704 * k + 1737268 := by
    unfold C
    simp [show (1889568 * k + 579089) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1737268) = 2834352 * k + 868634 := by
    unfold C
    simp [show (5668704 * k + 1737268) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 868634) = 1417176 * k + 434317 := by
    unfold C
    simp [show (2834352 * k + 868634) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 434317) = 4251528 * k + 1302952 := by
    unfold C
    simp [show (1417176 * k + 434317) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1302952) = 2125764 * k + 651476 := by
    unfold C
    simp [show (4251528 * k + 1302952) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 651476) = 1062882 * k + 325738 := by
    unfold C
    simp [show (2125764 * k + 651476) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 325738) = 531441 * k + 162869 := by
    unfold C
    simp [show (1062882 * k + 325738) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 321351) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 321351)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_322587 : ∀ k : Nat,
    iterate (1048576 * k + 322587) 32 = 531441 * k + 163495 ∧
      531441 * k + 163495 < 1048576 * k + 322587 := by
  intro k
  have h1 : C (1048576 * k + 322587) = 3145728 * k + 967762 := by
    unfold C
    simp [show (1048576 * k + 322587) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 967762) = 1572864 * k + 483881 := by
    unfold C
    simp [show (3145728 * k + 967762) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 483881) = 4718592 * k + 1451644 := by
    unfold C
    simp [show (1572864 * k + 483881) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1451644) = 2359296 * k + 725822 := by
    unfold C
    simp [show (4718592 * k + 1451644) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 725822) = 1179648 * k + 362911 := by
    unfold C
    simp [show (2359296 * k + 725822) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 362911) = 3538944 * k + 1088734 := by
    unfold C
    simp [show (1179648 * k + 362911) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1088734) = 1769472 * k + 544367 := by
    unfold C
    simp [show (3538944 * k + 1088734) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 544367) = 5308416 * k + 1633102 := by
    unfold C
    simp [show (1769472 * k + 544367) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1633102) = 2654208 * k + 816551 := by
    unfold C
    simp [show (5308416 * k + 1633102) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 816551) = 7962624 * k + 2449654 := by
    unfold C
    simp [show (2654208 * k + 816551) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2449654) = 3981312 * k + 1224827 := by
    unfold C
    simp [show (7962624 * k + 2449654) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1224827) = 11943936 * k + 3674482 := by
    unfold C
    simp [show (3981312 * k + 1224827) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3674482) = 5971968 * k + 1837241 := by
    unfold C
    simp [show (11943936 * k + 3674482) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1837241) = 17915904 * k + 5511724 := by
    unfold C
    simp [show (5971968 * k + 1837241) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5511724) = 8957952 * k + 2755862 := by
    unfold C
    simp [show (17915904 * k + 5511724) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2755862) = 4478976 * k + 1377931 := by
    unfold C
    simp [show (8957952 * k + 2755862) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1377931) = 13436928 * k + 4133794 := by
    unfold C
    simp [show (4478976 * k + 1377931) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4133794) = 6718464 * k + 2066897 := by
    unfold C
    simp [show (13436928 * k + 4133794) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2066897) = 20155392 * k + 6200692 := by
    unfold C
    simp [show (6718464 * k + 2066897) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 6200692) = 10077696 * k + 3100346 := by
    unfold C
    simp [show (20155392 * k + 6200692) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3100346) = 5038848 * k + 1550173 := by
    unfold C
    simp [show (10077696 * k + 3100346) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1550173) = 15116544 * k + 4650520 := by
    unfold C
    simp [show (5038848 * k + 1550173) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4650520) = 7558272 * k + 2325260 := by
    unfold C
    simp [show (15116544 * k + 4650520) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2325260) = 3779136 * k + 1162630 := by
    unfold C
    simp [show (7558272 * k + 2325260) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1162630) = 1889568 * k + 581315 := by
    unfold C
    simp [show (3779136 * k + 1162630) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 581315) = 5668704 * k + 1743946 := by
    unfold C
    simp [show (1889568 * k + 581315) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1743946) = 2834352 * k + 871973 := by
    unfold C
    simp [show (5668704 * k + 1743946) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 871973) = 8503056 * k + 2615920 := by
    unfold C
    simp [show (2834352 * k + 871973) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2615920) = 4251528 * k + 1307960 := by
    unfold C
    simp [show (8503056 * k + 2615920) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1307960) = 2125764 * k + 653980 := by
    unfold C
    simp [show (4251528 * k + 1307960) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 653980) = 1062882 * k + 326990 := by
    unfold C
    simp [show (2125764 * k + 653980) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 326990) = 531441 * k + 163495 := by
    unfold C
    simp [show (1062882 * k + 326990) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 322587) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 322587)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_323439 : ∀ k : Nat,
    iterate (1048576 * k + 323439) 32 = 531441 * k + 163927 ∧
      531441 * k + 163927 < 1048576 * k + 323439 := by
  intro k
  have h1 : C (1048576 * k + 323439) = 3145728 * k + 970318 := by
    unfold C
    simp [show (1048576 * k + 323439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 970318) = 1572864 * k + 485159 := by
    unfold C
    simp [show (3145728 * k + 970318) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 485159) = 4718592 * k + 1455478 := by
    unfold C
    simp [show (1572864 * k + 485159) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1455478) = 2359296 * k + 727739 := by
    unfold C
    simp [show (4718592 * k + 1455478) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 727739) = 7077888 * k + 2183218 := by
    unfold C
    simp [show (2359296 * k + 727739) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2183218) = 3538944 * k + 1091609 := by
    unfold C
    simp [show (7077888 * k + 2183218) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1091609) = 10616832 * k + 3274828 := by
    unfold C
    simp [show (3538944 * k + 1091609) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3274828) = 5308416 * k + 1637414 := by
    unfold C
    simp [show (10616832 * k + 3274828) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1637414) = 2654208 * k + 818707 := by
    unfold C
    simp [show (5308416 * k + 1637414) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 818707) = 7962624 * k + 2456122 := by
    unfold C
    simp [show (2654208 * k + 818707) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2456122) = 3981312 * k + 1228061 := by
    unfold C
    simp [show (7962624 * k + 2456122) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1228061) = 11943936 * k + 3684184 := by
    unfold C
    simp [show (3981312 * k + 1228061) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3684184) = 5971968 * k + 1842092 := by
    unfold C
    simp [show (11943936 * k + 3684184) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1842092) = 2985984 * k + 921046 := by
    unfold C
    simp [show (5971968 * k + 1842092) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 921046) = 1492992 * k + 460523 := by
    unfold C
    simp [show (2985984 * k + 921046) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 460523) = 4478976 * k + 1381570 := by
    unfold C
    simp [show (1492992 * k + 460523) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1381570) = 2239488 * k + 690785 := by
    unfold C
    simp [show (4478976 * k + 1381570) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 690785) = 6718464 * k + 2072356 := by
    unfold C
    simp [show (2239488 * k + 690785) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2072356) = 3359232 * k + 1036178 := by
    unfold C
    simp [show (6718464 * k + 2072356) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1036178) = 1679616 * k + 518089 := by
    unfold C
    simp [show (3359232 * k + 1036178) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 518089) = 5038848 * k + 1554268 := by
    unfold C
    simp [show (1679616 * k + 518089) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1554268) = 2519424 * k + 777134 := by
    unfold C
    simp [show (5038848 * k + 1554268) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 777134) = 1259712 * k + 388567 := by
    unfold C
    simp [show (2519424 * k + 777134) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 388567) = 3779136 * k + 1165702 := by
    unfold C
    simp [show (1259712 * k + 388567) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1165702) = 1889568 * k + 582851 := by
    unfold C
    simp [show (3779136 * k + 1165702) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 582851) = 5668704 * k + 1748554 := by
    unfold C
    simp [show (1889568 * k + 582851) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1748554) = 2834352 * k + 874277 := by
    unfold C
    simp [show (5668704 * k + 1748554) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 874277) = 8503056 * k + 2622832 := by
    unfold C
    simp [show (2834352 * k + 874277) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2622832) = 4251528 * k + 1311416 := by
    unfold C
    simp [show (8503056 * k + 2622832) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1311416) = 2125764 * k + 655708 := by
    unfold C
    simp [show (4251528 * k + 1311416) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 655708) = 1062882 * k + 327854 := by
    unfold C
    simp [show (2125764 * k + 655708) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 327854) = 531441 * k + 163927 := by
    unfold C
    simp [show (1062882 * k + 327854) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 323439) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 323439)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_323487 : ∀ k : Nat,
    iterate (1048576 * k + 323487) 32 = 531441 * k + 163951 ∧
      531441 * k + 163951 < 1048576 * k + 323487 := by
  intro k
  have h1 : C (1048576 * k + 323487) = 3145728 * k + 970462 := by
    unfold C
    simp [show (1048576 * k + 323487) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 970462) = 1572864 * k + 485231 := by
    unfold C
    simp [show (3145728 * k + 970462) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 485231) = 4718592 * k + 1455694 := by
    unfold C
    simp [show (1572864 * k + 485231) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1455694) = 2359296 * k + 727847 := by
    unfold C
    simp [show (4718592 * k + 1455694) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 727847) = 7077888 * k + 2183542 := by
    unfold C
    simp [show (2359296 * k + 727847) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2183542) = 3538944 * k + 1091771 := by
    unfold C
    simp [show (7077888 * k + 2183542) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1091771) = 10616832 * k + 3275314 := by
    unfold C
    simp [show (3538944 * k + 1091771) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3275314) = 5308416 * k + 1637657 := by
    unfold C
    simp [show (10616832 * k + 3275314) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1637657) = 15925248 * k + 4912972 := by
    unfold C
    simp [show (5308416 * k + 1637657) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4912972) = 7962624 * k + 2456486 := by
    unfold C
    simp [show (15925248 * k + 4912972) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2456486) = 3981312 * k + 1228243 := by
    unfold C
    simp [show (7962624 * k + 2456486) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1228243) = 11943936 * k + 3684730 := by
    unfold C
    simp [show (3981312 * k + 1228243) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3684730) = 5971968 * k + 1842365 := by
    unfold C
    simp [show (11943936 * k + 3684730) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1842365) = 17915904 * k + 5527096 := by
    unfold C
    simp [show (5971968 * k + 1842365) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5527096) = 8957952 * k + 2763548 := by
    unfold C
    simp [show (17915904 * k + 5527096) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2763548) = 4478976 * k + 1381774 := by
    unfold C
    simp [show (8957952 * k + 2763548) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1381774) = 2239488 * k + 690887 := by
    unfold C
    simp [show (4478976 * k + 1381774) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 690887) = 6718464 * k + 2072662 := by
    unfold C
    simp [show (2239488 * k + 690887) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2072662) = 3359232 * k + 1036331 := by
    unfold C
    simp [show (6718464 * k + 2072662) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1036331) = 10077696 * k + 3108994 := by
    unfold C
    simp [show (3359232 * k + 1036331) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3108994) = 5038848 * k + 1554497 := by
    unfold C
    simp [show (10077696 * k + 3108994) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1554497) = 15116544 * k + 4663492 := by
    unfold C
    simp [show (5038848 * k + 1554497) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4663492) = 7558272 * k + 2331746 := by
    unfold C
    simp [show (15116544 * k + 4663492) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2331746) = 3779136 * k + 1165873 := by
    unfold C
    simp [show (7558272 * k + 2331746) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1165873) = 11337408 * k + 3497620 := by
    unfold C
    simp [show (3779136 * k + 1165873) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3497620) = 5668704 * k + 1748810 := by
    unfold C
    simp [show (11337408 * k + 3497620) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1748810) = 2834352 * k + 874405 := by
    unfold C
    simp [show (5668704 * k + 1748810) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 874405) = 8503056 * k + 2623216 := by
    unfold C
    simp [show (2834352 * k + 874405) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2623216) = 4251528 * k + 1311608 := by
    unfold C
    simp [show (8503056 * k + 2623216) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1311608) = 2125764 * k + 655804 := by
    unfold C
    simp [show (4251528 * k + 1311608) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 655804) = 1062882 * k + 327902 := by
    unfold C
    simp [show (2125764 * k + 655804) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 327902) = 531441 * k + 163951 := by
    unfold C
    simp [show (1062882 * k + 327902) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 323487) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 323487)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_323611 : ∀ k : Nat,
    iterate (1048576 * k + 323611) 32 = 531441 * k + 164014 ∧
      531441 * k + 164014 < 1048576 * k + 323611 := by
  intro k
  have h1 : C (1048576 * k + 323611) = 3145728 * k + 970834 := by
    unfold C
    simp [show (1048576 * k + 323611) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 970834) = 1572864 * k + 485417 := by
    unfold C
    simp [show (3145728 * k + 970834) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 485417) = 4718592 * k + 1456252 := by
    unfold C
    simp [show (1572864 * k + 485417) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1456252) = 2359296 * k + 728126 := by
    unfold C
    simp [show (4718592 * k + 1456252) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 728126) = 1179648 * k + 364063 := by
    unfold C
    simp [show (2359296 * k + 728126) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 364063) = 3538944 * k + 1092190 := by
    unfold C
    simp [show (1179648 * k + 364063) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1092190) = 1769472 * k + 546095 := by
    unfold C
    simp [show (3538944 * k + 1092190) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 546095) = 5308416 * k + 1638286 := by
    unfold C
    simp [show (1769472 * k + 546095) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1638286) = 2654208 * k + 819143 := by
    unfold C
    simp [show (5308416 * k + 1638286) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 819143) = 7962624 * k + 2457430 := by
    unfold C
    simp [show (2654208 * k + 819143) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2457430) = 3981312 * k + 1228715 := by
    unfold C
    simp [show (7962624 * k + 2457430) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1228715) = 11943936 * k + 3686146 := by
    unfold C
    simp [show (3981312 * k + 1228715) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3686146) = 5971968 * k + 1843073 := by
    unfold C
    simp [show (11943936 * k + 3686146) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1843073) = 17915904 * k + 5529220 := by
    unfold C
    simp [show (5971968 * k + 1843073) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5529220) = 8957952 * k + 2764610 := by
    unfold C
    simp [show (17915904 * k + 5529220) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2764610) = 4478976 * k + 1382305 := by
    unfold C
    simp [show (8957952 * k + 2764610) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1382305) = 13436928 * k + 4146916 := by
    unfold C
    simp [show (4478976 * k + 1382305) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4146916) = 6718464 * k + 2073458 := by
    unfold C
    simp [show (13436928 * k + 4146916) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2073458) = 3359232 * k + 1036729 := by
    unfold C
    simp [show (6718464 * k + 2073458) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1036729) = 10077696 * k + 3110188 := by
    unfold C
    simp [show (3359232 * k + 1036729) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3110188) = 5038848 * k + 1555094 := by
    unfold C
    simp [show (10077696 * k + 3110188) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1555094) = 2519424 * k + 777547 := by
    unfold C
    simp [show (5038848 * k + 1555094) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 777547) = 7558272 * k + 2332642 := by
    unfold C
    simp [show (2519424 * k + 777547) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2332642) = 3779136 * k + 1166321 := by
    unfold C
    simp [show (7558272 * k + 2332642) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1166321) = 11337408 * k + 3498964 := by
    unfold C
    simp [show (3779136 * k + 1166321) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3498964) = 5668704 * k + 1749482 := by
    unfold C
    simp [show (11337408 * k + 3498964) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1749482) = 2834352 * k + 874741 := by
    unfold C
    simp [show (5668704 * k + 1749482) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 874741) = 8503056 * k + 2624224 := by
    unfold C
    simp [show (2834352 * k + 874741) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2624224) = 4251528 * k + 1312112 := by
    unfold C
    simp [show (8503056 * k + 2624224) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1312112) = 2125764 * k + 656056 := by
    unfold C
    simp [show (4251528 * k + 1312112) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 656056) = 1062882 * k + 328028 := by
    unfold C
    simp [show (2125764 * k + 656056) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 328028) = 531441 * k + 164014 := by
    unfold C
    simp [show (1062882 * k + 328028) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 323611) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 323611)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_324063 : ∀ k : Nat,
    iterate (1048576 * k + 324063) 32 = 531441 * k + 164243 ∧
      531441 * k + 164243 < 1048576 * k + 324063 := by
  intro k
  have h1 : C (1048576 * k + 324063) = 3145728 * k + 972190 := by
    unfold C
    simp [show (1048576 * k + 324063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 972190) = 1572864 * k + 486095 := by
    unfold C
    simp [show (3145728 * k + 972190) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 486095) = 4718592 * k + 1458286 := by
    unfold C
    simp [show (1572864 * k + 486095) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1458286) = 2359296 * k + 729143 := by
    unfold C
    simp [show (4718592 * k + 1458286) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 729143) = 7077888 * k + 2187430 := by
    unfold C
    simp [show (2359296 * k + 729143) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2187430) = 3538944 * k + 1093715 := by
    unfold C
    simp [show (7077888 * k + 2187430) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1093715) = 10616832 * k + 3281146 := by
    unfold C
    simp [show (3538944 * k + 1093715) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3281146) = 5308416 * k + 1640573 := by
    unfold C
    simp [show (10616832 * k + 3281146) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1640573) = 15925248 * k + 4921720 := by
    unfold C
    simp [show (5308416 * k + 1640573) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4921720) = 7962624 * k + 2460860 := by
    unfold C
    simp [show (15925248 * k + 4921720) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2460860) = 3981312 * k + 1230430 := by
    unfold C
    simp [show (7962624 * k + 2460860) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1230430) = 1990656 * k + 615215 := by
    unfold C
    simp [show (3981312 * k + 1230430) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 615215) = 5971968 * k + 1845646 := by
    unfold C
    simp [show (1990656 * k + 615215) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1845646) = 2985984 * k + 922823 := by
    unfold C
    simp [show (5971968 * k + 1845646) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 922823) = 8957952 * k + 2768470 := by
    unfold C
    simp [show (2985984 * k + 922823) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2768470) = 4478976 * k + 1384235 := by
    unfold C
    simp [show (8957952 * k + 2768470) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1384235) = 13436928 * k + 4152706 := by
    unfold C
    simp [show (4478976 * k + 1384235) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4152706) = 6718464 * k + 2076353 := by
    unfold C
    simp [show (13436928 * k + 4152706) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2076353) = 20155392 * k + 6229060 := by
    unfold C
    simp [show (6718464 * k + 2076353) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 6229060) = 10077696 * k + 3114530 := by
    unfold C
    simp [show (20155392 * k + 6229060) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3114530) = 5038848 * k + 1557265 := by
    unfold C
    simp [show (10077696 * k + 3114530) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1557265) = 15116544 * k + 4671796 := by
    unfold C
    simp [show (5038848 * k + 1557265) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4671796) = 7558272 * k + 2335898 := by
    unfold C
    simp [show (15116544 * k + 4671796) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2335898) = 3779136 * k + 1167949 := by
    unfold C
    simp [show (7558272 * k + 2335898) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1167949) = 11337408 * k + 3503848 := by
    unfold C
    simp [show (3779136 * k + 1167949) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3503848) = 5668704 * k + 1751924 := by
    unfold C
    simp [show (11337408 * k + 3503848) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1751924) = 2834352 * k + 875962 := by
    unfold C
    simp [show (5668704 * k + 1751924) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 875962) = 1417176 * k + 437981 := by
    unfold C
    simp [show (2834352 * k + 875962) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 437981) = 4251528 * k + 1313944 := by
    unfold C
    simp [show (1417176 * k + 437981) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1313944) = 2125764 * k + 656972 := by
    unfold C
    simp [show (4251528 * k + 1313944) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 656972) = 1062882 * k + 328486 := by
    unfold C
    simp [show (2125764 * k + 656972) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 328486) = 531441 * k + 164243 := by
    unfold C
    simp [show (1062882 * k + 328486) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 324063) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 324063)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_326111 : ∀ k : Nat,
    iterate (1048576 * k + 326111) 32 = 531441 * k + 165281 ∧
      531441 * k + 165281 < 1048576 * k + 326111 := by
  intro k
  have h1 : C (1048576 * k + 326111) = 3145728 * k + 978334 := by
    unfold C
    simp [show (1048576 * k + 326111) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 978334) = 1572864 * k + 489167 := by
    unfold C
    simp [show (3145728 * k + 978334) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 489167) = 4718592 * k + 1467502 := by
    unfold C
    simp [show (1572864 * k + 489167) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1467502) = 2359296 * k + 733751 := by
    unfold C
    simp [show (4718592 * k + 1467502) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 733751) = 7077888 * k + 2201254 := by
    unfold C
    simp [show (2359296 * k + 733751) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2201254) = 3538944 * k + 1100627 := by
    unfold C
    simp [show (7077888 * k + 2201254) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1100627) = 10616832 * k + 3301882 := by
    unfold C
    simp [show (3538944 * k + 1100627) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3301882) = 5308416 * k + 1650941 := by
    unfold C
    simp [show (10616832 * k + 3301882) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1650941) = 15925248 * k + 4952824 := by
    unfold C
    simp [show (5308416 * k + 1650941) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4952824) = 7962624 * k + 2476412 := by
    unfold C
    simp [show (15925248 * k + 4952824) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2476412) = 3981312 * k + 1238206 := by
    unfold C
    simp [show (7962624 * k + 2476412) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1238206) = 1990656 * k + 619103 := by
    unfold C
    simp [show (3981312 * k + 1238206) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 619103) = 5971968 * k + 1857310 := by
    unfold C
    simp [show (1990656 * k + 619103) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1857310) = 2985984 * k + 928655 := by
    unfold C
    simp [show (5971968 * k + 1857310) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 928655) = 8957952 * k + 2785966 := by
    unfold C
    simp [show (2985984 * k + 928655) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2785966) = 4478976 * k + 1392983 := by
    unfold C
    simp [show (8957952 * k + 2785966) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1392983) = 13436928 * k + 4178950 := by
    unfold C
    simp [show (4478976 * k + 1392983) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4178950) = 6718464 * k + 2089475 := by
    unfold C
    simp [show (13436928 * k + 4178950) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2089475) = 20155392 * k + 6268426 := by
    unfold C
    simp [show (6718464 * k + 2089475) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 6268426) = 10077696 * k + 3134213 := by
    unfold C
    simp [show (20155392 * k + 6268426) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3134213) = 30233088 * k + 9402640 := by
    unfold C
    simp [show (10077696 * k + 3134213) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 9402640) = 15116544 * k + 4701320 := by
    unfold C
    simp [show (30233088 * k + 9402640) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4701320) = 7558272 * k + 2350660 := by
    unfold C
    simp [show (15116544 * k + 4701320) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2350660) = 3779136 * k + 1175330 := by
    unfold C
    simp [show (7558272 * k + 2350660) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1175330) = 1889568 * k + 587665 := by
    unfold C
    simp [show (3779136 * k + 1175330) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 587665) = 5668704 * k + 1762996 := by
    unfold C
    simp [show (1889568 * k + 587665) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1762996) = 2834352 * k + 881498 := by
    unfold C
    simp [show (5668704 * k + 1762996) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 881498) = 1417176 * k + 440749 := by
    unfold C
    simp [show (2834352 * k + 881498) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 440749) = 4251528 * k + 1322248 := by
    unfold C
    simp [show (1417176 * k + 440749) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1322248) = 2125764 * k + 661124 := by
    unfold C
    simp [show (4251528 * k + 1322248) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 661124) = 1062882 * k + 330562 := by
    unfold C
    simp [show (2125764 * k + 661124) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 330562) = 531441 * k + 165281 := by
    unfold C
    simp [show (1062882 * k + 330562) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 326111) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 326111)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_326271 : ∀ k : Nat,
    iterate (1048576 * k + 326271) 32 = 531441 * k + 165362 ∧
      531441 * k + 165362 < 1048576 * k + 326271 := by
  intro k
  have h1 : C (1048576 * k + 326271) = 3145728 * k + 978814 := by
    unfold C
    simp [show (1048576 * k + 326271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 978814) = 1572864 * k + 489407 := by
    unfold C
    simp [show (3145728 * k + 978814) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 489407) = 4718592 * k + 1468222 := by
    unfold C
    simp [show (1572864 * k + 489407) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1468222) = 2359296 * k + 734111 := by
    unfold C
    simp [show (4718592 * k + 1468222) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 734111) = 7077888 * k + 2202334 := by
    unfold C
    simp [show (2359296 * k + 734111) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2202334) = 3538944 * k + 1101167 := by
    unfold C
    simp [show (7077888 * k + 2202334) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1101167) = 10616832 * k + 3303502 := by
    unfold C
    simp [show (3538944 * k + 1101167) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3303502) = 5308416 * k + 1651751 := by
    unfold C
    simp [show (10616832 * k + 3303502) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1651751) = 15925248 * k + 4955254 := by
    unfold C
    simp [show (5308416 * k + 1651751) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4955254) = 7962624 * k + 2477627 := by
    unfold C
    simp [show (15925248 * k + 4955254) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2477627) = 23887872 * k + 7432882 := by
    unfold C
    simp [show (7962624 * k + 2477627) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 7432882) = 11943936 * k + 3716441 := by
    unfold C
    simp [show (23887872 * k + 7432882) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3716441) = 35831808 * k + 11149324 := by
    unfold C
    simp [show (11943936 * k + 3716441) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 11149324) = 17915904 * k + 5574662 := by
    unfold C
    simp [show (35831808 * k + 11149324) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 5574662) = 8957952 * k + 2787331 := by
    unfold C
    simp [show (17915904 * k + 5574662) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2787331) = 26873856 * k + 8361994 := by
    unfold C
    simp [show (8957952 * k + 2787331) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 8361994) = 13436928 * k + 4180997 := by
    unfold C
    simp [show (26873856 * k + 8361994) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4180997) = 40310784 * k + 12542992 := by
    unfold C
    simp [show (13436928 * k + 4180997) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 12542992) = 20155392 * k + 6271496 := by
    unfold C
    simp [show (40310784 * k + 12542992) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 6271496) = 10077696 * k + 3135748 := by
    unfold C
    simp [show (20155392 * k + 6271496) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3135748) = 5038848 * k + 1567874 := by
    unfold C
    simp [show (10077696 * k + 3135748) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1567874) = 2519424 * k + 783937 := by
    unfold C
    simp [show (5038848 * k + 1567874) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 783937) = 7558272 * k + 2351812 := by
    unfold C
    simp [show (2519424 * k + 783937) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2351812) = 3779136 * k + 1175906 := by
    unfold C
    simp [show (7558272 * k + 2351812) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1175906) = 1889568 * k + 587953 := by
    unfold C
    simp [show (3779136 * k + 1175906) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 587953) = 5668704 * k + 1763860 := by
    unfold C
    simp [show (1889568 * k + 587953) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1763860) = 2834352 * k + 881930 := by
    unfold C
    simp [show (5668704 * k + 1763860) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 881930) = 1417176 * k + 440965 := by
    unfold C
    simp [show (2834352 * k + 881930) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 440965) = 4251528 * k + 1322896 := by
    unfold C
    simp [show (1417176 * k + 440965) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1322896) = 2125764 * k + 661448 := by
    unfold C
    simp [show (4251528 * k + 1322896) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 661448) = 1062882 * k + 330724 := by
    unfold C
    simp [show (2125764 * k + 661448) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 330724) = 531441 * k + 165362 := by
    unfold C
    simp [show (1062882 * k + 330724) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 326271) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 326271)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_327727 : ∀ k : Nat,
    iterate (1048576 * k + 327727) 32 = 531441 * k + 166100 ∧
      531441 * k + 166100 < 1048576 * k + 327727 := by
  intro k
  have h1 : C (1048576 * k + 327727) = 3145728 * k + 983182 := by
    unfold C
    simp [show (1048576 * k + 327727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 983182) = 1572864 * k + 491591 := by
    unfold C
    simp [show (3145728 * k + 983182) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 491591) = 4718592 * k + 1474774 := by
    unfold C
    simp [show (1572864 * k + 491591) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1474774) = 2359296 * k + 737387 := by
    unfold C
    simp [show (4718592 * k + 1474774) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 737387) = 7077888 * k + 2212162 := by
    unfold C
    simp [show (2359296 * k + 737387) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2212162) = 3538944 * k + 1106081 := by
    unfold C
    simp [show (7077888 * k + 2212162) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1106081) = 10616832 * k + 3318244 := by
    unfold C
    simp [show (3538944 * k + 1106081) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3318244) = 5308416 * k + 1659122 := by
    unfold C
    simp [show (10616832 * k + 3318244) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1659122) = 2654208 * k + 829561 := by
    unfold C
    simp [show (5308416 * k + 1659122) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 829561) = 7962624 * k + 2488684 := by
    unfold C
    simp [show (2654208 * k + 829561) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2488684) = 3981312 * k + 1244342 := by
    unfold C
    simp [show (7962624 * k + 2488684) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1244342) = 1990656 * k + 622171 := by
    unfold C
    simp [show (3981312 * k + 1244342) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 622171) = 5971968 * k + 1866514 := by
    unfold C
    simp [show (1990656 * k + 622171) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1866514) = 2985984 * k + 933257 := by
    unfold C
    simp [show (5971968 * k + 1866514) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 933257) = 8957952 * k + 2799772 := by
    unfold C
    simp [show (2985984 * k + 933257) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2799772) = 4478976 * k + 1399886 := by
    unfold C
    simp [show (8957952 * k + 2799772) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1399886) = 2239488 * k + 699943 := by
    unfold C
    simp [show (4478976 * k + 1399886) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 699943) = 6718464 * k + 2099830 := by
    unfold C
    simp [show (2239488 * k + 699943) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2099830) = 3359232 * k + 1049915 := by
    unfold C
    simp [show (6718464 * k + 2099830) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1049915) = 10077696 * k + 3149746 := by
    unfold C
    simp [show (3359232 * k + 1049915) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3149746) = 5038848 * k + 1574873 := by
    unfold C
    simp [show (10077696 * k + 3149746) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1574873) = 15116544 * k + 4724620 := by
    unfold C
    simp [show (5038848 * k + 1574873) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4724620) = 7558272 * k + 2362310 := by
    unfold C
    simp [show (15116544 * k + 4724620) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2362310) = 3779136 * k + 1181155 := by
    unfold C
    simp [show (7558272 * k + 2362310) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1181155) = 11337408 * k + 3543466 := by
    unfold C
    simp [show (3779136 * k + 1181155) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3543466) = 5668704 * k + 1771733 := by
    unfold C
    simp [show (11337408 * k + 3543466) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1771733) = 17006112 * k + 5315200 := by
    unfold C
    simp [show (5668704 * k + 1771733) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 5315200) = 8503056 * k + 2657600 := by
    unfold C
    simp [show (17006112 * k + 5315200) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2657600) = 4251528 * k + 1328800 := by
    unfold C
    simp [show (8503056 * k + 2657600) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1328800) = 2125764 * k + 664400 := by
    unfold C
    simp [show (4251528 * k + 1328800) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 664400) = 1062882 * k + 332200 := by
    unfold C
    simp [show (2125764 * k + 664400) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 332200) = 531441 * k + 166100 := by
    unfold C
    simp [show (1062882 * k + 332200) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 327727) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 327727)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_329023 : ∀ k : Nat,
    iterate (1048576 * k + 329023) 32 = 531441 * k + 166757 ∧
      531441 * k + 166757 < 1048576 * k + 329023 := by
  intro k
  have h1 : C (1048576 * k + 329023) = 3145728 * k + 987070 := by
    unfold C
    simp [show (1048576 * k + 329023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 987070) = 1572864 * k + 493535 := by
    unfold C
    simp [show (3145728 * k + 987070) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 493535) = 4718592 * k + 1480606 := by
    unfold C
    simp [show (1572864 * k + 493535) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1480606) = 2359296 * k + 740303 := by
    unfold C
    simp [show (4718592 * k + 1480606) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 740303) = 7077888 * k + 2220910 := by
    unfold C
    simp [show (2359296 * k + 740303) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2220910) = 3538944 * k + 1110455 := by
    unfold C
    simp [show (7077888 * k + 2220910) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1110455) = 10616832 * k + 3331366 := by
    unfold C
    simp [show (3538944 * k + 1110455) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3331366) = 5308416 * k + 1665683 := by
    unfold C
    simp [show (10616832 * k + 3331366) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1665683) = 15925248 * k + 4997050 := by
    unfold C
    simp [show (5308416 * k + 1665683) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4997050) = 7962624 * k + 2498525 := by
    unfold C
    simp [show (15925248 * k + 4997050) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2498525) = 23887872 * k + 7495576 := by
    unfold C
    simp [show (7962624 * k + 2498525) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 7495576) = 11943936 * k + 3747788 := by
    unfold C
    simp [show (23887872 * k + 7495576) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3747788) = 5971968 * k + 1873894 := by
    unfold C
    simp [show (11943936 * k + 3747788) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1873894) = 2985984 * k + 936947 := by
    unfold C
    simp [show (5971968 * k + 1873894) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 936947) = 8957952 * k + 2810842 := by
    unfold C
    simp [show (2985984 * k + 936947) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2810842) = 4478976 * k + 1405421 := by
    unfold C
    simp [show (8957952 * k + 2810842) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1405421) = 13436928 * k + 4216264 := by
    unfold C
    simp [show (4478976 * k + 1405421) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4216264) = 6718464 * k + 2108132 := by
    unfold C
    simp [show (13436928 * k + 4216264) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2108132) = 3359232 * k + 1054066 := by
    unfold C
    simp [show (6718464 * k + 2108132) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1054066) = 1679616 * k + 527033 := by
    unfold C
    simp [show (3359232 * k + 1054066) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 527033) = 5038848 * k + 1581100 := by
    unfold C
    simp [show (1679616 * k + 527033) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1581100) = 2519424 * k + 790550 := by
    unfold C
    simp [show (5038848 * k + 1581100) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 790550) = 1259712 * k + 395275 := by
    unfold C
    simp [show (2519424 * k + 790550) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 395275) = 3779136 * k + 1185826 := by
    unfold C
    simp [show (1259712 * k + 395275) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1185826) = 1889568 * k + 592913 := by
    unfold C
    simp [show (3779136 * k + 1185826) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 592913) = 5668704 * k + 1778740 := by
    unfold C
    simp [show (1889568 * k + 592913) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1778740) = 2834352 * k + 889370 := by
    unfold C
    simp [show (5668704 * k + 1778740) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 889370) = 1417176 * k + 444685 := by
    unfold C
    simp [show (2834352 * k + 889370) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 444685) = 4251528 * k + 1334056 := by
    unfold C
    simp [show (1417176 * k + 444685) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1334056) = 2125764 * k + 667028 := by
    unfold C
    simp [show (4251528 * k + 1334056) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 667028) = 1062882 * k + 333514 := by
    unfold C
    simp [show (2125764 * k + 667028) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 333514) = 531441 * k + 166757 := by
    unfold C
    simp [show (1062882 * k + 333514) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 329023) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 329023)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_329183 : ∀ k : Nat,
    iterate (1048576 * k + 329183) 32 = 531441 * k + 166838 ∧
      531441 * k + 166838 < 1048576 * k + 329183 := by
  intro k
  have h1 : C (1048576 * k + 329183) = 3145728 * k + 987550 := by
    unfold C
    simp [show (1048576 * k + 329183) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 987550) = 1572864 * k + 493775 := by
    unfold C
    simp [show (3145728 * k + 987550) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 493775) = 4718592 * k + 1481326 := by
    unfold C
    simp [show (1572864 * k + 493775) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1481326) = 2359296 * k + 740663 := by
    unfold C
    simp [show (4718592 * k + 1481326) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 740663) = 7077888 * k + 2221990 := by
    unfold C
    simp [show (2359296 * k + 740663) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2221990) = 3538944 * k + 1110995 := by
    unfold C
    simp [show (7077888 * k + 2221990) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1110995) = 10616832 * k + 3332986 := by
    unfold C
    simp [show (3538944 * k + 1110995) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3332986) = 5308416 * k + 1666493 := by
    unfold C
    simp [show (10616832 * k + 3332986) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1666493) = 15925248 * k + 4999480 := by
    unfold C
    simp [show (5308416 * k + 1666493) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4999480) = 7962624 * k + 2499740 := by
    unfold C
    simp [show (15925248 * k + 4999480) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2499740) = 3981312 * k + 1249870 := by
    unfold C
    simp [show (7962624 * k + 2499740) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1249870) = 1990656 * k + 624935 := by
    unfold C
    simp [show (3981312 * k + 1249870) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 624935) = 5971968 * k + 1874806 := by
    unfold C
    simp [show (1990656 * k + 624935) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1874806) = 2985984 * k + 937403 := by
    unfold C
    simp [show (5971968 * k + 1874806) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 937403) = 8957952 * k + 2812210 := by
    unfold C
    simp [show (2985984 * k + 937403) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2812210) = 4478976 * k + 1406105 := by
    unfold C
    simp [show (8957952 * k + 2812210) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1406105) = 13436928 * k + 4218316 := by
    unfold C
    simp [show (4478976 * k + 1406105) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4218316) = 6718464 * k + 2109158 := by
    unfold C
    simp [show (13436928 * k + 4218316) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2109158) = 3359232 * k + 1054579 := by
    unfold C
    simp [show (6718464 * k + 2109158) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1054579) = 10077696 * k + 3163738 := by
    unfold C
    simp [show (3359232 * k + 1054579) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3163738) = 5038848 * k + 1581869 := by
    unfold C
    simp [show (10077696 * k + 3163738) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1581869) = 15116544 * k + 4745608 := by
    unfold C
    simp [show (5038848 * k + 1581869) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4745608) = 7558272 * k + 2372804 := by
    unfold C
    simp [show (15116544 * k + 4745608) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2372804) = 3779136 * k + 1186402 := by
    unfold C
    simp [show (7558272 * k + 2372804) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1186402) = 1889568 * k + 593201 := by
    unfold C
    simp [show (3779136 * k + 1186402) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 593201) = 5668704 * k + 1779604 := by
    unfold C
    simp [show (1889568 * k + 593201) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1779604) = 2834352 * k + 889802 := by
    unfold C
    simp [show (5668704 * k + 1779604) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 889802) = 1417176 * k + 444901 := by
    unfold C
    simp [show (2834352 * k + 889802) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 444901) = 4251528 * k + 1334704 := by
    unfold C
    simp [show (1417176 * k + 444901) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1334704) = 2125764 * k + 667352 := by
    unfold C
    simp [show (4251528 * k + 1334704) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 667352) = 1062882 * k + 333676 := by
    unfold C
    simp [show (2125764 * k + 667352) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 333676) = 531441 * k + 166838 := by
    unfold C
    simp [show (1062882 * k + 333676) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 329183) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 329183)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_329631 : ∀ k : Nat,
    iterate (1048576 * k + 329631) 32 = 531441 * k + 167065 ∧
      531441 * k + 167065 < 1048576 * k + 329631 := by
  intro k
  have h1 : C (1048576 * k + 329631) = 3145728 * k + 988894 := by
    unfold C
    simp [show (1048576 * k + 329631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 988894) = 1572864 * k + 494447 := by
    unfold C
    simp [show (3145728 * k + 988894) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 494447) = 4718592 * k + 1483342 := by
    unfold C
    simp [show (1572864 * k + 494447) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1483342) = 2359296 * k + 741671 := by
    unfold C
    simp [show (4718592 * k + 1483342) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 741671) = 7077888 * k + 2225014 := by
    unfold C
    simp [show (2359296 * k + 741671) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2225014) = 3538944 * k + 1112507 := by
    unfold C
    simp [show (7077888 * k + 2225014) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1112507) = 10616832 * k + 3337522 := by
    unfold C
    simp [show (3538944 * k + 1112507) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3337522) = 5308416 * k + 1668761 := by
    unfold C
    simp [show (10616832 * k + 3337522) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1668761) = 15925248 * k + 5006284 := by
    unfold C
    simp [show (5308416 * k + 1668761) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5006284) = 7962624 * k + 2503142 := by
    unfold C
    simp [show (15925248 * k + 5006284) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2503142) = 3981312 * k + 1251571 := by
    unfold C
    simp [show (7962624 * k + 2503142) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1251571) = 11943936 * k + 3754714 := by
    unfold C
    simp [show (3981312 * k + 1251571) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3754714) = 5971968 * k + 1877357 := by
    unfold C
    simp [show (11943936 * k + 3754714) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1877357) = 17915904 * k + 5632072 := by
    unfold C
    simp [show (5971968 * k + 1877357) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5632072) = 8957952 * k + 2816036 := by
    unfold C
    simp [show (17915904 * k + 5632072) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2816036) = 4478976 * k + 1408018 := by
    unfold C
    simp [show (8957952 * k + 2816036) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1408018) = 2239488 * k + 704009 := by
    unfold C
    simp [show (4478976 * k + 1408018) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 704009) = 6718464 * k + 2112028 := by
    unfold C
    simp [show (2239488 * k + 704009) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2112028) = 3359232 * k + 1056014 := by
    unfold C
    simp [show (6718464 * k + 2112028) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1056014) = 1679616 * k + 528007 := by
    unfold C
    simp [show (3359232 * k + 1056014) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 528007) = 5038848 * k + 1584022 := by
    unfold C
    simp [show (1679616 * k + 528007) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1584022) = 2519424 * k + 792011 := by
    unfold C
    simp [show (5038848 * k + 1584022) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 792011) = 7558272 * k + 2376034 := by
    unfold C
    simp [show (2519424 * k + 792011) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2376034) = 3779136 * k + 1188017 := by
    unfold C
    simp [show (7558272 * k + 2376034) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1188017) = 11337408 * k + 3564052 := by
    unfold C
    simp [show (3779136 * k + 1188017) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3564052) = 5668704 * k + 1782026 := by
    unfold C
    simp [show (11337408 * k + 3564052) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1782026) = 2834352 * k + 891013 := by
    unfold C
    simp [show (5668704 * k + 1782026) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 891013) = 8503056 * k + 2673040 := by
    unfold C
    simp [show (2834352 * k + 891013) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2673040) = 4251528 * k + 1336520 := by
    unfold C
    simp [show (8503056 * k + 2673040) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1336520) = 2125764 * k + 668260 := by
    unfold C
    simp [show (4251528 * k + 1336520) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 668260) = 1062882 * k + 334130 := by
    unfold C
    simp [show (2125764 * k + 668260) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 334130) = 531441 * k + 167065 := by
    unfold C
    simp [show (1062882 * k + 334130) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 329631) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 329631)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_329791 : ∀ k : Nat,
    iterate (1048576 * k + 329791) 32 = 531441 * k + 167146 ∧
      531441 * k + 167146 < 1048576 * k + 329791 := by
  intro k
  have h1 : C (1048576 * k + 329791) = 3145728 * k + 989374 := by
    unfold C
    simp [show (1048576 * k + 329791) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 989374) = 1572864 * k + 494687 := by
    unfold C
    simp [show (3145728 * k + 989374) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 494687) = 4718592 * k + 1484062 := by
    unfold C
    simp [show (1572864 * k + 494687) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1484062) = 2359296 * k + 742031 := by
    unfold C
    simp [show (4718592 * k + 1484062) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 742031) = 7077888 * k + 2226094 := by
    unfold C
    simp [show (2359296 * k + 742031) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2226094) = 3538944 * k + 1113047 := by
    unfold C
    simp [show (7077888 * k + 2226094) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1113047) = 10616832 * k + 3339142 := by
    unfold C
    simp [show (3538944 * k + 1113047) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3339142) = 5308416 * k + 1669571 := by
    unfold C
    simp [show (10616832 * k + 3339142) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1669571) = 15925248 * k + 5008714 := by
    unfold C
    simp [show (5308416 * k + 1669571) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5008714) = 7962624 * k + 2504357 := by
    unfold C
    simp [show (15925248 * k + 5008714) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2504357) = 23887872 * k + 7513072 := by
    unfold C
    simp [show (7962624 * k + 2504357) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 7513072) = 11943936 * k + 3756536 := by
    unfold C
    simp [show (23887872 * k + 7513072) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3756536) = 5971968 * k + 1878268 := by
    unfold C
    simp [show (11943936 * k + 3756536) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1878268) = 2985984 * k + 939134 := by
    unfold C
    simp [show (5971968 * k + 1878268) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 939134) = 1492992 * k + 469567 := by
    unfold C
    simp [show (2985984 * k + 939134) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 469567) = 4478976 * k + 1408702 := by
    unfold C
    simp [show (1492992 * k + 469567) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1408702) = 2239488 * k + 704351 := by
    unfold C
    simp [show (4478976 * k + 1408702) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 704351) = 6718464 * k + 2113054 := by
    unfold C
    simp [show (2239488 * k + 704351) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2113054) = 3359232 * k + 1056527 := by
    unfold C
    simp [show (6718464 * k + 2113054) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1056527) = 10077696 * k + 3169582 := by
    unfold C
    simp [show (3359232 * k + 1056527) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3169582) = 5038848 * k + 1584791 := by
    unfold C
    simp [show (10077696 * k + 3169582) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1584791) = 15116544 * k + 4754374 := by
    unfold C
    simp [show (5038848 * k + 1584791) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4754374) = 7558272 * k + 2377187 := by
    unfold C
    simp [show (15116544 * k + 4754374) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2377187) = 22674816 * k + 7131562 := by
    unfold C
    simp [show (7558272 * k + 2377187) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 7131562) = 11337408 * k + 3565781 := by
    unfold C
    simp [show (22674816 * k + 7131562) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3565781) = 34012224 * k + 10697344 := by
    unfold C
    simp [show (11337408 * k + 3565781) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 10697344) = 17006112 * k + 5348672 := by
    unfold C
    simp [show (34012224 * k + 10697344) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 5348672) = 8503056 * k + 2674336 := by
    unfold C
    simp [show (17006112 * k + 5348672) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2674336) = 4251528 * k + 1337168 := by
    unfold C
    simp [show (8503056 * k + 2674336) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1337168) = 2125764 * k + 668584 := by
    unfold C
    simp [show (4251528 * k + 1337168) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 668584) = 1062882 * k + 334292 := by
    unfold C
    simp [show (2125764 * k + 668584) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 334292) = 531441 * k + 167146 := by
    unfold C
    simp [show (1062882 * k + 334292) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 329791) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 329791)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_330223 : ∀ k : Nat,
    iterate (1048576 * k + 330223) 32 = 531441 * k + 167365 ∧
      531441 * k + 167365 < 1048576 * k + 330223 := by
  intro k
  have h1 : C (1048576 * k + 330223) = 3145728 * k + 990670 := by
    unfold C
    simp [show (1048576 * k + 330223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 990670) = 1572864 * k + 495335 := by
    unfold C
    simp [show (3145728 * k + 990670) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 495335) = 4718592 * k + 1486006 := by
    unfold C
    simp [show (1572864 * k + 495335) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1486006) = 2359296 * k + 743003 := by
    unfold C
    simp [show (4718592 * k + 1486006) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 743003) = 7077888 * k + 2229010 := by
    unfold C
    simp [show (2359296 * k + 743003) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2229010) = 3538944 * k + 1114505 := by
    unfold C
    simp [show (7077888 * k + 2229010) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1114505) = 10616832 * k + 3343516 := by
    unfold C
    simp [show (3538944 * k + 1114505) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3343516) = 5308416 * k + 1671758 := by
    unfold C
    simp [show (10616832 * k + 3343516) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1671758) = 2654208 * k + 835879 := by
    unfold C
    simp [show (5308416 * k + 1671758) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 835879) = 7962624 * k + 2507638 := by
    unfold C
    simp [show (2654208 * k + 835879) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2507638) = 3981312 * k + 1253819 := by
    unfold C
    simp [show (7962624 * k + 2507638) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1253819) = 11943936 * k + 3761458 := by
    unfold C
    simp [show (3981312 * k + 1253819) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3761458) = 5971968 * k + 1880729 := by
    unfold C
    simp [show (11943936 * k + 3761458) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1880729) = 17915904 * k + 5642188 := by
    unfold C
    simp [show (5971968 * k + 1880729) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5642188) = 8957952 * k + 2821094 := by
    unfold C
    simp [show (17915904 * k + 5642188) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2821094) = 4478976 * k + 1410547 := by
    unfold C
    simp [show (8957952 * k + 2821094) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1410547) = 13436928 * k + 4231642 := by
    unfold C
    simp [show (4478976 * k + 1410547) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4231642) = 6718464 * k + 2115821 := by
    unfold C
    simp [show (13436928 * k + 4231642) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2115821) = 20155392 * k + 6347464 := by
    unfold C
    simp [show (6718464 * k + 2115821) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 6347464) = 10077696 * k + 3173732 := by
    unfold C
    simp [show (20155392 * k + 6347464) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3173732) = 5038848 * k + 1586866 := by
    unfold C
    simp [show (10077696 * k + 3173732) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1586866) = 2519424 * k + 793433 := by
    unfold C
    simp [show (5038848 * k + 1586866) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 793433) = 7558272 * k + 2380300 := by
    unfold C
    simp [show (2519424 * k + 793433) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2380300) = 3779136 * k + 1190150 := by
    unfold C
    simp [show (7558272 * k + 2380300) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1190150) = 1889568 * k + 595075 := by
    unfold C
    simp [show (3779136 * k + 1190150) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 595075) = 5668704 * k + 1785226 := by
    unfold C
    simp [show (1889568 * k + 595075) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1785226) = 2834352 * k + 892613 := by
    unfold C
    simp [show (5668704 * k + 1785226) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 892613) = 8503056 * k + 2677840 := by
    unfold C
    simp [show (2834352 * k + 892613) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2677840) = 4251528 * k + 1338920 := by
    unfold C
    simp [show (8503056 * k + 2677840) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1338920) = 2125764 * k + 669460 := by
    unfold C
    simp [show (4251528 * k + 1338920) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 669460) = 1062882 * k + 334730 := by
    unfold C
    simp [show (2125764 * k + 669460) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 334730) = 531441 * k + 167365 := by
    unfold C
    simp [show (1062882 * k + 334730) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 330223) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 330223)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_331803 : ∀ k : Nat,
    iterate (1048576 * k + 331803) 32 = 531441 * k + 168166 ∧
      531441 * k + 168166 < 1048576 * k + 331803 := by
  intro k
  have h1 : C (1048576 * k + 331803) = 3145728 * k + 995410 := by
    unfold C
    simp [show (1048576 * k + 331803) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 995410) = 1572864 * k + 497705 := by
    unfold C
    simp [show (3145728 * k + 995410) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 497705) = 4718592 * k + 1493116 := by
    unfold C
    simp [show (1572864 * k + 497705) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1493116) = 2359296 * k + 746558 := by
    unfold C
    simp [show (4718592 * k + 1493116) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 746558) = 1179648 * k + 373279 := by
    unfold C
    simp [show (2359296 * k + 746558) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 373279) = 3538944 * k + 1119838 := by
    unfold C
    simp [show (1179648 * k + 373279) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1119838) = 1769472 * k + 559919 := by
    unfold C
    simp [show (3538944 * k + 1119838) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 559919) = 5308416 * k + 1679758 := by
    unfold C
    simp [show (1769472 * k + 559919) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1679758) = 2654208 * k + 839879 := by
    unfold C
    simp [show (5308416 * k + 1679758) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 839879) = 7962624 * k + 2519638 := by
    unfold C
    simp [show (2654208 * k + 839879) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2519638) = 3981312 * k + 1259819 := by
    unfold C
    simp [show (7962624 * k + 2519638) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1259819) = 11943936 * k + 3779458 := by
    unfold C
    simp [show (3981312 * k + 1259819) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3779458) = 5971968 * k + 1889729 := by
    unfold C
    simp [show (11943936 * k + 3779458) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1889729) = 17915904 * k + 5669188 := by
    unfold C
    simp [show (5971968 * k + 1889729) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5669188) = 8957952 * k + 2834594 := by
    unfold C
    simp [show (17915904 * k + 5669188) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2834594) = 4478976 * k + 1417297 := by
    unfold C
    simp [show (8957952 * k + 2834594) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1417297) = 13436928 * k + 4251892 := by
    unfold C
    simp [show (4478976 * k + 1417297) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4251892) = 6718464 * k + 2125946 := by
    unfold C
    simp [show (13436928 * k + 4251892) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2125946) = 3359232 * k + 1062973 := by
    unfold C
    simp [show (6718464 * k + 2125946) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1062973) = 10077696 * k + 3188920 := by
    unfold C
    simp [show (3359232 * k + 1062973) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3188920) = 5038848 * k + 1594460 := by
    unfold C
    simp [show (10077696 * k + 3188920) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1594460) = 2519424 * k + 797230 := by
    unfold C
    simp [show (5038848 * k + 1594460) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 797230) = 1259712 * k + 398615 := by
    unfold C
    simp [show (2519424 * k + 797230) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 398615) = 3779136 * k + 1195846 := by
    unfold C
    simp [show (1259712 * k + 398615) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1195846) = 1889568 * k + 597923 := by
    unfold C
    simp [show (3779136 * k + 1195846) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 597923) = 5668704 * k + 1793770 := by
    unfold C
    simp [show (1889568 * k + 597923) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1793770) = 2834352 * k + 896885 := by
    unfold C
    simp [show (5668704 * k + 1793770) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 896885) = 8503056 * k + 2690656 := by
    unfold C
    simp [show (2834352 * k + 896885) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2690656) = 4251528 * k + 1345328 := by
    unfold C
    simp [show (8503056 * k + 2690656) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1345328) = 2125764 * k + 672664 := by
    unfold C
    simp [show (4251528 * k + 1345328) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 672664) = 1062882 * k + 336332 := by
    unfold C
    simp [show (2125764 * k + 672664) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 336332) = 531441 * k + 168166 := by
    unfold C
    simp [show (1062882 * k + 336332) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 331803) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 331803)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_332379 : ∀ k : Nat,
    iterate (1048576 * k + 332379) 32 = 531441 * k + 168458 ∧
      531441 * k + 168458 < 1048576 * k + 332379 := by
  intro k
  have h1 : C (1048576 * k + 332379) = 3145728 * k + 997138 := by
    unfold C
    simp [show (1048576 * k + 332379) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 997138) = 1572864 * k + 498569 := by
    unfold C
    simp [show (3145728 * k + 997138) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 498569) = 4718592 * k + 1495708 := by
    unfold C
    simp [show (1572864 * k + 498569) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1495708) = 2359296 * k + 747854 := by
    unfold C
    simp [show (4718592 * k + 1495708) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 747854) = 1179648 * k + 373927 := by
    unfold C
    simp [show (2359296 * k + 747854) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 373927) = 3538944 * k + 1121782 := by
    unfold C
    simp [show (1179648 * k + 373927) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1121782) = 1769472 * k + 560891 := by
    unfold C
    simp [show (3538944 * k + 1121782) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 560891) = 5308416 * k + 1682674 := by
    unfold C
    simp [show (1769472 * k + 560891) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1682674) = 2654208 * k + 841337 := by
    unfold C
    simp [show (5308416 * k + 1682674) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 841337) = 7962624 * k + 2524012 := by
    unfold C
    simp [show (2654208 * k + 841337) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2524012) = 3981312 * k + 1262006 := by
    unfold C
    simp [show (7962624 * k + 2524012) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1262006) = 1990656 * k + 631003 := by
    unfold C
    simp [show (3981312 * k + 1262006) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 631003) = 5971968 * k + 1893010 := by
    unfold C
    simp [show (1990656 * k + 631003) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1893010) = 2985984 * k + 946505 := by
    unfold C
    simp [show (5971968 * k + 1893010) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 946505) = 8957952 * k + 2839516 := by
    unfold C
    simp [show (2985984 * k + 946505) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2839516) = 4478976 * k + 1419758 := by
    unfold C
    simp [show (8957952 * k + 2839516) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1419758) = 2239488 * k + 709879 := by
    unfold C
    simp [show (4478976 * k + 1419758) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 709879) = 6718464 * k + 2129638 := by
    unfold C
    simp [show (2239488 * k + 709879) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2129638) = 3359232 * k + 1064819 := by
    unfold C
    simp [show (6718464 * k + 2129638) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1064819) = 10077696 * k + 3194458 := by
    unfold C
    simp [show (3359232 * k + 1064819) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3194458) = 5038848 * k + 1597229 := by
    unfold C
    simp [show (10077696 * k + 3194458) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1597229) = 15116544 * k + 4791688 := by
    unfold C
    simp [show (5038848 * k + 1597229) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4791688) = 7558272 * k + 2395844 := by
    unfold C
    simp [show (15116544 * k + 4791688) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2395844) = 3779136 * k + 1197922 := by
    unfold C
    simp [show (7558272 * k + 2395844) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1197922) = 1889568 * k + 598961 := by
    unfold C
    simp [show (3779136 * k + 1197922) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 598961) = 5668704 * k + 1796884 := by
    unfold C
    simp [show (1889568 * k + 598961) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1796884) = 2834352 * k + 898442 := by
    unfold C
    simp [show (5668704 * k + 1796884) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 898442) = 1417176 * k + 449221 := by
    unfold C
    simp [show (2834352 * k + 898442) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 449221) = 4251528 * k + 1347664 := by
    unfold C
    simp [show (1417176 * k + 449221) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1347664) = 2125764 * k + 673832 := by
    unfold C
    simp [show (4251528 * k + 1347664) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 673832) = 1062882 * k + 336916 := by
    unfold C
    simp [show (2125764 * k + 673832) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 336916) = 531441 * k + 168458 := by
    unfold C
    simp [show (1062882 * k + 336916) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 332379) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 332379)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_332735 : ∀ k : Nat,
    iterate (1048576 * k + 332735) 32 = 531441 * k + 168638 ∧
      531441 * k + 168638 < 1048576 * k + 332735 := by
  intro k
  have h1 : C (1048576 * k + 332735) = 3145728 * k + 998206 := by
    unfold C
    simp [show (1048576 * k + 332735) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 998206) = 1572864 * k + 499103 := by
    unfold C
    simp [show (3145728 * k + 998206) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 499103) = 4718592 * k + 1497310 := by
    unfold C
    simp [show (1572864 * k + 499103) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1497310) = 2359296 * k + 748655 := by
    unfold C
    simp [show (4718592 * k + 1497310) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 748655) = 7077888 * k + 2245966 := by
    unfold C
    simp [show (2359296 * k + 748655) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2245966) = 3538944 * k + 1122983 := by
    unfold C
    simp [show (7077888 * k + 2245966) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1122983) = 10616832 * k + 3368950 := by
    unfold C
    simp [show (3538944 * k + 1122983) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3368950) = 5308416 * k + 1684475 := by
    unfold C
    simp [show (10616832 * k + 3368950) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1684475) = 15925248 * k + 5053426 := by
    unfold C
    simp [show (5308416 * k + 1684475) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5053426) = 7962624 * k + 2526713 := by
    unfold C
    simp [show (15925248 * k + 5053426) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2526713) = 23887872 * k + 7580140 := by
    unfold C
    simp [show (7962624 * k + 2526713) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 7580140) = 11943936 * k + 3790070 := by
    unfold C
    simp [show (23887872 * k + 7580140) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3790070) = 5971968 * k + 1895035 := by
    unfold C
    simp [show (11943936 * k + 3790070) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1895035) = 17915904 * k + 5685106 := by
    unfold C
    simp [show (5971968 * k + 1895035) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5685106) = 8957952 * k + 2842553 := by
    unfold C
    simp [show (17915904 * k + 5685106) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2842553) = 26873856 * k + 8527660 := by
    unfold C
    simp [show (8957952 * k + 2842553) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 8527660) = 13436928 * k + 4263830 := by
    unfold C
    simp [show (26873856 * k + 8527660) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4263830) = 6718464 * k + 2131915 := by
    unfold C
    simp [show (13436928 * k + 4263830) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2131915) = 20155392 * k + 6395746 := by
    unfold C
    simp [show (6718464 * k + 2131915) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 6395746) = 10077696 * k + 3197873 := by
    unfold C
    simp [show (20155392 * k + 6395746) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3197873) = 30233088 * k + 9593620 := by
    unfold C
    simp [show (10077696 * k + 3197873) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 9593620) = 15116544 * k + 4796810 := by
    unfold C
    simp [show (30233088 * k + 9593620) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4796810) = 7558272 * k + 2398405 := by
    unfold C
    simp [show (15116544 * k + 4796810) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2398405) = 22674816 * k + 7195216 := by
    unfold C
    simp [show (7558272 * k + 2398405) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 7195216) = 11337408 * k + 3597608 := by
    unfold C
    simp [show (22674816 * k + 7195216) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3597608) = 5668704 * k + 1798804 := by
    unfold C
    simp [show (11337408 * k + 3597608) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1798804) = 2834352 * k + 899402 := by
    unfold C
    simp [show (5668704 * k + 1798804) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 899402) = 1417176 * k + 449701 := by
    unfold C
    simp [show (2834352 * k + 899402) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 449701) = 4251528 * k + 1349104 := by
    unfold C
    simp [show (1417176 * k + 449701) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1349104) = 2125764 * k + 674552 := by
    unfold C
    simp [show (4251528 * k + 1349104) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 674552) = 1062882 * k + 337276 := by
    unfold C
    simp [show (2125764 * k + 674552) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 337276) = 531441 * k + 168638 := by
    unfold C
    simp [show (1062882 * k + 337276) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 332735) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 332735)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_333871 : ∀ k : Nat,
    iterate (1048576 * k + 333871) 32 = 531441 * k + 169214 ∧
      531441 * k + 169214 < 1048576 * k + 333871 := by
  intro k
  have h1 : C (1048576 * k + 333871) = 3145728 * k + 1001614 := by
    unfold C
    simp [show (1048576 * k + 333871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1001614) = 1572864 * k + 500807 := by
    unfold C
    simp [show (3145728 * k + 1001614) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 500807) = 4718592 * k + 1502422 := by
    unfold C
    simp [show (1572864 * k + 500807) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1502422) = 2359296 * k + 751211 := by
    unfold C
    simp [show (4718592 * k + 1502422) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 751211) = 7077888 * k + 2253634 := by
    unfold C
    simp [show (2359296 * k + 751211) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2253634) = 3538944 * k + 1126817 := by
    unfold C
    simp [show (7077888 * k + 2253634) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1126817) = 10616832 * k + 3380452 := by
    unfold C
    simp [show (3538944 * k + 1126817) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3380452) = 5308416 * k + 1690226 := by
    unfold C
    simp [show (10616832 * k + 3380452) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1690226) = 2654208 * k + 845113 := by
    unfold C
    simp [show (5308416 * k + 1690226) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 845113) = 7962624 * k + 2535340 := by
    unfold C
    simp [show (2654208 * k + 845113) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2535340) = 3981312 * k + 1267670 := by
    unfold C
    simp [show (7962624 * k + 2535340) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1267670) = 1990656 * k + 633835 := by
    unfold C
    simp [show (3981312 * k + 1267670) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 633835) = 5971968 * k + 1901506 := by
    unfold C
    simp [show (1990656 * k + 633835) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1901506) = 2985984 * k + 950753 := by
    unfold C
    simp [show (5971968 * k + 1901506) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 950753) = 8957952 * k + 2852260 := by
    unfold C
    simp [show (2985984 * k + 950753) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2852260) = 4478976 * k + 1426130 := by
    unfold C
    simp [show (8957952 * k + 2852260) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1426130) = 2239488 * k + 713065 := by
    unfold C
    simp [show (4478976 * k + 1426130) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 713065) = 6718464 * k + 2139196 := by
    unfold C
    simp [show (2239488 * k + 713065) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2139196) = 3359232 * k + 1069598 := by
    unfold C
    simp [show (6718464 * k + 2139196) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1069598) = 1679616 * k + 534799 := by
    unfold C
    simp [show (3359232 * k + 1069598) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 534799) = 5038848 * k + 1604398 := by
    unfold C
    simp [show (1679616 * k + 534799) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1604398) = 2519424 * k + 802199 := by
    unfold C
    simp [show (5038848 * k + 1604398) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 802199) = 7558272 * k + 2406598 := by
    unfold C
    simp [show (2519424 * k + 802199) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2406598) = 3779136 * k + 1203299 := by
    unfold C
    simp [show (7558272 * k + 2406598) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1203299) = 11337408 * k + 3609898 := by
    unfold C
    simp [show (3779136 * k + 1203299) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3609898) = 5668704 * k + 1804949 := by
    unfold C
    simp [show (11337408 * k + 3609898) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1804949) = 17006112 * k + 5414848 := by
    unfold C
    simp [show (5668704 * k + 1804949) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 5414848) = 8503056 * k + 2707424 := by
    unfold C
    simp [show (17006112 * k + 5414848) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2707424) = 4251528 * k + 1353712 := by
    unfold C
    simp [show (8503056 * k + 2707424) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1353712) = 2125764 * k + 676856 := by
    unfold C
    simp [show (4251528 * k + 1353712) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 676856) = 1062882 * k + 338428 := by
    unfold C
    simp [show (2125764 * k + 676856) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 338428) = 531441 * k + 169214 := by
    unfold C
    simp [show (1062882 * k + 338428) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 333871) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 333871)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_334623 : ∀ k : Nat,
    iterate (1048576 * k + 334623) 32 = 531441 * k + 169595 ∧
      531441 * k + 169595 < 1048576 * k + 334623 := by
  intro k
  have h1 : C (1048576 * k + 334623) = 3145728 * k + 1003870 := by
    unfold C
    simp [show (1048576 * k + 334623) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1003870) = 1572864 * k + 501935 := by
    unfold C
    simp [show (3145728 * k + 1003870) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 501935) = 4718592 * k + 1505806 := by
    unfold C
    simp [show (1572864 * k + 501935) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1505806) = 2359296 * k + 752903 := by
    unfold C
    simp [show (4718592 * k + 1505806) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 752903) = 7077888 * k + 2258710 := by
    unfold C
    simp [show (2359296 * k + 752903) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2258710) = 3538944 * k + 1129355 := by
    unfold C
    simp [show (7077888 * k + 2258710) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1129355) = 10616832 * k + 3388066 := by
    unfold C
    simp [show (3538944 * k + 1129355) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3388066) = 5308416 * k + 1694033 := by
    unfold C
    simp [show (10616832 * k + 3388066) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1694033) = 15925248 * k + 5082100 := by
    unfold C
    simp [show (5308416 * k + 1694033) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5082100) = 7962624 * k + 2541050 := by
    unfold C
    simp [show (15925248 * k + 5082100) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2541050) = 3981312 * k + 1270525 := by
    unfold C
    simp [show (7962624 * k + 2541050) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1270525) = 11943936 * k + 3811576 := by
    unfold C
    simp [show (3981312 * k + 1270525) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3811576) = 5971968 * k + 1905788 := by
    unfold C
    simp [show (11943936 * k + 3811576) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1905788) = 2985984 * k + 952894 := by
    unfold C
    simp [show (5971968 * k + 1905788) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 952894) = 1492992 * k + 476447 := by
    unfold C
    simp [show (2985984 * k + 952894) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 476447) = 4478976 * k + 1429342 := by
    unfold C
    simp [show (1492992 * k + 476447) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1429342) = 2239488 * k + 714671 := by
    unfold C
    simp [show (4478976 * k + 1429342) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 714671) = 6718464 * k + 2144014 := by
    unfold C
    simp [show (2239488 * k + 714671) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2144014) = 3359232 * k + 1072007 := by
    unfold C
    simp [show (6718464 * k + 2144014) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1072007) = 10077696 * k + 3216022 := by
    unfold C
    simp [show (3359232 * k + 1072007) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3216022) = 5038848 * k + 1608011 := by
    unfold C
    simp [show (10077696 * k + 3216022) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1608011) = 15116544 * k + 4824034 := by
    unfold C
    simp [show (5038848 * k + 1608011) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4824034) = 7558272 * k + 2412017 := by
    unfold C
    simp [show (15116544 * k + 4824034) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2412017) = 22674816 * k + 7236052 := by
    unfold C
    simp [show (7558272 * k + 2412017) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 7236052) = 11337408 * k + 3618026 := by
    unfold C
    simp [show (22674816 * k + 7236052) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3618026) = 5668704 * k + 1809013 := by
    unfold C
    simp [show (11337408 * k + 3618026) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1809013) = 17006112 * k + 5427040 := by
    unfold C
    simp [show (5668704 * k + 1809013) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 5427040) = 8503056 * k + 2713520 := by
    unfold C
    simp [show (17006112 * k + 5427040) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2713520) = 4251528 * k + 1356760 := by
    unfold C
    simp [show (8503056 * k + 2713520) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1356760) = 2125764 * k + 678380 := by
    unfold C
    simp [show (4251528 * k + 1356760) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 678380) = 1062882 * k + 339190 := by
    unfold C
    simp [show (2125764 * k + 678380) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 339190) = 531441 * k + 169595 := by
    unfold C
    simp [show (1062882 * k + 339190) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 334623) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 334623)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard043
