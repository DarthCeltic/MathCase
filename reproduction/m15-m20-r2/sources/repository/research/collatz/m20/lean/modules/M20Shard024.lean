import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard024

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_175135 : ∀ k : Nat,
    iterate (1048576 * k + 175135) 32 = 531441 * k + 88763 ∧
      531441 * k + 88763 < 1048576 * k + 175135 := by
  intro k
  have h1 : C (1048576 * k + 175135) = 3145728 * k + 525406 := by
    unfold C
    simp [show (1048576 * k + 175135) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 525406) = 1572864 * k + 262703 := by
    unfold C
    simp [show (3145728 * k + 525406) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 262703) = 4718592 * k + 788110 := by
    unfold C
    simp [show (1572864 * k + 262703) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 788110) = 2359296 * k + 394055 := by
    unfold C
    simp [show (4718592 * k + 788110) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 394055) = 7077888 * k + 1182166 := by
    unfold C
    simp [show (2359296 * k + 394055) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1182166) = 3538944 * k + 591083 := by
    unfold C
    simp [show (7077888 * k + 1182166) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 591083) = 10616832 * k + 1773250 := by
    unfold C
    simp [show (3538944 * k + 591083) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1773250) = 5308416 * k + 886625 := by
    unfold C
    simp [show (10616832 * k + 1773250) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 886625) = 15925248 * k + 2659876 := by
    unfold C
    simp [show (5308416 * k + 886625) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2659876) = 7962624 * k + 1329938 := by
    unfold C
    simp [show (15925248 * k + 2659876) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1329938) = 3981312 * k + 664969 := by
    unfold C
    simp [show (7962624 * k + 1329938) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 664969) = 11943936 * k + 1994908 := by
    unfold C
    simp [show (3981312 * k + 664969) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1994908) = 5971968 * k + 997454 := by
    unfold C
    simp [show (11943936 * k + 1994908) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 997454) = 2985984 * k + 498727 := by
    unfold C
    simp [show (5971968 * k + 997454) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 498727) = 8957952 * k + 1496182 := by
    unfold C
    simp [show (2985984 * k + 498727) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1496182) = 4478976 * k + 748091 := by
    unfold C
    simp [show (8957952 * k + 1496182) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 748091) = 13436928 * k + 2244274 := by
    unfold C
    simp [show (4478976 * k + 748091) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2244274) = 6718464 * k + 1122137 := by
    unfold C
    simp [show (13436928 * k + 2244274) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1122137) = 20155392 * k + 3366412 := by
    unfold C
    simp [show (6718464 * k + 1122137) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 3366412) = 10077696 * k + 1683206 := by
    unfold C
    simp [show (20155392 * k + 3366412) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1683206) = 5038848 * k + 841603 := by
    unfold C
    simp [show (10077696 * k + 1683206) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 841603) = 15116544 * k + 2524810 := by
    unfold C
    simp [show (5038848 * k + 841603) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2524810) = 7558272 * k + 1262405 := by
    unfold C
    simp [show (15116544 * k + 2524810) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1262405) = 22674816 * k + 3787216 := by
    unfold C
    simp [show (7558272 * k + 1262405) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 3787216) = 11337408 * k + 1893608 := by
    unfold C
    simp [show (22674816 * k + 3787216) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1893608) = 5668704 * k + 946804 := by
    unfold C
    simp [show (11337408 * k + 1893608) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 946804) = 2834352 * k + 473402 := by
    unfold C
    simp [show (5668704 * k + 946804) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 473402) = 1417176 * k + 236701 := by
    unfold C
    simp [show (2834352 * k + 473402) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 236701) = 4251528 * k + 710104 := by
    unfold C
    simp [show (1417176 * k + 236701) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 710104) = 2125764 * k + 355052 := by
    unfold C
    simp [show (4251528 * k + 710104) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 355052) = 1062882 * k + 177526 := by
    unfold C
    simp [show (2125764 * k + 355052) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 177526) = 531441 * k + 88763 := by
    unfold C
    simp [show (1062882 * k + 177526) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 175135) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 175135)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_175259 : ∀ k : Nat,
    iterate (1048576 * k + 175259) 32 = 531441 * k + 88826 ∧
      531441 * k + 88826 < 1048576 * k + 175259 := by
  intro k
  have h1 : C (1048576 * k + 175259) = 3145728 * k + 525778 := by
    unfold C
    simp [show (1048576 * k + 175259) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 525778) = 1572864 * k + 262889 := by
    unfold C
    simp [show (3145728 * k + 525778) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 262889) = 4718592 * k + 788668 := by
    unfold C
    simp [show (1572864 * k + 262889) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 788668) = 2359296 * k + 394334 := by
    unfold C
    simp [show (4718592 * k + 788668) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 394334) = 1179648 * k + 197167 := by
    unfold C
    simp [show (2359296 * k + 394334) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 197167) = 3538944 * k + 591502 := by
    unfold C
    simp [show (1179648 * k + 197167) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 591502) = 1769472 * k + 295751 := by
    unfold C
    simp [show (3538944 * k + 591502) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 295751) = 5308416 * k + 887254 := by
    unfold C
    simp [show (1769472 * k + 295751) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 887254) = 2654208 * k + 443627 := by
    unfold C
    simp [show (5308416 * k + 887254) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 443627) = 7962624 * k + 1330882 := by
    unfold C
    simp [show (2654208 * k + 443627) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1330882) = 3981312 * k + 665441 := by
    unfold C
    simp [show (7962624 * k + 1330882) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 665441) = 11943936 * k + 1996324 := by
    unfold C
    simp [show (3981312 * k + 665441) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1996324) = 5971968 * k + 998162 := by
    unfold C
    simp [show (11943936 * k + 1996324) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 998162) = 2985984 * k + 499081 := by
    unfold C
    simp [show (5971968 * k + 998162) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 499081) = 8957952 * k + 1497244 := by
    unfold C
    simp [show (2985984 * k + 499081) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1497244) = 4478976 * k + 748622 := by
    unfold C
    simp [show (8957952 * k + 1497244) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 748622) = 2239488 * k + 374311 := by
    unfold C
    simp [show (4478976 * k + 748622) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 374311) = 6718464 * k + 1122934 := by
    unfold C
    simp [show (2239488 * k + 374311) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1122934) = 3359232 * k + 561467 := by
    unfold C
    simp [show (6718464 * k + 1122934) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 561467) = 10077696 * k + 1684402 := by
    unfold C
    simp [show (3359232 * k + 561467) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1684402) = 5038848 * k + 842201 := by
    unfold C
    simp [show (10077696 * k + 1684402) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 842201) = 15116544 * k + 2526604 := by
    unfold C
    simp [show (5038848 * k + 842201) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2526604) = 7558272 * k + 1263302 := by
    unfold C
    simp [show (15116544 * k + 2526604) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1263302) = 3779136 * k + 631651 := by
    unfold C
    simp [show (7558272 * k + 1263302) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 631651) = 11337408 * k + 1894954 := by
    unfold C
    simp [show (3779136 * k + 631651) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1894954) = 5668704 * k + 947477 := by
    unfold C
    simp [show (11337408 * k + 1894954) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 947477) = 17006112 * k + 2842432 := by
    unfold C
    simp [show (5668704 * k + 947477) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2842432) = 8503056 * k + 1421216 := by
    unfold C
    simp [show (17006112 * k + 2842432) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1421216) = 4251528 * k + 710608 := by
    unfold C
    simp [show (8503056 * k + 1421216) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 710608) = 2125764 * k + 355304 := by
    unfold C
    simp [show (4251528 * k + 710608) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 355304) = 1062882 * k + 177652 := by
    unfold C
    simp [show (2125764 * k + 355304) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 177652) = 531441 * k + 88826 := by
    unfold C
    simp [show (1062882 * k + 177652) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 175259) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 175259)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_175963 : ∀ k : Nat,
    iterate (1048576 * k + 175963) 32 = 531441 * k + 89183 ∧
      531441 * k + 89183 < 1048576 * k + 175963 := by
  intro k
  have h1 : C (1048576 * k + 175963) = 3145728 * k + 527890 := by
    unfold C
    simp [show (1048576 * k + 175963) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 527890) = 1572864 * k + 263945 := by
    unfold C
    simp [show (3145728 * k + 527890) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 263945) = 4718592 * k + 791836 := by
    unfold C
    simp [show (1572864 * k + 263945) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 791836) = 2359296 * k + 395918 := by
    unfold C
    simp [show (4718592 * k + 791836) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 395918) = 1179648 * k + 197959 := by
    unfold C
    simp [show (2359296 * k + 395918) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 197959) = 3538944 * k + 593878 := by
    unfold C
    simp [show (1179648 * k + 197959) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 593878) = 1769472 * k + 296939 := by
    unfold C
    simp [show (3538944 * k + 593878) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 296939) = 5308416 * k + 890818 := by
    unfold C
    simp [show (1769472 * k + 296939) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 890818) = 2654208 * k + 445409 := by
    unfold C
    simp [show (5308416 * k + 890818) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 445409) = 7962624 * k + 1336228 := by
    unfold C
    simp [show (2654208 * k + 445409) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1336228) = 3981312 * k + 668114 := by
    unfold C
    simp [show (7962624 * k + 1336228) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 668114) = 1990656 * k + 334057 := by
    unfold C
    simp [show (3981312 * k + 668114) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 334057) = 5971968 * k + 1002172 := by
    unfold C
    simp [show (1990656 * k + 334057) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1002172) = 2985984 * k + 501086 := by
    unfold C
    simp [show (5971968 * k + 1002172) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 501086) = 1492992 * k + 250543 := by
    unfold C
    simp [show (2985984 * k + 501086) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 250543) = 4478976 * k + 751630 := by
    unfold C
    simp [show (1492992 * k + 250543) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 751630) = 2239488 * k + 375815 := by
    unfold C
    simp [show (4478976 * k + 751630) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 375815) = 6718464 * k + 1127446 := by
    unfold C
    simp [show (2239488 * k + 375815) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1127446) = 3359232 * k + 563723 := by
    unfold C
    simp [show (6718464 * k + 1127446) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 563723) = 10077696 * k + 1691170 := by
    unfold C
    simp [show (3359232 * k + 563723) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1691170) = 5038848 * k + 845585 := by
    unfold C
    simp [show (10077696 * k + 1691170) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 845585) = 15116544 * k + 2536756 := by
    unfold C
    simp [show (5038848 * k + 845585) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2536756) = 7558272 * k + 1268378 := by
    unfold C
    simp [show (15116544 * k + 2536756) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1268378) = 3779136 * k + 634189 := by
    unfold C
    simp [show (7558272 * k + 1268378) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 634189) = 11337408 * k + 1902568 := by
    unfold C
    simp [show (3779136 * k + 634189) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1902568) = 5668704 * k + 951284 := by
    unfold C
    simp [show (11337408 * k + 1902568) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 951284) = 2834352 * k + 475642 := by
    unfold C
    simp [show (5668704 * k + 951284) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 475642) = 1417176 * k + 237821 := by
    unfold C
    simp [show (2834352 * k + 475642) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 237821) = 4251528 * k + 713464 := by
    unfold C
    simp [show (1417176 * k + 237821) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 713464) = 2125764 * k + 356732 := by
    unfold C
    simp [show (4251528 * k + 713464) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 356732) = 1062882 * k + 178366 := by
    unfold C
    simp [show (2125764 * k + 356732) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 178366) = 531441 * k + 89183 := by
    unfold C
    simp [show (1062882 * k + 178366) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 175963) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 175963)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_177791 : ∀ k : Nat,
    iterate (1048576 * k + 177791) 32 = 531441 * k + 90109 ∧
      531441 * k + 90109 < 1048576 * k + 177791 := by
  intro k
  have h1 : C (1048576 * k + 177791) = 3145728 * k + 533374 := by
    unfold C
    simp [show (1048576 * k + 177791) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 533374) = 1572864 * k + 266687 := by
    unfold C
    simp [show (3145728 * k + 533374) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 266687) = 4718592 * k + 800062 := by
    unfold C
    simp [show (1572864 * k + 266687) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 800062) = 2359296 * k + 400031 := by
    unfold C
    simp [show (4718592 * k + 800062) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 400031) = 7077888 * k + 1200094 := by
    unfold C
    simp [show (2359296 * k + 400031) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1200094) = 3538944 * k + 600047 := by
    unfold C
    simp [show (7077888 * k + 1200094) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 600047) = 10616832 * k + 1800142 := by
    unfold C
    simp [show (3538944 * k + 600047) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1800142) = 5308416 * k + 900071 := by
    unfold C
    simp [show (10616832 * k + 1800142) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 900071) = 15925248 * k + 2700214 := by
    unfold C
    simp [show (5308416 * k + 900071) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2700214) = 7962624 * k + 1350107 := by
    unfold C
    simp [show (15925248 * k + 2700214) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1350107) = 23887872 * k + 4050322 := by
    unfold C
    simp [show (7962624 * k + 1350107) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 4050322) = 11943936 * k + 2025161 := by
    unfold C
    simp [show (23887872 * k + 4050322) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2025161) = 35831808 * k + 6075484 := by
    unfold C
    simp [show (11943936 * k + 2025161) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 6075484) = 17915904 * k + 3037742 := by
    unfold C
    simp [show (35831808 * k + 6075484) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 3037742) = 8957952 * k + 1518871 := by
    unfold C
    simp [show (17915904 * k + 3037742) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1518871) = 26873856 * k + 4556614 := by
    unfold C
    simp [show (8957952 * k + 1518871) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4556614) = 13436928 * k + 2278307 := by
    unfold C
    simp [show (26873856 * k + 4556614) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2278307) = 40310784 * k + 6834922 := by
    unfold C
    simp [show (13436928 * k + 2278307) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 6834922) = 20155392 * k + 3417461 := by
    unfold C
    simp [show (40310784 * k + 6834922) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3417461) = 60466176 * k + 10252384 := by
    unfold C
    simp [show (20155392 * k + 3417461) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 10252384) = 30233088 * k + 5126192 := by
    unfold C
    simp [show (60466176 * k + 10252384) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 5126192) = 15116544 * k + 2563096 := by
    unfold C
    simp [show (30233088 * k + 5126192) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2563096) = 7558272 * k + 1281548 := by
    unfold C
    simp [show (15116544 * k + 2563096) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1281548) = 3779136 * k + 640774 := by
    unfold C
    simp [show (7558272 * k + 1281548) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 640774) = 1889568 * k + 320387 := by
    unfold C
    simp [show (3779136 * k + 640774) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 320387) = 5668704 * k + 961162 := by
    unfold C
    simp [show (1889568 * k + 320387) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 961162) = 2834352 * k + 480581 := by
    unfold C
    simp [show (5668704 * k + 961162) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 480581) = 8503056 * k + 1441744 := by
    unfold C
    simp [show (2834352 * k + 480581) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1441744) = 4251528 * k + 720872 := by
    unfold C
    simp [show (8503056 * k + 1441744) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 720872) = 2125764 * k + 360436 := by
    unfold C
    simp [show (4251528 * k + 720872) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 360436) = 1062882 * k + 180218 := by
    unfold C
    simp [show (2125764 * k + 360436) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 180218) = 531441 * k + 90109 := by
    unfold C
    simp [show (1062882 * k + 180218) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 177791) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 177791)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_178047 : ∀ k : Nat,
    iterate (1048576 * k + 178047) 32 = 531441 * k + 90239 ∧
      531441 * k + 90239 < 1048576 * k + 178047 := by
  intro k
  have h1 : C (1048576 * k + 178047) = 3145728 * k + 534142 := by
    unfold C
    simp [show (1048576 * k + 178047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 534142) = 1572864 * k + 267071 := by
    unfold C
    simp [show (3145728 * k + 534142) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 267071) = 4718592 * k + 801214 := by
    unfold C
    simp [show (1572864 * k + 267071) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 801214) = 2359296 * k + 400607 := by
    unfold C
    simp [show (4718592 * k + 801214) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 400607) = 7077888 * k + 1201822 := by
    unfold C
    simp [show (2359296 * k + 400607) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1201822) = 3538944 * k + 600911 := by
    unfold C
    simp [show (7077888 * k + 1201822) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 600911) = 10616832 * k + 1802734 := by
    unfold C
    simp [show (3538944 * k + 600911) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1802734) = 5308416 * k + 901367 := by
    unfold C
    simp [show (10616832 * k + 1802734) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 901367) = 15925248 * k + 2704102 := by
    unfold C
    simp [show (5308416 * k + 901367) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2704102) = 7962624 * k + 1352051 := by
    unfold C
    simp [show (15925248 * k + 2704102) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1352051) = 23887872 * k + 4056154 := by
    unfold C
    simp [show (7962624 * k + 1352051) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 4056154) = 11943936 * k + 2028077 := by
    unfold C
    simp [show (23887872 * k + 4056154) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2028077) = 35831808 * k + 6084232 := by
    unfold C
    simp [show (11943936 * k + 2028077) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 6084232) = 17915904 * k + 3042116 := by
    unfold C
    simp [show (35831808 * k + 6084232) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 3042116) = 8957952 * k + 1521058 := by
    unfold C
    simp [show (17915904 * k + 3042116) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1521058) = 4478976 * k + 760529 := by
    unfold C
    simp [show (8957952 * k + 1521058) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 760529) = 13436928 * k + 2281588 := by
    unfold C
    simp [show (4478976 * k + 760529) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2281588) = 6718464 * k + 1140794 := by
    unfold C
    simp [show (13436928 * k + 2281588) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1140794) = 3359232 * k + 570397 := by
    unfold C
    simp [show (6718464 * k + 1140794) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 570397) = 10077696 * k + 1711192 := by
    unfold C
    simp [show (3359232 * k + 570397) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1711192) = 5038848 * k + 855596 := by
    unfold C
    simp [show (10077696 * k + 1711192) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 855596) = 2519424 * k + 427798 := by
    unfold C
    simp [show (5038848 * k + 855596) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 427798) = 1259712 * k + 213899 := by
    unfold C
    simp [show (2519424 * k + 427798) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 213899) = 3779136 * k + 641698 := by
    unfold C
    simp [show (1259712 * k + 213899) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 641698) = 1889568 * k + 320849 := by
    unfold C
    simp [show (3779136 * k + 641698) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 320849) = 5668704 * k + 962548 := by
    unfold C
    simp [show (1889568 * k + 320849) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 962548) = 2834352 * k + 481274 := by
    unfold C
    simp [show (5668704 * k + 962548) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 481274) = 1417176 * k + 240637 := by
    unfold C
    simp [show (2834352 * k + 481274) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 240637) = 4251528 * k + 721912 := by
    unfold C
    simp [show (1417176 * k + 240637) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 721912) = 2125764 * k + 360956 := by
    unfold C
    simp [show (4251528 * k + 721912) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 360956) = 1062882 * k + 180478 := by
    unfold C
    simp [show (2125764 * k + 360956) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 180478) = 531441 * k + 90239 := by
    unfold C
    simp [show (1062882 * k + 180478) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 178047) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 178047)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_178207 : ∀ k : Nat,
    iterate (1048576 * k + 178207) 32 = 531441 * k + 90320 ∧
      531441 * k + 90320 < 1048576 * k + 178207 := by
  intro k
  have h1 : C (1048576 * k + 178207) = 3145728 * k + 534622 := by
    unfold C
    simp [show (1048576 * k + 178207) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 534622) = 1572864 * k + 267311 := by
    unfold C
    simp [show (3145728 * k + 534622) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 267311) = 4718592 * k + 801934 := by
    unfold C
    simp [show (1572864 * k + 267311) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 801934) = 2359296 * k + 400967 := by
    unfold C
    simp [show (4718592 * k + 801934) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 400967) = 7077888 * k + 1202902 := by
    unfold C
    simp [show (2359296 * k + 400967) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1202902) = 3538944 * k + 601451 := by
    unfold C
    simp [show (7077888 * k + 1202902) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 601451) = 10616832 * k + 1804354 := by
    unfold C
    simp [show (3538944 * k + 601451) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1804354) = 5308416 * k + 902177 := by
    unfold C
    simp [show (10616832 * k + 1804354) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 902177) = 15925248 * k + 2706532 := by
    unfold C
    simp [show (5308416 * k + 902177) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2706532) = 7962624 * k + 1353266 := by
    unfold C
    simp [show (15925248 * k + 2706532) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1353266) = 3981312 * k + 676633 := by
    unfold C
    simp [show (7962624 * k + 1353266) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 676633) = 11943936 * k + 2029900 := by
    unfold C
    simp [show (3981312 * k + 676633) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2029900) = 5971968 * k + 1014950 := by
    unfold C
    simp [show (11943936 * k + 2029900) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1014950) = 2985984 * k + 507475 := by
    unfold C
    simp [show (5971968 * k + 1014950) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 507475) = 8957952 * k + 1522426 := by
    unfold C
    simp [show (2985984 * k + 507475) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1522426) = 4478976 * k + 761213 := by
    unfold C
    simp [show (8957952 * k + 1522426) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 761213) = 13436928 * k + 2283640 := by
    unfold C
    simp [show (4478976 * k + 761213) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2283640) = 6718464 * k + 1141820 := by
    unfold C
    simp [show (13436928 * k + 2283640) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1141820) = 3359232 * k + 570910 := by
    unfold C
    simp [show (6718464 * k + 1141820) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 570910) = 1679616 * k + 285455 := by
    unfold C
    simp [show (3359232 * k + 570910) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 285455) = 5038848 * k + 856366 := by
    unfold C
    simp [show (1679616 * k + 285455) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 856366) = 2519424 * k + 428183 := by
    unfold C
    simp [show (5038848 * k + 856366) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 428183) = 7558272 * k + 1284550 := by
    unfold C
    simp [show (2519424 * k + 428183) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1284550) = 3779136 * k + 642275 := by
    unfold C
    simp [show (7558272 * k + 1284550) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 642275) = 11337408 * k + 1926826 := by
    unfold C
    simp [show (3779136 * k + 642275) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1926826) = 5668704 * k + 963413 := by
    unfold C
    simp [show (11337408 * k + 1926826) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 963413) = 17006112 * k + 2890240 := by
    unfold C
    simp [show (5668704 * k + 963413) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2890240) = 8503056 * k + 1445120 := by
    unfold C
    simp [show (17006112 * k + 2890240) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1445120) = 4251528 * k + 722560 := by
    unfold C
    simp [show (8503056 * k + 1445120) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 722560) = 2125764 * k + 361280 := by
    unfold C
    simp [show (4251528 * k + 722560) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 361280) = 1062882 * k + 180640 := by
    unfold C
    simp [show (2125764 * k + 361280) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 180640) = 531441 * k + 90320 := by
    unfold C
    simp [show (1062882 * k + 180640) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 178207) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 178207)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_178655 : ∀ k : Nat,
    iterate (1048576 * k + 178655) 32 = 531441 * k + 90547 ∧
      531441 * k + 90547 < 1048576 * k + 178655 := by
  intro k
  have h1 : C (1048576 * k + 178655) = 3145728 * k + 535966 := by
    unfold C
    simp [show (1048576 * k + 178655) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 535966) = 1572864 * k + 267983 := by
    unfold C
    simp [show (3145728 * k + 535966) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 267983) = 4718592 * k + 803950 := by
    unfold C
    simp [show (1572864 * k + 267983) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 803950) = 2359296 * k + 401975 := by
    unfold C
    simp [show (4718592 * k + 803950) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 401975) = 7077888 * k + 1205926 := by
    unfold C
    simp [show (2359296 * k + 401975) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1205926) = 3538944 * k + 602963 := by
    unfold C
    simp [show (7077888 * k + 1205926) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 602963) = 10616832 * k + 1808890 := by
    unfold C
    simp [show (3538944 * k + 602963) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1808890) = 5308416 * k + 904445 := by
    unfold C
    simp [show (10616832 * k + 1808890) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 904445) = 15925248 * k + 2713336 := by
    unfold C
    simp [show (5308416 * k + 904445) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2713336) = 7962624 * k + 1356668 := by
    unfold C
    simp [show (15925248 * k + 2713336) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1356668) = 3981312 * k + 678334 := by
    unfold C
    simp [show (7962624 * k + 1356668) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 678334) = 1990656 * k + 339167 := by
    unfold C
    simp [show (3981312 * k + 678334) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 339167) = 5971968 * k + 1017502 := by
    unfold C
    simp [show (1990656 * k + 339167) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1017502) = 2985984 * k + 508751 := by
    unfold C
    simp [show (5971968 * k + 1017502) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 508751) = 8957952 * k + 1526254 := by
    unfold C
    simp [show (2985984 * k + 508751) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1526254) = 4478976 * k + 763127 := by
    unfold C
    simp [show (8957952 * k + 1526254) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 763127) = 13436928 * k + 2289382 := by
    unfold C
    simp [show (4478976 * k + 763127) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2289382) = 6718464 * k + 1144691 := by
    unfold C
    simp [show (13436928 * k + 2289382) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1144691) = 20155392 * k + 3434074 := by
    unfold C
    simp [show (6718464 * k + 1144691) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 3434074) = 10077696 * k + 1717037 := by
    unfold C
    simp [show (20155392 * k + 3434074) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1717037) = 30233088 * k + 5151112 := by
    unfold C
    simp [show (10077696 * k + 1717037) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 5151112) = 15116544 * k + 2575556 := by
    unfold C
    simp [show (30233088 * k + 5151112) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2575556) = 7558272 * k + 1287778 := by
    unfold C
    simp [show (15116544 * k + 2575556) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1287778) = 3779136 * k + 643889 := by
    unfold C
    simp [show (7558272 * k + 1287778) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 643889) = 11337408 * k + 1931668 := by
    unfold C
    simp [show (3779136 * k + 643889) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1931668) = 5668704 * k + 965834 := by
    unfold C
    simp [show (11337408 * k + 1931668) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 965834) = 2834352 * k + 482917 := by
    unfold C
    simp [show (5668704 * k + 965834) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 482917) = 8503056 * k + 1448752 := by
    unfold C
    simp [show (2834352 * k + 482917) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1448752) = 4251528 * k + 724376 := by
    unfold C
    simp [show (8503056 * k + 1448752) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 724376) = 2125764 * k + 362188 := by
    unfold C
    simp [show (4251528 * k + 724376) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 362188) = 1062882 * k + 181094 := by
    unfold C
    simp [show (2125764 * k + 362188) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 181094) = 531441 * k + 90547 := by
    unfold C
    simp [show (1062882 * k + 181094) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 178655) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 178655)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_178799 : ∀ k : Nat,
    iterate (1048576 * k + 178799) 32 = 531441 * k + 90620 ∧
      531441 * k + 90620 < 1048576 * k + 178799 := by
  intro k
  have h1 : C (1048576 * k + 178799) = 3145728 * k + 536398 := by
    unfold C
    simp [show (1048576 * k + 178799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 536398) = 1572864 * k + 268199 := by
    unfold C
    simp [show (3145728 * k + 536398) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 268199) = 4718592 * k + 804598 := by
    unfold C
    simp [show (1572864 * k + 268199) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 804598) = 2359296 * k + 402299 := by
    unfold C
    simp [show (4718592 * k + 804598) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 402299) = 7077888 * k + 1206898 := by
    unfold C
    simp [show (2359296 * k + 402299) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1206898) = 3538944 * k + 603449 := by
    unfold C
    simp [show (7077888 * k + 1206898) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 603449) = 10616832 * k + 1810348 := by
    unfold C
    simp [show (3538944 * k + 603449) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1810348) = 5308416 * k + 905174 := by
    unfold C
    simp [show (10616832 * k + 1810348) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 905174) = 2654208 * k + 452587 := by
    unfold C
    simp [show (5308416 * k + 905174) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 452587) = 7962624 * k + 1357762 := by
    unfold C
    simp [show (2654208 * k + 452587) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1357762) = 3981312 * k + 678881 := by
    unfold C
    simp [show (7962624 * k + 1357762) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 678881) = 11943936 * k + 2036644 := by
    unfold C
    simp [show (3981312 * k + 678881) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2036644) = 5971968 * k + 1018322 := by
    unfold C
    simp [show (11943936 * k + 2036644) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1018322) = 2985984 * k + 509161 := by
    unfold C
    simp [show (5971968 * k + 1018322) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 509161) = 8957952 * k + 1527484 := by
    unfold C
    simp [show (2985984 * k + 509161) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1527484) = 4478976 * k + 763742 := by
    unfold C
    simp [show (8957952 * k + 1527484) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 763742) = 2239488 * k + 381871 := by
    unfold C
    simp [show (4478976 * k + 763742) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 381871) = 6718464 * k + 1145614 := by
    unfold C
    simp [show (2239488 * k + 381871) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1145614) = 3359232 * k + 572807 := by
    unfold C
    simp [show (6718464 * k + 1145614) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 572807) = 10077696 * k + 1718422 := by
    unfold C
    simp [show (3359232 * k + 572807) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1718422) = 5038848 * k + 859211 := by
    unfold C
    simp [show (10077696 * k + 1718422) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 859211) = 15116544 * k + 2577634 := by
    unfold C
    simp [show (5038848 * k + 859211) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2577634) = 7558272 * k + 1288817 := by
    unfold C
    simp [show (15116544 * k + 2577634) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1288817) = 22674816 * k + 3866452 := by
    unfold C
    simp [show (7558272 * k + 1288817) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 3866452) = 11337408 * k + 1933226 := by
    unfold C
    simp [show (22674816 * k + 3866452) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1933226) = 5668704 * k + 966613 := by
    unfold C
    simp [show (11337408 * k + 1933226) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 966613) = 17006112 * k + 2899840 := by
    unfold C
    simp [show (5668704 * k + 966613) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2899840) = 8503056 * k + 1449920 := by
    unfold C
    simp [show (17006112 * k + 2899840) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1449920) = 4251528 * k + 724960 := by
    unfold C
    simp [show (8503056 * k + 1449920) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 724960) = 2125764 * k + 362480 := by
    unfold C
    simp [show (4251528 * k + 724960) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 362480) = 1062882 * k + 181240 := by
    unfold C
    simp [show (2125764 * k + 362480) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 181240) = 531441 * k + 90620 := by
    unfold C
    simp [show (1062882 * k + 181240) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 178799) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 178799)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_178815 : ∀ k : Nat,
    iterate (1048576 * k + 178815) 32 = 531441 * k + 90628 ∧
      531441 * k + 90628 < 1048576 * k + 178815 := by
  intro k
  have h1 : C (1048576 * k + 178815) = 3145728 * k + 536446 := by
    unfold C
    simp [show (1048576 * k + 178815) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 536446) = 1572864 * k + 268223 := by
    unfold C
    simp [show (3145728 * k + 536446) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 268223) = 4718592 * k + 804670 := by
    unfold C
    simp [show (1572864 * k + 268223) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 804670) = 2359296 * k + 402335 := by
    unfold C
    simp [show (4718592 * k + 804670) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 402335) = 7077888 * k + 1207006 := by
    unfold C
    simp [show (2359296 * k + 402335) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1207006) = 3538944 * k + 603503 := by
    unfold C
    simp [show (7077888 * k + 1207006) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 603503) = 10616832 * k + 1810510 := by
    unfold C
    simp [show (3538944 * k + 603503) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1810510) = 5308416 * k + 905255 := by
    unfold C
    simp [show (10616832 * k + 1810510) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 905255) = 15925248 * k + 2715766 := by
    unfold C
    simp [show (5308416 * k + 905255) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2715766) = 7962624 * k + 1357883 := by
    unfold C
    simp [show (15925248 * k + 2715766) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1357883) = 23887872 * k + 4073650 := by
    unfold C
    simp [show (7962624 * k + 1357883) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 4073650) = 11943936 * k + 2036825 := by
    unfold C
    simp [show (23887872 * k + 4073650) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2036825) = 35831808 * k + 6110476 := by
    unfold C
    simp [show (11943936 * k + 2036825) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 6110476) = 17915904 * k + 3055238 := by
    unfold C
    simp [show (35831808 * k + 6110476) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 3055238) = 8957952 * k + 1527619 := by
    unfold C
    simp [show (17915904 * k + 3055238) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1527619) = 26873856 * k + 4582858 := by
    unfold C
    simp [show (8957952 * k + 1527619) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4582858) = 13436928 * k + 2291429 := by
    unfold C
    simp [show (26873856 * k + 4582858) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2291429) = 40310784 * k + 6874288 := by
    unfold C
    simp [show (13436928 * k + 2291429) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 6874288) = 20155392 * k + 3437144 := by
    unfold C
    simp [show (40310784 * k + 6874288) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3437144) = 10077696 * k + 1718572 := by
    unfold C
    simp [show (20155392 * k + 3437144) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1718572) = 5038848 * k + 859286 := by
    unfold C
    simp [show (10077696 * k + 1718572) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 859286) = 2519424 * k + 429643 := by
    unfold C
    simp [show (5038848 * k + 859286) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 429643) = 7558272 * k + 1288930 := by
    unfold C
    simp [show (2519424 * k + 429643) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1288930) = 3779136 * k + 644465 := by
    unfold C
    simp [show (7558272 * k + 1288930) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 644465) = 11337408 * k + 1933396 := by
    unfold C
    simp [show (3779136 * k + 644465) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1933396) = 5668704 * k + 966698 := by
    unfold C
    simp [show (11337408 * k + 1933396) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 966698) = 2834352 * k + 483349 := by
    unfold C
    simp [show (5668704 * k + 966698) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 483349) = 8503056 * k + 1450048 := by
    unfold C
    simp [show (2834352 * k + 483349) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1450048) = 4251528 * k + 725024 := by
    unfold C
    simp [show (8503056 * k + 1450048) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 725024) = 2125764 * k + 362512 := by
    unfold C
    simp [show (4251528 * k + 725024) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 362512) = 1062882 * k + 181256 := by
    unfold C
    simp [show (2125764 * k + 362512) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 181256) = 531441 * k + 90628 := by
    unfold C
    simp [show (1062882 * k + 181256) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 178815) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 178815)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_179231 : ∀ k : Nat,
    iterate (1048576 * k + 179231) 32 = 531441 * k + 90839 ∧
      531441 * k + 90839 < 1048576 * k + 179231 := by
  intro k
  have h1 : C (1048576 * k + 179231) = 3145728 * k + 537694 := by
    unfold C
    simp [show (1048576 * k + 179231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 537694) = 1572864 * k + 268847 := by
    unfold C
    simp [show (3145728 * k + 537694) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 268847) = 4718592 * k + 806542 := by
    unfold C
    simp [show (1572864 * k + 268847) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 806542) = 2359296 * k + 403271 := by
    unfold C
    simp [show (4718592 * k + 806542) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 403271) = 7077888 * k + 1209814 := by
    unfold C
    simp [show (2359296 * k + 403271) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1209814) = 3538944 * k + 604907 := by
    unfold C
    simp [show (7077888 * k + 1209814) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 604907) = 10616832 * k + 1814722 := by
    unfold C
    simp [show (3538944 * k + 604907) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1814722) = 5308416 * k + 907361 := by
    unfold C
    simp [show (10616832 * k + 1814722) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 907361) = 15925248 * k + 2722084 := by
    unfold C
    simp [show (5308416 * k + 907361) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2722084) = 7962624 * k + 1361042 := by
    unfold C
    simp [show (15925248 * k + 2722084) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1361042) = 3981312 * k + 680521 := by
    unfold C
    simp [show (7962624 * k + 1361042) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 680521) = 11943936 * k + 2041564 := by
    unfold C
    simp [show (3981312 * k + 680521) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2041564) = 5971968 * k + 1020782 := by
    unfold C
    simp [show (11943936 * k + 2041564) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1020782) = 2985984 * k + 510391 := by
    unfold C
    simp [show (5971968 * k + 1020782) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 510391) = 8957952 * k + 1531174 := by
    unfold C
    simp [show (2985984 * k + 510391) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1531174) = 4478976 * k + 765587 := by
    unfold C
    simp [show (8957952 * k + 1531174) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 765587) = 13436928 * k + 2296762 := by
    unfold C
    simp [show (4478976 * k + 765587) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2296762) = 6718464 * k + 1148381 := by
    unfold C
    simp [show (13436928 * k + 2296762) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1148381) = 20155392 * k + 3445144 := by
    unfold C
    simp [show (6718464 * k + 1148381) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 3445144) = 10077696 * k + 1722572 := by
    unfold C
    simp [show (20155392 * k + 3445144) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1722572) = 5038848 * k + 861286 := by
    unfold C
    simp [show (10077696 * k + 1722572) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 861286) = 2519424 * k + 430643 := by
    unfold C
    simp [show (5038848 * k + 861286) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 430643) = 7558272 * k + 1291930 := by
    unfold C
    simp [show (2519424 * k + 430643) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1291930) = 3779136 * k + 645965 := by
    unfold C
    simp [show (7558272 * k + 1291930) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 645965) = 11337408 * k + 1937896 := by
    unfold C
    simp [show (3779136 * k + 645965) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1937896) = 5668704 * k + 968948 := by
    unfold C
    simp [show (11337408 * k + 1937896) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 968948) = 2834352 * k + 484474 := by
    unfold C
    simp [show (5668704 * k + 968948) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 484474) = 1417176 * k + 242237 := by
    unfold C
    simp [show (2834352 * k + 484474) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 242237) = 4251528 * k + 726712 := by
    unfold C
    simp [show (1417176 * k + 242237) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 726712) = 2125764 * k + 363356 := by
    unfold C
    simp [show (4251528 * k + 726712) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 363356) = 1062882 * k + 181678 := by
    unfold C
    simp [show (2125764 * k + 363356) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 181678) = 531441 * k + 90839 := by
    unfold C
    simp [show (1062882 * k + 181678) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 179231) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 179231)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_179503 : ∀ k : Nat,
    iterate (1048576 * k + 179503) 32 = 531441 * k + 90977 ∧
      531441 * k + 90977 < 1048576 * k + 179503 := by
  intro k
  have h1 : C (1048576 * k + 179503) = 3145728 * k + 538510 := by
    unfold C
    simp [show (1048576 * k + 179503) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 538510) = 1572864 * k + 269255 := by
    unfold C
    simp [show (3145728 * k + 538510) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 269255) = 4718592 * k + 807766 := by
    unfold C
    simp [show (1572864 * k + 269255) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 807766) = 2359296 * k + 403883 := by
    unfold C
    simp [show (4718592 * k + 807766) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 403883) = 7077888 * k + 1211650 := by
    unfold C
    simp [show (2359296 * k + 403883) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1211650) = 3538944 * k + 605825 := by
    unfold C
    simp [show (7077888 * k + 1211650) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 605825) = 10616832 * k + 1817476 := by
    unfold C
    simp [show (3538944 * k + 605825) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1817476) = 5308416 * k + 908738 := by
    unfold C
    simp [show (10616832 * k + 1817476) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 908738) = 2654208 * k + 454369 := by
    unfold C
    simp [show (5308416 * k + 908738) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 454369) = 7962624 * k + 1363108 := by
    unfold C
    simp [show (2654208 * k + 454369) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1363108) = 3981312 * k + 681554 := by
    unfold C
    simp [show (7962624 * k + 1363108) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 681554) = 1990656 * k + 340777 := by
    unfold C
    simp [show (3981312 * k + 681554) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 340777) = 5971968 * k + 1022332 := by
    unfold C
    simp [show (1990656 * k + 340777) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1022332) = 2985984 * k + 511166 := by
    unfold C
    simp [show (5971968 * k + 1022332) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 511166) = 1492992 * k + 255583 := by
    unfold C
    simp [show (2985984 * k + 511166) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 255583) = 4478976 * k + 766750 := by
    unfold C
    simp [show (1492992 * k + 255583) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 766750) = 2239488 * k + 383375 := by
    unfold C
    simp [show (4478976 * k + 766750) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 383375) = 6718464 * k + 1150126 := by
    unfold C
    simp [show (2239488 * k + 383375) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1150126) = 3359232 * k + 575063 := by
    unfold C
    simp [show (6718464 * k + 1150126) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 575063) = 10077696 * k + 1725190 := by
    unfold C
    simp [show (3359232 * k + 575063) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1725190) = 5038848 * k + 862595 := by
    unfold C
    simp [show (10077696 * k + 1725190) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 862595) = 15116544 * k + 2587786 := by
    unfold C
    simp [show (5038848 * k + 862595) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2587786) = 7558272 * k + 1293893 := by
    unfold C
    simp [show (15116544 * k + 2587786) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1293893) = 22674816 * k + 3881680 := by
    unfold C
    simp [show (7558272 * k + 1293893) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 3881680) = 11337408 * k + 1940840 := by
    unfold C
    simp [show (22674816 * k + 3881680) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1940840) = 5668704 * k + 970420 := by
    unfold C
    simp [show (11337408 * k + 1940840) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 970420) = 2834352 * k + 485210 := by
    unfold C
    simp [show (5668704 * k + 970420) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 485210) = 1417176 * k + 242605 := by
    unfold C
    simp [show (2834352 * k + 485210) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 242605) = 4251528 * k + 727816 := by
    unfold C
    simp [show (1417176 * k + 242605) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 727816) = 2125764 * k + 363908 := by
    unfold C
    simp [show (4251528 * k + 727816) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 363908) = 1062882 * k + 181954 := by
    unfold C
    simp [show (2125764 * k + 363908) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 181954) = 531441 * k + 90977 := by
    unfold C
    simp [show (1062882 * k + 181954) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 179503) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 179503)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_181083 : ∀ k : Nat,
    iterate (1048576 * k + 181083) 32 = 531441 * k + 91778 ∧
      531441 * k + 91778 < 1048576 * k + 181083 := by
  intro k
  have h1 : C (1048576 * k + 181083) = 3145728 * k + 543250 := by
    unfold C
    simp [show (1048576 * k + 181083) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 543250) = 1572864 * k + 271625 := by
    unfold C
    simp [show (3145728 * k + 543250) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 271625) = 4718592 * k + 814876 := by
    unfold C
    simp [show (1572864 * k + 271625) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 814876) = 2359296 * k + 407438 := by
    unfold C
    simp [show (4718592 * k + 814876) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 407438) = 1179648 * k + 203719 := by
    unfold C
    simp [show (2359296 * k + 407438) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 203719) = 3538944 * k + 611158 := by
    unfold C
    simp [show (1179648 * k + 203719) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 611158) = 1769472 * k + 305579 := by
    unfold C
    simp [show (3538944 * k + 611158) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 305579) = 5308416 * k + 916738 := by
    unfold C
    simp [show (1769472 * k + 305579) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 916738) = 2654208 * k + 458369 := by
    unfold C
    simp [show (5308416 * k + 916738) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 458369) = 7962624 * k + 1375108 := by
    unfold C
    simp [show (2654208 * k + 458369) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1375108) = 3981312 * k + 687554 := by
    unfold C
    simp [show (7962624 * k + 1375108) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 687554) = 1990656 * k + 343777 := by
    unfold C
    simp [show (3981312 * k + 687554) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 343777) = 5971968 * k + 1031332 := by
    unfold C
    simp [show (1990656 * k + 343777) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1031332) = 2985984 * k + 515666 := by
    unfold C
    simp [show (5971968 * k + 1031332) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 515666) = 1492992 * k + 257833 := by
    unfold C
    simp [show (2985984 * k + 515666) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 257833) = 4478976 * k + 773500 := by
    unfold C
    simp [show (1492992 * k + 257833) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 773500) = 2239488 * k + 386750 := by
    unfold C
    simp [show (4478976 * k + 773500) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 386750) = 1119744 * k + 193375 := by
    unfold C
    simp [show (2239488 * k + 386750) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 193375) = 3359232 * k + 580126 := by
    unfold C
    simp [show (1119744 * k + 193375) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 580126) = 1679616 * k + 290063 := by
    unfold C
    simp [show (3359232 * k + 580126) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 290063) = 5038848 * k + 870190 := by
    unfold C
    simp [show (1679616 * k + 290063) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 870190) = 2519424 * k + 435095 := by
    unfold C
    simp [show (5038848 * k + 870190) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 435095) = 7558272 * k + 1305286 := by
    unfold C
    simp [show (2519424 * k + 435095) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1305286) = 3779136 * k + 652643 := by
    unfold C
    simp [show (7558272 * k + 1305286) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 652643) = 11337408 * k + 1957930 := by
    unfold C
    simp [show (3779136 * k + 652643) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1957930) = 5668704 * k + 978965 := by
    unfold C
    simp [show (11337408 * k + 1957930) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 978965) = 17006112 * k + 2936896 := by
    unfold C
    simp [show (5668704 * k + 978965) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2936896) = 8503056 * k + 1468448 := by
    unfold C
    simp [show (17006112 * k + 2936896) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1468448) = 4251528 * k + 734224 := by
    unfold C
    simp [show (8503056 * k + 1468448) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 734224) = 2125764 * k + 367112 := by
    unfold C
    simp [show (4251528 * k + 734224) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 367112) = 1062882 * k + 183556 := by
    unfold C
    simp [show (2125764 * k + 367112) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 183556) = 531441 * k + 91778 := by
    unfold C
    simp [show (1062882 * k + 183556) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 181083) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 181083)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_181403 : ∀ k : Nat,
    iterate (1048576 * k + 181403) 32 = 531441 * k + 91940 ∧
      531441 * k + 91940 < 1048576 * k + 181403 := by
  intro k
  have h1 : C (1048576 * k + 181403) = 3145728 * k + 544210 := by
    unfold C
    simp [show (1048576 * k + 181403) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 544210) = 1572864 * k + 272105 := by
    unfold C
    simp [show (3145728 * k + 544210) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 272105) = 4718592 * k + 816316 := by
    unfold C
    simp [show (1572864 * k + 272105) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 816316) = 2359296 * k + 408158 := by
    unfold C
    simp [show (4718592 * k + 816316) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 408158) = 1179648 * k + 204079 := by
    unfold C
    simp [show (2359296 * k + 408158) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 204079) = 3538944 * k + 612238 := by
    unfold C
    simp [show (1179648 * k + 204079) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 612238) = 1769472 * k + 306119 := by
    unfold C
    simp [show (3538944 * k + 612238) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 306119) = 5308416 * k + 918358 := by
    unfold C
    simp [show (1769472 * k + 306119) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 918358) = 2654208 * k + 459179 := by
    unfold C
    simp [show (5308416 * k + 918358) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 459179) = 7962624 * k + 1377538 := by
    unfold C
    simp [show (2654208 * k + 459179) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1377538) = 3981312 * k + 688769 := by
    unfold C
    simp [show (7962624 * k + 1377538) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 688769) = 11943936 * k + 2066308 := by
    unfold C
    simp [show (3981312 * k + 688769) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2066308) = 5971968 * k + 1033154 := by
    unfold C
    simp [show (11943936 * k + 2066308) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1033154) = 2985984 * k + 516577 := by
    unfold C
    simp [show (5971968 * k + 1033154) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 516577) = 8957952 * k + 1549732 := by
    unfold C
    simp [show (2985984 * k + 516577) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1549732) = 4478976 * k + 774866 := by
    unfold C
    simp [show (8957952 * k + 1549732) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 774866) = 2239488 * k + 387433 := by
    unfold C
    simp [show (4478976 * k + 774866) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 387433) = 6718464 * k + 1162300 := by
    unfold C
    simp [show (2239488 * k + 387433) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1162300) = 3359232 * k + 581150 := by
    unfold C
    simp [show (6718464 * k + 1162300) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 581150) = 1679616 * k + 290575 := by
    unfold C
    simp [show (3359232 * k + 581150) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 290575) = 5038848 * k + 871726 := by
    unfold C
    simp [show (1679616 * k + 290575) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 871726) = 2519424 * k + 435863 := by
    unfold C
    simp [show (5038848 * k + 871726) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 435863) = 7558272 * k + 1307590 := by
    unfold C
    simp [show (2519424 * k + 435863) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1307590) = 3779136 * k + 653795 := by
    unfold C
    simp [show (7558272 * k + 1307590) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 653795) = 11337408 * k + 1961386 := by
    unfold C
    simp [show (3779136 * k + 653795) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1961386) = 5668704 * k + 980693 := by
    unfold C
    simp [show (11337408 * k + 1961386) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 980693) = 17006112 * k + 2942080 := by
    unfold C
    simp [show (5668704 * k + 980693) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2942080) = 8503056 * k + 1471040 := by
    unfold C
    simp [show (17006112 * k + 2942080) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1471040) = 4251528 * k + 735520 := by
    unfold C
    simp [show (8503056 * k + 1471040) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 735520) = 2125764 * k + 367760 := by
    unfold C
    simp [show (4251528 * k + 735520) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 367760) = 1062882 * k + 183880 := by
    unfold C
    simp [show (2125764 * k + 367760) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 183880) = 531441 * k + 91940 := by
    unfold C
    simp [show (1062882 * k + 183880) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 181403) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 181403)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_181727 : ∀ k : Nat,
    iterate (1048576 * k + 181727) 32 = 531441 * k + 92104 ∧
      531441 * k + 92104 < 1048576 * k + 181727 := by
  intro k
  have h1 : C (1048576 * k + 181727) = 3145728 * k + 545182 := by
    unfold C
    simp [show (1048576 * k + 181727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 545182) = 1572864 * k + 272591 := by
    unfold C
    simp [show (3145728 * k + 545182) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 272591) = 4718592 * k + 817774 := by
    unfold C
    simp [show (1572864 * k + 272591) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 817774) = 2359296 * k + 408887 := by
    unfold C
    simp [show (4718592 * k + 817774) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 408887) = 7077888 * k + 1226662 := by
    unfold C
    simp [show (2359296 * k + 408887) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1226662) = 3538944 * k + 613331 := by
    unfold C
    simp [show (7077888 * k + 1226662) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 613331) = 10616832 * k + 1839994 := by
    unfold C
    simp [show (3538944 * k + 613331) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1839994) = 5308416 * k + 919997 := by
    unfold C
    simp [show (10616832 * k + 1839994) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 919997) = 15925248 * k + 2759992 := by
    unfold C
    simp [show (5308416 * k + 919997) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2759992) = 7962624 * k + 1379996 := by
    unfold C
    simp [show (15925248 * k + 2759992) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1379996) = 3981312 * k + 689998 := by
    unfold C
    simp [show (7962624 * k + 1379996) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 689998) = 1990656 * k + 344999 := by
    unfold C
    simp [show (3981312 * k + 689998) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 344999) = 5971968 * k + 1034998 := by
    unfold C
    simp [show (1990656 * k + 344999) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1034998) = 2985984 * k + 517499 := by
    unfold C
    simp [show (5971968 * k + 1034998) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 517499) = 8957952 * k + 1552498 := by
    unfold C
    simp [show (2985984 * k + 517499) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1552498) = 4478976 * k + 776249 := by
    unfold C
    simp [show (8957952 * k + 1552498) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 776249) = 13436928 * k + 2328748 := by
    unfold C
    simp [show (4478976 * k + 776249) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2328748) = 6718464 * k + 1164374 := by
    unfold C
    simp [show (13436928 * k + 2328748) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1164374) = 3359232 * k + 582187 := by
    unfold C
    simp [show (6718464 * k + 1164374) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 582187) = 10077696 * k + 1746562 := by
    unfold C
    simp [show (3359232 * k + 582187) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1746562) = 5038848 * k + 873281 := by
    unfold C
    simp [show (10077696 * k + 1746562) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 873281) = 15116544 * k + 2619844 := by
    unfold C
    simp [show (5038848 * k + 873281) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2619844) = 7558272 * k + 1309922 := by
    unfold C
    simp [show (15116544 * k + 2619844) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1309922) = 3779136 * k + 654961 := by
    unfold C
    simp [show (7558272 * k + 1309922) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 654961) = 11337408 * k + 1964884 := by
    unfold C
    simp [show (3779136 * k + 654961) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1964884) = 5668704 * k + 982442 := by
    unfold C
    simp [show (11337408 * k + 1964884) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 982442) = 2834352 * k + 491221 := by
    unfold C
    simp [show (5668704 * k + 982442) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 491221) = 8503056 * k + 1473664 := by
    unfold C
    simp [show (2834352 * k + 491221) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1473664) = 4251528 * k + 736832 := by
    unfold C
    simp [show (8503056 * k + 1473664) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 736832) = 2125764 * k + 368416 := by
    unfold C
    simp [show (4251528 * k + 736832) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 368416) = 1062882 * k + 184208 := by
    unfold C
    simp [show (2125764 * k + 368416) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 184208) = 531441 * k + 92104 := by
    unfold C
    simp [show (1062882 * k + 184208) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 181727) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 181727)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_181759 : ∀ k : Nat,
    iterate (1048576 * k + 181759) 32 = 531441 * k + 92120 ∧
      531441 * k + 92120 < 1048576 * k + 181759 := by
  intro k
  have h1 : C (1048576 * k + 181759) = 3145728 * k + 545278 := by
    unfold C
    simp [show (1048576 * k + 181759) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 545278) = 1572864 * k + 272639 := by
    unfold C
    simp [show (3145728 * k + 545278) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 272639) = 4718592 * k + 817918 := by
    unfold C
    simp [show (1572864 * k + 272639) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 817918) = 2359296 * k + 408959 := by
    unfold C
    simp [show (4718592 * k + 817918) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 408959) = 7077888 * k + 1226878 := by
    unfold C
    simp [show (2359296 * k + 408959) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1226878) = 3538944 * k + 613439 := by
    unfold C
    simp [show (7077888 * k + 1226878) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 613439) = 10616832 * k + 1840318 := by
    unfold C
    simp [show (3538944 * k + 613439) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1840318) = 5308416 * k + 920159 := by
    unfold C
    simp [show (10616832 * k + 1840318) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 920159) = 15925248 * k + 2760478 := by
    unfold C
    simp [show (5308416 * k + 920159) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2760478) = 7962624 * k + 1380239 := by
    unfold C
    simp [show (15925248 * k + 2760478) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1380239) = 23887872 * k + 4140718 := by
    unfold C
    simp [show (7962624 * k + 1380239) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 4140718) = 11943936 * k + 2070359 := by
    unfold C
    simp [show (23887872 * k + 4140718) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2070359) = 35831808 * k + 6211078 := by
    unfold C
    simp [show (11943936 * k + 2070359) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 6211078) = 17915904 * k + 3105539 := by
    unfold C
    simp [show (35831808 * k + 6211078) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 3105539) = 53747712 * k + 9316618 := by
    unfold C
    simp [show (17915904 * k + 3105539) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 9316618) = 26873856 * k + 4658309 := by
    unfold C
    simp [show (53747712 * k + 9316618) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 4658309) = 80621568 * k + 13974928 := by
    unfold C
    simp [show (26873856 * k + 4658309) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 13974928) = 40310784 * k + 6987464 := by
    unfold C
    simp [show (80621568 * k + 13974928) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 6987464) = 20155392 * k + 3493732 := by
    unfold C
    simp [show (40310784 * k + 6987464) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3493732) = 10077696 * k + 1746866 := by
    unfold C
    simp [show (20155392 * k + 3493732) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1746866) = 5038848 * k + 873433 := by
    unfold C
    simp [show (10077696 * k + 1746866) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 873433) = 15116544 * k + 2620300 := by
    unfold C
    simp [show (5038848 * k + 873433) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2620300) = 7558272 * k + 1310150 := by
    unfold C
    simp [show (15116544 * k + 2620300) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1310150) = 3779136 * k + 655075 := by
    unfold C
    simp [show (7558272 * k + 1310150) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 655075) = 11337408 * k + 1965226 := by
    unfold C
    simp [show (3779136 * k + 655075) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1965226) = 5668704 * k + 982613 := by
    unfold C
    simp [show (11337408 * k + 1965226) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 982613) = 17006112 * k + 2947840 := by
    unfold C
    simp [show (5668704 * k + 982613) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2947840) = 8503056 * k + 1473920 := by
    unfold C
    simp [show (17006112 * k + 2947840) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1473920) = 4251528 * k + 736960 := by
    unfold C
    simp [show (8503056 * k + 1473920) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 736960) = 2125764 * k + 368480 := by
    unfold C
    simp [show (4251528 * k + 736960) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 368480) = 1062882 * k + 184240 := by
    unfold C
    simp [show (2125764 * k + 368480) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 184240) = 531441 * k + 92120 := by
    unfold C
    simp [show (1062882 * k + 184240) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 181759) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 181759)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_181999 : ∀ k : Nat,
    iterate (1048576 * k + 181999) 32 = 531441 * k + 92242 ∧
      531441 * k + 92242 < 1048576 * k + 181999 := by
  intro k
  have h1 : C (1048576 * k + 181999) = 3145728 * k + 545998 := by
    unfold C
    simp [show (1048576 * k + 181999) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 545998) = 1572864 * k + 272999 := by
    unfold C
    simp [show (3145728 * k + 545998) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 272999) = 4718592 * k + 818998 := by
    unfold C
    simp [show (1572864 * k + 272999) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 818998) = 2359296 * k + 409499 := by
    unfold C
    simp [show (4718592 * k + 818998) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 409499) = 7077888 * k + 1228498 := by
    unfold C
    simp [show (2359296 * k + 409499) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1228498) = 3538944 * k + 614249 := by
    unfold C
    simp [show (7077888 * k + 1228498) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 614249) = 10616832 * k + 1842748 := by
    unfold C
    simp [show (3538944 * k + 614249) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1842748) = 5308416 * k + 921374 := by
    unfold C
    simp [show (10616832 * k + 1842748) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 921374) = 2654208 * k + 460687 := by
    unfold C
    simp [show (5308416 * k + 921374) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 460687) = 7962624 * k + 1382062 := by
    unfold C
    simp [show (2654208 * k + 460687) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1382062) = 3981312 * k + 691031 := by
    unfold C
    simp [show (7962624 * k + 1382062) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 691031) = 11943936 * k + 2073094 := by
    unfold C
    simp [show (3981312 * k + 691031) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2073094) = 5971968 * k + 1036547 := by
    unfold C
    simp [show (11943936 * k + 2073094) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1036547) = 17915904 * k + 3109642 := by
    unfold C
    simp [show (5971968 * k + 1036547) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3109642) = 8957952 * k + 1554821 := by
    unfold C
    simp [show (17915904 * k + 3109642) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1554821) = 26873856 * k + 4664464 := by
    unfold C
    simp [show (8957952 * k + 1554821) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4664464) = 13436928 * k + 2332232 := by
    unfold C
    simp [show (26873856 * k + 4664464) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2332232) = 6718464 * k + 1166116 := by
    unfold C
    simp [show (13436928 * k + 2332232) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1166116) = 3359232 * k + 583058 := by
    unfold C
    simp [show (6718464 * k + 1166116) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 583058) = 1679616 * k + 291529 := by
    unfold C
    simp [show (3359232 * k + 583058) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 291529) = 5038848 * k + 874588 := by
    unfold C
    simp [show (1679616 * k + 291529) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 874588) = 2519424 * k + 437294 := by
    unfold C
    simp [show (5038848 * k + 874588) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 437294) = 1259712 * k + 218647 := by
    unfold C
    simp [show (2519424 * k + 437294) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 218647) = 3779136 * k + 655942 := by
    unfold C
    simp [show (1259712 * k + 218647) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 655942) = 1889568 * k + 327971 := by
    unfold C
    simp [show (3779136 * k + 655942) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 327971) = 5668704 * k + 983914 := by
    unfold C
    simp [show (1889568 * k + 327971) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 983914) = 2834352 * k + 491957 := by
    unfold C
    simp [show (5668704 * k + 983914) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 491957) = 8503056 * k + 1475872 := by
    unfold C
    simp [show (2834352 * k + 491957) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1475872) = 4251528 * k + 737936 := by
    unfold C
    simp [show (8503056 * k + 1475872) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 737936) = 2125764 * k + 368968 := by
    unfold C
    simp [show (4251528 * k + 737936) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 368968) = 1062882 * k + 184484 := by
    unfold C
    simp [show (2125764 * k + 368968) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 184484) = 531441 * k + 92242 := by
    unfold C
    simp [show (1062882 * k + 184484) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 181999) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 181999)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_182107 : ∀ k : Nat,
    iterate (1048576 * k + 182107) 32 = 531441 * k + 92297 ∧
      531441 * k + 92297 < 1048576 * k + 182107 := by
  intro k
  have h1 : C (1048576 * k + 182107) = 3145728 * k + 546322 := by
    unfold C
    simp [show (1048576 * k + 182107) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 546322) = 1572864 * k + 273161 := by
    unfold C
    simp [show (3145728 * k + 546322) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 273161) = 4718592 * k + 819484 := by
    unfold C
    simp [show (1572864 * k + 273161) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 819484) = 2359296 * k + 409742 := by
    unfold C
    simp [show (4718592 * k + 819484) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 409742) = 1179648 * k + 204871 := by
    unfold C
    simp [show (2359296 * k + 409742) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 204871) = 3538944 * k + 614614 := by
    unfold C
    simp [show (1179648 * k + 204871) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 614614) = 1769472 * k + 307307 := by
    unfold C
    simp [show (3538944 * k + 614614) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 307307) = 5308416 * k + 921922 := by
    unfold C
    simp [show (1769472 * k + 307307) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 921922) = 2654208 * k + 460961 := by
    unfold C
    simp [show (5308416 * k + 921922) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 460961) = 7962624 * k + 1382884 := by
    unfold C
    simp [show (2654208 * k + 460961) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1382884) = 3981312 * k + 691442 := by
    unfold C
    simp [show (7962624 * k + 1382884) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 691442) = 1990656 * k + 345721 := by
    unfold C
    simp [show (3981312 * k + 691442) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 345721) = 5971968 * k + 1037164 := by
    unfold C
    simp [show (1990656 * k + 345721) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1037164) = 2985984 * k + 518582 := by
    unfold C
    simp [show (5971968 * k + 1037164) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 518582) = 1492992 * k + 259291 := by
    unfold C
    simp [show (2985984 * k + 518582) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 259291) = 4478976 * k + 777874 := by
    unfold C
    simp [show (1492992 * k + 259291) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 777874) = 2239488 * k + 388937 := by
    unfold C
    simp [show (4478976 * k + 777874) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 388937) = 6718464 * k + 1166812 := by
    unfold C
    simp [show (2239488 * k + 388937) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1166812) = 3359232 * k + 583406 := by
    unfold C
    simp [show (6718464 * k + 1166812) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 583406) = 1679616 * k + 291703 := by
    unfold C
    simp [show (3359232 * k + 583406) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 291703) = 5038848 * k + 875110 := by
    unfold C
    simp [show (1679616 * k + 291703) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 875110) = 2519424 * k + 437555 := by
    unfold C
    simp [show (5038848 * k + 875110) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 437555) = 7558272 * k + 1312666 := by
    unfold C
    simp [show (2519424 * k + 437555) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1312666) = 3779136 * k + 656333 := by
    unfold C
    simp [show (7558272 * k + 1312666) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 656333) = 11337408 * k + 1969000 := by
    unfold C
    simp [show (3779136 * k + 656333) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1969000) = 5668704 * k + 984500 := by
    unfold C
    simp [show (11337408 * k + 1969000) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 984500) = 2834352 * k + 492250 := by
    unfold C
    simp [show (5668704 * k + 984500) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 492250) = 1417176 * k + 246125 := by
    unfold C
    simp [show (2834352 * k + 492250) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 246125) = 4251528 * k + 738376 := by
    unfold C
    simp [show (1417176 * k + 246125) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 738376) = 2125764 * k + 369188 := by
    unfold C
    simp [show (4251528 * k + 738376) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 369188) = 1062882 * k + 184594 := by
    unfold C
    simp [show (2125764 * k + 369188) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 184594) = 531441 * k + 92297 := by
    unfold C
    simp [show (1062882 * k + 184594) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 182107) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 182107)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_182599 : ∀ k : Nat,
    iterate (1048576 * k + 182599) 32 = 531441 * k + 92546 ∧
      531441 * k + 92546 < 1048576 * k + 182599 := by
  intro k
  have h1 : C (1048576 * k + 182599) = 3145728 * k + 547798 := by
    unfold C
    simp [show (1048576 * k + 182599) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 547798) = 1572864 * k + 273899 := by
    unfold C
    simp [show (3145728 * k + 547798) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 273899) = 4718592 * k + 821698 := by
    unfold C
    simp [show (1572864 * k + 273899) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 821698) = 2359296 * k + 410849 := by
    unfold C
    simp [show (4718592 * k + 821698) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 410849) = 7077888 * k + 1232548 := by
    unfold C
    simp [show (2359296 * k + 410849) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1232548) = 3538944 * k + 616274 := by
    unfold C
    simp [show (7077888 * k + 1232548) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 616274) = 1769472 * k + 308137 := by
    unfold C
    simp [show (3538944 * k + 616274) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 308137) = 5308416 * k + 924412 := by
    unfold C
    simp [show (1769472 * k + 308137) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 924412) = 2654208 * k + 462206 := by
    unfold C
    simp [show (5308416 * k + 924412) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 462206) = 1327104 * k + 231103 := by
    unfold C
    simp [show (2654208 * k + 462206) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 231103) = 3981312 * k + 693310 := by
    unfold C
    simp [show (1327104 * k + 231103) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 693310) = 1990656 * k + 346655 := by
    unfold C
    simp [show (3981312 * k + 693310) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 346655) = 5971968 * k + 1039966 := by
    unfold C
    simp [show (1990656 * k + 346655) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1039966) = 2985984 * k + 519983 := by
    unfold C
    simp [show (5971968 * k + 1039966) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 519983) = 8957952 * k + 1559950 := by
    unfold C
    simp [show (2985984 * k + 519983) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1559950) = 4478976 * k + 779975 := by
    unfold C
    simp [show (8957952 * k + 1559950) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 779975) = 13436928 * k + 2339926 := by
    unfold C
    simp [show (4478976 * k + 779975) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2339926) = 6718464 * k + 1169963 := by
    unfold C
    simp [show (13436928 * k + 2339926) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1169963) = 20155392 * k + 3509890 := by
    unfold C
    simp [show (6718464 * k + 1169963) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 3509890) = 10077696 * k + 1754945 := by
    unfold C
    simp [show (20155392 * k + 3509890) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1754945) = 30233088 * k + 5264836 := by
    unfold C
    simp [show (10077696 * k + 1754945) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 5264836) = 15116544 * k + 2632418 := by
    unfold C
    simp [show (30233088 * k + 5264836) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2632418) = 7558272 * k + 1316209 := by
    unfold C
    simp [show (15116544 * k + 2632418) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1316209) = 22674816 * k + 3948628 := by
    unfold C
    simp [show (7558272 * k + 1316209) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 3948628) = 11337408 * k + 1974314 := by
    unfold C
    simp [show (22674816 * k + 3948628) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1974314) = 5668704 * k + 987157 := by
    unfold C
    simp [show (11337408 * k + 1974314) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 987157) = 17006112 * k + 2961472 := by
    unfold C
    simp [show (5668704 * k + 987157) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2961472) = 8503056 * k + 1480736 := by
    unfold C
    simp [show (17006112 * k + 2961472) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1480736) = 4251528 * k + 740368 := by
    unfold C
    simp [show (8503056 * k + 1480736) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 740368) = 2125764 * k + 370184 := by
    unfold C
    simp [show (4251528 * k + 740368) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 370184) = 1062882 * k + 185092 := by
    unfold C
    simp [show (2125764 * k + 370184) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 185092) = 531441 * k + 92546 := by
    unfold C
    simp [show (1062882 * k + 185092) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 182599) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 182599)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_182895 : ∀ k : Nat,
    iterate (1048576 * k + 182895) 32 = 531441 * k + 92696 ∧
      531441 * k + 92696 < 1048576 * k + 182895 := by
  intro k
  have h1 : C (1048576 * k + 182895) = 3145728 * k + 548686 := by
    unfold C
    simp [show (1048576 * k + 182895) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 548686) = 1572864 * k + 274343 := by
    unfold C
    simp [show (3145728 * k + 548686) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 274343) = 4718592 * k + 823030 := by
    unfold C
    simp [show (1572864 * k + 274343) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 823030) = 2359296 * k + 411515 := by
    unfold C
    simp [show (4718592 * k + 823030) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 411515) = 7077888 * k + 1234546 := by
    unfold C
    simp [show (2359296 * k + 411515) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1234546) = 3538944 * k + 617273 := by
    unfold C
    simp [show (7077888 * k + 1234546) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 617273) = 10616832 * k + 1851820 := by
    unfold C
    simp [show (3538944 * k + 617273) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1851820) = 5308416 * k + 925910 := by
    unfold C
    simp [show (10616832 * k + 1851820) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 925910) = 2654208 * k + 462955 := by
    unfold C
    simp [show (5308416 * k + 925910) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 462955) = 7962624 * k + 1388866 := by
    unfold C
    simp [show (2654208 * k + 462955) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1388866) = 3981312 * k + 694433 := by
    unfold C
    simp [show (7962624 * k + 1388866) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 694433) = 11943936 * k + 2083300 := by
    unfold C
    simp [show (3981312 * k + 694433) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2083300) = 5971968 * k + 1041650 := by
    unfold C
    simp [show (11943936 * k + 2083300) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1041650) = 2985984 * k + 520825 := by
    unfold C
    simp [show (5971968 * k + 1041650) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 520825) = 8957952 * k + 1562476 := by
    unfold C
    simp [show (2985984 * k + 520825) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1562476) = 4478976 * k + 781238 := by
    unfold C
    simp [show (8957952 * k + 1562476) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 781238) = 2239488 * k + 390619 := by
    unfold C
    simp [show (4478976 * k + 781238) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 390619) = 6718464 * k + 1171858 := by
    unfold C
    simp [show (2239488 * k + 390619) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1171858) = 3359232 * k + 585929 := by
    unfold C
    simp [show (6718464 * k + 1171858) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 585929) = 10077696 * k + 1757788 := by
    unfold C
    simp [show (3359232 * k + 585929) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1757788) = 5038848 * k + 878894 := by
    unfold C
    simp [show (10077696 * k + 1757788) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 878894) = 2519424 * k + 439447 := by
    unfold C
    simp [show (5038848 * k + 878894) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 439447) = 7558272 * k + 1318342 := by
    unfold C
    simp [show (2519424 * k + 439447) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1318342) = 3779136 * k + 659171 := by
    unfold C
    simp [show (7558272 * k + 1318342) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 659171) = 11337408 * k + 1977514 := by
    unfold C
    simp [show (3779136 * k + 659171) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1977514) = 5668704 * k + 988757 := by
    unfold C
    simp [show (11337408 * k + 1977514) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 988757) = 17006112 * k + 2966272 := by
    unfold C
    simp [show (5668704 * k + 988757) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2966272) = 8503056 * k + 1483136 := by
    unfold C
    simp [show (17006112 * k + 2966272) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1483136) = 4251528 * k + 741568 := by
    unfold C
    simp [show (8503056 * k + 1483136) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 741568) = 2125764 * k + 370784 := by
    unfold C
    simp [show (4251528 * k + 741568) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 370784) = 1062882 * k + 185392 := by
    unfold C
    simp [show (2125764 * k + 370784) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 185392) = 531441 * k + 92696 := by
    unfold C
    simp [show (1062882 * k + 185392) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 182895) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 182895)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_183599 : ∀ k : Nat,
    iterate (1048576 * k + 183599) 32 = 531441 * k + 93053 ∧
      531441 * k + 93053 < 1048576 * k + 183599 := by
  intro k
  have h1 : C (1048576 * k + 183599) = 3145728 * k + 550798 := by
    unfold C
    simp [show (1048576 * k + 183599) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 550798) = 1572864 * k + 275399 := by
    unfold C
    simp [show (3145728 * k + 550798) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 275399) = 4718592 * k + 826198 := by
    unfold C
    simp [show (1572864 * k + 275399) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 826198) = 2359296 * k + 413099 := by
    unfold C
    simp [show (4718592 * k + 826198) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 413099) = 7077888 * k + 1239298 := by
    unfold C
    simp [show (2359296 * k + 413099) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1239298) = 3538944 * k + 619649 := by
    unfold C
    simp [show (7077888 * k + 1239298) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 619649) = 10616832 * k + 1858948 := by
    unfold C
    simp [show (3538944 * k + 619649) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1858948) = 5308416 * k + 929474 := by
    unfold C
    simp [show (10616832 * k + 1858948) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 929474) = 2654208 * k + 464737 := by
    unfold C
    simp [show (5308416 * k + 929474) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 464737) = 7962624 * k + 1394212 := by
    unfold C
    simp [show (2654208 * k + 464737) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1394212) = 3981312 * k + 697106 := by
    unfold C
    simp [show (7962624 * k + 1394212) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 697106) = 1990656 * k + 348553 := by
    unfold C
    simp [show (3981312 * k + 697106) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 348553) = 5971968 * k + 1045660 := by
    unfold C
    simp [show (1990656 * k + 348553) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1045660) = 2985984 * k + 522830 := by
    unfold C
    simp [show (5971968 * k + 1045660) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 522830) = 1492992 * k + 261415 := by
    unfold C
    simp [show (2985984 * k + 522830) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 261415) = 4478976 * k + 784246 := by
    unfold C
    simp [show (1492992 * k + 261415) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 784246) = 2239488 * k + 392123 := by
    unfold C
    simp [show (4478976 * k + 784246) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 392123) = 6718464 * k + 1176370 := by
    unfold C
    simp [show (2239488 * k + 392123) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1176370) = 3359232 * k + 588185 := by
    unfold C
    simp [show (6718464 * k + 1176370) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 588185) = 10077696 * k + 1764556 := by
    unfold C
    simp [show (3359232 * k + 588185) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1764556) = 5038848 * k + 882278 := by
    unfold C
    simp [show (10077696 * k + 1764556) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 882278) = 2519424 * k + 441139 := by
    unfold C
    simp [show (5038848 * k + 882278) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 441139) = 7558272 * k + 1323418 := by
    unfold C
    simp [show (2519424 * k + 441139) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1323418) = 3779136 * k + 661709 := by
    unfold C
    simp [show (7558272 * k + 1323418) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 661709) = 11337408 * k + 1985128 := by
    unfold C
    simp [show (3779136 * k + 661709) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1985128) = 5668704 * k + 992564 := by
    unfold C
    simp [show (11337408 * k + 1985128) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 992564) = 2834352 * k + 496282 := by
    unfold C
    simp [show (5668704 * k + 992564) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 496282) = 1417176 * k + 248141 := by
    unfold C
    simp [show (2834352 * k + 496282) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 248141) = 4251528 * k + 744424 := by
    unfold C
    simp [show (1417176 * k + 248141) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 744424) = 2125764 * k + 372212 := by
    unfold C
    simp [show (4251528 * k + 744424) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 372212) = 1062882 * k + 186106 := by
    unfold C
    simp [show (2125764 * k + 372212) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 186106) = 531441 * k + 93053 := by
    unfold C
    simp [show (1062882 * k + 186106) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 183599) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 183599)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard024
