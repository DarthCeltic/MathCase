import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard053

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_416507 : ∀ k : Nat,
    iterate (1048576 * k + 416507) 32 = 531441 * k + 211096 ∧
      531441 * k + 211096 < 1048576 * k + 416507 := by
  intro k
  have h1 : C (1048576 * k + 416507) = 3145728 * k + 1249522 := by
    unfold C
    simp [show (1048576 * k + 416507) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1249522) = 1572864 * k + 624761 := by
    unfold C
    simp [show (3145728 * k + 1249522) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 624761) = 4718592 * k + 1874284 := by
    unfold C
    simp [show (1572864 * k + 624761) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1874284) = 2359296 * k + 937142 := by
    unfold C
    simp [show (4718592 * k + 1874284) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 937142) = 1179648 * k + 468571 := by
    unfold C
    simp [show (2359296 * k + 937142) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 468571) = 3538944 * k + 1405714 := by
    unfold C
    simp [show (1179648 * k + 468571) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1405714) = 1769472 * k + 702857 := by
    unfold C
    simp [show (3538944 * k + 1405714) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 702857) = 5308416 * k + 2108572 := by
    unfold C
    simp [show (1769472 * k + 702857) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2108572) = 2654208 * k + 1054286 := by
    unfold C
    simp [show (5308416 * k + 2108572) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1054286) = 1327104 * k + 527143 := by
    unfold C
    simp [show (2654208 * k + 1054286) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 527143) = 3981312 * k + 1581430 := by
    unfold C
    simp [show (1327104 * k + 527143) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1581430) = 1990656 * k + 790715 := by
    unfold C
    simp [show (3981312 * k + 1581430) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 790715) = 5971968 * k + 2372146 := by
    unfold C
    simp [show (1990656 * k + 790715) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2372146) = 2985984 * k + 1186073 := by
    unfold C
    simp [show (5971968 * k + 2372146) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1186073) = 8957952 * k + 3558220 := by
    unfold C
    simp [show (2985984 * k + 1186073) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3558220) = 4478976 * k + 1779110 := by
    unfold C
    simp [show (8957952 * k + 3558220) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1779110) = 2239488 * k + 889555 := by
    unfold C
    simp [show (4478976 * k + 1779110) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 889555) = 6718464 * k + 2668666 := by
    unfold C
    simp [show (2239488 * k + 889555) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2668666) = 3359232 * k + 1334333 := by
    unfold C
    simp [show (6718464 * k + 2668666) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1334333) = 10077696 * k + 4003000 := by
    unfold C
    simp [show (3359232 * k + 1334333) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4003000) = 5038848 * k + 2001500 := by
    unfold C
    simp [show (10077696 * k + 4003000) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2001500) = 2519424 * k + 1000750 := by
    unfold C
    simp [show (5038848 * k + 2001500) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1000750) = 1259712 * k + 500375 := by
    unfold C
    simp [show (2519424 * k + 1000750) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 500375) = 3779136 * k + 1501126 := by
    unfold C
    simp [show (1259712 * k + 500375) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1501126) = 1889568 * k + 750563 := by
    unfold C
    simp [show (3779136 * k + 1501126) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 750563) = 5668704 * k + 2251690 := by
    unfold C
    simp [show (1889568 * k + 750563) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2251690) = 2834352 * k + 1125845 := by
    unfold C
    simp [show (5668704 * k + 2251690) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1125845) = 8503056 * k + 3377536 := by
    unfold C
    simp [show (2834352 * k + 1125845) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3377536) = 4251528 * k + 1688768 := by
    unfold C
    simp [show (8503056 * k + 3377536) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1688768) = 2125764 * k + 844384 := by
    unfold C
    simp [show (4251528 * k + 1688768) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 844384) = 1062882 * k + 422192 := by
    unfold C
    simp [show (2125764 * k + 844384) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 422192) = 531441 * k + 211096 := by
    unfold C
    simp [show (1062882 * k + 422192) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 416507) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 416507)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_416763 : ∀ k : Nat,
    iterate (1048576 * k + 416763) 32 = 531441 * k + 211226 ∧
      531441 * k + 211226 < 1048576 * k + 416763 := by
  intro k
  have h1 : C (1048576 * k + 416763) = 3145728 * k + 1250290 := by
    unfold C
    simp [show (1048576 * k + 416763) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1250290) = 1572864 * k + 625145 := by
    unfold C
    simp [show (3145728 * k + 1250290) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 625145) = 4718592 * k + 1875436 := by
    unfold C
    simp [show (1572864 * k + 625145) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1875436) = 2359296 * k + 937718 := by
    unfold C
    simp [show (4718592 * k + 1875436) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 937718) = 1179648 * k + 468859 := by
    unfold C
    simp [show (2359296 * k + 937718) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 468859) = 3538944 * k + 1406578 := by
    unfold C
    simp [show (1179648 * k + 468859) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1406578) = 1769472 * k + 703289 := by
    unfold C
    simp [show (3538944 * k + 1406578) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 703289) = 5308416 * k + 2109868 := by
    unfold C
    simp [show (1769472 * k + 703289) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2109868) = 2654208 * k + 1054934 := by
    unfold C
    simp [show (5308416 * k + 2109868) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1054934) = 1327104 * k + 527467 := by
    unfold C
    simp [show (2654208 * k + 1054934) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 527467) = 3981312 * k + 1582402 := by
    unfold C
    simp [show (1327104 * k + 527467) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1582402) = 1990656 * k + 791201 := by
    unfold C
    simp [show (3981312 * k + 1582402) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 791201) = 5971968 * k + 2373604 := by
    unfold C
    simp [show (1990656 * k + 791201) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2373604) = 2985984 * k + 1186802 := by
    unfold C
    simp [show (5971968 * k + 2373604) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1186802) = 1492992 * k + 593401 := by
    unfold C
    simp [show (2985984 * k + 1186802) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 593401) = 4478976 * k + 1780204 := by
    unfold C
    simp [show (1492992 * k + 593401) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1780204) = 2239488 * k + 890102 := by
    unfold C
    simp [show (4478976 * k + 1780204) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 890102) = 1119744 * k + 445051 := by
    unfold C
    simp [show (2239488 * k + 890102) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 445051) = 3359232 * k + 1335154 := by
    unfold C
    simp [show (1119744 * k + 445051) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1335154) = 1679616 * k + 667577 := by
    unfold C
    simp [show (3359232 * k + 1335154) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 667577) = 5038848 * k + 2002732 := by
    unfold C
    simp [show (1679616 * k + 667577) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2002732) = 2519424 * k + 1001366 := by
    unfold C
    simp [show (5038848 * k + 2002732) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1001366) = 1259712 * k + 500683 := by
    unfold C
    simp [show (2519424 * k + 1001366) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 500683) = 3779136 * k + 1502050 := by
    unfold C
    simp [show (1259712 * k + 500683) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1502050) = 1889568 * k + 751025 := by
    unfold C
    simp [show (3779136 * k + 1502050) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 751025) = 5668704 * k + 2253076 := by
    unfold C
    simp [show (1889568 * k + 751025) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2253076) = 2834352 * k + 1126538 := by
    unfold C
    simp [show (5668704 * k + 2253076) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1126538) = 1417176 * k + 563269 := by
    unfold C
    simp [show (2834352 * k + 1126538) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 563269) = 4251528 * k + 1689808 := by
    unfold C
    simp [show (1417176 * k + 563269) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1689808) = 2125764 * k + 844904 := by
    unfold C
    simp [show (4251528 * k + 1689808) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 844904) = 1062882 * k + 422452 := by
    unfold C
    simp [show (2125764 * k + 844904) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 422452) = 531441 * k + 211226 := by
    unfold C
    simp [show (1062882 * k + 422452) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 416763) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 416763)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_416871 : ∀ k : Nat,
    iterate (1048576 * k + 416871) 32 = 531441 * k + 211280 ∧
      531441 * k + 211280 < 1048576 * k + 416871 := by
  intro k
  have h1 : C (1048576 * k + 416871) = 3145728 * k + 1250614 := by
    unfold C
    simp [show (1048576 * k + 416871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1250614) = 1572864 * k + 625307 := by
    unfold C
    simp [show (3145728 * k + 1250614) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 625307) = 4718592 * k + 1875922 := by
    unfold C
    simp [show (1572864 * k + 625307) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1875922) = 2359296 * k + 937961 := by
    unfold C
    simp [show (4718592 * k + 1875922) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 937961) = 7077888 * k + 2813884 := by
    unfold C
    simp [show (2359296 * k + 937961) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2813884) = 3538944 * k + 1406942 := by
    unfold C
    simp [show (7077888 * k + 2813884) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1406942) = 1769472 * k + 703471 := by
    unfold C
    simp [show (3538944 * k + 1406942) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 703471) = 5308416 * k + 2110414 := by
    unfold C
    simp [show (1769472 * k + 703471) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2110414) = 2654208 * k + 1055207 := by
    unfold C
    simp [show (5308416 * k + 2110414) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1055207) = 7962624 * k + 3165622 := by
    unfold C
    simp [show (2654208 * k + 1055207) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3165622) = 3981312 * k + 1582811 := by
    unfold C
    simp [show (7962624 * k + 3165622) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1582811) = 11943936 * k + 4748434 := by
    unfold C
    simp [show (3981312 * k + 1582811) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4748434) = 5971968 * k + 2374217 := by
    unfold C
    simp [show (11943936 * k + 4748434) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2374217) = 17915904 * k + 7122652 := by
    unfold C
    simp [show (5971968 * k + 2374217) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7122652) = 8957952 * k + 3561326 := by
    unfold C
    simp [show (17915904 * k + 7122652) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3561326) = 4478976 * k + 1780663 := by
    unfold C
    simp [show (8957952 * k + 3561326) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1780663) = 13436928 * k + 5341990 := by
    unfold C
    simp [show (4478976 * k + 1780663) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5341990) = 6718464 * k + 2670995 := by
    unfold C
    simp [show (13436928 * k + 5341990) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2670995) = 20155392 * k + 8012986 := by
    unfold C
    simp [show (6718464 * k + 2670995) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8012986) = 10077696 * k + 4006493 := by
    unfold C
    simp [show (20155392 * k + 8012986) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4006493) = 30233088 * k + 12019480 := by
    unfold C
    simp [show (10077696 * k + 4006493) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 12019480) = 15116544 * k + 6009740 := by
    unfold C
    simp [show (30233088 * k + 12019480) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6009740) = 7558272 * k + 3004870 := by
    unfold C
    simp [show (15116544 * k + 6009740) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3004870) = 3779136 * k + 1502435 := by
    unfold C
    simp [show (7558272 * k + 3004870) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1502435) = 11337408 * k + 4507306 := by
    unfold C
    simp [show (3779136 * k + 1502435) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4507306) = 5668704 * k + 2253653 := by
    unfold C
    simp [show (11337408 * k + 4507306) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2253653) = 17006112 * k + 6760960 := by
    unfold C
    simp [show (5668704 * k + 2253653) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6760960) = 8503056 * k + 3380480 := by
    unfold C
    simp [show (17006112 * k + 6760960) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3380480) = 4251528 * k + 1690240 := by
    unfold C
    simp [show (8503056 * k + 3380480) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1690240) = 2125764 * k + 845120 := by
    unfold C
    simp [show (4251528 * k + 1690240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 845120) = 1062882 * k + 422560 := by
    unfold C
    simp [show (2125764 * k + 845120) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 422560) = 531441 * k + 211280 := by
    unfold C
    simp [show (1062882 * k + 422560) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 416871) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 416871)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_416895 : ∀ k : Nat,
    iterate (1048576 * k + 416895) 32 = 531441 * k + 211292 ∧
      531441 * k + 211292 < 1048576 * k + 416895 := by
  intro k
  have h1 : C (1048576 * k + 416895) = 3145728 * k + 1250686 := by
    unfold C
    simp [show (1048576 * k + 416895) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1250686) = 1572864 * k + 625343 := by
    unfold C
    simp [show (3145728 * k + 1250686) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 625343) = 4718592 * k + 1876030 := by
    unfold C
    simp [show (1572864 * k + 625343) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1876030) = 2359296 * k + 938015 := by
    unfold C
    simp [show (4718592 * k + 1876030) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 938015) = 7077888 * k + 2814046 := by
    unfold C
    simp [show (2359296 * k + 938015) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2814046) = 3538944 * k + 1407023 := by
    unfold C
    simp [show (7077888 * k + 2814046) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1407023) = 10616832 * k + 4221070 := by
    unfold C
    simp [show (3538944 * k + 1407023) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4221070) = 5308416 * k + 2110535 := by
    unfold C
    simp [show (10616832 * k + 4221070) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2110535) = 15925248 * k + 6331606 := by
    unfold C
    simp [show (5308416 * k + 2110535) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6331606) = 7962624 * k + 3165803 := by
    unfold C
    simp [show (15925248 * k + 6331606) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3165803) = 23887872 * k + 9497410 := by
    unfold C
    simp [show (7962624 * k + 3165803) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9497410) = 11943936 * k + 4748705 := by
    unfold C
    simp [show (23887872 * k + 9497410) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4748705) = 35831808 * k + 14246116 := by
    unfold C
    simp [show (11943936 * k + 4748705) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 14246116) = 17915904 * k + 7123058 := by
    unfold C
    simp [show (35831808 * k + 14246116) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 7123058) = 8957952 * k + 3561529 := by
    unfold C
    simp [show (17915904 * k + 7123058) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3561529) = 26873856 * k + 10684588 := by
    unfold C
    simp [show (8957952 * k + 3561529) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10684588) = 13436928 * k + 5342294 := by
    unfold C
    simp [show (26873856 * k + 10684588) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5342294) = 6718464 * k + 2671147 := by
    unfold C
    simp [show (13436928 * k + 5342294) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2671147) = 20155392 * k + 8013442 := by
    unfold C
    simp [show (6718464 * k + 2671147) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8013442) = 10077696 * k + 4006721 := by
    unfold C
    simp [show (20155392 * k + 8013442) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4006721) = 30233088 * k + 12020164 := by
    unfold C
    simp [show (10077696 * k + 4006721) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 12020164) = 15116544 * k + 6010082 := by
    unfold C
    simp [show (30233088 * k + 12020164) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6010082) = 7558272 * k + 3005041 := by
    unfold C
    simp [show (15116544 * k + 6010082) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3005041) = 22674816 * k + 9015124 := by
    unfold C
    simp [show (7558272 * k + 3005041) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 9015124) = 11337408 * k + 4507562 := by
    unfold C
    simp [show (22674816 * k + 9015124) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4507562) = 5668704 * k + 2253781 := by
    unfold C
    simp [show (11337408 * k + 4507562) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2253781) = 17006112 * k + 6761344 := by
    unfold C
    simp [show (5668704 * k + 2253781) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6761344) = 8503056 * k + 3380672 := by
    unfold C
    simp [show (17006112 * k + 6761344) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3380672) = 4251528 * k + 1690336 := by
    unfold C
    simp [show (8503056 * k + 3380672) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1690336) = 2125764 * k + 845168 := by
    unfold C
    simp [show (4251528 * k + 1690336) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 845168) = 1062882 * k + 422584 := by
    unfold C
    simp [show (2125764 * k + 845168) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 422584) = 531441 * k + 211292 := by
    unfold C
    simp [show (1062882 * k + 422584) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 416895) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 416895)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_417531 : ∀ k : Nat,
    iterate (1048576 * k + 417531) 32 = 531441 * k + 211615 ∧
      531441 * k + 211615 < 1048576 * k + 417531 := by
  intro k
  have h1 : C (1048576 * k + 417531) = 3145728 * k + 1252594 := by
    unfold C
    simp [show (1048576 * k + 417531) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1252594) = 1572864 * k + 626297 := by
    unfold C
    simp [show (3145728 * k + 1252594) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 626297) = 4718592 * k + 1878892 := by
    unfold C
    simp [show (1572864 * k + 626297) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1878892) = 2359296 * k + 939446 := by
    unfold C
    simp [show (4718592 * k + 1878892) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 939446) = 1179648 * k + 469723 := by
    unfold C
    simp [show (2359296 * k + 939446) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 469723) = 3538944 * k + 1409170 := by
    unfold C
    simp [show (1179648 * k + 469723) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1409170) = 1769472 * k + 704585 := by
    unfold C
    simp [show (3538944 * k + 1409170) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 704585) = 5308416 * k + 2113756 := by
    unfold C
    simp [show (1769472 * k + 704585) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2113756) = 2654208 * k + 1056878 := by
    unfold C
    simp [show (5308416 * k + 2113756) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1056878) = 1327104 * k + 528439 := by
    unfold C
    simp [show (2654208 * k + 1056878) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 528439) = 3981312 * k + 1585318 := by
    unfold C
    simp [show (1327104 * k + 528439) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1585318) = 1990656 * k + 792659 := by
    unfold C
    simp [show (3981312 * k + 1585318) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 792659) = 5971968 * k + 2377978 := by
    unfold C
    simp [show (1990656 * k + 792659) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2377978) = 2985984 * k + 1188989 := by
    unfold C
    simp [show (5971968 * k + 2377978) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1188989) = 8957952 * k + 3566968 := by
    unfold C
    simp [show (2985984 * k + 1188989) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3566968) = 4478976 * k + 1783484 := by
    unfold C
    simp [show (8957952 * k + 3566968) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1783484) = 2239488 * k + 891742 := by
    unfold C
    simp [show (4478976 * k + 1783484) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 891742) = 1119744 * k + 445871 := by
    unfold C
    simp [show (2239488 * k + 891742) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 445871) = 3359232 * k + 1337614 := by
    unfold C
    simp [show (1119744 * k + 445871) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1337614) = 1679616 * k + 668807 := by
    unfold C
    simp [show (3359232 * k + 1337614) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 668807) = 5038848 * k + 2006422 := by
    unfold C
    simp [show (1679616 * k + 668807) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2006422) = 2519424 * k + 1003211 := by
    unfold C
    simp [show (5038848 * k + 2006422) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1003211) = 7558272 * k + 3009634 := by
    unfold C
    simp [show (2519424 * k + 1003211) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3009634) = 3779136 * k + 1504817 := by
    unfold C
    simp [show (7558272 * k + 3009634) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1504817) = 11337408 * k + 4514452 := by
    unfold C
    simp [show (3779136 * k + 1504817) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4514452) = 5668704 * k + 2257226 := by
    unfold C
    simp [show (11337408 * k + 4514452) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2257226) = 2834352 * k + 1128613 := by
    unfold C
    simp [show (5668704 * k + 2257226) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1128613) = 8503056 * k + 3385840 := by
    unfold C
    simp [show (2834352 * k + 1128613) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3385840) = 4251528 * k + 1692920 := by
    unfold C
    simp [show (8503056 * k + 3385840) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1692920) = 2125764 * k + 846460 := by
    unfold C
    simp [show (4251528 * k + 1692920) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 846460) = 1062882 * k + 423230 := by
    unfold C
    simp [show (2125764 * k + 846460) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 423230) = 531441 * k + 211615 := by
    unfold C
    simp [show (1062882 * k + 423230) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 417531) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 417531)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_419931 : ∀ k : Nat,
    iterate (1048576 * k + 419931) 32 = 531441 * k + 212831 ∧
      531441 * k + 212831 < 1048576 * k + 419931 := by
  intro k
  have h1 : C (1048576 * k + 419931) = 3145728 * k + 1259794 := by
    unfold C
    simp [show (1048576 * k + 419931) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1259794) = 1572864 * k + 629897 := by
    unfold C
    simp [show (3145728 * k + 1259794) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 629897) = 4718592 * k + 1889692 := by
    unfold C
    simp [show (1572864 * k + 629897) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1889692) = 2359296 * k + 944846 := by
    unfold C
    simp [show (4718592 * k + 1889692) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 944846) = 1179648 * k + 472423 := by
    unfold C
    simp [show (2359296 * k + 944846) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 472423) = 3538944 * k + 1417270 := by
    unfold C
    simp [show (1179648 * k + 472423) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1417270) = 1769472 * k + 708635 := by
    unfold C
    simp [show (3538944 * k + 1417270) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 708635) = 5308416 * k + 2125906 := by
    unfold C
    simp [show (1769472 * k + 708635) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2125906) = 2654208 * k + 1062953 := by
    unfold C
    simp [show (5308416 * k + 2125906) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1062953) = 7962624 * k + 3188860 := by
    unfold C
    simp [show (2654208 * k + 1062953) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3188860) = 3981312 * k + 1594430 := by
    unfold C
    simp [show (7962624 * k + 3188860) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1594430) = 1990656 * k + 797215 := by
    unfold C
    simp [show (3981312 * k + 1594430) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 797215) = 5971968 * k + 2391646 := by
    unfold C
    simp [show (1990656 * k + 797215) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2391646) = 2985984 * k + 1195823 := by
    unfold C
    simp [show (5971968 * k + 2391646) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1195823) = 8957952 * k + 3587470 := by
    unfold C
    simp [show (2985984 * k + 1195823) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3587470) = 4478976 * k + 1793735 := by
    unfold C
    simp [show (8957952 * k + 3587470) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1793735) = 13436928 * k + 5381206 := by
    unfold C
    simp [show (4478976 * k + 1793735) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5381206) = 6718464 * k + 2690603 := by
    unfold C
    simp [show (13436928 * k + 5381206) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2690603) = 20155392 * k + 8071810 := by
    unfold C
    simp [show (6718464 * k + 2690603) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8071810) = 10077696 * k + 4035905 := by
    unfold C
    simp [show (20155392 * k + 8071810) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4035905) = 30233088 * k + 12107716 := by
    unfold C
    simp [show (10077696 * k + 4035905) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 12107716) = 15116544 * k + 6053858 := by
    unfold C
    simp [show (30233088 * k + 12107716) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6053858) = 7558272 * k + 3026929 := by
    unfold C
    simp [show (15116544 * k + 6053858) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3026929) = 22674816 * k + 9080788 := by
    unfold C
    simp [show (7558272 * k + 3026929) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 9080788) = 11337408 * k + 4540394 := by
    unfold C
    simp [show (22674816 * k + 9080788) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4540394) = 5668704 * k + 2270197 := by
    unfold C
    simp [show (11337408 * k + 4540394) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2270197) = 17006112 * k + 6810592 := by
    unfold C
    simp [show (5668704 * k + 2270197) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6810592) = 8503056 * k + 3405296 := by
    unfold C
    simp [show (17006112 * k + 6810592) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3405296) = 4251528 * k + 1702648 := by
    unfold C
    simp [show (8503056 * k + 3405296) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1702648) = 2125764 * k + 851324 := by
    unfold C
    simp [show (4251528 * k + 1702648) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 851324) = 1062882 * k + 425662 := by
    unfold C
    simp [show (2125764 * k + 851324) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 425662) = 531441 * k + 212831 := by
    unfold C
    simp [show (1062882 * k + 425662) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 419931) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 419931)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_419943 : ∀ k : Nat,
    iterate (1048576 * k + 419943) 32 = 531441 * k + 212837 ∧
      531441 * k + 212837 < 1048576 * k + 419943 := by
  intro k
  have h1 : C (1048576 * k + 419943) = 3145728 * k + 1259830 := by
    unfold C
    simp [show (1048576 * k + 419943) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1259830) = 1572864 * k + 629915 := by
    unfold C
    simp [show (3145728 * k + 1259830) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 629915) = 4718592 * k + 1889746 := by
    unfold C
    simp [show (1572864 * k + 629915) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1889746) = 2359296 * k + 944873 := by
    unfold C
    simp [show (4718592 * k + 1889746) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 944873) = 7077888 * k + 2834620 := by
    unfold C
    simp [show (2359296 * k + 944873) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2834620) = 3538944 * k + 1417310 := by
    unfold C
    simp [show (7077888 * k + 2834620) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1417310) = 1769472 * k + 708655 := by
    unfold C
    simp [show (3538944 * k + 1417310) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 708655) = 5308416 * k + 2125966 := by
    unfold C
    simp [show (1769472 * k + 708655) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2125966) = 2654208 * k + 1062983 := by
    unfold C
    simp [show (5308416 * k + 2125966) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1062983) = 7962624 * k + 3188950 := by
    unfold C
    simp [show (2654208 * k + 1062983) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3188950) = 3981312 * k + 1594475 := by
    unfold C
    simp [show (7962624 * k + 3188950) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1594475) = 11943936 * k + 4783426 := by
    unfold C
    simp [show (3981312 * k + 1594475) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4783426) = 5971968 * k + 2391713 := by
    unfold C
    simp [show (11943936 * k + 4783426) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2391713) = 17915904 * k + 7175140 := by
    unfold C
    simp [show (5971968 * k + 2391713) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7175140) = 8957952 * k + 3587570 := by
    unfold C
    simp [show (17915904 * k + 7175140) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3587570) = 4478976 * k + 1793785 := by
    unfold C
    simp [show (8957952 * k + 3587570) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1793785) = 13436928 * k + 5381356 := by
    unfold C
    simp [show (4478976 * k + 1793785) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5381356) = 6718464 * k + 2690678 := by
    unfold C
    simp [show (13436928 * k + 5381356) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2690678) = 3359232 * k + 1345339 := by
    unfold C
    simp [show (6718464 * k + 2690678) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1345339) = 10077696 * k + 4036018 := by
    unfold C
    simp [show (3359232 * k + 1345339) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4036018) = 5038848 * k + 2018009 := by
    unfold C
    simp [show (10077696 * k + 4036018) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2018009) = 15116544 * k + 6054028 := by
    unfold C
    simp [show (5038848 * k + 2018009) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6054028) = 7558272 * k + 3027014 := by
    unfold C
    simp [show (15116544 * k + 6054028) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3027014) = 3779136 * k + 1513507 := by
    unfold C
    simp [show (7558272 * k + 3027014) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1513507) = 11337408 * k + 4540522 := by
    unfold C
    simp [show (3779136 * k + 1513507) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4540522) = 5668704 * k + 2270261 := by
    unfold C
    simp [show (11337408 * k + 4540522) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2270261) = 17006112 * k + 6810784 := by
    unfold C
    simp [show (5668704 * k + 2270261) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6810784) = 8503056 * k + 3405392 := by
    unfold C
    simp [show (17006112 * k + 6810784) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3405392) = 4251528 * k + 1702696 := by
    unfold C
    simp [show (8503056 * k + 3405392) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1702696) = 2125764 * k + 851348 := by
    unfold C
    simp [show (4251528 * k + 1702696) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 851348) = 1062882 * k + 425674 := by
    unfold C
    simp [show (2125764 * k + 851348) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 425674) = 531441 * k + 212837 := by
    unfold C
    simp [show (1062882 * k + 425674) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 419943) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 419943)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_419967 : ∀ k : Nat,
    iterate (1048576 * k + 419967) 32 = 531441 * k + 212849 ∧
      531441 * k + 212849 < 1048576 * k + 419967 := by
  intro k
  have h1 : C (1048576 * k + 419967) = 3145728 * k + 1259902 := by
    unfold C
    simp [show (1048576 * k + 419967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1259902) = 1572864 * k + 629951 := by
    unfold C
    simp [show (3145728 * k + 1259902) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 629951) = 4718592 * k + 1889854 := by
    unfold C
    simp [show (1572864 * k + 629951) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1889854) = 2359296 * k + 944927 := by
    unfold C
    simp [show (4718592 * k + 1889854) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 944927) = 7077888 * k + 2834782 := by
    unfold C
    simp [show (2359296 * k + 944927) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2834782) = 3538944 * k + 1417391 := by
    unfold C
    simp [show (7077888 * k + 2834782) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1417391) = 10616832 * k + 4252174 := by
    unfold C
    simp [show (3538944 * k + 1417391) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4252174) = 5308416 * k + 2126087 := by
    unfold C
    simp [show (10616832 * k + 4252174) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2126087) = 15925248 * k + 6378262 := by
    unfold C
    simp [show (5308416 * k + 2126087) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6378262) = 7962624 * k + 3189131 := by
    unfold C
    simp [show (15925248 * k + 6378262) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3189131) = 23887872 * k + 9567394 := by
    unfold C
    simp [show (7962624 * k + 3189131) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9567394) = 11943936 * k + 4783697 := by
    unfold C
    simp [show (23887872 * k + 9567394) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4783697) = 35831808 * k + 14351092 := by
    unfold C
    simp [show (11943936 * k + 4783697) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 14351092) = 17915904 * k + 7175546 := by
    unfold C
    simp [show (35831808 * k + 14351092) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 7175546) = 8957952 * k + 3587773 := by
    unfold C
    simp [show (17915904 * k + 7175546) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3587773) = 26873856 * k + 10763320 := by
    unfold C
    simp [show (8957952 * k + 3587773) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10763320) = 13436928 * k + 5381660 := by
    unfold C
    simp [show (26873856 * k + 10763320) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5381660) = 6718464 * k + 2690830 := by
    unfold C
    simp [show (13436928 * k + 5381660) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2690830) = 3359232 * k + 1345415 := by
    unfold C
    simp [show (6718464 * k + 2690830) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1345415) = 10077696 * k + 4036246 := by
    unfold C
    simp [show (3359232 * k + 1345415) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4036246) = 5038848 * k + 2018123 := by
    unfold C
    simp [show (10077696 * k + 4036246) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2018123) = 15116544 * k + 6054370 := by
    unfold C
    simp [show (5038848 * k + 2018123) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6054370) = 7558272 * k + 3027185 := by
    unfold C
    simp [show (15116544 * k + 6054370) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3027185) = 22674816 * k + 9081556 := by
    unfold C
    simp [show (7558272 * k + 3027185) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 9081556) = 11337408 * k + 4540778 := by
    unfold C
    simp [show (22674816 * k + 9081556) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4540778) = 5668704 * k + 2270389 := by
    unfold C
    simp [show (11337408 * k + 4540778) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2270389) = 17006112 * k + 6811168 := by
    unfold C
    simp [show (5668704 * k + 2270389) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6811168) = 8503056 * k + 3405584 := by
    unfold C
    simp [show (17006112 * k + 6811168) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3405584) = 4251528 * k + 1702792 := by
    unfold C
    simp [show (8503056 * k + 3405584) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1702792) = 2125764 * k + 851396 := by
    unfold C
    simp [show (4251528 * k + 1702792) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 851396) = 1062882 * k + 425698 := by
    unfold C
    simp [show (2125764 * k + 851396) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 425698) = 531441 * k + 212849 := by
    unfold C
    simp [show (1062882 * k + 425698) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 419967) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 419967)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_420095 : ∀ k : Nat,
    iterate (1048576 * k + 420095) 32 = 531441 * k + 212914 ∧
      531441 * k + 212914 < 1048576 * k + 420095 := by
  intro k
  have h1 : C (1048576 * k + 420095) = 3145728 * k + 1260286 := by
    unfold C
    simp [show (1048576 * k + 420095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1260286) = 1572864 * k + 630143 := by
    unfold C
    simp [show (3145728 * k + 1260286) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 630143) = 4718592 * k + 1890430 := by
    unfold C
    simp [show (1572864 * k + 630143) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1890430) = 2359296 * k + 945215 := by
    unfold C
    simp [show (4718592 * k + 1890430) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 945215) = 7077888 * k + 2835646 := by
    unfold C
    simp [show (2359296 * k + 945215) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2835646) = 3538944 * k + 1417823 := by
    unfold C
    simp [show (7077888 * k + 2835646) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1417823) = 10616832 * k + 4253470 := by
    unfold C
    simp [show (3538944 * k + 1417823) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4253470) = 5308416 * k + 2126735 := by
    unfold C
    simp [show (10616832 * k + 4253470) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2126735) = 15925248 * k + 6380206 := by
    unfold C
    simp [show (5308416 * k + 2126735) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6380206) = 7962624 * k + 3190103 := by
    unfold C
    simp [show (15925248 * k + 6380206) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3190103) = 23887872 * k + 9570310 := by
    unfold C
    simp [show (7962624 * k + 3190103) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9570310) = 11943936 * k + 4785155 := by
    unfold C
    simp [show (23887872 * k + 9570310) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4785155) = 35831808 * k + 14355466 := by
    unfold C
    simp [show (11943936 * k + 4785155) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 14355466) = 17915904 * k + 7177733 := by
    unfold C
    simp [show (35831808 * k + 14355466) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 7177733) = 53747712 * k + 21533200 := by
    unfold C
    simp [show (17915904 * k + 7177733) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 21533200) = 26873856 * k + 10766600 := by
    unfold C
    simp [show (53747712 * k + 21533200) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 10766600) = 13436928 * k + 5383300 := by
    unfold C
    simp [show (26873856 * k + 10766600) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5383300) = 6718464 * k + 2691650 := by
    unfold C
    simp [show (13436928 * k + 5383300) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2691650) = 3359232 * k + 1345825 := by
    unfold C
    simp [show (6718464 * k + 2691650) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1345825) = 10077696 * k + 4037476 := by
    unfold C
    simp [show (3359232 * k + 1345825) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4037476) = 5038848 * k + 2018738 := by
    unfold C
    simp [show (10077696 * k + 4037476) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2018738) = 2519424 * k + 1009369 := by
    unfold C
    simp [show (5038848 * k + 2018738) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1009369) = 7558272 * k + 3028108 := by
    unfold C
    simp [show (2519424 * k + 1009369) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3028108) = 3779136 * k + 1514054 := by
    unfold C
    simp [show (7558272 * k + 3028108) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1514054) = 1889568 * k + 757027 := by
    unfold C
    simp [show (3779136 * k + 1514054) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 757027) = 5668704 * k + 2271082 := by
    unfold C
    simp [show (1889568 * k + 757027) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2271082) = 2834352 * k + 1135541 := by
    unfold C
    simp [show (5668704 * k + 2271082) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1135541) = 8503056 * k + 3406624 := by
    unfold C
    simp [show (2834352 * k + 1135541) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3406624) = 4251528 * k + 1703312 := by
    unfold C
    simp [show (8503056 * k + 3406624) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1703312) = 2125764 * k + 851656 := by
    unfold C
    simp [show (4251528 * k + 1703312) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 851656) = 1062882 * k + 425828 := by
    unfold C
    simp [show (2125764 * k + 851656) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 425828) = 531441 * k + 212914 := by
    unfold C
    simp [show (1062882 * k + 425828) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 420095) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 420095)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_420511 : ∀ k : Nat,
    iterate (1048576 * k + 420511) 32 = 531441 * k + 213125 ∧
      531441 * k + 213125 < 1048576 * k + 420511 := by
  intro k
  have h1 : C (1048576 * k + 420511) = 3145728 * k + 1261534 := by
    unfold C
    simp [show (1048576 * k + 420511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1261534) = 1572864 * k + 630767 := by
    unfold C
    simp [show (3145728 * k + 1261534) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 630767) = 4718592 * k + 1892302 := by
    unfold C
    simp [show (1572864 * k + 630767) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1892302) = 2359296 * k + 946151 := by
    unfold C
    simp [show (4718592 * k + 1892302) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 946151) = 7077888 * k + 2838454 := by
    unfold C
    simp [show (2359296 * k + 946151) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2838454) = 3538944 * k + 1419227 := by
    unfold C
    simp [show (7077888 * k + 2838454) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1419227) = 10616832 * k + 4257682 := by
    unfold C
    simp [show (3538944 * k + 1419227) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4257682) = 5308416 * k + 2128841 := by
    unfold C
    simp [show (10616832 * k + 4257682) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2128841) = 15925248 * k + 6386524 := by
    unfold C
    simp [show (5308416 * k + 2128841) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6386524) = 7962624 * k + 3193262 := by
    unfold C
    simp [show (15925248 * k + 6386524) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3193262) = 3981312 * k + 1596631 := by
    unfold C
    simp [show (7962624 * k + 3193262) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1596631) = 11943936 * k + 4789894 := by
    unfold C
    simp [show (3981312 * k + 1596631) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4789894) = 5971968 * k + 2394947 := by
    unfold C
    simp [show (11943936 * k + 4789894) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2394947) = 17915904 * k + 7184842 := by
    unfold C
    simp [show (5971968 * k + 2394947) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7184842) = 8957952 * k + 3592421 := by
    unfold C
    simp [show (17915904 * k + 7184842) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3592421) = 26873856 * k + 10777264 := by
    unfold C
    simp [show (8957952 * k + 3592421) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10777264) = 13436928 * k + 5388632 := by
    unfold C
    simp [show (26873856 * k + 10777264) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5388632) = 6718464 * k + 2694316 := by
    unfold C
    simp [show (13436928 * k + 5388632) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2694316) = 3359232 * k + 1347158 := by
    unfold C
    simp [show (6718464 * k + 2694316) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1347158) = 1679616 * k + 673579 := by
    unfold C
    simp [show (3359232 * k + 1347158) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 673579) = 5038848 * k + 2020738 := by
    unfold C
    simp [show (1679616 * k + 673579) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2020738) = 2519424 * k + 1010369 := by
    unfold C
    simp [show (5038848 * k + 2020738) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1010369) = 7558272 * k + 3031108 := by
    unfold C
    simp [show (2519424 * k + 1010369) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3031108) = 3779136 * k + 1515554 := by
    unfold C
    simp [show (7558272 * k + 3031108) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1515554) = 1889568 * k + 757777 := by
    unfold C
    simp [show (3779136 * k + 1515554) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 757777) = 5668704 * k + 2273332 := by
    unfold C
    simp [show (1889568 * k + 757777) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2273332) = 2834352 * k + 1136666 := by
    unfold C
    simp [show (5668704 * k + 2273332) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1136666) = 1417176 * k + 568333 := by
    unfold C
    simp [show (2834352 * k + 1136666) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 568333) = 4251528 * k + 1705000 := by
    unfold C
    simp [show (1417176 * k + 568333) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1705000) = 2125764 * k + 852500 := by
    unfold C
    simp [show (4251528 * k + 1705000) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 852500) = 1062882 * k + 426250 := by
    unfold C
    simp [show (2125764 * k + 852500) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 426250) = 531441 * k + 213125 := by
    unfold C
    simp [show (1062882 * k + 426250) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 420511) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 420511)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_420671 : ∀ k : Nat,
    iterate (1048576 * k + 420671) 32 = 531441 * k + 213206 ∧
      531441 * k + 213206 < 1048576 * k + 420671 := by
  intro k
  have h1 : C (1048576 * k + 420671) = 3145728 * k + 1262014 := by
    unfold C
    simp [show (1048576 * k + 420671) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1262014) = 1572864 * k + 631007 := by
    unfold C
    simp [show (3145728 * k + 1262014) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 631007) = 4718592 * k + 1893022 := by
    unfold C
    simp [show (1572864 * k + 631007) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1893022) = 2359296 * k + 946511 := by
    unfold C
    simp [show (4718592 * k + 1893022) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 946511) = 7077888 * k + 2839534 := by
    unfold C
    simp [show (2359296 * k + 946511) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2839534) = 3538944 * k + 1419767 := by
    unfold C
    simp [show (7077888 * k + 2839534) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1419767) = 10616832 * k + 4259302 := by
    unfold C
    simp [show (3538944 * k + 1419767) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4259302) = 5308416 * k + 2129651 := by
    unfold C
    simp [show (10616832 * k + 4259302) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2129651) = 15925248 * k + 6388954 := by
    unfold C
    simp [show (5308416 * k + 2129651) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6388954) = 7962624 * k + 3194477 := by
    unfold C
    simp [show (15925248 * k + 6388954) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3194477) = 23887872 * k + 9583432 := by
    unfold C
    simp [show (7962624 * k + 3194477) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9583432) = 11943936 * k + 4791716 := by
    unfold C
    simp [show (23887872 * k + 9583432) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4791716) = 5971968 * k + 2395858 := by
    unfold C
    simp [show (11943936 * k + 4791716) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2395858) = 2985984 * k + 1197929 := by
    unfold C
    simp [show (5971968 * k + 2395858) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1197929) = 8957952 * k + 3593788 := by
    unfold C
    simp [show (2985984 * k + 1197929) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3593788) = 4478976 * k + 1796894 := by
    unfold C
    simp [show (8957952 * k + 3593788) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1796894) = 2239488 * k + 898447 := by
    unfold C
    simp [show (4478976 * k + 1796894) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 898447) = 6718464 * k + 2695342 := by
    unfold C
    simp [show (2239488 * k + 898447) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2695342) = 3359232 * k + 1347671 := by
    unfold C
    simp [show (6718464 * k + 2695342) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1347671) = 10077696 * k + 4043014 := by
    unfold C
    simp [show (3359232 * k + 1347671) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4043014) = 5038848 * k + 2021507 := by
    unfold C
    simp [show (10077696 * k + 4043014) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2021507) = 15116544 * k + 6064522 := by
    unfold C
    simp [show (5038848 * k + 2021507) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6064522) = 7558272 * k + 3032261 := by
    unfold C
    simp [show (15116544 * k + 6064522) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3032261) = 22674816 * k + 9096784 := by
    unfold C
    simp [show (7558272 * k + 3032261) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 9096784) = 11337408 * k + 4548392 := by
    unfold C
    simp [show (22674816 * k + 9096784) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4548392) = 5668704 * k + 2274196 := by
    unfold C
    simp [show (11337408 * k + 4548392) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2274196) = 2834352 * k + 1137098 := by
    unfold C
    simp [show (5668704 * k + 2274196) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1137098) = 1417176 * k + 568549 := by
    unfold C
    simp [show (2834352 * k + 1137098) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 568549) = 4251528 * k + 1705648 := by
    unfold C
    simp [show (1417176 * k + 568549) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1705648) = 2125764 * k + 852824 := by
    unfold C
    simp [show (4251528 * k + 1705648) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 852824) = 1062882 * k + 426412 := by
    unfold C
    simp [show (2125764 * k + 852824) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 426412) = 531441 * k + 213206 := by
    unfold C
    simp [show (1062882 * k + 426412) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 420671) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 420671)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_420967 : ∀ k : Nat,
    iterate (1048576 * k + 420967) 32 = 531441 * k + 213356 ∧
      531441 * k + 213356 < 1048576 * k + 420967 := by
  intro k
  have h1 : C (1048576 * k + 420967) = 3145728 * k + 1262902 := by
    unfold C
    simp [show (1048576 * k + 420967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1262902) = 1572864 * k + 631451 := by
    unfold C
    simp [show (3145728 * k + 1262902) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 631451) = 4718592 * k + 1894354 := by
    unfold C
    simp [show (1572864 * k + 631451) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1894354) = 2359296 * k + 947177 := by
    unfold C
    simp [show (4718592 * k + 1894354) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 947177) = 7077888 * k + 2841532 := by
    unfold C
    simp [show (2359296 * k + 947177) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2841532) = 3538944 * k + 1420766 := by
    unfold C
    simp [show (7077888 * k + 2841532) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1420766) = 1769472 * k + 710383 := by
    unfold C
    simp [show (3538944 * k + 1420766) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 710383) = 5308416 * k + 2131150 := by
    unfold C
    simp [show (1769472 * k + 710383) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2131150) = 2654208 * k + 1065575 := by
    unfold C
    simp [show (5308416 * k + 2131150) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1065575) = 7962624 * k + 3196726 := by
    unfold C
    simp [show (2654208 * k + 1065575) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3196726) = 3981312 * k + 1598363 := by
    unfold C
    simp [show (7962624 * k + 3196726) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1598363) = 11943936 * k + 4795090 := by
    unfold C
    simp [show (3981312 * k + 1598363) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4795090) = 5971968 * k + 2397545 := by
    unfold C
    simp [show (11943936 * k + 4795090) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2397545) = 17915904 * k + 7192636 := by
    unfold C
    simp [show (5971968 * k + 2397545) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7192636) = 8957952 * k + 3596318 := by
    unfold C
    simp [show (17915904 * k + 7192636) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3596318) = 4478976 * k + 1798159 := by
    unfold C
    simp [show (8957952 * k + 3596318) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1798159) = 13436928 * k + 5394478 := by
    unfold C
    simp [show (4478976 * k + 1798159) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5394478) = 6718464 * k + 2697239 := by
    unfold C
    simp [show (13436928 * k + 5394478) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2697239) = 20155392 * k + 8091718 := by
    unfold C
    simp [show (6718464 * k + 2697239) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8091718) = 10077696 * k + 4045859 := by
    unfold C
    simp [show (20155392 * k + 8091718) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4045859) = 30233088 * k + 12137578 := by
    unfold C
    simp [show (10077696 * k + 4045859) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 12137578) = 15116544 * k + 6068789 := by
    unfold C
    simp [show (30233088 * k + 12137578) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6068789) = 45349632 * k + 18206368 := by
    unfold C
    simp [show (15116544 * k + 6068789) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 18206368) = 22674816 * k + 9103184 := by
    unfold C
    simp [show (45349632 * k + 18206368) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 9103184) = 11337408 * k + 4551592 := by
    unfold C
    simp [show (22674816 * k + 9103184) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4551592) = 5668704 * k + 2275796 := by
    unfold C
    simp [show (11337408 * k + 4551592) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2275796) = 2834352 * k + 1137898 := by
    unfold C
    simp [show (5668704 * k + 2275796) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1137898) = 1417176 * k + 568949 := by
    unfold C
    simp [show (2834352 * k + 1137898) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 568949) = 4251528 * k + 1706848 := by
    unfold C
    simp [show (1417176 * k + 568949) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1706848) = 2125764 * k + 853424 := by
    unfold C
    simp [show (4251528 * k + 1706848) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 853424) = 1062882 * k + 426712 := by
    unfold C
    simp [show (2125764 * k + 853424) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 426712) = 531441 * k + 213356 := by
    unfold C
    simp [show (1062882 * k + 426712) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 420967) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 420967)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_421799 : ∀ k : Nat,
    iterate (1048576 * k + 421799) 32 = 531441 * k + 213778 ∧
      531441 * k + 213778 < 1048576 * k + 421799 := by
  intro k
  have h1 : C (1048576 * k + 421799) = 3145728 * k + 1265398 := by
    unfold C
    simp [show (1048576 * k + 421799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1265398) = 1572864 * k + 632699 := by
    unfold C
    simp [show (3145728 * k + 1265398) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 632699) = 4718592 * k + 1898098 := by
    unfold C
    simp [show (1572864 * k + 632699) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1898098) = 2359296 * k + 949049 := by
    unfold C
    simp [show (4718592 * k + 1898098) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 949049) = 7077888 * k + 2847148 := by
    unfold C
    simp [show (2359296 * k + 949049) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2847148) = 3538944 * k + 1423574 := by
    unfold C
    simp [show (7077888 * k + 2847148) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1423574) = 1769472 * k + 711787 := by
    unfold C
    simp [show (3538944 * k + 1423574) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 711787) = 5308416 * k + 2135362 := by
    unfold C
    simp [show (1769472 * k + 711787) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2135362) = 2654208 * k + 1067681 := by
    unfold C
    simp [show (5308416 * k + 2135362) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1067681) = 7962624 * k + 3203044 := by
    unfold C
    simp [show (2654208 * k + 1067681) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3203044) = 3981312 * k + 1601522 := by
    unfold C
    simp [show (7962624 * k + 3203044) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1601522) = 1990656 * k + 800761 := by
    unfold C
    simp [show (3981312 * k + 1601522) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 800761) = 5971968 * k + 2402284 := by
    unfold C
    simp [show (1990656 * k + 800761) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2402284) = 2985984 * k + 1201142 := by
    unfold C
    simp [show (5971968 * k + 2402284) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1201142) = 1492992 * k + 600571 := by
    unfold C
    simp [show (2985984 * k + 1201142) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 600571) = 4478976 * k + 1801714 := by
    unfold C
    simp [show (1492992 * k + 600571) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1801714) = 2239488 * k + 900857 := by
    unfold C
    simp [show (4478976 * k + 1801714) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 900857) = 6718464 * k + 2702572 := by
    unfold C
    simp [show (2239488 * k + 900857) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2702572) = 3359232 * k + 1351286 := by
    unfold C
    simp [show (6718464 * k + 2702572) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1351286) = 1679616 * k + 675643 := by
    unfold C
    simp [show (3359232 * k + 1351286) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 675643) = 5038848 * k + 2026930 := by
    unfold C
    simp [show (1679616 * k + 675643) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2026930) = 2519424 * k + 1013465 := by
    unfold C
    simp [show (5038848 * k + 2026930) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1013465) = 7558272 * k + 3040396 := by
    unfold C
    simp [show (2519424 * k + 1013465) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3040396) = 3779136 * k + 1520198 := by
    unfold C
    simp [show (7558272 * k + 3040396) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1520198) = 1889568 * k + 760099 := by
    unfold C
    simp [show (3779136 * k + 1520198) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 760099) = 5668704 * k + 2280298 := by
    unfold C
    simp [show (1889568 * k + 760099) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2280298) = 2834352 * k + 1140149 := by
    unfold C
    simp [show (5668704 * k + 2280298) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1140149) = 8503056 * k + 3420448 := by
    unfold C
    simp [show (2834352 * k + 1140149) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3420448) = 4251528 * k + 1710224 := by
    unfold C
    simp [show (8503056 * k + 3420448) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1710224) = 2125764 * k + 855112 := by
    unfold C
    simp [show (4251528 * k + 1710224) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 855112) = 1062882 * k + 427556 := by
    unfold C
    simp [show (2125764 * k + 855112) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 427556) = 531441 * k + 213778 := by
    unfold C
    simp [show (1062882 * k + 427556) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 421799) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 421799)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_421959 : ∀ k : Nat,
    iterate (1048576 * k + 421959) 32 = 531441 * k + 213859 ∧
      531441 * k + 213859 < 1048576 * k + 421959 := by
  intro k
  have h1 : C (1048576 * k + 421959) = 3145728 * k + 1265878 := by
    unfold C
    simp [show (1048576 * k + 421959) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1265878) = 1572864 * k + 632939 := by
    unfold C
    simp [show (3145728 * k + 1265878) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 632939) = 4718592 * k + 1898818 := by
    unfold C
    simp [show (1572864 * k + 632939) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1898818) = 2359296 * k + 949409 := by
    unfold C
    simp [show (4718592 * k + 1898818) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 949409) = 7077888 * k + 2848228 := by
    unfold C
    simp [show (2359296 * k + 949409) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2848228) = 3538944 * k + 1424114 := by
    unfold C
    simp [show (7077888 * k + 2848228) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1424114) = 1769472 * k + 712057 := by
    unfold C
    simp [show (3538944 * k + 1424114) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 712057) = 5308416 * k + 2136172 := by
    unfold C
    simp [show (1769472 * k + 712057) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2136172) = 2654208 * k + 1068086 := by
    unfold C
    simp [show (5308416 * k + 2136172) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1068086) = 1327104 * k + 534043 := by
    unfold C
    simp [show (2654208 * k + 1068086) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 534043) = 3981312 * k + 1602130 := by
    unfold C
    simp [show (1327104 * k + 534043) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1602130) = 1990656 * k + 801065 := by
    unfold C
    simp [show (3981312 * k + 1602130) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 801065) = 5971968 * k + 2403196 := by
    unfold C
    simp [show (1990656 * k + 801065) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2403196) = 2985984 * k + 1201598 := by
    unfold C
    simp [show (5971968 * k + 2403196) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1201598) = 1492992 * k + 600799 := by
    unfold C
    simp [show (2985984 * k + 1201598) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 600799) = 4478976 * k + 1802398 := by
    unfold C
    simp [show (1492992 * k + 600799) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1802398) = 2239488 * k + 901199 := by
    unfold C
    simp [show (4478976 * k + 1802398) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 901199) = 6718464 * k + 2703598 := by
    unfold C
    simp [show (2239488 * k + 901199) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2703598) = 3359232 * k + 1351799 := by
    unfold C
    simp [show (6718464 * k + 2703598) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1351799) = 10077696 * k + 4055398 := by
    unfold C
    simp [show (3359232 * k + 1351799) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4055398) = 5038848 * k + 2027699 := by
    unfold C
    simp [show (10077696 * k + 4055398) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2027699) = 15116544 * k + 6083098 := by
    unfold C
    simp [show (5038848 * k + 2027699) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6083098) = 7558272 * k + 3041549 := by
    unfold C
    simp [show (15116544 * k + 6083098) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3041549) = 22674816 * k + 9124648 := by
    unfold C
    simp [show (7558272 * k + 3041549) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 9124648) = 11337408 * k + 4562324 := by
    unfold C
    simp [show (22674816 * k + 9124648) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4562324) = 5668704 * k + 2281162 := by
    unfold C
    simp [show (11337408 * k + 4562324) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2281162) = 2834352 * k + 1140581 := by
    unfold C
    simp [show (5668704 * k + 2281162) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1140581) = 8503056 * k + 3421744 := by
    unfold C
    simp [show (2834352 * k + 1140581) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3421744) = 4251528 * k + 1710872 := by
    unfold C
    simp [show (8503056 * k + 3421744) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1710872) = 2125764 * k + 855436 := by
    unfold C
    simp [show (4251528 * k + 1710872) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 855436) = 1062882 * k + 427718 := by
    unfold C
    simp [show (2125764 * k + 855436) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 427718) = 531441 * k + 213859 := by
    unfold C
    simp [show (1062882 * k + 427718) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 421959) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 421959)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_422687 : ∀ k : Nat,
    iterate (1048576 * k + 422687) 32 = 531441 * k + 214228 ∧
      531441 * k + 214228 < 1048576 * k + 422687 := by
  intro k
  have h1 : C (1048576 * k + 422687) = 3145728 * k + 1268062 := by
    unfold C
    simp [show (1048576 * k + 422687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1268062) = 1572864 * k + 634031 := by
    unfold C
    simp [show (3145728 * k + 1268062) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 634031) = 4718592 * k + 1902094 := by
    unfold C
    simp [show (1572864 * k + 634031) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1902094) = 2359296 * k + 951047 := by
    unfold C
    simp [show (4718592 * k + 1902094) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 951047) = 7077888 * k + 2853142 := by
    unfold C
    simp [show (2359296 * k + 951047) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2853142) = 3538944 * k + 1426571 := by
    unfold C
    simp [show (7077888 * k + 2853142) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1426571) = 10616832 * k + 4279714 := by
    unfold C
    simp [show (3538944 * k + 1426571) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4279714) = 5308416 * k + 2139857 := by
    unfold C
    simp [show (10616832 * k + 4279714) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2139857) = 15925248 * k + 6419572 := by
    unfold C
    simp [show (5308416 * k + 2139857) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6419572) = 7962624 * k + 3209786 := by
    unfold C
    simp [show (15925248 * k + 6419572) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3209786) = 3981312 * k + 1604893 := by
    unfold C
    simp [show (7962624 * k + 3209786) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1604893) = 11943936 * k + 4814680 := by
    unfold C
    simp [show (3981312 * k + 1604893) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4814680) = 5971968 * k + 2407340 := by
    unfold C
    simp [show (11943936 * k + 4814680) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2407340) = 2985984 * k + 1203670 := by
    unfold C
    simp [show (5971968 * k + 2407340) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1203670) = 1492992 * k + 601835 := by
    unfold C
    simp [show (2985984 * k + 1203670) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 601835) = 4478976 * k + 1805506 := by
    unfold C
    simp [show (1492992 * k + 601835) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1805506) = 2239488 * k + 902753 := by
    unfold C
    simp [show (4478976 * k + 1805506) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 902753) = 6718464 * k + 2708260 := by
    unfold C
    simp [show (2239488 * k + 902753) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2708260) = 3359232 * k + 1354130 := by
    unfold C
    simp [show (6718464 * k + 2708260) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1354130) = 1679616 * k + 677065 := by
    unfold C
    simp [show (3359232 * k + 1354130) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 677065) = 5038848 * k + 2031196 := by
    unfold C
    simp [show (1679616 * k + 677065) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2031196) = 2519424 * k + 1015598 := by
    unfold C
    simp [show (5038848 * k + 2031196) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1015598) = 1259712 * k + 507799 := by
    unfold C
    simp [show (2519424 * k + 1015598) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 507799) = 3779136 * k + 1523398 := by
    unfold C
    simp [show (1259712 * k + 507799) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1523398) = 1889568 * k + 761699 := by
    unfold C
    simp [show (3779136 * k + 1523398) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 761699) = 5668704 * k + 2285098 := by
    unfold C
    simp [show (1889568 * k + 761699) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2285098) = 2834352 * k + 1142549 := by
    unfold C
    simp [show (5668704 * k + 2285098) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1142549) = 8503056 * k + 3427648 := by
    unfold C
    simp [show (2834352 * k + 1142549) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3427648) = 4251528 * k + 1713824 := by
    unfold C
    simp [show (8503056 * k + 3427648) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1713824) = 2125764 * k + 856912 := by
    unfold C
    simp [show (4251528 * k + 1713824) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 856912) = 1062882 * k + 428456 := by
    unfold C
    simp [show (2125764 * k + 856912) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 428456) = 531441 * k + 214228 := by
    unfold C
    simp [show (1062882 * k + 428456) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 422687) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 422687)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_423003 : ∀ k : Nat,
    iterate (1048576 * k + 423003) 32 = 531441 * k + 214388 ∧
      531441 * k + 214388 < 1048576 * k + 423003 := by
  intro k
  have h1 : C (1048576 * k + 423003) = 3145728 * k + 1269010 := by
    unfold C
    simp [show (1048576 * k + 423003) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1269010) = 1572864 * k + 634505 := by
    unfold C
    simp [show (3145728 * k + 1269010) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 634505) = 4718592 * k + 1903516 := by
    unfold C
    simp [show (1572864 * k + 634505) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1903516) = 2359296 * k + 951758 := by
    unfold C
    simp [show (4718592 * k + 1903516) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 951758) = 1179648 * k + 475879 := by
    unfold C
    simp [show (2359296 * k + 951758) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 475879) = 3538944 * k + 1427638 := by
    unfold C
    simp [show (1179648 * k + 475879) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1427638) = 1769472 * k + 713819 := by
    unfold C
    simp [show (3538944 * k + 1427638) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 713819) = 5308416 * k + 2141458 := by
    unfold C
    simp [show (1769472 * k + 713819) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2141458) = 2654208 * k + 1070729 := by
    unfold C
    simp [show (5308416 * k + 2141458) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1070729) = 7962624 * k + 3212188 := by
    unfold C
    simp [show (2654208 * k + 1070729) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3212188) = 3981312 * k + 1606094 := by
    unfold C
    simp [show (7962624 * k + 3212188) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1606094) = 1990656 * k + 803047 := by
    unfold C
    simp [show (3981312 * k + 1606094) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 803047) = 5971968 * k + 2409142 := by
    unfold C
    simp [show (1990656 * k + 803047) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2409142) = 2985984 * k + 1204571 := by
    unfold C
    simp [show (5971968 * k + 2409142) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1204571) = 8957952 * k + 3613714 := by
    unfold C
    simp [show (2985984 * k + 1204571) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3613714) = 4478976 * k + 1806857 := by
    unfold C
    simp [show (8957952 * k + 3613714) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1806857) = 13436928 * k + 5420572 := by
    unfold C
    simp [show (4478976 * k + 1806857) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5420572) = 6718464 * k + 2710286 := by
    unfold C
    simp [show (13436928 * k + 5420572) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2710286) = 3359232 * k + 1355143 := by
    unfold C
    simp [show (6718464 * k + 2710286) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1355143) = 10077696 * k + 4065430 := by
    unfold C
    simp [show (3359232 * k + 1355143) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4065430) = 5038848 * k + 2032715 := by
    unfold C
    simp [show (10077696 * k + 4065430) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2032715) = 15116544 * k + 6098146 := by
    unfold C
    simp [show (5038848 * k + 2032715) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6098146) = 7558272 * k + 3049073 := by
    unfold C
    simp [show (15116544 * k + 6098146) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3049073) = 22674816 * k + 9147220 := by
    unfold C
    simp [show (7558272 * k + 3049073) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 9147220) = 11337408 * k + 4573610 := by
    unfold C
    simp [show (22674816 * k + 9147220) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4573610) = 5668704 * k + 2286805 := by
    unfold C
    simp [show (11337408 * k + 4573610) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2286805) = 17006112 * k + 6860416 := by
    unfold C
    simp [show (5668704 * k + 2286805) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6860416) = 8503056 * k + 3430208 := by
    unfold C
    simp [show (17006112 * k + 6860416) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3430208) = 4251528 * k + 1715104 := by
    unfold C
    simp [show (8503056 * k + 3430208) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1715104) = 2125764 * k + 857552 := by
    unfold C
    simp [show (4251528 * k + 1715104) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 857552) = 1062882 * k + 428776 := by
    unfold C
    simp [show (2125764 * k + 857552) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 428776) = 531441 * k + 214388 := by
    unfold C
    simp [show (1062882 * k + 428776) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 423003) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 423003)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_423015 : ∀ k : Nat,
    iterate (1048576 * k + 423015) 32 = 531441 * k + 214394 ∧
      531441 * k + 214394 < 1048576 * k + 423015 := by
  intro k
  have h1 : C (1048576 * k + 423015) = 3145728 * k + 1269046 := by
    unfold C
    simp [show (1048576 * k + 423015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1269046) = 1572864 * k + 634523 := by
    unfold C
    simp [show (3145728 * k + 1269046) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 634523) = 4718592 * k + 1903570 := by
    unfold C
    simp [show (1572864 * k + 634523) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1903570) = 2359296 * k + 951785 := by
    unfold C
    simp [show (4718592 * k + 1903570) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 951785) = 7077888 * k + 2855356 := by
    unfold C
    simp [show (2359296 * k + 951785) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2855356) = 3538944 * k + 1427678 := by
    unfold C
    simp [show (7077888 * k + 2855356) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1427678) = 1769472 * k + 713839 := by
    unfold C
    simp [show (3538944 * k + 1427678) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 713839) = 5308416 * k + 2141518 := by
    unfold C
    simp [show (1769472 * k + 713839) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2141518) = 2654208 * k + 1070759 := by
    unfold C
    simp [show (5308416 * k + 2141518) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1070759) = 7962624 * k + 3212278 := by
    unfold C
    simp [show (2654208 * k + 1070759) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3212278) = 3981312 * k + 1606139 := by
    unfold C
    simp [show (7962624 * k + 3212278) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1606139) = 11943936 * k + 4818418 := by
    unfold C
    simp [show (3981312 * k + 1606139) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4818418) = 5971968 * k + 2409209 := by
    unfold C
    simp [show (11943936 * k + 4818418) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2409209) = 17915904 * k + 7227628 := by
    unfold C
    simp [show (5971968 * k + 2409209) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7227628) = 8957952 * k + 3613814 := by
    unfold C
    simp [show (17915904 * k + 7227628) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3613814) = 4478976 * k + 1806907 := by
    unfold C
    simp [show (8957952 * k + 3613814) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1806907) = 13436928 * k + 5420722 := by
    unfold C
    simp [show (4478976 * k + 1806907) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5420722) = 6718464 * k + 2710361 := by
    unfold C
    simp [show (13436928 * k + 5420722) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2710361) = 20155392 * k + 8131084 := by
    unfold C
    simp [show (6718464 * k + 2710361) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8131084) = 10077696 * k + 4065542 := by
    unfold C
    simp [show (20155392 * k + 8131084) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4065542) = 5038848 * k + 2032771 := by
    unfold C
    simp [show (10077696 * k + 4065542) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2032771) = 15116544 * k + 6098314 := by
    unfold C
    simp [show (5038848 * k + 2032771) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6098314) = 7558272 * k + 3049157 := by
    unfold C
    simp [show (15116544 * k + 6098314) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3049157) = 22674816 * k + 9147472 := by
    unfold C
    simp [show (7558272 * k + 3049157) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 9147472) = 11337408 * k + 4573736 := by
    unfold C
    simp [show (22674816 * k + 9147472) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4573736) = 5668704 * k + 2286868 := by
    unfold C
    simp [show (11337408 * k + 4573736) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2286868) = 2834352 * k + 1143434 := by
    unfold C
    simp [show (5668704 * k + 2286868) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1143434) = 1417176 * k + 571717 := by
    unfold C
    simp [show (2834352 * k + 1143434) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 571717) = 4251528 * k + 1715152 := by
    unfold C
    simp [show (1417176 * k + 571717) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1715152) = 2125764 * k + 857576 := by
    unfold C
    simp [show (4251528 * k + 1715152) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 857576) = 1062882 * k + 428788 := by
    unfold C
    simp [show (2125764 * k + 857576) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 428788) = 531441 * k + 214394 := by
    unfold C
    simp [show (1062882 * k + 428788) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 423015) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 423015)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_423167 : ∀ k : Nat,
    iterate (1048576 * k + 423167) 32 = 531441 * k + 214471 ∧
      531441 * k + 214471 < 1048576 * k + 423167 := by
  intro k
  have h1 : C (1048576 * k + 423167) = 3145728 * k + 1269502 := by
    unfold C
    simp [show (1048576 * k + 423167) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1269502) = 1572864 * k + 634751 := by
    unfold C
    simp [show (3145728 * k + 1269502) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 634751) = 4718592 * k + 1904254 := by
    unfold C
    simp [show (1572864 * k + 634751) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1904254) = 2359296 * k + 952127 := by
    unfold C
    simp [show (4718592 * k + 1904254) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 952127) = 7077888 * k + 2856382 := by
    unfold C
    simp [show (2359296 * k + 952127) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2856382) = 3538944 * k + 1428191 := by
    unfold C
    simp [show (7077888 * k + 2856382) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1428191) = 10616832 * k + 4284574 := by
    unfold C
    simp [show (3538944 * k + 1428191) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4284574) = 5308416 * k + 2142287 := by
    unfold C
    simp [show (10616832 * k + 4284574) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2142287) = 15925248 * k + 6426862 := by
    unfold C
    simp [show (5308416 * k + 2142287) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6426862) = 7962624 * k + 3213431 := by
    unfold C
    simp [show (15925248 * k + 6426862) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3213431) = 23887872 * k + 9640294 := by
    unfold C
    simp [show (7962624 * k + 3213431) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9640294) = 11943936 * k + 4820147 := by
    unfold C
    simp [show (23887872 * k + 9640294) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4820147) = 35831808 * k + 14460442 := by
    unfold C
    simp [show (11943936 * k + 4820147) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 14460442) = 17915904 * k + 7230221 := by
    unfold C
    simp [show (35831808 * k + 14460442) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 7230221) = 53747712 * k + 21690664 := by
    unfold C
    simp [show (17915904 * k + 7230221) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 21690664) = 26873856 * k + 10845332 := by
    unfold C
    simp [show (53747712 * k + 21690664) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 10845332) = 13436928 * k + 5422666 := by
    unfold C
    simp [show (26873856 * k + 10845332) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5422666) = 6718464 * k + 2711333 := by
    unfold C
    simp [show (13436928 * k + 5422666) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2711333) = 20155392 * k + 8134000 := by
    unfold C
    simp [show (6718464 * k + 2711333) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8134000) = 10077696 * k + 4067000 := by
    unfold C
    simp [show (20155392 * k + 8134000) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4067000) = 5038848 * k + 2033500 := by
    unfold C
    simp [show (10077696 * k + 4067000) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2033500) = 2519424 * k + 1016750 := by
    unfold C
    simp [show (5038848 * k + 2033500) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1016750) = 1259712 * k + 508375 := by
    unfold C
    simp [show (2519424 * k + 1016750) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 508375) = 3779136 * k + 1525126 := by
    unfold C
    simp [show (1259712 * k + 508375) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1525126) = 1889568 * k + 762563 := by
    unfold C
    simp [show (3779136 * k + 1525126) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 762563) = 5668704 * k + 2287690 := by
    unfold C
    simp [show (1889568 * k + 762563) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2287690) = 2834352 * k + 1143845 := by
    unfold C
    simp [show (5668704 * k + 2287690) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1143845) = 8503056 * k + 3431536 := by
    unfold C
    simp [show (2834352 * k + 1143845) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3431536) = 4251528 * k + 1715768 := by
    unfold C
    simp [show (8503056 * k + 3431536) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1715768) = 2125764 * k + 857884 := by
    unfold C
    simp [show (4251528 * k + 1715768) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 857884) = 1062882 * k + 428942 := by
    unfold C
    simp [show (2125764 * k + 857884) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 428942) = 531441 * k + 214471 := by
    unfold C
    simp [show (1062882 * k + 428942) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 423167) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 423167)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_424063 : ∀ k : Nat,
    iterate (1048576 * k + 424063) 32 = 531441 * k + 214925 ∧
      531441 * k + 214925 < 1048576 * k + 424063 := by
  intro k
  have h1 : C (1048576 * k + 424063) = 3145728 * k + 1272190 := by
    unfold C
    simp [show (1048576 * k + 424063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1272190) = 1572864 * k + 636095 := by
    unfold C
    simp [show (3145728 * k + 1272190) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 636095) = 4718592 * k + 1908286 := by
    unfold C
    simp [show (1572864 * k + 636095) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1908286) = 2359296 * k + 954143 := by
    unfold C
    simp [show (4718592 * k + 1908286) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 954143) = 7077888 * k + 2862430 := by
    unfold C
    simp [show (2359296 * k + 954143) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2862430) = 3538944 * k + 1431215 := by
    unfold C
    simp [show (7077888 * k + 2862430) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1431215) = 10616832 * k + 4293646 := by
    unfold C
    simp [show (3538944 * k + 1431215) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4293646) = 5308416 * k + 2146823 := by
    unfold C
    simp [show (10616832 * k + 4293646) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2146823) = 15925248 * k + 6440470 := by
    unfold C
    simp [show (5308416 * k + 2146823) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6440470) = 7962624 * k + 3220235 := by
    unfold C
    simp [show (15925248 * k + 6440470) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3220235) = 23887872 * k + 9660706 := by
    unfold C
    simp [show (7962624 * k + 3220235) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9660706) = 11943936 * k + 4830353 := by
    unfold C
    simp [show (23887872 * k + 9660706) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4830353) = 35831808 * k + 14491060 := by
    unfold C
    simp [show (11943936 * k + 4830353) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 14491060) = 17915904 * k + 7245530 := by
    unfold C
    simp [show (35831808 * k + 14491060) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 7245530) = 8957952 * k + 3622765 := by
    unfold C
    simp [show (17915904 * k + 7245530) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3622765) = 26873856 * k + 10868296 := by
    unfold C
    simp [show (8957952 * k + 3622765) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10868296) = 13436928 * k + 5434148 := by
    unfold C
    simp [show (26873856 * k + 10868296) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5434148) = 6718464 * k + 2717074 := by
    unfold C
    simp [show (13436928 * k + 5434148) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2717074) = 3359232 * k + 1358537 := by
    unfold C
    simp [show (6718464 * k + 2717074) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1358537) = 10077696 * k + 4075612 := by
    unfold C
    simp [show (3359232 * k + 1358537) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4075612) = 5038848 * k + 2037806 := by
    unfold C
    simp [show (10077696 * k + 4075612) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2037806) = 2519424 * k + 1018903 := by
    unfold C
    simp [show (5038848 * k + 2037806) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1018903) = 7558272 * k + 3056710 := by
    unfold C
    simp [show (2519424 * k + 1018903) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3056710) = 3779136 * k + 1528355 := by
    unfold C
    simp [show (7558272 * k + 3056710) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1528355) = 11337408 * k + 4585066 := by
    unfold C
    simp [show (3779136 * k + 1528355) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4585066) = 5668704 * k + 2292533 := by
    unfold C
    simp [show (11337408 * k + 4585066) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2292533) = 17006112 * k + 6877600 := by
    unfold C
    simp [show (5668704 * k + 2292533) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6877600) = 8503056 * k + 3438800 := by
    unfold C
    simp [show (17006112 * k + 6877600) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3438800) = 4251528 * k + 1719400 := by
    unfold C
    simp [show (8503056 * k + 3438800) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1719400) = 2125764 * k + 859700 := by
    unfold C
    simp [show (4251528 * k + 1719400) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 859700) = 1062882 * k + 429850 := by
    unfold C
    simp [show (2125764 * k + 859700) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 429850) = 531441 * k + 214925 := by
    unfold C
    simp [show (1062882 * k + 429850) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 424063) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 424063)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_424767 : ∀ k : Nat,
    iterate (1048576 * k + 424767) 32 = 531441 * k + 215282 ∧
      531441 * k + 215282 < 1048576 * k + 424767 := by
  intro k
  have h1 : C (1048576 * k + 424767) = 3145728 * k + 1274302 := by
    unfold C
    simp [show (1048576 * k + 424767) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1274302) = 1572864 * k + 637151 := by
    unfold C
    simp [show (3145728 * k + 1274302) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 637151) = 4718592 * k + 1911454 := by
    unfold C
    simp [show (1572864 * k + 637151) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1911454) = 2359296 * k + 955727 := by
    unfold C
    simp [show (4718592 * k + 1911454) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 955727) = 7077888 * k + 2867182 := by
    unfold C
    simp [show (2359296 * k + 955727) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2867182) = 3538944 * k + 1433591 := by
    unfold C
    simp [show (7077888 * k + 2867182) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1433591) = 10616832 * k + 4300774 := by
    unfold C
    simp [show (3538944 * k + 1433591) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4300774) = 5308416 * k + 2150387 := by
    unfold C
    simp [show (10616832 * k + 4300774) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2150387) = 15925248 * k + 6451162 := by
    unfold C
    simp [show (5308416 * k + 2150387) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6451162) = 7962624 * k + 3225581 := by
    unfold C
    simp [show (15925248 * k + 6451162) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3225581) = 23887872 * k + 9676744 := by
    unfold C
    simp [show (7962624 * k + 3225581) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9676744) = 11943936 * k + 4838372 := by
    unfold C
    simp [show (23887872 * k + 9676744) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4838372) = 5971968 * k + 2419186 := by
    unfold C
    simp [show (11943936 * k + 4838372) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2419186) = 2985984 * k + 1209593 := by
    unfold C
    simp [show (5971968 * k + 2419186) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1209593) = 8957952 * k + 3628780 := by
    unfold C
    simp [show (2985984 * k + 1209593) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3628780) = 4478976 * k + 1814390 := by
    unfold C
    simp [show (8957952 * k + 3628780) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1814390) = 2239488 * k + 907195 := by
    unfold C
    simp [show (4478976 * k + 1814390) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 907195) = 6718464 * k + 2721586 := by
    unfold C
    simp [show (2239488 * k + 907195) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2721586) = 3359232 * k + 1360793 := by
    unfold C
    simp [show (6718464 * k + 2721586) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1360793) = 10077696 * k + 4082380 := by
    unfold C
    simp [show (3359232 * k + 1360793) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4082380) = 5038848 * k + 2041190 := by
    unfold C
    simp [show (10077696 * k + 4082380) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2041190) = 2519424 * k + 1020595 := by
    unfold C
    simp [show (5038848 * k + 2041190) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1020595) = 7558272 * k + 3061786 := by
    unfold C
    simp [show (2519424 * k + 1020595) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3061786) = 3779136 * k + 1530893 := by
    unfold C
    simp [show (7558272 * k + 3061786) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1530893) = 11337408 * k + 4592680 := by
    unfold C
    simp [show (3779136 * k + 1530893) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4592680) = 5668704 * k + 2296340 := by
    unfold C
    simp [show (11337408 * k + 4592680) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2296340) = 2834352 * k + 1148170 := by
    unfold C
    simp [show (5668704 * k + 2296340) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1148170) = 1417176 * k + 574085 := by
    unfold C
    simp [show (2834352 * k + 1148170) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 574085) = 4251528 * k + 1722256 := by
    unfold C
    simp [show (1417176 * k + 574085) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1722256) = 2125764 * k + 861128 := by
    unfold C
    simp [show (4251528 * k + 1722256) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 861128) = 1062882 * k + 430564 := by
    unfold C
    simp [show (2125764 * k + 861128) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 430564) = 531441 * k + 215282 := by
    unfold C
    simp [show (1062882 * k + 430564) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 424767) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 424767)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard053
