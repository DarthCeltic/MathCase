import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard001

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_239 : ∀ k : Nat,
    iterate (1048576 * k + 239) 32 = 531441 * k + 122 ∧
      531441 * k + 122 < 1048576 * k + 239 := by
  intro k
  have h1 : C (1048576 * k + 239) = 3145728 * k + 718 := by
    unfold C
    simp [show (1048576 * k + 239) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 718) = 1572864 * k + 359 := by
    unfold C
    simp [show (3145728 * k + 718) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 359) = 4718592 * k + 1078 := by
    unfold C
    simp [show (1572864 * k + 359) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1078) = 2359296 * k + 539 := by
    unfold C
    simp [show (4718592 * k + 1078) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 539) = 7077888 * k + 1618 := by
    unfold C
    simp [show (2359296 * k + 539) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1618) = 3538944 * k + 809 := by
    unfold C
    simp [show (7077888 * k + 1618) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 809) = 10616832 * k + 2428 := by
    unfold C
    simp [show (3538944 * k + 809) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2428) = 5308416 * k + 1214 := by
    unfold C
    simp [show (10616832 * k + 2428) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1214) = 2654208 * k + 607 := by
    unfold C
    simp [show (5308416 * k + 1214) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 607) = 7962624 * k + 1822 := by
    unfold C
    simp [show (2654208 * k + 607) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1822) = 3981312 * k + 911 := by
    unfold C
    simp [show (7962624 * k + 1822) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 911) = 11943936 * k + 2734 := by
    unfold C
    simp [show (3981312 * k + 911) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2734) = 5971968 * k + 1367 := by
    unfold C
    simp [show (11943936 * k + 2734) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1367) = 17915904 * k + 4102 := by
    unfold C
    simp [show (5971968 * k + 1367) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4102) = 8957952 * k + 2051 := by
    unfold C
    simp [show (17915904 * k + 4102) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2051) = 26873856 * k + 6154 := by
    unfold C
    simp [show (8957952 * k + 2051) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 6154) = 13436928 * k + 3077 := by
    unfold C
    simp [show (26873856 * k + 6154) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3077) = 40310784 * k + 9232 := by
    unfold C
    simp [show (13436928 * k + 3077) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 9232) = 20155392 * k + 4616 := by
    unfold C
    simp [show (40310784 * k + 9232) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 4616) = 10077696 * k + 2308 := by
    unfold C
    simp [show (20155392 * k + 4616) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2308) = 5038848 * k + 1154 := by
    unfold C
    simp [show (10077696 * k + 2308) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1154) = 2519424 * k + 577 := by
    unfold C
    simp [show (5038848 * k + 1154) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 577) = 7558272 * k + 1732 := by
    unfold C
    simp [show (2519424 * k + 577) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1732) = 3779136 * k + 866 := by
    unfold C
    simp [show (7558272 * k + 1732) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 866) = 1889568 * k + 433 := by
    unfold C
    simp [show (3779136 * k + 866) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 433) = 5668704 * k + 1300 := by
    unfold C
    simp [show (1889568 * k + 433) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1300) = 2834352 * k + 650 := by
    unfold C
    simp [show (5668704 * k + 1300) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 650) = 1417176 * k + 325 := by
    unfold C
    simp [show (2834352 * k + 650) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 325) = 4251528 * k + 976 := by
    unfold C
    simp [show (1417176 * k + 325) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 976) = 2125764 * k + 488 := by
    unfold C
    simp [show (4251528 * k + 976) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 488) = 1062882 * k + 244 := by
    unfold C
    simp [show (2125764 * k + 488) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 244) = 531441 * k + 122 := by
    unfold C
    simp [show (1062882 * k + 244) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 239) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 239)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_487 : ∀ k : Nat,
    iterate (1048576 * k + 487) 32 = 531441 * k + 248 ∧
      531441 * k + 248 < 1048576 * k + 487 := by
  intro k
  have h1 : C (1048576 * k + 487) = 3145728 * k + 1462 := by
    unfold C
    simp [show (1048576 * k + 487) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1462) = 1572864 * k + 731 := by
    unfold C
    simp [show (3145728 * k + 1462) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 731) = 4718592 * k + 2194 := by
    unfold C
    simp [show (1572864 * k + 731) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2194) = 2359296 * k + 1097 := by
    unfold C
    simp [show (4718592 * k + 2194) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1097) = 7077888 * k + 3292 := by
    unfold C
    simp [show (2359296 * k + 1097) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3292) = 3538944 * k + 1646 := by
    unfold C
    simp [show (7077888 * k + 3292) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1646) = 1769472 * k + 823 := by
    unfold C
    simp [show (3538944 * k + 1646) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 823) = 5308416 * k + 2470 := by
    unfold C
    simp [show (1769472 * k + 823) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2470) = 2654208 * k + 1235 := by
    unfold C
    simp [show (5308416 * k + 2470) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1235) = 7962624 * k + 3706 := by
    unfold C
    simp [show (2654208 * k + 1235) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3706) = 3981312 * k + 1853 := by
    unfold C
    simp [show (7962624 * k + 3706) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1853) = 11943936 * k + 5560 := by
    unfold C
    simp [show (3981312 * k + 1853) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5560) = 5971968 * k + 2780 := by
    unfold C
    simp [show (11943936 * k + 5560) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2780) = 2985984 * k + 1390 := by
    unfold C
    simp [show (5971968 * k + 2780) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1390) = 1492992 * k + 695 := by
    unfold C
    simp [show (2985984 * k + 1390) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 695) = 4478976 * k + 2086 := by
    unfold C
    simp [show (1492992 * k + 695) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2086) = 2239488 * k + 1043 := by
    unfold C
    simp [show (4478976 * k + 2086) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1043) = 6718464 * k + 3130 := by
    unfold C
    simp [show (2239488 * k + 1043) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3130) = 3359232 * k + 1565 := by
    unfold C
    simp [show (6718464 * k + 3130) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1565) = 10077696 * k + 4696 := by
    unfold C
    simp [show (3359232 * k + 1565) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4696) = 5038848 * k + 2348 := by
    unfold C
    simp [show (10077696 * k + 4696) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2348) = 2519424 * k + 1174 := by
    unfold C
    simp [show (5038848 * k + 2348) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1174) = 1259712 * k + 587 := by
    unfold C
    simp [show (2519424 * k + 1174) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 587) = 3779136 * k + 1762 := by
    unfold C
    simp [show (1259712 * k + 587) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1762) = 1889568 * k + 881 := by
    unfold C
    simp [show (3779136 * k + 1762) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 881) = 5668704 * k + 2644 := by
    unfold C
    simp [show (1889568 * k + 881) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2644) = 2834352 * k + 1322 := by
    unfold C
    simp [show (5668704 * k + 2644) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1322) = 1417176 * k + 661 := by
    unfold C
    simp [show (2834352 * k + 1322) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 661) = 4251528 * k + 1984 := by
    unfold C
    simp [show (1417176 * k + 661) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1984) = 2125764 * k + 992 := by
    unfold C
    simp [show (4251528 * k + 1984) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 992) = 1062882 * k + 496 := by
    unfold C
    simp [show (2125764 * k + 992) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 496) = 531441 * k + 248 := by
    unfold C
    simp [show (1062882 * k + 496) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 487) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 487)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_763 : ∀ k : Nat,
    iterate (1048576 * k + 763) 32 = 531441 * k + 388 ∧
      531441 * k + 388 < 1048576 * k + 763 := by
  intro k
  have h1 : C (1048576 * k + 763) = 3145728 * k + 2290 := by
    unfold C
    simp [show (1048576 * k + 763) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2290) = 1572864 * k + 1145 := by
    unfold C
    simp [show (3145728 * k + 2290) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1145) = 4718592 * k + 3436 := by
    unfold C
    simp [show (1572864 * k + 1145) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3436) = 2359296 * k + 1718 := by
    unfold C
    simp [show (4718592 * k + 3436) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1718) = 1179648 * k + 859 := by
    unfold C
    simp [show (2359296 * k + 1718) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 859) = 3538944 * k + 2578 := by
    unfold C
    simp [show (1179648 * k + 859) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2578) = 1769472 * k + 1289 := by
    unfold C
    simp [show (3538944 * k + 2578) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1289) = 5308416 * k + 3868 := by
    unfold C
    simp [show (1769472 * k + 1289) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3868) = 2654208 * k + 1934 := by
    unfold C
    simp [show (5308416 * k + 3868) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1934) = 1327104 * k + 967 := by
    unfold C
    simp [show (2654208 * k + 1934) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 967) = 3981312 * k + 2902 := by
    unfold C
    simp [show (1327104 * k + 967) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2902) = 1990656 * k + 1451 := by
    unfold C
    simp [show (3981312 * k + 2902) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1451) = 5971968 * k + 4354 := by
    unfold C
    simp [show (1990656 * k + 1451) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4354) = 2985984 * k + 2177 := by
    unfold C
    simp [show (5971968 * k + 4354) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2177) = 8957952 * k + 6532 := by
    unfold C
    simp [show (2985984 * k + 2177) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6532) = 4478976 * k + 3266 := by
    unfold C
    simp [show (8957952 * k + 6532) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3266) = 2239488 * k + 1633 := by
    unfold C
    simp [show (4478976 * k + 3266) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1633) = 6718464 * k + 4900 := by
    unfold C
    simp [show (2239488 * k + 1633) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4900) = 3359232 * k + 2450 := by
    unfold C
    simp [show (6718464 * k + 4900) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2450) = 1679616 * k + 1225 := by
    unfold C
    simp [show (3359232 * k + 2450) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1225) = 5038848 * k + 3676 := by
    unfold C
    simp [show (1679616 * k + 1225) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3676) = 2519424 * k + 1838 := by
    unfold C
    simp [show (5038848 * k + 3676) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1838) = 1259712 * k + 919 := by
    unfold C
    simp [show (2519424 * k + 1838) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 919) = 3779136 * k + 2758 := by
    unfold C
    simp [show (1259712 * k + 919) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2758) = 1889568 * k + 1379 := by
    unfold C
    simp [show (3779136 * k + 2758) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1379) = 5668704 * k + 4138 := by
    unfold C
    simp [show (1889568 * k + 1379) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4138) = 2834352 * k + 2069 := by
    unfold C
    simp [show (5668704 * k + 4138) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2069) = 8503056 * k + 6208 := by
    unfold C
    simp [show (2834352 * k + 2069) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6208) = 4251528 * k + 3104 := by
    unfold C
    simp [show (8503056 * k + 6208) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3104) = 2125764 * k + 1552 := by
    unfold C
    simp [show (4251528 * k + 3104) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1552) = 1062882 * k + 776 := by
    unfold C
    simp [show (2125764 * k + 1552) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 776) = 531441 * k + 388 := by
    unfold C
    simp [show (1062882 * k + 776) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 763) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 763)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1127 : ∀ k : Nat,
    iterate (1048576 * k + 1127) 32 = 531441 * k + 572 ∧
      531441 * k + 572 < 1048576 * k + 1127 := by
  intro k
  have h1 : C (1048576 * k + 1127) = 3145728 * k + 3382 := by
    unfold C
    simp [show (1048576 * k + 1127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3382) = 1572864 * k + 1691 := by
    unfold C
    simp [show (3145728 * k + 3382) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1691) = 4718592 * k + 5074 := by
    unfold C
    simp [show (1572864 * k + 1691) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 5074) = 2359296 * k + 2537 := by
    unfold C
    simp [show (4718592 * k + 5074) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2537) = 7077888 * k + 7612 := by
    unfold C
    simp [show (2359296 * k + 2537) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 7612) = 3538944 * k + 3806 := by
    unfold C
    simp [show (7077888 * k + 7612) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3806) = 1769472 * k + 1903 := by
    unfold C
    simp [show (3538944 * k + 3806) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1903) = 5308416 * k + 5710 := by
    unfold C
    simp [show (1769472 * k + 1903) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5710) = 2654208 * k + 2855 := by
    unfold C
    simp [show (5308416 * k + 5710) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2855) = 7962624 * k + 8566 := by
    unfold C
    simp [show (2654208 * k + 2855) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 8566) = 3981312 * k + 4283 := by
    unfold C
    simp [show (7962624 * k + 8566) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 4283) = 11943936 * k + 12850 := by
    unfold C
    simp [show (3981312 * k + 4283) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 12850) = 5971968 * k + 6425 := by
    unfold C
    simp [show (11943936 * k + 12850) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 6425) = 17915904 * k + 19276 := by
    unfold C
    simp [show (5971968 * k + 6425) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 19276) = 8957952 * k + 9638 := by
    unfold C
    simp [show (17915904 * k + 19276) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 9638) = 4478976 * k + 4819 := by
    unfold C
    simp [show (8957952 * k + 9638) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4819) = 13436928 * k + 14458 := by
    unfold C
    simp [show (4478976 * k + 4819) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 14458) = 6718464 * k + 7229 := by
    unfold C
    simp [show (13436928 * k + 14458) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 7229) = 20155392 * k + 21688 := by
    unfold C
    simp [show (6718464 * k + 7229) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 21688) = 10077696 * k + 10844 := by
    unfold C
    simp [show (20155392 * k + 21688) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 10844) = 5038848 * k + 5422 := by
    unfold C
    simp [show (10077696 * k + 10844) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 5422) = 2519424 * k + 2711 := by
    unfold C
    simp [show (5038848 * k + 5422) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2711) = 7558272 * k + 8134 := by
    unfold C
    simp [show (2519424 * k + 2711) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 8134) = 3779136 * k + 4067 := by
    unfold C
    simp [show (7558272 * k + 8134) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 4067) = 11337408 * k + 12202 := by
    unfold C
    simp [show (3779136 * k + 4067) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 12202) = 5668704 * k + 6101 := by
    unfold C
    simp [show (11337408 * k + 12202) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 6101) = 17006112 * k + 18304 := by
    unfold C
    simp [show (5668704 * k + 6101) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 18304) = 8503056 * k + 9152 := by
    unfold C
    simp [show (17006112 * k + 18304) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 9152) = 4251528 * k + 4576 := by
    unfold C
    simp [show (8503056 * k + 9152) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4576) = 2125764 * k + 2288 := by
    unfold C
    simp [show (4251528 * k + 4576) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2288) = 1062882 * k + 1144 := by
    unfold C
    simp [show (2125764 * k + 2288) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1144) = 531441 * k + 572 := by
    unfold C
    simp [show (1062882 * k + 1144) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1127) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1127)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1255 : ∀ k : Nat,
    iterate (1048576 * k + 1255) 32 = 531441 * k + 637 ∧
      531441 * k + 637 < 1048576 * k + 1255 := by
  intro k
  have h1 : C (1048576 * k + 1255) = 3145728 * k + 3766 := by
    unfold C
    simp [show (1048576 * k + 1255) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3766) = 1572864 * k + 1883 := by
    unfold C
    simp [show (3145728 * k + 3766) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1883) = 4718592 * k + 5650 := by
    unfold C
    simp [show (1572864 * k + 1883) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 5650) = 2359296 * k + 2825 := by
    unfold C
    simp [show (4718592 * k + 5650) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2825) = 7077888 * k + 8476 := by
    unfold C
    simp [show (2359296 * k + 2825) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 8476) = 3538944 * k + 4238 := by
    unfold C
    simp [show (7077888 * k + 8476) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 4238) = 1769472 * k + 2119 := by
    unfold C
    simp [show (3538944 * k + 4238) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 2119) = 5308416 * k + 6358 := by
    unfold C
    simp [show (1769472 * k + 2119) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 6358) = 2654208 * k + 3179 := by
    unfold C
    simp [show (5308416 * k + 6358) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 3179) = 7962624 * k + 9538 := by
    unfold C
    simp [show (2654208 * k + 3179) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 9538) = 3981312 * k + 4769 := by
    unfold C
    simp [show (7962624 * k + 9538) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 4769) = 11943936 * k + 14308 := by
    unfold C
    simp [show (3981312 * k + 4769) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 14308) = 5971968 * k + 7154 := by
    unfold C
    simp [show (11943936 * k + 14308) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 7154) = 2985984 * k + 3577 := by
    unfold C
    simp [show (5971968 * k + 7154) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 3577) = 8957952 * k + 10732 := by
    unfold C
    simp [show (2985984 * k + 3577) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 10732) = 4478976 * k + 5366 := by
    unfold C
    simp [show (8957952 * k + 10732) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 5366) = 2239488 * k + 2683 := by
    unfold C
    simp [show (4478976 * k + 5366) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2683) = 6718464 * k + 8050 := by
    unfold C
    simp [show (2239488 * k + 2683) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 8050) = 3359232 * k + 4025 := by
    unfold C
    simp [show (6718464 * k + 8050) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 4025) = 10077696 * k + 12076 := by
    unfold C
    simp [show (3359232 * k + 4025) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 12076) = 5038848 * k + 6038 := by
    unfold C
    simp [show (10077696 * k + 12076) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 6038) = 2519424 * k + 3019 := by
    unfold C
    simp [show (5038848 * k + 6038) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 3019) = 7558272 * k + 9058 := by
    unfold C
    simp [show (2519424 * k + 3019) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 9058) = 3779136 * k + 4529 := by
    unfold C
    simp [show (7558272 * k + 9058) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 4529) = 11337408 * k + 13588 := by
    unfold C
    simp [show (3779136 * k + 4529) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 13588) = 5668704 * k + 6794 := by
    unfold C
    simp [show (11337408 * k + 13588) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 6794) = 2834352 * k + 3397 := by
    unfold C
    simp [show (5668704 * k + 6794) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 3397) = 8503056 * k + 10192 := by
    unfold C
    simp [show (2834352 * k + 3397) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 10192) = 4251528 * k + 5096 := by
    unfold C
    simp [show (8503056 * k + 10192) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 5096) = 2125764 * k + 2548 := by
    unfold C
    simp [show (4251528 * k + 5096) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2548) = 1062882 * k + 1274 := by
    unfold C
    simp [show (2125764 * k + 2548) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1274) = 531441 * k + 637 := by
    unfold C
    simp [show (1062882 * k + 1274) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1255) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1255)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1439 : ∀ k : Nat,
    iterate (1048576 * k + 1439) 32 = 531441 * k + 730 ∧
      531441 * k + 730 < 1048576 * k + 1439 := by
  intro k
  have h1 : C (1048576 * k + 1439) = 3145728 * k + 4318 := by
    unfold C
    simp [show (1048576 * k + 1439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 4318) = 1572864 * k + 2159 := by
    unfold C
    simp [show (3145728 * k + 4318) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 2159) = 4718592 * k + 6478 := by
    unfold C
    simp [show (1572864 * k + 2159) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 6478) = 2359296 * k + 3239 := by
    unfold C
    simp [show (4718592 * k + 6478) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 3239) = 7077888 * k + 9718 := by
    unfold C
    simp [show (2359296 * k + 3239) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 9718) = 3538944 * k + 4859 := by
    unfold C
    simp [show (7077888 * k + 9718) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 4859) = 10616832 * k + 14578 := by
    unfold C
    simp [show (3538944 * k + 4859) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 14578) = 5308416 * k + 7289 := by
    unfold C
    simp [show (10616832 * k + 14578) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 7289) = 15925248 * k + 21868 := by
    unfold C
    simp [show (5308416 * k + 7289) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 21868) = 7962624 * k + 10934 := by
    unfold C
    simp [show (15925248 * k + 21868) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 10934) = 3981312 * k + 5467 := by
    unfold C
    simp [show (7962624 * k + 10934) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 5467) = 11943936 * k + 16402 := by
    unfold C
    simp [show (3981312 * k + 5467) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 16402) = 5971968 * k + 8201 := by
    unfold C
    simp [show (11943936 * k + 16402) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 8201) = 17915904 * k + 24604 := by
    unfold C
    simp [show (5971968 * k + 8201) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 24604) = 8957952 * k + 12302 := by
    unfold C
    simp [show (17915904 * k + 24604) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 12302) = 4478976 * k + 6151 := by
    unfold C
    simp [show (8957952 * k + 12302) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 6151) = 13436928 * k + 18454 := by
    unfold C
    simp [show (4478976 * k + 6151) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 18454) = 6718464 * k + 9227 := by
    unfold C
    simp [show (13436928 * k + 18454) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 9227) = 20155392 * k + 27682 := by
    unfold C
    simp [show (6718464 * k + 9227) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 27682) = 10077696 * k + 13841 := by
    unfold C
    simp [show (20155392 * k + 27682) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 13841) = 30233088 * k + 41524 := by
    unfold C
    simp [show (10077696 * k + 13841) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 41524) = 15116544 * k + 20762 := by
    unfold C
    simp [show (30233088 * k + 41524) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 20762) = 7558272 * k + 10381 := by
    unfold C
    simp [show (15116544 * k + 20762) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 10381) = 22674816 * k + 31144 := by
    unfold C
    simp [show (7558272 * k + 10381) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 31144) = 11337408 * k + 15572 := by
    unfold C
    simp [show (22674816 * k + 31144) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 15572) = 5668704 * k + 7786 := by
    unfold C
    simp [show (11337408 * k + 15572) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 7786) = 2834352 * k + 3893 := by
    unfold C
    simp [show (5668704 * k + 7786) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 3893) = 8503056 * k + 11680 := by
    unfold C
    simp [show (2834352 * k + 3893) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 11680) = 4251528 * k + 5840 := by
    unfold C
    simp [show (8503056 * k + 11680) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 5840) = 2125764 * k + 2920 := by
    unfold C
    simp [show (4251528 * k + 5840) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2920) = 1062882 * k + 1460 := by
    unfold C
    simp [show (2125764 * k + 2920) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1460) = 531441 * k + 730 := by
    unfold C
    simp [show (1062882 * k + 1460) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1439) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1439)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1511 : ∀ k : Nat,
    iterate (1048576 * k + 1511) 32 = 531441 * k + 767 ∧
      531441 * k + 767 < 1048576 * k + 1511 := by
  intro k
  have h1 : C (1048576 * k + 1511) = 3145728 * k + 4534 := by
    unfold C
    simp [show (1048576 * k + 1511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 4534) = 1572864 * k + 2267 := by
    unfold C
    simp [show (3145728 * k + 4534) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 2267) = 4718592 * k + 6802 := by
    unfold C
    simp [show (1572864 * k + 2267) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 6802) = 2359296 * k + 3401 := by
    unfold C
    simp [show (4718592 * k + 6802) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 3401) = 7077888 * k + 10204 := by
    unfold C
    simp [show (2359296 * k + 3401) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 10204) = 3538944 * k + 5102 := by
    unfold C
    simp [show (7077888 * k + 10204) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 5102) = 1769472 * k + 2551 := by
    unfold C
    simp [show (3538944 * k + 5102) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 2551) = 5308416 * k + 7654 := by
    unfold C
    simp [show (1769472 * k + 2551) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 7654) = 2654208 * k + 3827 := by
    unfold C
    simp [show (5308416 * k + 7654) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 3827) = 7962624 * k + 11482 := by
    unfold C
    simp [show (2654208 * k + 3827) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 11482) = 3981312 * k + 5741 := by
    unfold C
    simp [show (7962624 * k + 11482) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 5741) = 11943936 * k + 17224 := by
    unfold C
    simp [show (3981312 * k + 5741) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 17224) = 5971968 * k + 8612 := by
    unfold C
    simp [show (11943936 * k + 17224) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 8612) = 2985984 * k + 4306 := by
    unfold C
    simp [show (5971968 * k + 8612) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 4306) = 1492992 * k + 2153 := by
    unfold C
    simp [show (2985984 * k + 4306) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 2153) = 4478976 * k + 6460 := by
    unfold C
    simp [show (1492992 * k + 2153) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 6460) = 2239488 * k + 3230 := by
    unfold C
    simp [show (4478976 * k + 6460) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 3230) = 1119744 * k + 1615 := by
    unfold C
    simp [show (2239488 * k + 3230) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 1615) = 3359232 * k + 4846 := by
    unfold C
    simp [show (1119744 * k + 1615) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 4846) = 1679616 * k + 2423 := by
    unfold C
    simp [show (3359232 * k + 4846) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 2423) = 5038848 * k + 7270 := by
    unfold C
    simp [show (1679616 * k + 2423) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 7270) = 2519424 * k + 3635 := by
    unfold C
    simp [show (5038848 * k + 7270) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 3635) = 7558272 * k + 10906 := by
    unfold C
    simp [show (2519424 * k + 3635) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 10906) = 3779136 * k + 5453 := by
    unfold C
    simp [show (7558272 * k + 10906) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 5453) = 11337408 * k + 16360 := by
    unfold C
    simp [show (3779136 * k + 5453) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 16360) = 5668704 * k + 8180 := by
    unfold C
    simp [show (11337408 * k + 16360) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 8180) = 2834352 * k + 4090 := by
    unfold C
    simp [show (5668704 * k + 8180) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 4090) = 1417176 * k + 2045 := by
    unfold C
    simp [show (2834352 * k + 4090) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 2045) = 4251528 * k + 6136 := by
    unfold C
    simp [show (1417176 * k + 2045) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 6136) = 2125764 * k + 3068 := by
    unfold C
    simp [show (4251528 * k + 6136) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 3068) = 1062882 * k + 1534 := by
    unfold C
    simp [show (2125764 * k + 3068) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1534) = 531441 * k + 767 := by
    unfold C
    simp [show (1062882 * k + 1534) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1511) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1511)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_2139 : ∀ k : Nat,
    iterate (1048576 * k + 2139) 32 = 531441 * k + 1085 ∧
      531441 * k + 1085 < 1048576 * k + 2139 := by
  intro k
  have h1 : C (1048576 * k + 2139) = 3145728 * k + 6418 := by
    unfold C
    simp [show (1048576 * k + 2139) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 6418) = 1572864 * k + 3209 := by
    unfold C
    simp [show (3145728 * k + 6418) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 3209) = 4718592 * k + 9628 := by
    unfold C
    simp [show (1572864 * k + 3209) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 9628) = 2359296 * k + 4814 := by
    unfold C
    simp [show (4718592 * k + 9628) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 4814) = 1179648 * k + 2407 := by
    unfold C
    simp [show (2359296 * k + 4814) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 2407) = 3538944 * k + 7222 := by
    unfold C
    simp [show (1179648 * k + 2407) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 7222) = 1769472 * k + 3611 := by
    unfold C
    simp [show (3538944 * k + 7222) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 3611) = 5308416 * k + 10834 := by
    unfold C
    simp [show (1769472 * k + 3611) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 10834) = 2654208 * k + 5417 := by
    unfold C
    simp [show (5308416 * k + 10834) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 5417) = 7962624 * k + 16252 := by
    unfold C
    simp [show (2654208 * k + 5417) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 16252) = 3981312 * k + 8126 := by
    unfold C
    simp [show (7962624 * k + 16252) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 8126) = 1990656 * k + 4063 := by
    unfold C
    simp [show (3981312 * k + 8126) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 4063) = 5971968 * k + 12190 := by
    unfold C
    simp [show (1990656 * k + 4063) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 12190) = 2985984 * k + 6095 := by
    unfold C
    simp [show (5971968 * k + 12190) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 6095) = 8957952 * k + 18286 := by
    unfold C
    simp [show (2985984 * k + 6095) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 18286) = 4478976 * k + 9143 := by
    unfold C
    simp [show (8957952 * k + 18286) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 9143) = 13436928 * k + 27430 := by
    unfold C
    simp [show (4478976 * k + 9143) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 27430) = 6718464 * k + 13715 := by
    unfold C
    simp [show (13436928 * k + 27430) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 13715) = 20155392 * k + 41146 := by
    unfold C
    simp [show (6718464 * k + 13715) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 41146) = 10077696 * k + 20573 := by
    unfold C
    simp [show (20155392 * k + 41146) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 20573) = 30233088 * k + 61720 := by
    unfold C
    simp [show (10077696 * k + 20573) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 61720) = 15116544 * k + 30860 := by
    unfold C
    simp [show (30233088 * k + 61720) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 30860) = 7558272 * k + 15430 := by
    unfold C
    simp [show (15116544 * k + 30860) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 15430) = 3779136 * k + 7715 := by
    unfold C
    simp [show (7558272 * k + 15430) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 7715) = 11337408 * k + 23146 := by
    unfold C
    simp [show (3779136 * k + 7715) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 23146) = 5668704 * k + 11573 := by
    unfold C
    simp [show (11337408 * k + 23146) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 11573) = 17006112 * k + 34720 := by
    unfold C
    simp [show (5668704 * k + 11573) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 34720) = 8503056 * k + 17360 := by
    unfold C
    simp [show (17006112 * k + 34720) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 17360) = 4251528 * k + 8680 := by
    unfold C
    simp [show (8503056 * k + 17360) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 8680) = 2125764 * k + 4340 := by
    unfold C
    simp [show (4251528 * k + 8680) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 4340) = 1062882 * k + 2170 := by
    unfold C
    simp [show (2125764 * k + 4340) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 2170) = 531441 * k + 1085 := by
    unfold C
    simp [show (1062882 * k + 2170) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 2139) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 2139)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_2175 : ∀ k : Nat,
    iterate (1048576 * k + 2175) 32 = 531441 * k + 1103 ∧
      531441 * k + 1103 < 1048576 * k + 2175 := by
  intro k
  have h1 : C (1048576 * k + 2175) = 3145728 * k + 6526 := by
    unfold C
    simp [show (1048576 * k + 2175) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 6526) = 1572864 * k + 3263 := by
    unfold C
    simp [show (3145728 * k + 6526) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 3263) = 4718592 * k + 9790 := by
    unfold C
    simp [show (1572864 * k + 3263) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 9790) = 2359296 * k + 4895 := by
    unfold C
    simp [show (4718592 * k + 9790) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 4895) = 7077888 * k + 14686 := by
    unfold C
    simp [show (2359296 * k + 4895) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 14686) = 3538944 * k + 7343 := by
    unfold C
    simp [show (7077888 * k + 14686) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 7343) = 10616832 * k + 22030 := by
    unfold C
    simp [show (3538944 * k + 7343) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 22030) = 5308416 * k + 11015 := by
    unfold C
    simp [show (10616832 * k + 22030) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 11015) = 15925248 * k + 33046 := by
    unfold C
    simp [show (5308416 * k + 11015) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 33046) = 7962624 * k + 16523 := by
    unfold C
    simp [show (15925248 * k + 33046) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 16523) = 23887872 * k + 49570 := by
    unfold C
    simp [show (7962624 * k + 16523) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 49570) = 11943936 * k + 24785 := by
    unfold C
    simp [show (23887872 * k + 49570) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 24785) = 35831808 * k + 74356 := by
    unfold C
    simp [show (11943936 * k + 24785) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 74356) = 17915904 * k + 37178 := by
    unfold C
    simp [show (35831808 * k + 74356) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 37178) = 8957952 * k + 18589 := by
    unfold C
    simp [show (17915904 * k + 37178) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 18589) = 26873856 * k + 55768 := by
    unfold C
    simp [show (8957952 * k + 18589) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 55768) = 13436928 * k + 27884 := by
    unfold C
    simp [show (26873856 * k + 55768) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 27884) = 6718464 * k + 13942 := by
    unfold C
    simp [show (13436928 * k + 27884) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 13942) = 3359232 * k + 6971 := by
    unfold C
    simp [show (6718464 * k + 13942) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 6971) = 10077696 * k + 20914 := by
    unfold C
    simp [show (3359232 * k + 6971) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 20914) = 5038848 * k + 10457 := by
    unfold C
    simp [show (10077696 * k + 20914) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 10457) = 15116544 * k + 31372 := by
    unfold C
    simp [show (5038848 * k + 10457) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 31372) = 7558272 * k + 15686 := by
    unfold C
    simp [show (15116544 * k + 31372) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 15686) = 3779136 * k + 7843 := by
    unfold C
    simp [show (7558272 * k + 15686) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 7843) = 11337408 * k + 23530 := by
    unfold C
    simp [show (3779136 * k + 7843) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 23530) = 5668704 * k + 11765 := by
    unfold C
    simp [show (11337408 * k + 23530) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 11765) = 17006112 * k + 35296 := by
    unfold C
    simp [show (5668704 * k + 11765) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 35296) = 8503056 * k + 17648 := by
    unfold C
    simp [show (17006112 * k + 35296) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 17648) = 4251528 * k + 8824 := by
    unfold C
    simp [show (8503056 * k + 17648) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 8824) = 2125764 * k + 4412 := by
    unfold C
    simp [show (4251528 * k + 8824) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 4412) = 1062882 * k + 2206 := by
    unfold C
    simp [show (2125764 * k + 4412) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 2206) = 531441 * k + 1103 := by
    unfold C
    simp [show (1062882 * k + 2206) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 2175) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 2175)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_2255 : ∀ k : Nat,
    iterate (1048576 * k + 2255) 32 = 531441 * k + 1144 ∧
      531441 * k + 1144 < 1048576 * k + 2255 := by
  intro k
  have h1 : C (1048576 * k + 2255) = 3145728 * k + 6766 := by
    unfold C
    simp [show (1048576 * k + 2255) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 6766) = 1572864 * k + 3383 := by
    unfold C
    simp [show (3145728 * k + 6766) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 3383) = 4718592 * k + 10150 := by
    unfold C
    simp [show (1572864 * k + 3383) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 10150) = 2359296 * k + 5075 := by
    unfold C
    simp [show (4718592 * k + 10150) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 5075) = 7077888 * k + 15226 := by
    unfold C
    simp [show (2359296 * k + 5075) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 15226) = 3538944 * k + 7613 := by
    unfold C
    simp [show (7077888 * k + 15226) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 7613) = 10616832 * k + 22840 := by
    unfold C
    simp [show (3538944 * k + 7613) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 22840) = 5308416 * k + 11420 := by
    unfold C
    simp [show (10616832 * k + 22840) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 11420) = 2654208 * k + 5710 := by
    unfold C
    simp [show (5308416 * k + 11420) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 5710) = 1327104 * k + 2855 := by
    unfold C
    simp [show (2654208 * k + 5710) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 2855) = 3981312 * k + 8566 := by
    unfold C
    simp [show (1327104 * k + 2855) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 8566) = 1990656 * k + 4283 := by
    unfold C
    simp [show (3981312 * k + 8566) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 4283) = 5971968 * k + 12850 := by
    unfold C
    simp [show (1990656 * k + 4283) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 12850) = 2985984 * k + 6425 := by
    unfold C
    simp [show (5971968 * k + 12850) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 6425) = 8957952 * k + 19276 := by
    unfold C
    simp [show (2985984 * k + 6425) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 19276) = 4478976 * k + 9638 := by
    unfold C
    simp [show (8957952 * k + 19276) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 9638) = 2239488 * k + 4819 := by
    unfold C
    simp [show (4478976 * k + 9638) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 4819) = 6718464 * k + 14458 := by
    unfold C
    simp [show (2239488 * k + 4819) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 14458) = 3359232 * k + 7229 := by
    unfold C
    simp [show (6718464 * k + 14458) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 7229) = 10077696 * k + 21688 := by
    unfold C
    simp [show (3359232 * k + 7229) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 21688) = 5038848 * k + 10844 := by
    unfold C
    simp [show (10077696 * k + 21688) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 10844) = 2519424 * k + 5422 := by
    unfold C
    simp [show (5038848 * k + 10844) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 5422) = 1259712 * k + 2711 := by
    unfold C
    simp [show (2519424 * k + 5422) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 2711) = 3779136 * k + 8134 := by
    unfold C
    simp [show (1259712 * k + 2711) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 8134) = 1889568 * k + 4067 := by
    unfold C
    simp [show (3779136 * k + 8134) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 4067) = 5668704 * k + 12202 := by
    unfold C
    simp [show (1889568 * k + 4067) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 12202) = 2834352 * k + 6101 := by
    unfold C
    simp [show (5668704 * k + 12202) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 6101) = 8503056 * k + 18304 := by
    unfold C
    simp [show (2834352 * k + 6101) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 18304) = 4251528 * k + 9152 := by
    unfold C
    simp [show (8503056 * k + 18304) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 9152) = 2125764 * k + 4576 := by
    unfold C
    simp [show (4251528 * k + 9152) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 4576) = 1062882 * k + 2288 := by
    unfold C
    simp [show (2125764 * k + 4576) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 2288) = 531441 * k + 1144 := by
    unfold C
    simp [show (1062882 * k + 2288) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 2255) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 2255)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_2511 : ∀ k : Nat,
    iterate (1048576 * k + 2511) 32 = 531441 * k + 1274 ∧
      531441 * k + 1274 < 1048576 * k + 2511 := by
  intro k
  have h1 : C (1048576 * k + 2511) = 3145728 * k + 7534 := by
    unfold C
    simp [show (1048576 * k + 2511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 7534) = 1572864 * k + 3767 := by
    unfold C
    simp [show (3145728 * k + 7534) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 3767) = 4718592 * k + 11302 := by
    unfold C
    simp [show (1572864 * k + 3767) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 11302) = 2359296 * k + 5651 := by
    unfold C
    simp [show (4718592 * k + 11302) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 5651) = 7077888 * k + 16954 := by
    unfold C
    simp [show (2359296 * k + 5651) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 16954) = 3538944 * k + 8477 := by
    unfold C
    simp [show (7077888 * k + 16954) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 8477) = 10616832 * k + 25432 := by
    unfold C
    simp [show (3538944 * k + 8477) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 25432) = 5308416 * k + 12716 := by
    unfold C
    simp [show (10616832 * k + 25432) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 12716) = 2654208 * k + 6358 := by
    unfold C
    simp [show (5308416 * k + 12716) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 6358) = 1327104 * k + 3179 := by
    unfold C
    simp [show (2654208 * k + 6358) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 3179) = 3981312 * k + 9538 := by
    unfold C
    simp [show (1327104 * k + 3179) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 9538) = 1990656 * k + 4769 := by
    unfold C
    simp [show (3981312 * k + 9538) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 4769) = 5971968 * k + 14308 := by
    unfold C
    simp [show (1990656 * k + 4769) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 14308) = 2985984 * k + 7154 := by
    unfold C
    simp [show (5971968 * k + 14308) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 7154) = 1492992 * k + 3577 := by
    unfold C
    simp [show (2985984 * k + 7154) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 3577) = 4478976 * k + 10732 := by
    unfold C
    simp [show (1492992 * k + 3577) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 10732) = 2239488 * k + 5366 := by
    unfold C
    simp [show (4478976 * k + 10732) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 5366) = 1119744 * k + 2683 := by
    unfold C
    simp [show (2239488 * k + 5366) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 2683) = 3359232 * k + 8050 := by
    unfold C
    simp [show (1119744 * k + 2683) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 8050) = 1679616 * k + 4025 := by
    unfold C
    simp [show (3359232 * k + 8050) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 4025) = 5038848 * k + 12076 := by
    unfold C
    simp [show (1679616 * k + 4025) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 12076) = 2519424 * k + 6038 := by
    unfold C
    simp [show (5038848 * k + 12076) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 6038) = 1259712 * k + 3019 := by
    unfold C
    simp [show (2519424 * k + 6038) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 3019) = 3779136 * k + 9058 := by
    unfold C
    simp [show (1259712 * k + 3019) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 9058) = 1889568 * k + 4529 := by
    unfold C
    simp [show (3779136 * k + 9058) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 4529) = 5668704 * k + 13588 := by
    unfold C
    simp [show (1889568 * k + 4529) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 13588) = 2834352 * k + 6794 := by
    unfold C
    simp [show (5668704 * k + 13588) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 6794) = 1417176 * k + 3397 := by
    unfold C
    simp [show (2834352 * k + 6794) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 3397) = 4251528 * k + 10192 := by
    unfold C
    simp [show (1417176 * k + 3397) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 10192) = 2125764 * k + 5096 := by
    unfold C
    simp [show (4251528 * k + 10192) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 5096) = 1062882 * k + 2548 := by
    unfold C
    simp [show (2125764 * k + 5096) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 2548) = 531441 * k + 1274 := by
    unfold C
    simp [show (1062882 * k + 2548) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 2511) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 2511)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_2879 : ∀ k : Nat,
    iterate (1048576 * k + 2879) 32 = 531441 * k + 1460 ∧
      531441 * k + 1460 < 1048576 * k + 2879 := by
  intro k
  have h1 : C (1048576 * k + 2879) = 3145728 * k + 8638 := by
    unfold C
    simp [show (1048576 * k + 2879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 8638) = 1572864 * k + 4319 := by
    unfold C
    simp [show (3145728 * k + 8638) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 4319) = 4718592 * k + 12958 := by
    unfold C
    simp [show (1572864 * k + 4319) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 12958) = 2359296 * k + 6479 := by
    unfold C
    simp [show (4718592 * k + 12958) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 6479) = 7077888 * k + 19438 := by
    unfold C
    simp [show (2359296 * k + 6479) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 19438) = 3538944 * k + 9719 := by
    unfold C
    simp [show (7077888 * k + 19438) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 9719) = 10616832 * k + 29158 := by
    unfold C
    simp [show (3538944 * k + 9719) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 29158) = 5308416 * k + 14579 := by
    unfold C
    simp [show (10616832 * k + 29158) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 14579) = 15925248 * k + 43738 := by
    unfold C
    simp [show (5308416 * k + 14579) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 43738) = 7962624 * k + 21869 := by
    unfold C
    simp [show (15925248 * k + 43738) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 21869) = 23887872 * k + 65608 := by
    unfold C
    simp [show (7962624 * k + 21869) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 65608) = 11943936 * k + 32804 := by
    unfold C
    simp [show (23887872 * k + 65608) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 32804) = 5971968 * k + 16402 := by
    unfold C
    simp [show (11943936 * k + 32804) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 16402) = 2985984 * k + 8201 := by
    unfold C
    simp [show (5971968 * k + 16402) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 8201) = 8957952 * k + 24604 := by
    unfold C
    simp [show (2985984 * k + 8201) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 24604) = 4478976 * k + 12302 := by
    unfold C
    simp [show (8957952 * k + 24604) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 12302) = 2239488 * k + 6151 := by
    unfold C
    simp [show (4478976 * k + 12302) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 6151) = 6718464 * k + 18454 := by
    unfold C
    simp [show (2239488 * k + 6151) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 18454) = 3359232 * k + 9227 := by
    unfold C
    simp [show (6718464 * k + 18454) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 9227) = 10077696 * k + 27682 := by
    unfold C
    simp [show (3359232 * k + 9227) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 27682) = 5038848 * k + 13841 := by
    unfold C
    simp [show (10077696 * k + 27682) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 13841) = 15116544 * k + 41524 := by
    unfold C
    simp [show (5038848 * k + 13841) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 41524) = 7558272 * k + 20762 := by
    unfold C
    simp [show (15116544 * k + 41524) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 20762) = 3779136 * k + 10381 := by
    unfold C
    simp [show (7558272 * k + 20762) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 10381) = 11337408 * k + 31144 := by
    unfold C
    simp [show (3779136 * k + 10381) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 31144) = 5668704 * k + 15572 := by
    unfold C
    simp [show (11337408 * k + 31144) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 15572) = 2834352 * k + 7786 := by
    unfold C
    simp [show (5668704 * k + 15572) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 7786) = 1417176 * k + 3893 := by
    unfold C
    simp [show (2834352 * k + 7786) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 3893) = 4251528 * k + 11680 := by
    unfold C
    simp [show (1417176 * k + 3893) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 11680) = 2125764 * k + 5840 := by
    unfold C
    simp [show (4251528 * k + 11680) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 5840) = 1062882 * k + 2920 := by
    unfold C
    simp [show (2125764 * k + 5840) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 2920) = 531441 * k + 1460 := by
    unfold C
    simp [show (1062882 * k + 2920) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 2879) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 2879)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_3199 : ∀ k : Nat,
    iterate (1048576 * k + 3199) 32 = 531441 * k + 1622 ∧
      531441 * k + 1622 < 1048576 * k + 3199 := by
  intro k
  have h1 : C (1048576 * k + 3199) = 3145728 * k + 9598 := by
    unfold C
    simp [show (1048576 * k + 3199) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 9598) = 1572864 * k + 4799 := by
    unfold C
    simp [show (3145728 * k + 9598) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 4799) = 4718592 * k + 14398 := by
    unfold C
    simp [show (1572864 * k + 4799) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 14398) = 2359296 * k + 7199 := by
    unfold C
    simp [show (4718592 * k + 14398) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 7199) = 7077888 * k + 21598 := by
    unfold C
    simp [show (2359296 * k + 7199) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 21598) = 3538944 * k + 10799 := by
    unfold C
    simp [show (7077888 * k + 21598) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 10799) = 10616832 * k + 32398 := by
    unfold C
    simp [show (3538944 * k + 10799) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 32398) = 5308416 * k + 16199 := by
    unfold C
    simp [show (10616832 * k + 32398) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 16199) = 15925248 * k + 48598 := by
    unfold C
    simp [show (5308416 * k + 16199) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 48598) = 7962624 * k + 24299 := by
    unfold C
    simp [show (15925248 * k + 48598) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 24299) = 23887872 * k + 72898 := by
    unfold C
    simp [show (7962624 * k + 24299) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 72898) = 11943936 * k + 36449 := by
    unfold C
    simp [show (23887872 * k + 72898) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 36449) = 35831808 * k + 109348 := by
    unfold C
    simp [show (11943936 * k + 36449) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 109348) = 17915904 * k + 54674 := by
    unfold C
    simp [show (35831808 * k + 109348) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 54674) = 8957952 * k + 27337 := by
    unfold C
    simp [show (17915904 * k + 54674) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 27337) = 26873856 * k + 82012 := by
    unfold C
    simp [show (8957952 * k + 27337) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 82012) = 13436928 * k + 41006 := by
    unfold C
    simp [show (26873856 * k + 82012) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 41006) = 6718464 * k + 20503 := by
    unfold C
    simp [show (13436928 * k + 41006) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 20503) = 20155392 * k + 61510 := by
    unfold C
    simp [show (6718464 * k + 20503) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 61510) = 10077696 * k + 30755 := by
    unfold C
    simp [show (20155392 * k + 61510) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 30755) = 30233088 * k + 92266 := by
    unfold C
    simp [show (10077696 * k + 30755) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 92266) = 15116544 * k + 46133 := by
    unfold C
    simp [show (30233088 * k + 92266) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 46133) = 45349632 * k + 138400 := by
    unfold C
    simp [show (15116544 * k + 46133) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 138400) = 22674816 * k + 69200 := by
    unfold C
    simp [show (45349632 * k + 138400) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 69200) = 11337408 * k + 34600 := by
    unfold C
    simp [show (22674816 * k + 69200) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 34600) = 5668704 * k + 17300 := by
    unfold C
    simp [show (11337408 * k + 34600) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 17300) = 2834352 * k + 8650 := by
    unfold C
    simp [show (5668704 * k + 17300) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 8650) = 1417176 * k + 4325 := by
    unfold C
    simp [show (2834352 * k + 8650) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 4325) = 4251528 * k + 12976 := by
    unfold C
    simp [show (1417176 * k + 4325) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 12976) = 2125764 * k + 6488 := by
    unfold C
    simp [show (4251528 * k + 12976) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 6488) = 1062882 * k + 3244 := by
    unfold C
    simp [show (2125764 * k + 6488) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 3244) = 531441 * k + 1622 := by
    unfold C
    simp [show (1062882 * k + 3244) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 3199) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 3199)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_3279 : ∀ k : Nat,
    iterate (1048576 * k + 3279) 32 = 531441 * k + 1663 ∧
      531441 * k + 1663 < 1048576 * k + 3279 := by
  intro k
  have h1 : C (1048576 * k + 3279) = 3145728 * k + 9838 := by
    unfold C
    simp [show (1048576 * k + 3279) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 9838) = 1572864 * k + 4919 := by
    unfold C
    simp [show (3145728 * k + 9838) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 4919) = 4718592 * k + 14758 := by
    unfold C
    simp [show (1572864 * k + 4919) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 14758) = 2359296 * k + 7379 := by
    unfold C
    simp [show (4718592 * k + 14758) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 7379) = 7077888 * k + 22138 := by
    unfold C
    simp [show (2359296 * k + 7379) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 22138) = 3538944 * k + 11069 := by
    unfold C
    simp [show (7077888 * k + 22138) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 11069) = 10616832 * k + 33208 := by
    unfold C
    simp [show (3538944 * k + 11069) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 33208) = 5308416 * k + 16604 := by
    unfold C
    simp [show (10616832 * k + 33208) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 16604) = 2654208 * k + 8302 := by
    unfold C
    simp [show (5308416 * k + 16604) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 8302) = 1327104 * k + 4151 := by
    unfold C
    simp [show (2654208 * k + 8302) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 4151) = 3981312 * k + 12454 := by
    unfold C
    simp [show (1327104 * k + 4151) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 12454) = 1990656 * k + 6227 := by
    unfold C
    simp [show (3981312 * k + 12454) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 6227) = 5971968 * k + 18682 := by
    unfold C
    simp [show (1990656 * k + 6227) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 18682) = 2985984 * k + 9341 := by
    unfold C
    simp [show (5971968 * k + 18682) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 9341) = 8957952 * k + 28024 := by
    unfold C
    simp [show (2985984 * k + 9341) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 28024) = 4478976 * k + 14012 := by
    unfold C
    simp [show (8957952 * k + 28024) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 14012) = 2239488 * k + 7006 := by
    unfold C
    simp [show (4478976 * k + 14012) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 7006) = 1119744 * k + 3503 := by
    unfold C
    simp [show (2239488 * k + 7006) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 3503) = 3359232 * k + 10510 := by
    unfold C
    simp [show (1119744 * k + 3503) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 10510) = 1679616 * k + 5255 := by
    unfold C
    simp [show (3359232 * k + 10510) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 5255) = 5038848 * k + 15766 := by
    unfold C
    simp [show (1679616 * k + 5255) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 15766) = 2519424 * k + 7883 := by
    unfold C
    simp [show (5038848 * k + 15766) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 7883) = 7558272 * k + 23650 := by
    unfold C
    simp [show (2519424 * k + 7883) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 23650) = 3779136 * k + 11825 := by
    unfold C
    simp [show (7558272 * k + 23650) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 11825) = 11337408 * k + 35476 := by
    unfold C
    simp [show (3779136 * k + 11825) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 35476) = 5668704 * k + 17738 := by
    unfold C
    simp [show (11337408 * k + 35476) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 17738) = 2834352 * k + 8869 := by
    unfold C
    simp [show (5668704 * k + 17738) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 8869) = 8503056 * k + 26608 := by
    unfold C
    simp [show (2834352 * k + 8869) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 26608) = 4251528 * k + 13304 := by
    unfold C
    simp [show (8503056 * k + 26608) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 13304) = 2125764 * k + 6652 := by
    unfold C
    simp [show (4251528 * k + 13304) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 6652) = 1062882 * k + 3326 := by
    unfold C
    simp [show (2125764 * k + 6652) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 3326) = 531441 * k + 1663 := by
    unfold C
    simp [show (1062882 * k + 3326) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 3279) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 3279)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_3871 : ∀ k : Nat,
    iterate (1048576 * k + 3871) 32 = 531441 * k + 1963 ∧
      531441 * k + 1963 < 1048576 * k + 3871 := by
  intro k
  have h1 : C (1048576 * k + 3871) = 3145728 * k + 11614 := by
    unfold C
    simp [show (1048576 * k + 3871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 11614) = 1572864 * k + 5807 := by
    unfold C
    simp [show (3145728 * k + 11614) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 5807) = 4718592 * k + 17422 := by
    unfold C
    simp [show (1572864 * k + 5807) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 17422) = 2359296 * k + 8711 := by
    unfold C
    simp [show (4718592 * k + 17422) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 8711) = 7077888 * k + 26134 := by
    unfold C
    simp [show (2359296 * k + 8711) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 26134) = 3538944 * k + 13067 := by
    unfold C
    simp [show (7077888 * k + 26134) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 13067) = 10616832 * k + 39202 := by
    unfold C
    simp [show (3538944 * k + 13067) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 39202) = 5308416 * k + 19601 := by
    unfold C
    simp [show (10616832 * k + 39202) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 19601) = 15925248 * k + 58804 := by
    unfold C
    simp [show (5308416 * k + 19601) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 58804) = 7962624 * k + 29402 := by
    unfold C
    simp [show (15925248 * k + 58804) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 29402) = 3981312 * k + 14701 := by
    unfold C
    simp [show (7962624 * k + 29402) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 14701) = 11943936 * k + 44104 := by
    unfold C
    simp [show (3981312 * k + 14701) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 44104) = 5971968 * k + 22052 := by
    unfold C
    simp [show (11943936 * k + 44104) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 22052) = 2985984 * k + 11026 := by
    unfold C
    simp [show (5971968 * k + 22052) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 11026) = 1492992 * k + 5513 := by
    unfold C
    simp [show (2985984 * k + 11026) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 5513) = 4478976 * k + 16540 := by
    unfold C
    simp [show (1492992 * k + 5513) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 16540) = 2239488 * k + 8270 := by
    unfold C
    simp [show (4478976 * k + 16540) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 8270) = 1119744 * k + 4135 := by
    unfold C
    simp [show (2239488 * k + 8270) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 4135) = 3359232 * k + 12406 := by
    unfold C
    simp [show (1119744 * k + 4135) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 12406) = 1679616 * k + 6203 := by
    unfold C
    simp [show (3359232 * k + 12406) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 6203) = 5038848 * k + 18610 := by
    unfold C
    simp [show (1679616 * k + 6203) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 18610) = 2519424 * k + 9305 := by
    unfold C
    simp [show (5038848 * k + 18610) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 9305) = 7558272 * k + 27916 := by
    unfold C
    simp [show (2519424 * k + 9305) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 27916) = 3779136 * k + 13958 := by
    unfold C
    simp [show (7558272 * k + 27916) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 13958) = 1889568 * k + 6979 := by
    unfold C
    simp [show (3779136 * k + 13958) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 6979) = 5668704 * k + 20938 := by
    unfold C
    simp [show (1889568 * k + 6979) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 20938) = 2834352 * k + 10469 := by
    unfold C
    simp [show (5668704 * k + 20938) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 10469) = 8503056 * k + 31408 := by
    unfold C
    simp [show (2834352 * k + 10469) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 31408) = 4251528 * k + 15704 := by
    unfold C
    simp [show (8503056 * k + 31408) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 15704) = 2125764 * k + 7852 := by
    unfold C
    simp [show (4251528 * k + 15704) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 7852) = 1062882 * k + 3926 := by
    unfold C
    simp [show (2125764 * k + 7852) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 3926) = 531441 * k + 1963 := by
    unfold C
    simp [show (1062882 * k + 3926) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 3871) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 3871)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_4167 : ∀ k : Nat,
    iterate (1048576 * k + 4167) 32 = 531441 * k + 2113 ∧
      531441 * k + 2113 < 1048576 * k + 4167 := by
  intro k
  have h1 : C (1048576 * k + 4167) = 3145728 * k + 12502 := by
    unfold C
    simp [show (1048576 * k + 4167) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 12502) = 1572864 * k + 6251 := by
    unfold C
    simp [show (3145728 * k + 12502) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 6251) = 4718592 * k + 18754 := by
    unfold C
    simp [show (1572864 * k + 6251) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 18754) = 2359296 * k + 9377 := by
    unfold C
    simp [show (4718592 * k + 18754) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 9377) = 7077888 * k + 28132 := by
    unfold C
    simp [show (2359296 * k + 9377) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 28132) = 3538944 * k + 14066 := by
    unfold C
    simp [show (7077888 * k + 28132) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 14066) = 1769472 * k + 7033 := by
    unfold C
    simp [show (3538944 * k + 14066) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 7033) = 5308416 * k + 21100 := by
    unfold C
    simp [show (1769472 * k + 7033) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 21100) = 2654208 * k + 10550 := by
    unfold C
    simp [show (5308416 * k + 21100) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 10550) = 1327104 * k + 5275 := by
    unfold C
    simp [show (2654208 * k + 10550) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 5275) = 3981312 * k + 15826 := by
    unfold C
    simp [show (1327104 * k + 5275) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 15826) = 1990656 * k + 7913 := by
    unfold C
    simp [show (3981312 * k + 15826) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 7913) = 5971968 * k + 23740 := by
    unfold C
    simp [show (1990656 * k + 7913) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 23740) = 2985984 * k + 11870 := by
    unfold C
    simp [show (5971968 * k + 23740) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 11870) = 1492992 * k + 5935 := by
    unfold C
    simp [show (2985984 * k + 11870) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 5935) = 4478976 * k + 17806 := by
    unfold C
    simp [show (1492992 * k + 5935) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 17806) = 2239488 * k + 8903 := by
    unfold C
    simp [show (4478976 * k + 17806) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 8903) = 6718464 * k + 26710 := by
    unfold C
    simp [show (2239488 * k + 8903) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 26710) = 3359232 * k + 13355 := by
    unfold C
    simp [show (6718464 * k + 26710) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 13355) = 10077696 * k + 40066 := by
    unfold C
    simp [show (3359232 * k + 13355) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 40066) = 5038848 * k + 20033 := by
    unfold C
    simp [show (10077696 * k + 40066) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 20033) = 15116544 * k + 60100 := by
    unfold C
    simp [show (5038848 * k + 20033) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 60100) = 7558272 * k + 30050 := by
    unfold C
    simp [show (15116544 * k + 60100) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 30050) = 3779136 * k + 15025 := by
    unfold C
    simp [show (7558272 * k + 30050) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 15025) = 11337408 * k + 45076 := by
    unfold C
    simp [show (3779136 * k + 15025) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 45076) = 5668704 * k + 22538 := by
    unfold C
    simp [show (11337408 * k + 45076) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 22538) = 2834352 * k + 11269 := by
    unfold C
    simp [show (5668704 * k + 22538) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 11269) = 8503056 * k + 33808 := by
    unfold C
    simp [show (2834352 * k + 11269) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 33808) = 4251528 * k + 16904 := by
    unfold C
    simp [show (8503056 * k + 33808) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 16904) = 2125764 * k + 8452 := by
    unfold C
    simp [show (4251528 * k + 16904) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 8452) = 1062882 * k + 4226 := by
    unfold C
    simp [show (2125764 * k + 8452) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 4226) = 531441 * k + 2113 := by
    unfold C
    simp [show (1062882 * k + 4226) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 4167) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 4167)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_4351 : ∀ k : Nat,
    iterate (1048576 * k + 4351) 32 = 531441 * k + 2206 ∧
      531441 * k + 2206 < 1048576 * k + 4351 := by
  intro k
  have h1 : C (1048576 * k + 4351) = 3145728 * k + 13054 := by
    unfold C
    simp [show (1048576 * k + 4351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 13054) = 1572864 * k + 6527 := by
    unfold C
    simp [show (3145728 * k + 13054) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 6527) = 4718592 * k + 19582 := by
    unfold C
    simp [show (1572864 * k + 6527) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 19582) = 2359296 * k + 9791 := by
    unfold C
    simp [show (4718592 * k + 19582) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 9791) = 7077888 * k + 29374 := by
    unfold C
    simp [show (2359296 * k + 9791) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 29374) = 3538944 * k + 14687 := by
    unfold C
    simp [show (7077888 * k + 29374) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 14687) = 10616832 * k + 44062 := by
    unfold C
    simp [show (3538944 * k + 14687) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 44062) = 5308416 * k + 22031 := by
    unfold C
    simp [show (10616832 * k + 44062) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 22031) = 15925248 * k + 66094 := by
    unfold C
    simp [show (5308416 * k + 22031) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 66094) = 7962624 * k + 33047 := by
    unfold C
    simp [show (15925248 * k + 66094) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 33047) = 23887872 * k + 99142 := by
    unfold C
    simp [show (7962624 * k + 33047) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 99142) = 11943936 * k + 49571 := by
    unfold C
    simp [show (23887872 * k + 99142) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 49571) = 35831808 * k + 148714 := by
    unfold C
    simp [show (11943936 * k + 49571) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 148714) = 17915904 * k + 74357 := by
    unfold C
    simp [show (35831808 * k + 148714) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 74357) = 53747712 * k + 223072 := by
    unfold C
    simp [show (17915904 * k + 74357) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 223072) = 26873856 * k + 111536 := by
    unfold C
    simp [show (53747712 * k + 223072) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 111536) = 13436928 * k + 55768 := by
    unfold C
    simp [show (26873856 * k + 111536) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 55768) = 6718464 * k + 27884 := by
    unfold C
    simp [show (13436928 * k + 55768) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 27884) = 3359232 * k + 13942 := by
    unfold C
    simp [show (6718464 * k + 27884) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 13942) = 1679616 * k + 6971 := by
    unfold C
    simp [show (3359232 * k + 13942) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 6971) = 5038848 * k + 20914 := by
    unfold C
    simp [show (1679616 * k + 6971) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 20914) = 2519424 * k + 10457 := by
    unfold C
    simp [show (5038848 * k + 20914) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 10457) = 7558272 * k + 31372 := by
    unfold C
    simp [show (2519424 * k + 10457) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 31372) = 3779136 * k + 15686 := by
    unfold C
    simp [show (7558272 * k + 31372) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 15686) = 1889568 * k + 7843 := by
    unfold C
    simp [show (3779136 * k + 15686) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 7843) = 5668704 * k + 23530 := by
    unfold C
    simp [show (1889568 * k + 7843) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 23530) = 2834352 * k + 11765 := by
    unfold C
    simp [show (5668704 * k + 23530) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 11765) = 8503056 * k + 35296 := by
    unfold C
    simp [show (2834352 * k + 11765) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 35296) = 4251528 * k + 17648 := by
    unfold C
    simp [show (8503056 * k + 35296) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 17648) = 2125764 * k + 8824 := by
    unfold C
    simp [show (4251528 * k + 17648) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 8824) = 1062882 * k + 4412 := by
    unfold C
    simp [show (2125764 * k + 8824) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 4412) = 531441 * k + 2206 := by
    unfold C
    simp [show (1062882 * k + 4412) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 4351) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 4351)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_4511 : ∀ k : Nat,
    iterate (1048576 * k + 4511) 32 = 531441 * k + 2287 ∧
      531441 * k + 2287 < 1048576 * k + 4511 := by
  intro k
  have h1 : C (1048576 * k + 4511) = 3145728 * k + 13534 := by
    unfold C
    simp [show (1048576 * k + 4511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 13534) = 1572864 * k + 6767 := by
    unfold C
    simp [show (3145728 * k + 13534) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 6767) = 4718592 * k + 20302 := by
    unfold C
    simp [show (1572864 * k + 6767) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 20302) = 2359296 * k + 10151 := by
    unfold C
    simp [show (4718592 * k + 20302) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 10151) = 7077888 * k + 30454 := by
    unfold C
    simp [show (2359296 * k + 10151) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 30454) = 3538944 * k + 15227 := by
    unfold C
    simp [show (7077888 * k + 30454) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 15227) = 10616832 * k + 45682 := by
    unfold C
    simp [show (3538944 * k + 15227) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 45682) = 5308416 * k + 22841 := by
    unfold C
    simp [show (10616832 * k + 45682) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 22841) = 15925248 * k + 68524 := by
    unfold C
    simp [show (5308416 * k + 22841) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 68524) = 7962624 * k + 34262 := by
    unfold C
    simp [show (15925248 * k + 68524) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 34262) = 3981312 * k + 17131 := by
    unfold C
    simp [show (7962624 * k + 34262) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 17131) = 11943936 * k + 51394 := by
    unfold C
    simp [show (3981312 * k + 17131) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 51394) = 5971968 * k + 25697 := by
    unfold C
    simp [show (11943936 * k + 51394) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 25697) = 17915904 * k + 77092 := by
    unfold C
    simp [show (5971968 * k + 25697) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 77092) = 8957952 * k + 38546 := by
    unfold C
    simp [show (17915904 * k + 77092) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 38546) = 4478976 * k + 19273 := by
    unfold C
    simp [show (8957952 * k + 38546) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 19273) = 13436928 * k + 57820 := by
    unfold C
    simp [show (4478976 * k + 19273) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 57820) = 6718464 * k + 28910 := by
    unfold C
    simp [show (13436928 * k + 57820) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 28910) = 3359232 * k + 14455 := by
    unfold C
    simp [show (6718464 * k + 28910) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 14455) = 10077696 * k + 43366 := by
    unfold C
    simp [show (3359232 * k + 14455) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 43366) = 5038848 * k + 21683 := by
    unfold C
    simp [show (10077696 * k + 43366) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 21683) = 15116544 * k + 65050 := by
    unfold C
    simp [show (5038848 * k + 21683) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 65050) = 7558272 * k + 32525 := by
    unfold C
    simp [show (15116544 * k + 65050) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 32525) = 22674816 * k + 97576 := by
    unfold C
    simp [show (7558272 * k + 32525) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 97576) = 11337408 * k + 48788 := by
    unfold C
    simp [show (22674816 * k + 97576) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 48788) = 5668704 * k + 24394 := by
    unfold C
    simp [show (11337408 * k + 48788) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 24394) = 2834352 * k + 12197 := by
    unfold C
    simp [show (5668704 * k + 24394) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 12197) = 8503056 * k + 36592 := by
    unfold C
    simp [show (2834352 * k + 12197) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 36592) = 4251528 * k + 18296 := by
    unfold C
    simp [show (8503056 * k + 36592) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 18296) = 2125764 * k + 9148 := by
    unfold C
    simp [show (4251528 * k + 18296) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 9148) = 1062882 * k + 4574 := by
    unfold C
    simp [show (2125764 * k + 9148) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 4574) = 531441 * k + 2287 := by
    unfold C
    simp [show (1062882 * k + 4574) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 4511) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 4511)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_5211 : ∀ k : Nat,
    iterate (1048576 * k + 5211) 32 = 531441 * k + 2642 ∧
      531441 * k + 2642 < 1048576 * k + 5211 := by
  intro k
  have h1 : C (1048576 * k + 5211) = 3145728 * k + 15634 := by
    unfold C
    simp [show (1048576 * k + 5211) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 15634) = 1572864 * k + 7817 := by
    unfold C
    simp [show (3145728 * k + 15634) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 7817) = 4718592 * k + 23452 := by
    unfold C
    simp [show (1572864 * k + 7817) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 23452) = 2359296 * k + 11726 := by
    unfold C
    simp [show (4718592 * k + 23452) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 11726) = 1179648 * k + 5863 := by
    unfold C
    simp [show (2359296 * k + 11726) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 5863) = 3538944 * k + 17590 := by
    unfold C
    simp [show (1179648 * k + 5863) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 17590) = 1769472 * k + 8795 := by
    unfold C
    simp [show (3538944 * k + 17590) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 8795) = 5308416 * k + 26386 := by
    unfold C
    simp [show (1769472 * k + 8795) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 26386) = 2654208 * k + 13193 := by
    unfold C
    simp [show (5308416 * k + 26386) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 13193) = 7962624 * k + 39580 := by
    unfold C
    simp [show (2654208 * k + 13193) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 39580) = 3981312 * k + 19790 := by
    unfold C
    simp [show (7962624 * k + 39580) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 19790) = 1990656 * k + 9895 := by
    unfold C
    simp [show (3981312 * k + 19790) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 9895) = 5971968 * k + 29686 := by
    unfold C
    simp [show (1990656 * k + 9895) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 29686) = 2985984 * k + 14843 := by
    unfold C
    simp [show (5971968 * k + 29686) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 14843) = 8957952 * k + 44530 := by
    unfold C
    simp [show (2985984 * k + 14843) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 44530) = 4478976 * k + 22265 := by
    unfold C
    simp [show (8957952 * k + 44530) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 22265) = 13436928 * k + 66796 := by
    unfold C
    simp [show (4478976 * k + 22265) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 66796) = 6718464 * k + 33398 := by
    unfold C
    simp [show (13436928 * k + 66796) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 33398) = 3359232 * k + 16699 := by
    unfold C
    simp [show (6718464 * k + 33398) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 16699) = 10077696 * k + 50098 := by
    unfold C
    simp [show (3359232 * k + 16699) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 50098) = 5038848 * k + 25049 := by
    unfold C
    simp [show (10077696 * k + 50098) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 25049) = 15116544 * k + 75148 := by
    unfold C
    simp [show (5038848 * k + 25049) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 75148) = 7558272 * k + 37574 := by
    unfold C
    simp [show (15116544 * k + 75148) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 37574) = 3779136 * k + 18787 := by
    unfold C
    simp [show (7558272 * k + 37574) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 18787) = 11337408 * k + 56362 := by
    unfold C
    simp [show (3779136 * k + 18787) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 56362) = 5668704 * k + 28181 := by
    unfold C
    simp [show (11337408 * k + 56362) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 28181) = 17006112 * k + 84544 := by
    unfold C
    simp [show (5668704 * k + 28181) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 84544) = 8503056 * k + 42272 := by
    unfold C
    simp [show (17006112 * k + 84544) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 42272) = 4251528 * k + 21136 := by
    unfold C
    simp [show (8503056 * k + 42272) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 21136) = 2125764 * k + 10568 := by
    unfold C
    simp [show (4251528 * k + 21136) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 10568) = 1062882 * k + 5284 := by
    unfold C
    simp [show (2125764 * k + 10568) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 5284) = 531441 * k + 2642 := by
    unfold C
    simp [show (1062882 * k + 5284) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 5211) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 5211)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_5223 : ∀ k : Nat,
    iterate (1048576 * k + 5223) 32 = 531441 * k + 2648 ∧
      531441 * k + 2648 < 1048576 * k + 5223 := by
  intro k
  have h1 : C (1048576 * k + 5223) = 3145728 * k + 15670 := by
    unfold C
    simp [show (1048576 * k + 5223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 15670) = 1572864 * k + 7835 := by
    unfold C
    simp [show (3145728 * k + 15670) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 7835) = 4718592 * k + 23506 := by
    unfold C
    simp [show (1572864 * k + 7835) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 23506) = 2359296 * k + 11753 := by
    unfold C
    simp [show (4718592 * k + 23506) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 11753) = 7077888 * k + 35260 := by
    unfold C
    simp [show (2359296 * k + 11753) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 35260) = 3538944 * k + 17630 := by
    unfold C
    simp [show (7077888 * k + 35260) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 17630) = 1769472 * k + 8815 := by
    unfold C
    simp [show (3538944 * k + 17630) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 8815) = 5308416 * k + 26446 := by
    unfold C
    simp [show (1769472 * k + 8815) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 26446) = 2654208 * k + 13223 := by
    unfold C
    simp [show (5308416 * k + 26446) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 13223) = 7962624 * k + 39670 := by
    unfold C
    simp [show (2654208 * k + 13223) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 39670) = 3981312 * k + 19835 := by
    unfold C
    simp [show (7962624 * k + 39670) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 19835) = 11943936 * k + 59506 := by
    unfold C
    simp [show (3981312 * k + 19835) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 59506) = 5971968 * k + 29753 := by
    unfold C
    simp [show (11943936 * k + 59506) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 29753) = 17915904 * k + 89260 := by
    unfold C
    simp [show (5971968 * k + 29753) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 89260) = 8957952 * k + 44630 := by
    unfold C
    simp [show (17915904 * k + 89260) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 44630) = 4478976 * k + 22315 := by
    unfold C
    simp [show (8957952 * k + 44630) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 22315) = 13436928 * k + 66946 := by
    unfold C
    simp [show (4478976 * k + 22315) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 66946) = 6718464 * k + 33473 := by
    unfold C
    simp [show (13436928 * k + 66946) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 33473) = 20155392 * k + 100420 := by
    unfold C
    simp [show (6718464 * k + 33473) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 100420) = 10077696 * k + 50210 := by
    unfold C
    simp [show (20155392 * k + 100420) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 50210) = 5038848 * k + 25105 := by
    unfold C
    simp [show (10077696 * k + 50210) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 25105) = 15116544 * k + 75316 := by
    unfold C
    simp [show (5038848 * k + 25105) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 75316) = 7558272 * k + 37658 := by
    unfold C
    simp [show (15116544 * k + 75316) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 37658) = 3779136 * k + 18829 := by
    unfold C
    simp [show (7558272 * k + 37658) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 18829) = 11337408 * k + 56488 := by
    unfold C
    simp [show (3779136 * k + 18829) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 56488) = 5668704 * k + 28244 := by
    unfold C
    simp [show (11337408 * k + 56488) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 28244) = 2834352 * k + 14122 := by
    unfold C
    simp [show (5668704 * k + 28244) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 14122) = 1417176 * k + 7061 := by
    unfold C
    simp [show (2834352 * k + 14122) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 7061) = 4251528 * k + 21184 := by
    unfold C
    simp [show (1417176 * k + 7061) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 21184) = 2125764 * k + 10592 := by
    unfold C
    simp [show (4251528 * k + 21184) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 10592) = 1062882 * k + 5296 := by
    unfold C
    simp [show (2125764 * k + 10592) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 5296) = 531441 * k + 2648 := by
    unfold C
    simp [show (1062882 * k + 5296) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 5223) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 5223)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard001
