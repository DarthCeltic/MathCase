import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard086

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_665455 : ∀ k : Nat,
    iterate (1048576 * k + 665455) 32 = 531441 * k + 337268 ∧
      531441 * k + 337268 < 1048576 * k + 665455 := by
  intro k
  have h1 : C (1048576 * k + 665455) = 3145728 * k + 1996366 := by
    unfold C
    simp [show (1048576 * k + 665455) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1996366) = 1572864 * k + 998183 := by
    unfold C
    simp [show (3145728 * k + 1996366) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 998183) = 4718592 * k + 2994550 := by
    unfold C
    simp [show (1572864 * k + 998183) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2994550) = 2359296 * k + 1497275 := by
    unfold C
    simp [show (4718592 * k + 2994550) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1497275) = 7077888 * k + 4491826 := by
    unfold C
    simp [show (2359296 * k + 1497275) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4491826) = 3538944 * k + 2245913 := by
    unfold C
    simp [show (7077888 * k + 4491826) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2245913) = 10616832 * k + 6737740 := by
    unfold C
    simp [show (3538944 * k + 2245913) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6737740) = 5308416 * k + 3368870 := by
    unfold C
    simp [show (10616832 * k + 6737740) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3368870) = 2654208 * k + 1684435 := by
    unfold C
    simp [show (5308416 * k + 3368870) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1684435) = 7962624 * k + 5053306 := by
    unfold C
    simp [show (2654208 * k + 1684435) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5053306) = 3981312 * k + 2526653 := by
    unfold C
    simp [show (7962624 * k + 5053306) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2526653) = 11943936 * k + 7579960 := by
    unfold C
    simp [show (3981312 * k + 2526653) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7579960) = 5971968 * k + 3789980 := by
    unfold C
    simp [show (11943936 * k + 7579960) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3789980) = 2985984 * k + 1894990 := by
    unfold C
    simp [show (5971968 * k + 3789980) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1894990) = 1492992 * k + 947495 := by
    unfold C
    simp [show (2985984 * k + 1894990) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 947495) = 4478976 * k + 2842486 := by
    unfold C
    simp [show (1492992 * k + 947495) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2842486) = 2239488 * k + 1421243 := by
    unfold C
    simp [show (4478976 * k + 2842486) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1421243) = 6718464 * k + 4263730 := by
    unfold C
    simp [show (2239488 * k + 1421243) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4263730) = 3359232 * k + 2131865 := by
    unfold C
    simp [show (6718464 * k + 4263730) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2131865) = 10077696 * k + 6395596 := by
    unfold C
    simp [show (3359232 * k + 2131865) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6395596) = 5038848 * k + 3197798 := by
    unfold C
    simp [show (10077696 * k + 6395596) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3197798) = 2519424 * k + 1598899 := by
    unfold C
    simp [show (5038848 * k + 3197798) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1598899) = 7558272 * k + 4796698 := by
    unfold C
    simp [show (2519424 * k + 1598899) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4796698) = 3779136 * k + 2398349 := by
    unfold C
    simp [show (7558272 * k + 4796698) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2398349) = 11337408 * k + 7195048 := by
    unfold C
    simp [show (3779136 * k + 2398349) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7195048) = 5668704 * k + 3597524 := by
    unfold C
    simp [show (11337408 * k + 7195048) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3597524) = 2834352 * k + 1798762 := by
    unfold C
    simp [show (5668704 * k + 3597524) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1798762) = 1417176 * k + 899381 := by
    unfold C
    simp [show (2834352 * k + 1798762) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 899381) = 4251528 * k + 2698144 := by
    unfold C
    simp [show (1417176 * k + 899381) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2698144) = 2125764 * k + 1349072 := by
    unfold C
    simp [show (4251528 * k + 2698144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1349072) = 1062882 * k + 674536 := by
    unfold C
    simp [show (2125764 * k + 1349072) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 674536) = 531441 * k + 337268 := by
    unfold C
    simp [show (1062882 * k + 674536) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 665455) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 665455)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_665767 : ∀ k : Nat,
    iterate (1048576 * k + 665767) 32 = 531441 * k + 337426 ∧
      531441 * k + 337426 < 1048576 * k + 665767 := by
  intro k
  have h1 : C (1048576 * k + 665767) = 3145728 * k + 1997302 := by
    unfold C
    simp [show (1048576 * k + 665767) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1997302) = 1572864 * k + 998651 := by
    unfold C
    simp [show (3145728 * k + 1997302) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 998651) = 4718592 * k + 2995954 := by
    unfold C
    simp [show (1572864 * k + 998651) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2995954) = 2359296 * k + 1497977 := by
    unfold C
    simp [show (4718592 * k + 2995954) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1497977) = 7077888 * k + 4493932 := by
    unfold C
    simp [show (2359296 * k + 1497977) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4493932) = 3538944 * k + 2246966 := by
    unfold C
    simp [show (7077888 * k + 4493932) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2246966) = 1769472 * k + 1123483 := by
    unfold C
    simp [show (3538944 * k + 2246966) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1123483) = 5308416 * k + 3370450 := by
    unfold C
    simp [show (1769472 * k + 1123483) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3370450) = 2654208 * k + 1685225 := by
    unfold C
    simp [show (5308416 * k + 3370450) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1685225) = 7962624 * k + 5055676 := by
    unfold C
    simp [show (2654208 * k + 1685225) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5055676) = 3981312 * k + 2527838 := by
    unfold C
    simp [show (7962624 * k + 5055676) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2527838) = 1990656 * k + 1263919 := by
    unfold C
    simp [show (3981312 * k + 2527838) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1263919) = 5971968 * k + 3791758 := by
    unfold C
    simp [show (1990656 * k + 1263919) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3791758) = 2985984 * k + 1895879 := by
    unfold C
    simp [show (5971968 * k + 3791758) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1895879) = 8957952 * k + 5687638 := by
    unfold C
    simp [show (2985984 * k + 1895879) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5687638) = 4478976 * k + 2843819 := by
    unfold C
    simp [show (8957952 * k + 5687638) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2843819) = 13436928 * k + 8531458 := by
    unfold C
    simp [show (4478976 * k + 2843819) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8531458) = 6718464 * k + 4265729 := by
    unfold C
    simp [show (13436928 * k + 8531458) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4265729) = 20155392 * k + 12797188 := by
    unfold C
    simp [show (6718464 * k + 4265729) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12797188) = 10077696 * k + 6398594 := by
    unfold C
    simp [show (20155392 * k + 12797188) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6398594) = 5038848 * k + 3199297 := by
    unfold C
    simp [show (10077696 * k + 6398594) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3199297) = 15116544 * k + 9597892 := by
    unfold C
    simp [show (5038848 * k + 3199297) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9597892) = 7558272 * k + 4798946 := by
    unfold C
    simp [show (15116544 * k + 9597892) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4798946) = 3779136 * k + 2399473 := by
    unfold C
    simp [show (7558272 * k + 4798946) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2399473) = 11337408 * k + 7198420 := by
    unfold C
    simp [show (3779136 * k + 2399473) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7198420) = 5668704 * k + 3599210 := by
    unfold C
    simp [show (11337408 * k + 7198420) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3599210) = 2834352 * k + 1799605 := by
    unfold C
    simp [show (5668704 * k + 3599210) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1799605) = 8503056 * k + 5398816 := by
    unfold C
    simp [show (2834352 * k + 1799605) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5398816) = 4251528 * k + 2699408 := by
    unfold C
    simp [show (8503056 * k + 5398816) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2699408) = 2125764 * k + 1349704 := by
    unfold C
    simp [show (4251528 * k + 2699408) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1349704) = 1062882 * k + 674852 := by
    unfold C
    simp [show (2125764 * k + 1349704) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 674852) = 531441 * k + 337426 := by
    unfold C
    simp [show (1062882 * k + 674852) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 665767) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 665767)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_666367 : ∀ k : Nat,
    iterate (1048576 * k + 666367) 32 = 531441 * k + 337730 ∧
      531441 * k + 337730 < 1048576 * k + 666367 := by
  intro k
  have h1 : C (1048576 * k + 666367) = 3145728 * k + 1999102 := by
    unfold C
    simp [show (1048576 * k + 666367) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1999102) = 1572864 * k + 999551 := by
    unfold C
    simp [show (3145728 * k + 1999102) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 999551) = 4718592 * k + 2998654 := by
    unfold C
    simp [show (1572864 * k + 999551) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2998654) = 2359296 * k + 1499327 := by
    unfold C
    simp [show (4718592 * k + 2998654) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1499327) = 7077888 * k + 4497982 := by
    unfold C
    simp [show (2359296 * k + 1499327) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4497982) = 3538944 * k + 2248991 := by
    unfold C
    simp [show (7077888 * k + 4497982) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2248991) = 10616832 * k + 6746974 := by
    unfold C
    simp [show (3538944 * k + 2248991) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6746974) = 5308416 * k + 3373487 := by
    unfold C
    simp [show (10616832 * k + 6746974) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3373487) = 15925248 * k + 10120462 := by
    unfold C
    simp [show (5308416 * k + 3373487) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10120462) = 7962624 * k + 5060231 := by
    unfold C
    simp [show (15925248 * k + 10120462) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5060231) = 23887872 * k + 15180694 := by
    unfold C
    simp [show (7962624 * k + 5060231) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 15180694) = 11943936 * k + 7590347 := by
    unfold C
    simp [show (23887872 * k + 15180694) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7590347) = 35831808 * k + 22771042 := by
    unfold C
    simp [show (11943936 * k + 7590347) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 22771042) = 17915904 * k + 11385521 := by
    unfold C
    simp [show (35831808 * k + 22771042) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 11385521) = 53747712 * k + 34156564 := by
    unfold C
    simp [show (17915904 * k + 11385521) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 34156564) = 26873856 * k + 17078282 := by
    unfold C
    simp [show (53747712 * k + 34156564) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 17078282) = 13436928 * k + 8539141 := by
    unfold C
    simp [show (26873856 * k + 17078282) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8539141) = 40310784 * k + 25617424 := by
    unfold C
    simp [show (13436928 * k + 8539141) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 25617424) = 20155392 * k + 12808712 := by
    unfold C
    simp [show (40310784 * k + 25617424) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 12808712) = 10077696 * k + 6404356 := by
    unfold C
    simp [show (20155392 * k + 12808712) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6404356) = 5038848 * k + 3202178 := by
    unfold C
    simp [show (10077696 * k + 6404356) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3202178) = 2519424 * k + 1601089 := by
    unfold C
    simp [show (5038848 * k + 3202178) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1601089) = 7558272 * k + 4803268 := by
    unfold C
    simp [show (2519424 * k + 1601089) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4803268) = 3779136 * k + 2401634 := by
    unfold C
    simp [show (7558272 * k + 4803268) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2401634) = 1889568 * k + 1200817 := by
    unfold C
    simp [show (3779136 * k + 2401634) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1200817) = 5668704 * k + 3602452 := by
    unfold C
    simp [show (1889568 * k + 1200817) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3602452) = 2834352 * k + 1801226 := by
    unfold C
    simp [show (5668704 * k + 3602452) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1801226) = 1417176 * k + 900613 := by
    unfold C
    simp [show (2834352 * k + 1801226) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 900613) = 4251528 * k + 2701840 := by
    unfold C
    simp [show (1417176 * k + 900613) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2701840) = 2125764 * k + 1350920 := by
    unfold C
    simp [show (4251528 * k + 2701840) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1350920) = 1062882 * k + 675460 := by
    unfold C
    simp [show (2125764 * k + 1350920) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 675460) = 531441 * k + 337730 := by
    unfold C
    simp [show (1062882 * k + 675460) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 666367) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 666367)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_666651 : ∀ k : Nat,
    iterate (1048576 * k + 666651) 32 = 531441 * k + 337874 ∧
      531441 * k + 337874 < 1048576 * k + 666651 := by
  intro k
  have h1 : C (1048576 * k + 666651) = 3145728 * k + 1999954 := by
    unfold C
    simp [show (1048576 * k + 666651) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1999954) = 1572864 * k + 999977 := by
    unfold C
    simp [show (3145728 * k + 1999954) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 999977) = 4718592 * k + 2999932 := by
    unfold C
    simp [show (1572864 * k + 999977) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2999932) = 2359296 * k + 1499966 := by
    unfold C
    simp [show (4718592 * k + 2999932) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1499966) = 1179648 * k + 749983 := by
    unfold C
    simp [show (2359296 * k + 1499966) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 749983) = 3538944 * k + 2249950 := by
    unfold C
    simp [show (1179648 * k + 749983) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2249950) = 1769472 * k + 1124975 := by
    unfold C
    simp [show (3538944 * k + 2249950) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1124975) = 5308416 * k + 3374926 := by
    unfold C
    simp [show (1769472 * k + 1124975) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3374926) = 2654208 * k + 1687463 := by
    unfold C
    simp [show (5308416 * k + 3374926) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1687463) = 7962624 * k + 5062390 := by
    unfold C
    simp [show (2654208 * k + 1687463) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5062390) = 3981312 * k + 2531195 := by
    unfold C
    simp [show (7962624 * k + 5062390) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2531195) = 11943936 * k + 7593586 := by
    unfold C
    simp [show (3981312 * k + 2531195) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7593586) = 5971968 * k + 3796793 := by
    unfold C
    simp [show (11943936 * k + 7593586) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3796793) = 17915904 * k + 11390380 := by
    unfold C
    simp [show (5971968 * k + 3796793) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11390380) = 8957952 * k + 5695190 := by
    unfold C
    simp [show (17915904 * k + 11390380) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5695190) = 4478976 * k + 2847595 := by
    unfold C
    simp [show (8957952 * k + 5695190) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2847595) = 13436928 * k + 8542786 := by
    unfold C
    simp [show (4478976 * k + 2847595) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8542786) = 6718464 * k + 4271393 := by
    unfold C
    simp [show (13436928 * k + 8542786) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4271393) = 20155392 * k + 12814180 := by
    unfold C
    simp [show (6718464 * k + 4271393) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12814180) = 10077696 * k + 6407090 := by
    unfold C
    simp [show (20155392 * k + 12814180) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6407090) = 5038848 * k + 3203545 := by
    unfold C
    simp [show (10077696 * k + 6407090) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3203545) = 15116544 * k + 9610636 := by
    unfold C
    simp [show (5038848 * k + 3203545) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9610636) = 7558272 * k + 4805318 := by
    unfold C
    simp [show (15116544 * k + 9610636) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4805318) = 3779136 * k + 2402659 := by
    unfold C
    simp [show (7558272 * k + 4805318) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2402659) = 11337408 * k + 7207978 := by
    unfold C
    simp [show (3779136 * k + 2402659) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7207978) = 5668704 * k + 3603989 := by
    unfold C
    simp [show (11337408 * k + 7207978) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3603989) = 17006112 * k + 10811968 := by
    unfold C
    simp [show (5668704 * k + 3603989) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 10811968) = 8503056 * k + 5405984 := by
    unfold C
    simp [show (17006112 * k + 10811968) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5405984) = 4251528 * k + 2702992 := by
    unfold C
    simp [show (8503056 * k + 5405984) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2702992) = 2125764 * k + 1351496 := by
    unfold C
    simp [show (4251528 * k + 2702992) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1351496) = 1062882 * k + 675748 := by
    unfold C
    simp [show (2125764 * k + 1351496) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 675748) = 531441 * k + 337874 := by
    unfold C
    simp [show (1062882 * k + 675748) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 666651) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 666651)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_666779 : ∀ k : Nat,
    iterate (1048576 * k + 666779) 32 = 531441 * k + 337939 ∧
      531441 * k + 337939 < 1048576 * k + 666779 := by
  intro k
  have h1 : C (1048576 * k + 666779) = 3145728 * k + 2000338 := by
    unfold C
    simp [show (1048576 * k + 666779) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2000338) = 1572864 * k + 1000169 := by
    unfold C
    simp [show (3145728 * k + 2000338) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1000169) = 4718592 * k + 3000508 := by
    unfold C
    simp [show (1572864 * k + 1000169) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3000508) = 2359296 * k + 1500254 := by
    unfold C
    simp [show (4718592 * k + 3000508) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1500254) = 1179648 * k + 750127 := by
    unfold C
    simp [show (2359296 * k + 1500254) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 750127) = 3538944 * k + 2250382 := by
    unfold C
    simp [show (1179648 * k + 750127) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2250382) = 1769472 * k + 1125191 := by
    unfold C
    simp [show (3538944 * k + 2250382) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1125191) = 5308416 * k + 3375574 := by
    unfold C
    simp [show (1769472 * k + 1125191) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3375574) = 2654208 * k + 1687787 := by
    unfold C
    simp [show (5308416 * k + 3375574) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1687787) = 7962624 * k + 5063362 := by
    unfold C
    simp [show (2654208 * k + 1687787) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5063362) = 3981312 * k + 2531681 := by
    unfold C
    simp [show (7962624 * k + 5063362) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2531681) = 11943936 * k + 7595044 := by
    unfold C
    simp [show (3981312 * k + 2531681) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7595044) = 5971968 * k + 3797522 := by
    unfold C
    simp [show (11943936 * k + 7595044) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3797522) = 2985984 * k + 1898761 := by
    unfold C
    simp [show (5971968 * k + 3797522) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1898761) = 8957952 * k + 5696284 := by
    unfold C
    simp [show (2985984 * k + 1898761) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5696284) = 4478976 * k + 2848142 := by
    unfold C
    simp [show (8957952 * k + 5696284) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2848142) = 2239488 * k + 1424071 := by
    unfold C
    simp [show (4478976 * k + 2848142) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1424071) = 6718464 * k + 4272214 := by
    unfold C
    simp [show (2239488 * k + 1424071) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4272214) = 3359232 * k + 2136107 := by
    unfold C
    simp [show (6718464 * k + 4272214) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2136107) = 10077696 * k + 6408322 := by
    unfold C
    simp [show (3359232 * k + 2136107) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6408322) = 5038848 * k + 3204161 := by
    unfold C
    simp [show (10077696 * k + 6408322) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3204161) = 15116544 * k + 9612484 := by
    unfold C
    simp [show (5038848 * k + 3204161) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9612484) = 7558272 * k + 4806242 := by
    unfold C
    simp [show (15116544 * k + 9612484) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4806242) = 3779136 * k + 2403121 := by
    unfold C
    simp [show (7558272 * k + 4806242) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2403121) = 11337408 * k + 7209364 := by
    unfold C
    simp [show (3779136 * k + 2403121) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7209364) = 5668704 * k + 3604682 := by
    unfold C
    simp [show (11337408 * k + 7209364) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3604682) = 2834352 * k + 1802341 := by
    unfold C
    simp [show (5668704 * k + 3604682) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1802341) = 8503056 * k + 5407024 := by
    unfold C
    simp [show (2834352 * k + 1802341) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5407024) = 4251528 * k + 2703512 := by
    unfold C
    simp [show (8503056 * k + 5407024) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2703512) = 2125764 * k + 1351756 := by
    unfold C
    simp [show (4251528 * k + 2703512) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1351756) = 1062882 * k + 675878 := by
    unfold C
    simp [show (2125764 * k + 1351756) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 675878) = 531441 * k + 337939 := by
    unfold C
    simp [show (1062882 * k + 675878) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 666779) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 666779)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_667135 : ∀ k : Nat,
    iterate (1048576 * k + 667135) 32 = 531441 * k + 338119 ∧
      531441 * k + 338119 < 1048576 * k + 667135 := by
  intro k
  have h1 : C (1048576 * k + 667135) = 3145728 * k + 2001406 := by
    unfold C
    simp [show (1048576 * k + 667135) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2001406) = 1572864 * k + 1000703 := by
    unfold C
    simp [show (3145728 * k + 2001406) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1000703) = 4718592 * k + 3002110 := by
    unfold C
    simp [show (1572864 * k + 1000703) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3002110) = 2359296 * k + 1501055 := by
    unfold C
    simp [show (4718592 * k + 3002110) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1501055) = 7077888 * k + 4503166 := by
    unfold C
    simp [show (2359296 * k + 1501055) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4503166) = 3538944 * k + 2251583 := by
    unfold C
    simp [show (7077888 * k + 4503166) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2251583) = 10616832 * k + 6754750 := by
    unfold C
    simp [show (3538944 * k + 2251583) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6754750) = 5308416 * k + 3377375 := by
    unfold C
    simp [show (10616832 * k + 6754750) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3377375) = 15925248 * k + 10132126 := by
    unfold C
    simp [show (5308416 * k + 3377375) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10132126) = 7962624 * k + 5066063 := by
    unfold C
    simp [show (15925248 * k + 10132126) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5066063) = 23887872 * k + 15198190 := by
    unfold C
    simp [show (7962624 * k + 5066063) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 15198190) = 11943936 * k + 7599095 := by
    unfold C
    simp [show (23887872 * k + 15198190) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7599095) = 35831808 * k + 22797286 := by
    unfold C
    simp [show (11943936 * k + 7599095) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 22797286) = 17915904 * k + 11398643 := by
    unfold C
    simp [show (35831808 * k + 22797286) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 11398643) = 53747712 * k + 34195930 := by
    unfold C
    simp [show (17915904 * k + 11398643) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 34195930) = 26873856 * k + 17097965 := by
    unfold C
    simp [show (53747712 * k + 34195930) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 17097965) = 80621568 * k + 51293896 := by
    unfold C
    simp [show (26873856 * k + 17097965) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 51293896) = 40310784 * k + 25646948 := by
    unfold C
    simp [show (80621568 * k + 51293896) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 25646948) = 20155392 * k + 12823474 := by
    unfold C
    simp [show (40310784 * k + 25646948) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 12823474) = 10077696 * k + 6411737 := by
    unfold C
    simp [show (20155392 * k + 12823474) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6411737) = 30233088 * k + 19235212 := by
    unfold C
    simp [show (10077696 * k + 6411737) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 19235212) = 15116544 * k + 9617606 := by
    unfold C
    simp [show (30233088 * k + 19235212) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9617606) = 7558272 * k + 4808803 := by
    unfold C
    simp [show (15116544 * k + 9617606) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4808803) = 22674816 * k + 14426410 := by
    unfold C
    simp [show (7558272 * k + 4808803) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 14426410) = 11337408 * k + 7213205 := by
    unfold C
    simp [show (22674816 * k + 14426410) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7213205) = 34012224 * k + 21639616 := by
    unfold C
    simp [show (11337408 * k + 7213205) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 21639616) = 17006112 * k + 10819808 := by
    unfold C
    simp [show (34012224 * k + 21639616) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 10819808) = 8503056 * k + 5409904 := by
    unfold C
    simp [show (17006112 * k + 10819808) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5409904) = 4251528 * k + 2704952 := by
    unfold C
    simp [show (8503056 * k + 5409904) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2704952) = 2125764 * k + 1352476 := by
    unfold C
    simp [show (4251528 * k + 2704952) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1352476) = 1062882 * k + 676238 := by
    unfold C
    simp [show (2125764 * k + 1352476) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 676238) = 531441 * k + 338119 := by
    unfold C
    simp [show (1062882 * k + 676238) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 667135) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 667135)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_667815 : ∀ k : Nat,
    iterate (1048576 * k + 667815) 32 = 531441 * k + 338464 ∧
      531441 * k + 338464 < 1048576 * k + 667815 := by
  intro k
  have h1 : C (1048576 * k + 667815) = 3145728 * k + 2003446 := by
    unfold C
    simp [show (1048576 * k + 667815) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2003446) = 1572864 * k + 1001723 := by
    unfold C
    simp [show (3145728 * k + 2003446) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1001723) = 4718592 * k + 3005170 := by
    unfold C
    simp [show (1572864 * k + 1001723) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3005170) = 2359296 * k + 1502585 := by
    unfold C
    simp [show (4718592 * k + 3005170) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1502585) = 7077888 * k + 4507756 := by
    unfold C
    simp [show (2359296 * k + 1502585) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4507756) = 3538944 * k + 2253878 := by
    unfold C
    simp [show (7077888 * k + 4507756) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2253878) = 1769472 * k + 1126939 := by
    unfold C
    simp [show (3538944 * k + 2253878) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1126939) = 5308416 * k + 3380818 := by
    unfold C
    simp [show (1769472 * k + 1126939) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3380818) = 2654208 * k + 1690409 := by
    unfold C
    simp [show (5308416 * k + 3380818) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1690409) = 7962624 * k + 5071228 := by
    unfold C
    simp [show (2654208 * k + 1690409) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5071228) = 3981312 * k + 2535614 := by
    unfold C
    simp [show (7962624 * k + 5071228) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2535614) = 1990656 * k + 1267807 := by
    unfold C
    simp [show (3981312 * k + 2535614) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1267807) = 5971968 * k + 3803422 := by
    unfold C
    simp [show (1990656 * k + 1267807) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3803422) = 2985984 * k + 1901711 := by
    unfold C
    simp [show (5971968 * k + 3803422) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1901711) = 8957952 * k + 5705134 := by
    unfold C
    simp [show (2985984 * k + 1901711) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5705134) = 4478976 * k + 2852567 := by
    unfold C
    simp [show (8957952 * k + 5705134) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2852567) = 13436928 * k + 8557702 := by
    unfold C
    simp [show (4478976 * k + 2852567) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8557702) = 6718464 * k + 4278851 := by
    unfold C
    simp [show (13436928 * k + 8557702) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4278851) = 20155392 * k + 12836554 := by
    unfold C
    simp [show (6718464 * k + 4278851) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12836554) = 10077696 * k + 6418277 := by
    unfold C
    simp [show (20155392 * k + 12836554) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6418277) = 30233088 * k + 19254832 := by
    unfold C
    simp [show (10077696 * k + 6418277) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 19254832) = 15116544 * k + 9627416 := by
    unfold C
    simp [show (30233088 * k + 19254832) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9627416) = 7558272 * k + 4813708 := by
    unfold C
    simp [show (15116544 * k + 9627416) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4813708) = 3779136 * k + 2406854 := by
    unfold C
    simp [show (7558272 * k + 4813708) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2406854) = 1889568 * k + 1203427 := by
    unfold C
    simp [show (3779136 * k + 2406854) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1203427) = 5668704 * k + 3610282 := by
    unfold C
    simp [show (1889568 * k + 1203427) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3610282) = 2834352 * k + 1805141 := by
    unfold C
    simp [show (5668704 * k + 3610282) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1805141) = 8503056 * k + 5415424 := by
    unfold C
    simp [show (2834352 * k + 1805141) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5415424) = 4251528 * k + 2707712 := by
    unfold C
    simp [show (8503056 * k + 5415424) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2707712) = 2125764 * k + 1353856 := by
    unfold C
    simp [show (4251528 * k + 2707712) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1353856) = 1062882 * k + 676928 := by
    unfold C
    simp [show (2125764 * k + 1353856) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 676928) = 531441 * k + 338464 := by
    unfold C
    simp [show (1062882 * k + 676928) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 667815) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 667815)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_668143 : ∀ k : Nat,
    iterate (1048576 * k + 668143) 32 = 531441 * k + 338630 ∧
      531441 * k + 338630 < 1048576 * k + 668143 := by
  intro k
  have h1 : C (1048576 * k + 668143) = 3145728 * k + 2004430 := by
    unfold C
    simp [show (1048576 * k + 668143) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2004430) = 1572864 * k + 1002215 := by
    unfold C
    simp [show (3145728 * k + 2004430) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1002215) = 4718592 * k + 3006646 := by
    unfold C
    simp [show (1572864 * k + 1002215) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3006646) = 2359296 * k + 1503323 := by
    unfold C
    simp [show (4718592 * k + 3006646) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1503323) = 7077888 * k + 4509970 := by
    unfold C
    simp [show (2359296 * k + 1503323) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4509970) = 3538944 * k + 2254985 := by
    unfold C
    simp [show (7077888 * k + 4509970) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2254985) = 10616832 * k + 6764956 := by
    unfold C
    simp [show (3538944 * k + 2254985) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6764956) = 5308416 * k + 3382478 := by
    unfold C
    simp [show (10616832 * k + 6764956) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3382478) = 2654208 * k + 1691239 := by
    unfold C
    simp [show (5308416 * k + 3382478) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1691239) = 7962624 * k + 5073718 := by
    unfold C
    simp [show (2654208 * k + 1691239) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5073718) = 3981312 * k + 2536859 := by
    unfold C
    simp [show (7962624 * k + 5073718) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2536859) = 11943936 * k + 7610578 := by
    unfold C
    simp [show (3981312 * k + 2536859) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7610578) = 5971968 * k + 3805289 := by
    unfold C
    simp [show (11943936 * k + 7610578) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3805289) = 17915904 * k + 11415868 := by
    unfold C
    simp [show (5971968 * k + 3805289) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11415868) = 8957952 * k + 5707934 := by
    unfold C
    simp [show (17915904 * k + 11415868) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5707934) = 4478976 * k + 2853967 := by
    unfold C
    simp [show (8957952 * k + 5707934) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2853967) = 13436928 * k + 8561902 := by
    unfold C
    simp [show (4478976 * k + 2853967) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8561902) = 6718464 * k + 4280951 := by
    unfold C
    simp [show (13436928 * k + 8561902) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4280951) = 20155392 * k + 12842854 := by
    unfold C
    simp [show (6718464 * k + 4280951) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12842854) = 10077696 * k + 6421427 := by
    unfold C
    simp [show (20155392 * k + 12842854) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6421427) = 30233088 * k + 19264282 := by
    unfold C
    simp [show (10077696 * k + 6421427) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 19264282) = 15116544 * k + 9632141 := by
    unfold C
    simp [show (30233088 * k + 19264282) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9632141) = 45349632 * k + 28896424 := by
    unfold C
    simp [show (15116544 * k + 9632141) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 28896424) = 22674816 * k + 14448212 := by
    unfold C
    simp [show (45349632 * k + 28896424) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 14448212) = 11337408 * k + 7224106 := by
    unfold C
    simp [show (22674816 * k + 14448212) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7224106) = 5668704 * k + 3612053 := by
    unfold C
    simp [show (11337408 * k + 7224106) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3612053) = 17006112 * k + 10836160 := by
    unfold C
    simp [show (5668704 * k + 3612053) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 10836160) = 8503056 * k + 5418080 := by
    unfold C
    simp [show (17006112 * k + 10836160) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5418080) = 4251528 * k + 2709040 := by
    unfold C
    simp [show (8503056 * k + 5418080) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2709040) = 2125764 * k + 1354520 := by
    unfold C
    simp [show (4251528 * k + 2709040) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1354520) = 1062882 * k + 677260 := by
    unfold C
    simp [show (2125764 * k + 1354520) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 677260) = 531441 * k + 338630 := by
    unfold C
    simp [show (1062882 * k + 677260) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 668143) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 668143)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_668391 : ∀ k : Nat,
    iterate (1048576 * k + 668391) 32 = 531441 * k + 338756 ∧
      531441 * k + 338756 < 1048576 * k + 668391 := by
  intro k
  have h1 : C (1048576 * k + 668391) = 3145728 * k + 2005174 := by
    unfold C
    simp [show (1048576 * k + 668391) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2005174) = 1572864 * k + 1002587 := by
    unfold C
    simp [show (3145728 * k + 2005174) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1002587) = 4718592 * k + 3007762 := by
    unfold C
    simp [show (1572864 * k + 1002587) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3007762) = 2359296 * k + 1503881 := by
    unfold C
    simp [show (4718592 * k + 3007762) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1503881) = 7077888 * k + 4511644 := by
    unfold C
    simp [show (2359296 * k + 1503881) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4511644) = 3538944 * k + 2255822 := by
    unfold C
    simp [show (7077888 * k + 4511644) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2255822) = 1769472 * k + 1127911 := by
    unfold C
    simp [show (3538944 * k + 2255822) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1127911) = 5308416 * k + 3383734 := by
    unfold C
    simp [show (1769472 * k + 1127911) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3383734) = 2654208 * k + 1691867 := by
    unfold C
    simp [show (5308416 * k + 3383734) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1691867) = 7962624 * k + 5075602 := by
    unfold C
    simp [show (2654208 * k + 1691867) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5075602) = 3981312 * k + 2537801 := by
    unfold C
    simp [show (7962624 * k + 5075602) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2537801) = 11943936 * k + 7613404 := by
    unfold C
    simp [show (3981312 * k + 2537801) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7613404) = 5971968 * k + 3806702 := by
    unfold C
    simp [show (11943936 * k + 7613404) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3806702) = 2985984 * k + 1903351 := by
    unfold C
    simp [show (5971968 * k + 3806702) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1903351) = 8957952 * k + 5710054 := by
    unfold C
    simp [show (2985984 * k + 1903351) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5710054) = 4478976 * k + 2855027 := by
    unfold C
    simp [show (8957952 * k + 5710054) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2855027) = 13436928 * k + 8565082 := by
    unfold C
    simp [show (4478976 * k + 2855027) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8565082) = 6718464 * k + 4282541 := by
    unfold C
    simp [show (13436928 * k + 8565082) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4282541) = 20155392 * k + 12847624 := by
    unfold C
    simp [show (6718464 * k + 4282541) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12847624) = 10077696 * k + 6423812 := by
    unfold C
    simp [show (20155392 * k + 12847624) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6423812) = 5038848 * k + 3211906 := by
    unfold C
    simp [show (10077696 * k + 6423812) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3211906) = 2519424 * k + 1605953 := by
    unfold C
    simp [show (5038848 * k + 3211906) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1605953) = 7558272 * k + 4817860 := by
    unfold C
    simp [show (2519424 * k + 1605953) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4817860) = 3779136 * k + 2408930 := by
    unfold C
    simp [show (7558272 * k + 4817860) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2408930) = 1889568 * k + 1204465 := by
    unfold C
    simp [show (3779136 * k + 2408930) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1204465) = 5668704 * k + 3613396 := by
    unfold C
    simp [show (1889568 * k + 1204465) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3613396) = 2834352 * k + 1806698 := by
    unfold C
    simp [show (5668704 * k + 3613396) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1806698) = 1417176 * k + 903349 := by
    unfold C
    simp [show (2834352 * k + 1806698) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 903349) = 4251528 * k + 2710048 := by
    unfold C
    simp [show (1417176 * k + 903349) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2710048) = 2125764 * k + 1355024 := by
    unfold C
    simp [show (4251528 * k + 2710048) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1355024) = 1062882 * k + 677512 := by
    unfold C
    simp [show (2125764 * k + 1355024) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 677512) = 531441 * k + 338756 := by
    unfold C
    simp [show (1062882 * k + 677512) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 668391) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 668391)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_669727 : ∀ k : Nat,
    iterate (1048576 * k + 669727) 32 = 531441 * k + 339433 ∧
      531441 * k + 339433 < 1048576 * k + 669727 := by
  intro k
  have h1 : C (1048576 * k + 669727) = 3145728 * k + 2009182 := by
    unfold C
    simp [show (1048576 * k + 669727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2009182) = 1572864 * k + 1004591 := by
    unfold C
    simp [show (3145728 * k + 2009182) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1004591) = 4718592 * k + 3013774 := by
    unfold C
    simp [show (1572864 * k + 1004591) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3013774) = 2359296 * k + 1506887 := by
    unfold C
    simp [show (4718592 * k + 3013774) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1506887) = 7077888 * k + 4520662 := by
    unfold C
    simp [show (2359296 * k + 1506887) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4520662) = 3538944 * k + 2260331 := by
    unfold C
    simp [show (7077888 * k + 4520662) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2260331) = 10616832 * k + 6780994 := by
    unfold C
    simp [show (3538944 * k + 2260331) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6780994) = 5308416 * k + 3390497 := by
    unfold C
    simp [show (10616832 * k + 6780994) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3390497) = 15925248 * k + 10171492 := by
    unfold C
    simp [show (5308416 * k + 3390497) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10171492) = 7962624 * k + 5085746 := by
    unfold C
    simp [show (15925248 * k + 10171492) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5085746) = 3981312 * k + 2542873 := by
    unfold C
    simp [show (7962624 * k + 5085746) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2542873) = 11943936 * k + 7628620 := by
    unfold C
    simp [show (3981312 * k + 2542873) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7628620) = 5971968 * k + 3814310 := by
    unfold C
    simp [show (11943936 * k + 7628620) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3814310) = 2985984 * k + 1907155 := by
    unfold C
    simp [show (5971968 * k + 3814310) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1907155) = 8957952 * k + 5721466 := by
    unfold C
    simp [show (2985984 * k + 1907155) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5721466) = 4478976 * k + 2860733 := by
    unfold C
    simp [show (8957952 * k + 5721466) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2860733) = 13436928 * k + 8582200 := by
    unfold C
    simp [show (4478976 * k + 2860733) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8582200) = 6718464 * k + 4291100 := by
    unfold C
    simp [show (13436928 * k + 8582200) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4291100) = 3359232 * k + 2145550 := by
    unfold C
    simp [show (6718464 * k + 4291100) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2145550) = 1679616 * k + 1072775 := by
    unfold C
    simp [show (3359232 * k + 2145550) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1072775) = 5038848 * k + 3218326 := by
    unfold C
    simp [show (1679616 * k + 1072775) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3218326) = 2519424 * k + 1609163 := by
    unfold C
    simp [show (5038848 * k + 3218326) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1609163) = 7558272 * k + 4827490 := by
    unfold C
    simp [show (2519424 * k + 1609163) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4827490) = 3779136 * k + 2413745 := by
    unfold C
    simp [show (7558272 * k + 4827490) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2413745) = 11337408 * k + 7241236 := by
    unfold C
    simp [show (3779136 * k + 2413745) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7241236) = 5668704 * k + 3620618 := by
    unfold C
    simp [show (11337408 * k + 7241236) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3620618) = 2834352 * k + 1810309 := by
    unfold C
    simp [show (5668704 * k + 3620618) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1810309) = 8503056 * k + 5430928 := by
    unfold C
    simp [show (2834352 * k + 1810309) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5430928) = 4251528 * k + 2715464 := by
    unfold C
    simp [show (8503056 * k + 5430928) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2715464) = 2125764 * k + 1357732 := by
    unfold C
    simp [show (4251528 * k + 2715464) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1357732) = 1062882 * k + 678866 := by
    unfold C
    simp [show (2125764 * k + 1357732) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 678866) = 531441 * k + 339433 := by
    unfold C
    simp [show (1062882 * k + 678866) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 669727) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 669727)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_670023 : ∀ k : Nat,
    iterate (1048576 * k + 670023) 32 = 531441 * k + 339583 ∧
      531441 * k + 339583 < 1048576 * k + 670023 := by
  intro k
  have h1 : C (1048576 * k + 670023) = 3145728 * k + 2010070 := by
    unfold C
    simp [show (1048576 * k + 670023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2010070) = 1572864 * k + 1005035 := by
    unfold C
    simp [show (3145728 * k + 2010070) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1005035) = 4718592 * k + 3015106 := by
    unfold C
    simp [show (1572864 * k + 1005035) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3015106) = 2359296 * k + 1507553 := by
    unfold C
    simp [show (4718592 * k + 3015106) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1507553) = 7077888 * k + 4522660 := by
    unfold C
    simp [show (2359296 * k + 1507553) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4522660) = 3538944 * k + 2261330 := by
    unfold C
    simp [show (7077888 * k + 4522660) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2261330) = 1769472 * k + 1130665 := by
    unfold C
    simp [show (3538944 * k + 2261330) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1130665) = 5308416 * k + 3391996 := by
    unfold C
    simp [show (1769472 * k + 1130665) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3391996) = 2654208 * k + 1695998 := by
    unfold C
    simp [show (5308416 * k + 3391996) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1695998) = 1327104 * k + 847999 := by
    unfold C
    simp [show (2654208 * k + 1695998) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 847999) = 3981312 * k + 2543998 := by
    unfold C
    simp [show (1327104 * k + 847999) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2543998) = 1990656 * k + 1271999 := by
    unfold C
    simp [show (3981312 * k + 2543998) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1271999) = 5971968 * k + 3815998 := by
    unfold C
    simp [show (1990656 * k + 1271999) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3815998) = 2985984 * k + 1907999 := by
    unfold C
    simp [show (5971968 * k + 3815998) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1907999) = 8957952 * k + 5723998 := by
    unfold C
    simp [show (2985984 * k + 1907999) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5723998) = 4478976 * k + 2861999 := by
    unfold C
    simp [show (8957952 * k + 5723998) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2861999) = 13436928 * k + 8585998 := by
    unfold C
    simp [show (4478976 * k + 2861999) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8585998) = 6718464 * k + 4292999 := by
    unfold C
    simp [show (13436928 * k + 8585998) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4292999) = 20155392 * k + 12878998 := by
    unfold C
    simp [show (6718464 * k + 4292999) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12878998) = 10077696 * k + 6439499 := by
    unfold C
    simp [show (20155392 * k + 12878998) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6439499) = 30233088 * k + 19318498 := by
    unfold C
    simp [show (10077696 * k + 6439499) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 19318498) = 15116544 * k + 9659249 := by
    unfold C
    simp [show (30233088 * k + 19318498) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9659249) = 45349632 * k + 28977748 := by
    unfold C
    simp [show (15116544 * k + 9659249) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 28977748) = 22674816 * k + 14488874 := by
    unfold C
    simp [show (45349632 * k + 28977748) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 14488874) = 11337408 * k + 7244437 := by
    unfold C
    simp [show (22674816 * k + 14488874) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7244437) = 34012224 * k + 21733312 := by
    unfold C
    simp [show (11337408 * k + 7244437) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 21733312) = 17006112 * k + 10866656 := by
    unfold C
    simp [show (34012224 * k + 21733312) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 10866656) = 8503056 * k + 5433328 := by
    unfold C
    simp [show (17006112 * k + 10866656) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5433328) = 4251528 * k + 2716664 := by
    unfold C
    simp [show (8503056 * k + 5433328) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2716664) = 2125764 * k + 1358332 := by
    unfold C
    simp [show (4251528 * k + 2716664) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1358332) = 1062882 * k + 679166 := by
    unfold C
    simp [show (2125764 * k + 1358332) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 679166) = 531441 * k + 339583 := by
    unfold C
    simp [show (1062882 * k + 679166) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 670023) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 670023)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_670191 : ∀ k : Nat,
    iterate (1048576 * k + 670191) 32 = 531441 * k + 339668 ∧
      531441 * k + 339668 < 1048576 * k + 670191 := by
  intro k
  have h1 : C (1048576 * k + 670191) = 3145728 * k + 2010574 := by
    unfold C
    simp [show (1048576 * k + 670191) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2010574) = 1572864 * k + 1005287 := by
    unfold C
    simp [show (3145728 * k + 2010574) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1005287) = 4718592 * k + 3015862 := by
    unfold C
    simp [show (1572864 * k + 1005287) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3015862) = 2359296 * k + 1507931 := by
    unfold C
    simp [show (4718592 * k + 3015862) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1507931) = 7077888 * k + 4523794 := by
    unfold C
    simp [show (2359296 * k + 1507931) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4523794) = 3538944 * k + 2261897 := by
    unfold C
    simp [show (7077888 * k + 4523794) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2261897) = 10616832 * k + 6785692 := by
    unfold C
    simp [show (3538944 * k + 2261897) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6785692) = 5308416 * k + 3392846 := by
    unfold C
    simp [show (10616832 * k + 6785692) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3392846) = 2654208 * k + 1696423 := by
    unfold C
    simp [show (5308416 * k + 3392846) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1696423) = 7962624 * k + 5089270 := by
    unfold C
    simp [show (2654208 * k + 1696423) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5089270) = 3981312 * k + 2544635 := by
    unfold C
    simp [show (7962624 * k + 5089270) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2544635) = 11943936 * k + 7633906 := by
    unfold C
    simp [show (3981312 * k + 2544635) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7633906) = 5971968 * k + 3816953 := by
    unfold C
    simp [show (11943936 * k + 7633906) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3816953) = 17915904 * k + 11450860 := by
    unfold C
    simp [show (5971968 * k + 3816953) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11450860) = 8957952 * k + 5725430 := by
    unfold C
    simp [show (17915904 * k + 11450860) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5725430) = 4478976 * k + 2862715 := by
    unfold C
    simp [show (8957952 * k + 5725430) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2862715) = 13436928 * k + 8588146 := by
    unfold C
    simp [show (4478976 * k + 2862715) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8588146) = 6718464 * k + 4294073 := by
    unfold C
    simp [show (13436928 * k + 8588146) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4294073) = 20155392 * k + 12882220 := by
    unfold C
    simp [show (6718464 * k + 4294073) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12882220) = 10077696 * k + 6441110 := by
    unfold C
    simp [show (20155392 * k + 12882220) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6441110) = 5038848 * k + 3220555 := by
    unfold C
    simp [show (10077696 * k + 6441110) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3220555) = 15116544 * k + 9661666 := by
    unfold C
    simp [show (5038848 * k + 3220555) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9661666) = 7558272 * k + 4830833 := by
    unfold C
    simp [show (15116544 * k + 9661666) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4830833) = 22674816 * k + 14492500 := by
    unfold C
    simp [show (7558272 * k + 4830833) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 14492500) = 11337408 * k + 7246250 := by
    unfold C
    simp [show (22674816 * k + 14492500) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7246250) = 5668704 * k + 3623125 := by
    unfold C
    simp [show (11337408 * k + 7246250) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3623125) = 17006112 * k + 10869376 := by
    unfold C
    simp [show (5668704 * k + 3623125) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 10869376) = 8503056 * k + 5434688 := by
    unfold C
    simp [show (17006112 * k + 10869376) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5434688) = 4251528 * k + 2717344 := by
    unfold C
    simp [show (8503056 * k + 5434688) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2717344) = 2125764 * k + 1358672 := by
    unfold C
    simp [show (4251528 * k + 2717344) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1358672) = 1062882 * k + 679336 := by
    unfold C
    simp [show (2125764 * k + 1358672) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 679336) = 531441 * k + 339668 := by
    unfold C
    simp [show (1062882 * k + 679336) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 670191) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 670191)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_670319 : ∀ k : Nat,
    iterate (1048576 * k + 670319) 32 = 531441 * k + 339733 ∧
      531441 * k + 339733 < 1048576 * k + 670319 := by
  intro k
  have h1 : C (1048576 * k + 670319) = 3145728 * k + 2010958 := by
    unfold C
    simp [show (1048576 * k + 670319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2010958) = 1572864 * k + 1005479 := by
    unfold C
    simp [show (3145728 * k + 2010958) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1005479) = 4718592 * k + 3016438 := by
    unfold C
    simp [show (1572864 * k + 1005479) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3016438) = 2359296 * k + 1508219 := by
    unfold C
    simp [show (4718592 * k + 3016438) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1508219) = 7077888 * k + 4524658 := by
    unfold C
    simp [show (2359296 * k + 1508219) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4524658) = 3538944 * k + 2262329 := by
    unfold C
    simp [show (7077888 * k + 4524658) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2262329) = 10616832 * k + 6786988 := by
    unfold C
    simp [show (3538944 * k + 2262329) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6786988) = 5308416 * k + 3393494 := by
    unfold C
    simp [show (10616832 * k + 6786988) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3393494) = 2654208 * k + 1696747 := by
    unfold C
    simp [show (5308416 * k + 3393494) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1696747) = 7962624 * k + 5090242 := by
    unfold C
    simp [show (2654208 * k + 1696747) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5090242) = 3981312 * k + 2545121 := by
    unfold C
    simp [show (7962624 * k + 5090242) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2545121) = 11943936 * k + 7635364 := by
    unfold C
    simp [show (3981312 * k + 2545121) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7635364) = 5971968 * k + 3817682 := by
    unfold C
    simp [show (11943936 * k + 7635364) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3817682) = 2985984 * k + 1908841 := by
    unfold C
    simp [show (5971968 * k + 3817682) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1908841) = 8957952 * k + 5726524 := by
    unfold C
    simp [show (2985984 * k + 1908841) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5726524) = 4478976 * k + 2863262 := by
    unfold C
    simp [show (8957952 * k + 5726524) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2863262) = 2239488 * k + 1431631 := by
    unfold C
    simp [show (4478976 * k + 2863262) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1431631) = 6718464 * k + 4294894 := by
    unfold C
    simp [show (2239488 * k + 1431631) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4294894) = 3359232 * k + 2147447 := by
    unfold C
    simp [show (6718464 * k + 4294894) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2147447) = 10077696 * k + 6442342 := by
    unfold C
    simp [show (3359232 * k + 2147447) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6442342) = 5038848 * k + 3221171 := by
    unfold C
    simp [show (10077696 * k + 6442342) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3221171) = 15116544 * k + 9663514 := by
    unfold C
    simp [show (5038848 * k + 3221171) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9663514) = 7558272 * k + 4831757 := by
    unfold C
    simp [show (15116544 * k + 9663514) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4831757) = 22674816 * k + 14495272 := by
    unfold C
    simp [show (7558272 * k + 4831757) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 14495272) = 11337408 * k + 7247636 := by
    unfold C
    simp [show (22674816 * k + 14495272) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7247636) = 5668704 * k + 3623818 := by
    unfold C
    simp [show (11337408 * k + 7247636) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3623818) = 2834352 * k + 1811909 := by
    unfold C
    simp [show (5668704 * k + 3623818) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1811909) = 8503056 * k + 5435728 := by
    unfold C
    simp [show (2834352 * k + 1811909) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5435728) = 4251528 * k + 2717864 := by
    unfold C
    simp [show (8503056 * k + 5435728) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2717864) = 2125764 * k + 1358932 := by
    unfold C
    simp [show (4251528 * k + 2717864) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1358932) = 1062882 * k + 679466 := by
    unfold C
    simp [show (2125764 * k + 1358932) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 679466) = 531441 * k + 339733 := by
    unfold C
    simp [show (1062882 * k + 679466) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 670319) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 670319)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_670887 : ∀ k : Nat,
    iterate (1048576 * k + 670887) 32 = 531441 * k + 340021 ∧
      531441 * k + 340021 < 1048576 * k + 670887 := by
  intro k
  have h1 : C (1048576 * k + 670887) = 3145728 * k + 2012662 := by
    unfold C
    simp [show (1048576 * k + 670887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2012662) = 1572864 * k + 1006331 := by
    unfold C
    simp [show (3145728 * k + 2012662) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1006331) = 4718592 * k + 3018994 := by
    unfold C
    simp [show (1572864 * k + 1006331) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3018994) = 2359296 * k + 1509497 := by
    unfold C
    simp [show (4718592 * k + 3018994) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1509497) = 7077888 * k + 4528492 := by
    unfold C
    simp [show (2359296 * k + 1509497) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4528492) = 3538944 * k + 2264246 := by
    unfold C
    simp [show (7077888 * k + 4528492) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2264246) = 1769472 * k + 1132123 := by
    unfold C
    simp [show (3538944 * k + 2264246) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1132123) = 5308416 * k + 3396370 := by
    unfold C
    simp [show (1769472 * k + 1132123) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3396370) = 2654208 * k + 1698185 := by
    unfold C
    simp [show (5308416 * k + 3396370) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1698185) = 7962624 * k + 5094556 := by
    unfold C
    simp [show (2654208 * k + 1698185) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5094556) = 3981312 * k + 2547278 := by
    unfold C
    simp [show (7962624 * k + 5094556) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2547278) = 1990656 * k + 1273639 := by
    unfold C
    simp [show (3981312 * k + 2547278) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1273639) = 5971968 * k + 3820918 := by
    unfold C
    simp [show (1990656 * k + 1273639) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3820918) = 2985984 * k + 1910459 := by
    unfold C
    simp [show (5971968 * k + 3820918) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1910459) = 8957952 * k + 5731378 := by
    unfold C
    simp [show (2985984 * k + 1910459) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5731378) = 4478976 * k + 2865689 := by
    unfold C
    simp [show (8957952 * k + 5731378) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2865689) = 13436928 * k + 8597068 := by
    unfold C
    simp [show (4478976 * k + 2865689) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8597068) = 6718464 * k + 4298534 := by
    unfold C
    simp [show (13436928 * k + 8597068) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4298534) = 3359232 * k + 2149267 := by
    unfold C
    simp [show (6718464 * k + 4298534) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2149267) = 10077696 * k + 6447802 := by
    unfold C
    simp [show (3359232 * k + 2149267) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6447802) = 5038848 * k + 3223901 := by
    unfold C
    simp [show (10077696 * k + 6447802) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3223901) = 15116544 * k + 9671704 := by
    unfold C
    simp [show (5038848 * k + 3223901) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9671704) = 7558272 * k + 4835852 := by
    unfold C
    simp [show (15116544 * k + 9671704) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4835852) = 3779136 * k + 2417926 := by
    unfold C
    simp [show (7558272 * k + 4835852) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2417926) = 1889568 * k + 1208963 := by
    unfold C
    simp [show (3779136 * k + 2417926) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1208963) = 5668704 * k + 3626890 := by
    unfold C
    simp [show (1889568 * k + 1208963) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3626890) = 2834352 * k + 1813445 := by
    unfold C
    simp [show (5668704 * k + 3626890) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1813445) = 8503056 * k + 5440336 := by
    unfold C
    simp [show (2834352 * k + 1813445) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5440336) = 4251528 * k + 2720168 := by
    unfold C
    simp [show (8503056 * k + 5440336) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2720168) = 2125764 * k + 1360084 := by
    unfold C
    simp [show (4251528 * k + 2720168) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1360084) = 1062882 * k + 680042 := by
    unfold C
    simp [show (2125764 * k + 1360084) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 680042) = 531441 * k + 340021 := by
    unfold C
    simp [show (1062882 * k + 680042) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 670887) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 670887)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_671579 : ∀ k : Nat,
    iterate (1048576 * k + 671579) 32 = 531441 * k + 340372 ∧
      531441 * k + 340372 < 1048576 * k + 671579 := by
  intro k
  have h1 : C (1048576 * k + 671579) = 3145728 * k + 2014738 := by
    unfold C
    simp [show (1048576 * k + 671579) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2014738) = 1572864 * k + 1007369 := by
    unfold C
    simp [show (3145728 * k + 2014738) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1007369) = 4718592 * k + 3022108 := by
    unfold C
    simp [show (1572864 * k + 1007369) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3022108) = 2359296 * k + 1511054 := by
    unfold C
    simp [show (4718592 * k + 3022108) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1511054) = 1179648 * k + 755527 := by
    unfold C
    simp [show (2359296 * k + 1511054) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 755527) = 3538944 * k + 2266582 := by
    unfold C
    simp [show (1179648 * k + 755527) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2266582) = 1769472 * k + 1133291 := by
    unfold C
    simp [show (3538944 * k + 2266582) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1133291) = 5308416 * k + 3399874 := by
    unfold C
    simp [show (1769472 * k + 1133291) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3399874) = 2654208 * k + 1699937 := by
    unfold C
    simp [show (5308416 * k + 3399874) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1699937) = 7962624 * k + 5099812 := by
    unfold C
    simp [show (2654208 * k + 1699937) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5099812) = 3981312 * k + 2549906 := by
    unfold C
    simp [show (7962624 * k + 5099812) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2549906) = 1990656 * k + 1274953 := by
    unfold C
    simp [show (3981312 * k + 2549906) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1274953) = 5971968 * k + 3824860 := by
    unfold C
    simp [show (1990656 * k + 1274953) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3824860) = 2985984 * k + 1912430 := by
    unfold C
    simp [show (5971968 * k + 3824860) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1912430) = 1492992 * k + 956215 := by
    unfold C
    simp [show (2985984 * k + 1912430) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 956215) = 4478976 * k + 2868646 := by
    unfold C
    simp [show (1492992 * k + 956215) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2868646) = 2239488 * k + 1434323 := by
    unfold C
    simp [show (4478976 * k + 2868646) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1434323) = 6718464 * k + 4302970 := by
    unfold C
    simp [show (2239488 * k + 1434323) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4302970) = 3359232 * k + 2151485 := by
    unfold C
    simp [show (6718464 * k + 4302970) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2151485) = 10077696 * k + 6454456 := by
    unfold C
    simp [show (3359232 * k + 2151485) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6454456) = 5038848 * k + 3227228 := by
    unfold C
    simp [show (10077696 * k + 6454456) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3227228) = 2519424 * k + 1613614 := by
    unfold C
    simp [show (5038848 * k + 3227228) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1613614) = 1259712 * k + 806807 := by
    unfold C
    simp [show (2519424 * k + 1613614) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 806807) = 3779136 * k + 2420422 := by
    unfold C
    simp [show (1259712 * k + 806807) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2420422) = 1889568 * k + 1210211 := by
    unfold C
    simp [show (3779136 * k + 2420422) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1210211) = 5668704 * k + 3630634 := by
    unfold C
    simp [show (1889568 * k + 1210211) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3630634) = 2834352 * k + 1815317 := by
    unfold C
    simp [show (5668704 * k + 3630634) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1815317) = 8503056 * k + 5445952 := by
    unfold C
    simp [show (2834352 * k + 1815317) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5445952) = 4251528 * k + 2722976 := by
    unfold C
    simp [show (8503056 * k + 5445952) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2722976) = 2125764 * k + 1361488 := by
    unfold C
    simp [show (4251528 * k + 2722976) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1361488) = 1062882 * k + 680744 := by
    unfold C
    simp [show (2125764 * k + 1361488) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 680744) = 531441 * k + 340372 := by
    unfold C
    simp [show (1062882 * k + 680744) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 671579) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 671579)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_672071 : ∀ k : Nat,
    iterate (1048576 * k + 672071) 32 = 531441 * k + 340621 ∧
      531441 * k + 340621 < 1048576 * k + 672071 := by
  intro k
  have h1 : C (1048576 * k + 672071) = 3145728 * k + 2016214 := by
    unfold C
    simp [show (1048576 * k + 672071) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2016214) = 1572864 * k + 1008107 := by
    unfold C
    simp [show (3145728 * k + 2016214) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1008107) = 4718592 * k + 3024322 := by
    unfold C
    simp [show (1572864 * k + 1008107) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3024322) = 2359296 * k + 1512161 := by
    unfold C
    simp [show (4718592 * k + 3024322) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1512161) = 7077888 * k + 4536484 := by
    unfold C
    simp [show (2359296 * k + 1512161) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4536484) = 3538944 * k + 2268242 := by
    unfold C
    simp [show (7077888 * k + 4536484) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2268242) = 1769472 * k + 1134121 := by
    unfold C
    simp [show (3538944 * k + 2268242) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1134121) = 5308416 * k + 3402364 := by
    unfold C
    simp [show (1769472 * k + 1134121) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3402364) = 2654208 * k + 1701182 := by
    unfold C
    simp [show (5308416 * k + 3402364) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1701182) = 1327104 * k + 850591 := by
    unfold C
    simp [show (2654208 * k + 1701182) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 850591) = 3981312 * k + 2551774 := by
    unfold C
    simp [show (1327104 * k + 850591) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2551774) = 1990656 * k + 1275887 := by
    unfold C
    simp [show (3981312 * k + 2551774) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1275887) = 5971968 * k + 3827662 := by
    unfold C
    simp [show (1990656 * k + 1275887) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3827662) = 2985984 * k + 1913831 := by
    unfold C
    simp [show (5971968 * k + 3827662) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1913831) = 8957952 * k + 5741494 := by
    unfold C
    simp [show (2985984 * k + 1913831) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5741494) = 4478976 * k + 2870747 := by
    unfold C
    simp [show (8957952 * k + 5741494) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2870747) = 13436928 * k + 8612242 := by
    unfold C
    simp [show (4478976 * k + 2870747) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8612242) = 6718464 * k + 4306121 := by
    unfold C
    simp [show (13436928 * k + 8612242) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4306121) = 20155392 * k + 12918364 := by
    unfold C
    simp [show (6718464 * k + 4306121) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12918364) = 10077696 * k + 6459182 := by
    unfold C
    simp [show (20155392 * k + 12918364) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6459182) = 5038848 * k + 3229591 := by
    unfold C
    simp [show (10077696 * k + 6459182) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3229591) = 15116544 * k + 9688774 := by
    unfold C
    simp [show (5038848 * k + 3229591) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9688774) = 7558272 * k + 4844387 := by
    unfold C
    simp [show (15116544 * k + 9688774) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4844387) = 22674816 * k + 14533162 := by
    unfold C
    simp [show (7558272 * k + 4844387) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 14533162) = 11337408 * k + 7266581 := by
    unfold C
    simp [show (22674816 * k + 14533162) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7266581) = 34012224 * k + 21799744 := by
    unfold C
    simp [show (11337408 * k + 7266581) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 21799744) = 17006112 * k + 10899872 := by
    unfold C
    simp [show (34012224 * k + 21799744) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 10899872) = 8503056 * k + 5449936 := by
    unfold C
    simp [show (17006112 * k + 10899872) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5449936) = 4251528 * k + 2724968 := by
    unfold C
    simp [show (8503056 * k + 5449936) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2724968) = 2125764 * k + 1362484 := by
    unfold C
    simp [show (4251528 * k + 2724968) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1362484) = 1062882 * k + 681242 := by
    unfold C
    simp [show (2125764 * k + 1362484) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 681242) = 531441 * k + 340621 := by
    unfold C
    simp [show (1062882 * k + 681242) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 672071) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 672071)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_672155 : ∀ k : Nat,
    iterate (1048576 * k + 672155) 32 = 531441 * k + 340664 ∧
      531441 * k + 340664 < 1048576 * k + 672155 := by
  intro k
  have h1 : C (1048576 * k + 672155) = 3145728 * k + 2016466 := by
    unfold C
    simp [show (1048576 * k + 672155) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2016466) = 1572864 * k + 1008233 := by
    unfold C
    simp [show (3145728 * k + 2016466) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1008233) = 4718592 * k + 3024700 := by
    unfold C
    simp [show (1572864 * k + 1008233) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3024700) = 2359296 * k + 1512350 := by
    unfold C
    simp [show (4718592 * k + 3024700) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1512350) = 1179648 * k + 756175 := by
    unfold C
    simp [show (2359296 * k + 1512350) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 756175) = 3538944 * k + 2268526 := by
    unfold C
    simp [show (1179648 * k + 756175) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2268526) = 1769472 * k + 1134263 := by
    unfold C
    simp [show (3538944 * k + 2268526) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1134263) = 5308416 * k + 3402790 := by
    unfold C
    simp [show (1769472 * k + 1134263) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3402790) = 2654208 * k + 1701395 := by
    unfold C
    simp [show (5308416 * k + 3402790) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1701395) = 7962624 * k + 5104186 := by
    unfold C
    simp [show (2654208 * k + 1701395) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5104186) = 3981312 * k + 2552093 := by
    unfold C
    simp [show (7962624 * k + 5104186) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2552093) = 11943936 * k + 7656280 := by
    unfold C
    simp [show (3981312 * k + 2552093) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7656280) = 5971968 * k + 3828140 := by
    unfold C
    simp [show (11943936 * k + 7656280) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3828140) = 2985984 * k + 1914070 := by
    unfold C
    simp [show (5971968 * k + 3828140) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1914070) = 1492992 * k + 957035 := by
    unfold C
    simp [show (2985984 * k + 1914070) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 957035) = 4478976 * k + 2871106 := by
    unfold C
    simp [show (1492992 * k + 957035) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2871106) = 2239488 * k + 1435553 := by
    unfold C
    simp [show (4478976 * k + 2871106) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1435553) = 6718464 * k + 4306660 := by
    unfold C
    simp [show (2239488 * k + 1435553) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4306660) = 3359232 * k + 2153330 := by
    unfold C
    simp [show (6718464 * k + 4306660) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2153330) = 1679616 * k + 1076665 := by
    unfold C
    simp [show (3359232 * k + 2153330) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1076665) = 5038848 * k + 3229996 := by
    unfold C
    simp [show (1679616 * k + 1076665) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3229996) = 2519424 * k + 1614998 := by
    unfold C
    simp [show (5038848 * k + 3229996) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1614998) = 1259712 * k + 807499 := by
    unfold C
    simp [show (2519424 * k + 1614998) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 807499) = 3779136 * k + 2422498 := by
    unfold C
    simp [show (1259712 * k + 807499) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2422498) = 1889568 * k + 1211249 := by
    unfold C
    simp [show (3779136 * k + 2422498) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1211249) = 5668704 * k + 3633748 := by
    unfold C
    simp [show (1889568 * k + 1211249) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3633748) = 2834352 * k + 1816874 := by
    unfold C
    simp [show (5668704 * k + 3633748) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1816874) = 1417176 * k + 908437 := by
    unfold C
    simp [show (2834352 * k + 1816874) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 908437) = 4251528 * k + 2725312 := by
    unfold C
    simp [show (1417176 * k + 908437) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2725312) = 2125764 * k + 1362656 := by
    unfold C
    simp [show (4251528 * k + 2725312) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1362656) = 1062882 * k + 681328 := by
    unfold C
    simp [show (2125764 * k + 1362656) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 681328) = 531441 * k + 340664 := by
    unfold C
    simp [show (1062882 * k + 681328) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 672155) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 672155)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_672603 : ∀ k : Nat,
    iterate (1048576 * k + 672603) 32 = 531441 * k + 340891 ∧
      531441 * k + 340891 < 1048576 * k + 672603 := by
  intro k
  have h1 : C (1048576 * k + 672603) = 3145728 * k + 2017810 := by
    unfold C
    simp [show (1048576 * k + 672603) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2017810) = 1572864 * k + 1008905 := by
    unfold C
    simp [show (3145728 * k + 2017810) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1008905) = 4718592 * k + 3026716 := by
    unfold C
    simp [show (1572864 * k + 1008905) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3026716) = 2359296 * k + 1513358 := by
    unfold C
    simp [show (4718592 * k + 3026716) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1513358) = 1179648 * k + 756679 := by
    unfold C
    simp [show (2359296 * k + 1513358) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 756679) = 3538944 * k + 2270038 := by
    unfold C
    simp [show (1179648 * k + 756679) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2270038) = 1769472 * k + 1135019 := by
    unfold C
    simp [show (3538944 * k + 2270038) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1135019) = 5308416 * k + 3405058 := by
    unfold C
    simp [show (1769472 * k + 1135019) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3405058) = 2654208 * k + 1702529 := by
    unfold C
    simp [show (5308416 * k + 3405058) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1702529) = 7962624 * k + 5107588 := by
    unfold C
    simp [show (2654208 * k + 1702529) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5107588) = 3981312 * k + 2553794 := by
    unfold C
    simp [show (7962624 * k + 5107588) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2553794) = 1990656 * k + 1276897 := by
    unfold C
    simp [show (3981312 * k + 2553794) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1276897) = 5971968 * k + 3830692 := by
    unfold C
    simp [show (1990656 * k + 1276897) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3830692) = 2985984 * k + 1915346 := by
    unfold C
    simp [show (5971968 * k + 3830692) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1915346) = 1492992 * k + 957673 := by
    unfold C
    simp [show (2985984 * k + 1915346) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 957673) = 4478976 * k + 2873020 := by
    unfold C
    simp [show (1492992 * k + 957673) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2873020) = 2239488 * k + 1436510 := by
    unfold C
    simp [show (4478976 * k + 2873020) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1436510) = 1119744 * k + 718255 := by
    unfold C
    simp [show (2239488 * k + 1436510) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 718255) = 3359232 * k + 2154766 := by
    unfold C
    simp [show (1119744 * k + 718255) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2154766) = 1679616 * k + 1077383 := by
    unfold C
    simp [show (3359232 * k + 2154766) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1077383) = 5038848 * k + 3232150 := by
    unfold C
    simp [show (1679616 * k + 1077383) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3232150) = 2519424 * k + 1616075 := by
    unfold C
    simp [show (5038848 * k + 3232150) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1616075) = 7558272 * k + 4848226 := by
    unfold C
    simp [show (2519424 * k + 1616075) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4848226) = 3779136 * k + 2424113 := by
    unfold C
    simp [show (7558272 * k + 4848226) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2424113) = 11337408 * k + 7272340 := by
    unfold C
    simp [show (3779136 * k + 2424113) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7272340) = 5668704 * k + 3636170 := by
    unfold C
    simp [show (11337408 * k + 7272340) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3636170) = 2834352 * k + 1818085 := by
    unfold C
    simp [show (5668704 * k + 3636170) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1818085) = 8503056 * k + 5454256 := by
    unfold C
    simp [show (2834352 * k + 1818085) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5454256) = 4251528 * k + 2727128 := by
    unfold C
    simp [show (8503056 * k + 5454256) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2727128) = 2125764 * k + 1363564 := by
    unfold C
    simp [show (4251528 * k + 2727128) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1363564) = 1062882 * k + 681782 := by
    unfold C
    simp [show (2125764 * k + 1363564) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 681782) = 531441 * k + 340891 := by
    unfold C
    simp [show (1062882 * k + 681782) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 672603) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 672603)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_672923 : ∀ k : Nat,
    iterate (1048576 * k + 672923) 32 = 531441 * k + 341053 ∧
      531441 * k + 341053 < 1048576 * k + 672923 := by
  intro k
  have h1 : C (1048576 * k + 672923) = 3145728 * k + 2018770 := by
    unfold C
    simp [show (1048576 * k + 672923) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2018770) = 1572864 * k + 1009385 := by
    unfold C
    simp [show (3145728 * k + 2018770) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1009385) = 4718592 * k + 3028156 := by
    unfold C
    simp [show (1572864 * k + 1009385) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3028156) = 2359296 * k + 1514078 := by
    unfold C
    simp [show (4718592 * k + 3028156) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1514078) = 1179648 * k + 757039 := by
    unfold C
    simp [show (2359296 * k + 1514078) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 757039) = 3538944 * k + 2271118 := by
    unfold C
    simp [show (1179648 * k + 757039) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2271118) = 1769472 * k + 1135559 := by
    unfold C
    simp [show (3538944 * k + 2271118) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1135559) = 5308416 * k + 3406678 := by
    unfold C
    simp [show (1769472 * k + 1135559) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3406678) = 2654208 * k + 1703339 := by
    unfold C
    simp [show (5308416 * k + 3406678) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1703339) = 7962624 * k + 5110018 := by
    unfold C
    simp [show (2654208 * k + 1703339) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5110018) = 3981312 * k + 2555009 := by
    unfold C
    simp [show (7962624 * k + 5110018) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2555009) = 11943936 * k + 7665028 := by
    unfold C
    simp [show (3981312 * k + 2555009) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7665028) = 5971968 * k + 3832514 := by
    unfold C
    simp [show (11943936 * k + 7665028) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3832514) = 2985984 * k + 1916257 := by
    unfold C
    simp [show (5971968 * k + 3832514) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1916257) = 8957952 * k + 5748772 := by
    unfold C
    simp [show (2985984 * k + 1916257) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5748772) = 4478976 * k + 2874386 := by
    unfold C
    simp [show (8957952 * k + 5748772) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2874386) = 2239488 * k + 1437193 := by
    unfold C
    simp [show (4478976 * k + 2874386) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1437193) = 6718464 * k + 4311580 := by
    unfold C
    simp [show (2239488 * k + 1437193) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4311580) = 3359232 * k + 2155790 := by
    unfold C
    simp [show (6718464 * k + 4311580) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2155790) = 1679616 * k + 1077895 := by
    unfold C
    simp [show (3359232 * k + 2155790) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1077895) = 5038848 * k + 3233686 := by
    unfold C
    simp [show (1679616 * k + 1077895) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3233686) = 2519424 * k + 1616843 := by
    unfold C
    simp [show (5038848 * k + 3233686) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1616843) = 7558272 * k + 4850530 := by
    unfold C
    simp [show (2519424 * k + 1616843) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4850530) = 3779136 * k + 2425265 := by
    unfold C
    simp [show (7558272 * k + 4850530) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2425265) = 11337408 * k + 7275796 := by
    unfold C
    simp [show (3779136 * k + 2425265) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7275796) = 5668704 * k + 3637898 := by
    unfold C
    simp [show (11337408 * k + 7275796) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3637898) = 2834352 * k + 1818949 := by
    unfold C
    simp [show (5668704 * k + 3637898) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1818949) = 8503056 * k + 5456848 := by
    unfold C
    simp [show (2834352 * k + 1818949) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5456848) = 4251528 * k + 2728424 := by
    unfold C
    simp [show (8503056 * k + 5456848) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2728424) = 2125764 * k + 1364212 := by
    unfold C
    simp [show (4251528 * k + 2728424) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1364212) = 1062882 * k + 682106 := by
    unfold C
    simp [show (2125764 * k + 1364212) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 682106) = 531441 * k + 341053 := by
    unfold C
    simp [show (1062882 * k + 682106) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 672923) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 672923)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_673279 : ∀ k : Nat,
    iterate (1048576 * k + 673279) 32 = 531441 * k + 341233 ∧
      531441 * k + 341233 < 1048576 * k + 673279 := by
  intro k
  have h1 : C (1048576 * k + 673279) = 3145728 * k + 2019838 := by
    unfold C
    simp [show (1048576 * k + 673279) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2019838) = 1572864 * k + 1009919 := by
    unfold C
    simp [show (3145728 * k + 2019838) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1009919) = 4718592 * k + 3029758 := by
    unfold C
    simp [show (1572864 * k + 1009919) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3029758) = 2359296 * k + 1514879 := by
    unfold C
    simp [show (4718592 * k + 3029758) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1514879) = 7077888 * k + 4544638 := by
    unfold C
    simp [show (2359296 * k + 1514879) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4544638) = 3538944 * k + 2272319 := by
    unfold C
    simp [show (7077888 * k + 4544638) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2272319) = 10616832 * k + 6816958 := by
    unfold C
    simp [show (3538944 * k + 2272319) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6816958) = 5308416 * k + 3408479 := by
    unfold C
    simp [show (10616832 * k + 6816958) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3408479) = 15925248 * k + 10225438 := by
    unfold C
    simp [show (5308416 * k + 3408479) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10225438) = 7962624 * k + 5112719 := by
    unfold C
    simp [show (15925248 * k + 10225438) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5112719) = 23887872 * k + 15338158 := by
    unfold C
    simp [show (7962624 * k + 5112719) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 15338158) = 11943936 * k + 7669079 := by
    unfold C
    simp [show (23887872 * k + 15338158) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7669079) = 35831808 * k + 23007238 := by
    unfold C
    simp [show (11943936 * k + 7669079) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 23007238) = 17915904 * k + 11503619 := by
    unfold C
    simp [show (35831808 * k + 23007238) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 11503619) = 53747712 * k + 34510858 := by
    unfold C
    simp [show (17915904 * k + 11503619) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 34510858) = 26873856 * k + 17255429 := by
    unfold C
    simp [show (53747712 * k + 34510858) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 17255429) = 80621568 * k + 51766288 := by
    unfold C
    simp [show (26873856 * k + 17255429) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 51766288) = 40310784 * k + 25883144 := by
    unfold C
    simp [show (80621568 * k + 51766288) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 25883144) = 20155392 * k + 12941572 := by
    unfold C
    simp [show (40310784 * k + 25883144) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 12941572) = 10077696 * k + 6470786 := by
    unfold C
    simp [show (20155392 * k + 12941572) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6470786) = 5038848 * k + 3235393 := by
    unfold C
    simp [show (10077696 * k + 6470786) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3235393) = 15116544 * k + 9706180 := by
    unfold C
    simp [show (5038848 * k + 3235393) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9706180) = 7558272 * k + 4853090 := by
    unfold C
    simp [show (15116544 * k + 9706180) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4853090) = 3779136 * k + 2426545 := by
    unfold C
    simp [show (7558272 * k + 4853090) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2426545) = 11337408 * k + 7279636 := by
    unfold C
    simp [show (3779136 * k + 2426545) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7279636) = 5668704 * k + 3639818 := by
    unfold C
    simp [show (11337408 * k + 7279636) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3639818) = 2834352 * k + 1819909 := by
    unfold C
    simp [show (5668704 * k + 3639818) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1819909) = 8503056 * k + 5459728 := by
    unfold C
    simp [show (2834352 * k + 1819909) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5459728) = 4251528 * k + 2729864 := by
    unfold C
    simp [show (8503056 * k + 5459728) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2729864) = 2125764 * k + 1364932 := by
    unfold C
    simp [show (4251528 * k + 2729864) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1364932) = 1062882 * k + 682466 := by
    unfold C
    simp [show (2125764 * k + 1364932) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 682466) = 531441 * k + 341233 := by
    unfold C
    simp [show (1062882 * k + 682466) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 673279) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 673279)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard086
