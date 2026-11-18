import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard112

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_875687 : ∀ k : Nat,
    iterate (1048576 * k + 875687) 32 = 531441 * k + 443818 ∧
      531441 * k + 443818 < 1048576 * k + 875687 := by
  intro k
  have h1 : C (1048576 * k + 875687) = 3145728 * k + 2627062 := by
    unfold C
    simp [show (1048576 * k + 875687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2627062) = 1572864 * k + 1313531 := by
    unfold C
    simp [show (3145728 * k + 2627062) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1313531) = 4718592 * k + 3940594 := by
    unfold C
    simp [show (1572864 * k + 1313531) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3940594) = 2359296 * k + 1970297 := by
    unfold C
    simp [show (4718592 * k + 3940594) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1970297) = 7077888 * k + 5910892 := by
    unfold C
    simp [show (2359296 * k + 1970297) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5910892) = 3538944 * k + 2955446 := by
    unfold C
    simp [show (7077888 * k + 5910892) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2955446) = 1769472 * k + 1477723 := by
    unfold C
    simp [show (3538944 * k + 2955446) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1477723) = 5308416 * k + 4433170 := by
    unfold C
    simp [show (1769472 * k + 1477723) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4433170) = 2654208 * k + 2216585 := by
    unfold C
    simp [show (5308416 * k + 4433170) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2216585) = 7962624 * k + 6649756 := by
    unfold C
    simp [show (2654208 * k + 2216585) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6649756) = 3981312 * k + 3324878 := by
    unfold C
    simp [show (7962624 * k + 6649756) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3324878) = 1990656 * k + 1662439 := by
    unfold C
    simp [show (3981312 * k + 3324878) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1662439) = 5971968 * k + 4987318 := by
    unfold C
    simp [show (1990656 * k + 1662439) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4987318) = 2985984 * k + 2493659 := by
    unfold C
    simp [show (5971968 * k + 4987318) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2493659) = 8957952 * k + 7480978 := by
    unfold C
    simp [show (2985984 * k + 2493659) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7480978) = 4478976 * k + 3740489 := by
    unfold C
    simp [show (8957952 * k + 7480978) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3740489) = 13436928 * k + 11221468 := by
    unfold C
    simp [show (4478976 * k + 3740489) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11221468) = 6718464 * k + 5610734 := by
    unfold C
    simp [show (13436928 * k + 11221468) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5610734) = 3359232 * k + 2805367 := by
    unfold C
    simp [show (6718464 * k + 5610734) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2805367) = 10077696 * k + 8416102 := by
    unfold C
    simp [show (3359232 * k + 2805367) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8416102) = 5038848 * k + 4208051 := by
    unfold C
    simp [show (10077696 * k + 8416102) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4208051) = 15116544 * k + 12624154 := by
    unfold C
    simp [show (5038848 * k + 4208051) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12624154) = 7558272 * k + 6312077 := by
    unfold C
    simp [show (15116544 * k + 12624154) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6312077) = 22674816 * k + 18936232 := by
    unfold C
    simp [show (7558272 * k + 6312077) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 18936232) = 11337408 * k + 9468116 := by
    unfold C
    simp [show (22674816 * k + 18936232) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9468116) = 5668704 * k + 4734058 := by
    unfold C
    simp [show (11337408 * k + 9468116) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4734058) = 2834352 * k + 2367029 := by
    unfold C
    simp [show (5668704 * k + 4734058) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2367029) = 8503056 * k + 7101088 := by
    unfold C
    simp [show (2834352 * k + 2367029) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7101088) = 4251528 * k + 3550544 := by
    unfold C
    simp [show (8503056 * k + 7101088) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3550544) = 2125764 * k + 1775272 := by
    unfold C
    simp [show (4251528 * k + 3550544) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1775272) = 1062882 * k + 887636 := by
    unfold C
    simp [show (2125764 * k + 1775272) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 887636) = 531441 * k + 443818 := by
    unfold C
    simp [show (1062882 * k + 887636) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 875687) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 875687)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_875823 : ∀ k : Nat,
    iterate (1048576 * k + 875823) 32 = 531441 * k + 443887 ∧
      531441 * k + 443887 < 1048576 * k + 875823 := by
  intro k
  have h1 : C (1048576 * k + 875823) = 3145728 * k + 2627470 := by
    unfold C
    simp [show (1048576 * k + 875823) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2627470) = 1572864 * k + 1313735 := by
    unfold C
    simp [show (3145728 * k + 2627470) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1313735) = 4718592 * k + 3941206 := by
    unfold C
    simp [show (1572864 * k + 1313735) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3941206) = 2359296 * k + 1970603 := by
    unfold C
    simp [show (4718592 * k + 3941206) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1970603) = 7077888 * k + 5911810 := by
    unfold C
    simp [show (2359296 * k + 1970603) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5911810) = 3538944 * k + 2955905 := by
    unfold C
    simp [show (7077888 * k + 5911810) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2955905) = 10616832 * k + 8867716 := by
    unfold C
    simp [show (3538944 * k + 2955905) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8867716) = 5308416 * k + 4433858 := by
    unfold C
    simp [show (10616832 * k + 8867716) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4433858) = 2654208 * k + 2216929 := by
    unfold C
    simp [show (5308416 * k + 4433858) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2216929) = 7962624 * k + 6650788 := by
    unfold C
    simp [show (2654208 * k + 2216929) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6650788) = 3981312 * k + 3325394 := by
    unfold C
    simp [show (7962624 * k + 6650788) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3325394) = 1990656 * k + 1662697 := by
    unfold C
    simp [show (3981312 * k + 3325394) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1662697) = 5971968 * k + 4988092 := by
    unfold C
    simp [show (1990656 * k + 1662697) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4988092) = 2985984 * k + 2494046 := by
    unfold C
    simp [show (5971968 * k + 4988092) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2494046) = 1492992 * k + 1247023 := by
    unfold C
    simp [show (2985984 * k + 2494046) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1247023) = 4478976 * k + 3741070 := by
    unfold C
    simp [show (1492992 * k + 1247023) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3741070) = 2239488 * k + 1870535 := by
    unfold C
    simp [show (4478976 * k + 3741070) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1870535) = 6718464 * k + 5611606 := by
    unfold C
    simp [show (2239488 * k + 1870535) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5611606) = 3359232 * k + 2805803 := by
    unfold C
    simp [show (6718464 * k + 5611606) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2805803) = 10077696 * k + 8417410 := by
    unfold C
    simp [show (3359232 * k + 2805803) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8417410) = 5038848 * k + 4208705 := by
    unfold C
    simp [show (10077696 * k + 8417410) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4208705) = 15116544 * k + 12626116 := by
    unfold C
    simp [show (5038848 * k + 4208705) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12626116) = 7558272 * k + 6313058 := by
    unfold C
    simp [show (15116544 * k + 12626116) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6313058) = 3779136 * k + 3156529 := by
    unfold C
    simp [show (7558272 * k + 6313058) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3156529) = 11337408 * k + 9469588 := by
    unfold C
    simp [show (3779136 * k + 3156529) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9469588) = 5668704 * k + 4734794 := by
    unfold C
    simp [show (11337408 * k + 9469588) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4734794) = 2834352 * k + 2367397 := by
    unfold C
    simp [show (5668704 * k + 4734794) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2367397) = 8503056 * k + 7102192 := by
    unfold C
    simp [show (2834352 * k + 2367397) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7102192) = 4251528 * k + 3551096 := by
    unfold C
    simp [show (8503056 * k + 7102192) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3551096) = 2125764 * k + 1775548 := by
    unfold C
    simp [show (4251528 * k + 3551096) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1775548) = 1062882 * k + 887774 := by
    unfold C
    simp [show (2125764 * k + 1775548) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 887774) = 531441 * k + 443887 := by
    unfold C
    simp [show (1062882 * k + 887774) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 875823) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 875823)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_876031 : ∀ k : Nat,
    iterate (1048576 * k + 876031) 32 = 531441 * k + 443992 ∧
      531441 * k + 443992 < 1048576 * k + 876031 := by
  intro k
  have h1 : C (1048576 * k + 876031) = 3145728 * k + 2628094 := by
    unfold C
    simp [show (1048576 * k + 876031) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2628094) = 1572864 * k + 1314047 := by
    unfold C
    simp [show (3145728 * k + 2628094) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1314047) = 4718592 * k + 3942142 := by
    unfold C
    simp [show (1572864 * k + 1314047) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3942142) = 2359296 * k + 1971071 := by
    unfold C
    simp [show (4718592 * k + 3942142) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1971071) = 7077888 * k + 5913214 := by
    unfold C
    simp [show (2359296 * k + 1971071) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5913214) = 3538944 * k + 2956607 := by
    unfold C
    simp [show (7077888 * k + 5913214) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2956607) = 10616832 * k + 8869822 := by
    unfold C
    simp [show (3538944 * k + 2956607) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8869822) = 5308416 * k + 4434911 := by
    unfold C
    simp [show (10616832 * k + 8869822) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4434911) = 15925248 * k + 13304734 := by
    unfold C
    simp [show (5308416 * k + 4434911) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13304734) = 7962624 * k + 6652367 := by
    unfold C
    simp [show (15925248 * k + 13304734) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6652367) = 23887872 * k + 19957102 := by
    unfold C
    simp [show (7962624 * k + 6652367) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 19957102) = 11943936 * k + 9978551 := by
    unfold C
    simp [show (23887872 * k + 19957102) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9978551) = 35831808 * k + 29935654 := by
    unfold C
    simp [show (11943936 * k + 9978551) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 29935654) = 17915904 * k + 14967827 := by
    unfold C
    simp [show (35831808 * k + 29935654) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 14967827) = 53747712 * k + 44903482 := by
    unfold C
    simp [show (17915904 * k + 14967827) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 44903482) = 26873856 * k + 22451741 := by
    unfold C
    simp [show (53747712 * k + 44903482) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 22451741) = 80621568 * k + 67355224 := by
    unfold C
    simp [show (26873856 * k + 22451741) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 67355224) = 40310784 * k + 33677612 := by
    unfold C
    simp [show (80621568 * k + 67355224) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 33677612) = 20155392 * k + 16838806 := by
    unfold C
    simp [show (40310784 * k + 33677612) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 16838806) = 10077696 * k + 8419403 := by
    unfold C
    simp [show (20155392 * k + 16838806) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8419403) = 30233088 * k + 25258210 := by
    unfold C
    simp [show (10077696 * k + 8419403) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 25258210) = 15116544 * k + 12629105 := by
    unfold C
    simp [show (30233088 * k + 25258210) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12629105) = 45349632 * k + 37887316 := by
    unfold C
    simp [show (15116544 * k + 12629105) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 37887316) = 22674816 * k + 18943658 := by
    unfold C
    simp [show (45349632 * k + 37887316) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 18943658) = 11337408 * k + 9471829 := by
    unfold C
    simp [show (22674816 * k + 18943658) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9471829) = 34012224 * k + 28415488 := by
    unfold C
    simp [show (11337408 * k + 9471829) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 28415488) = 17006112 * k + 14207744 := by
    unfold C
    simp [show (34012224 * k + 28415488) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 14207744) = 8503056 * k + 7103872 := by
    unfold C
    simp [show (17006112 * k + 14207744) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7103872) = 4251528 * k + 3551936 := by
    unfold C
    simp [show (8503056 * k + 7103872) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3551936) = 2125764 * k + 1775968 := by
    unfold C
    simp [show (4251528 * k + 3551936) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1775968) = 1062882 * k + 887984 := by
    unfold C
    simp [show (2125764 * k + 1775968) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 887984) = 531441 * k + 443992 := by
    unfold C
    simp [show (1062882 * k + 887984) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 876031) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 876031)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_876379 : ∀ k : Nat,
    iterate (1048576 * k + 876379) 32 = 531441 * k + 444169 ∧
      531441 * k + 444169 < 1048576 * k + 876379 := by
  intro k
  have h1 : C (1048576 * k + 876379) = 3145728 * k + 2629138 := by
    unfold C
    simp [show (1048576 * k + 876379) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2629138) = 1572864 * k + 1314569 := by
    unfold C
    simp [show (3145728 * k + 2629138) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1314569) = 4718592 * k + 3943708 := by
    unfold C
    simp [show (1572864 * k + 1314569) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3943708) = 2359296 * k + 1971854 := by
    unfold C
    simp [show (4718592 * k + 3943708) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1971854) = 1179648 * k + 985927 := by
    unfold C
    simp [show (2359296 * k + 1971854) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 985927) = 3538944 * k + 2957782 := by
    unfold C
    simp [show (1179648 * k + 985927) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2957782) = 1769472 * k + 1478891 := by
    unfold C
    simp [show (3538944 * k + 2957782) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1478891) = 5308416 * k + 4436674 := by
    unfold C
    simp [show (1769472 * k + 1478891) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4436674) = 2654208 * k + 2218337 := by
    unfold C
    simp [show (5308416 * k + 4436674) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2218337) = 7962624 * k + 6655012 := by
    unfold C
    simp [show (2654208 * k + 2218337) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6655012) = 3981312 * k + 3327506 := by
    unfold C
    simp [show (7962624 * k + 6655012) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3327506) = 1990656 * k + 1663753 := by
    unfold C
    simp [show (3981312 * k + 3327506) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1663753) = 5971968 * k + 4991260 := by
    unfold C
    simp [show (1990656 * k + 1663753) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4991260) = 2985984 * k + 2495630 := by
    unfold C
    simp [show (5971968 * k + 4991260) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2495630) = 1492992 * k + 1247815 := by
    unfold C
    simp [show (2985984 * k + 2495630) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1247815) = 4478976 * k + 3743446 := by
    unfold C
    simp [show (1492992 * k + 1247815) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3743446) = 2239488 * k + 1871723 := by
    unfold C
    simp [show (4478976 * k + 3743446) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1871723) = 6718464 * k + 5615170 := by
    unfold C
    simp [show (2239488 * k + 1871723) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5615170) = 3359232 * k + 2807585 := by
    unfold C
    simp [show (6718464 * k + 5615170) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2807585) = 10077696 * k + 8422756 := by
    unfold C
    simp [show (3359232 * k + 2807585) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8422756) = 5038848 * k + 4211378 := by
    unfold C
    simp [show (10077696 * k + 8422756) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4211378) = 2519424 * k + 2105689 := by
    unfold C
    simp [show (5038848 * k + 4211378) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2105689) = 7558272 * k + 6317068 := by
    unfold C
    simp [show (2519424 * k + 2105689) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6317068) = 3779136 * k + 3158534 := by
    unfold C
    simp [show (7558272 * k + 6317068) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3158534) = 1889568 * k + 1579267 := by
    unfold C
    simp [show (3779136 * k + 3158534) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1579267) = 5668704 * k + 4737802 := by
    unfold C
    simp [show (1889568 * k + 1579267) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4737802) = 2834352 * k + 2368901 := by
    unfold C
    simp [show (5668704 * k + 4737802) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2368901) = 8503056 * k + 7106704 := by
    unfold C
    simp [show (2834352 * k + 2368901) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7106704) = 4251528 * k + 3553352 := by
    unfold C
    simp [show (8503056 * k + 7106704) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3553352) = 2125764 * k + 1776676 := by
    unfold C
    simp [show (4251528 * k + 3553352) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1776676) = 1062882 * k + 888338 := by
    unfold C
    simp [show (2125764 * k + 1776676) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 888338) = 531441 * k + 444169 := by
    unfold C
    simp [show (1062882 * k + 888338) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 876379) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 876379)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_876415 : ∀ k : Nat,
    iterate (1048576 * k + 876415) 32 = 531441 * k + 444187 ∧
      531441 * k + 444187 < 1048576 * k + 876415 := by
  intro k
  have h1 : C (1048576 * k + 876415) = 3145728 * k + 2629246 := by
    unfold C
    simp [show (1048576 * k + 876415) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2629246) = 1572864 * k + 1314623 := by
    unfold C
    simp [show (3145728 * k + 2629246) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1314623) = 4718592 * k + 3943870 := by
    unfold C
    simp [show (1572864 * k + 1314623) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3943870) = 2359296 * k + 1971935 := by
    unfold C
    simp [show (4718592 * k + 3943870) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1971935) = 7077888 * k + 5915806 := by
    unfold C
    simp [show (2359296 * k + 1971935) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5915806) = 3538944 * k + 2957903 := by
    unfold C
    simp [show (7077888 * k + 5915806) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2957903) = 10616832 * k + 8873710 := by
    unfold C
    simp [show (3538944 * k + 2957903) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8873710) = 5308416 * k + 4436855 := by
    unfold C
    simp [show (10616832 * k + 8873710) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4436855) = 15925248 * k + 13310566 := by
    unfold C
    simp [show (5308416 * k + 4436855) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13310566) = 7962624 * k + 6655283 := by
    unfold C
    simp [show (15925248 * k + 13310566) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6655283) = 23887872 * k + 19965850 := by
    unfold C
    simp [show (7962624 * k + 6655283) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 19965850) = 11943936 * k + 9982925 := by
    unfold C
    simp [show (23887872 * k + 19965850) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9982925) = 35831808 * k + 29948776 := by
    unfold C
    simp [show (11943936 * k + 9982925) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 29948776) = 17915904 * k + 14974388 := by
    unfold C
    simp [show (35831808 * k + 29948776) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 14974388) = 8957952 * k + 7487194 := by
    unfold C
    simp [show (17915904 * k + 14974388) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7487194) = 4478976 * k + 3743597 := by
    unfold C
    simp [show (8957952 * k + 7487194) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3743597) = 13436928 * k + 11230792 := by
    unfold C
    simp [show (4478976 * k + 3743597) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11230792) = 6718464 * k + 5615396 := by
    unfold C
    simp [show (13436928 * k + 11230792) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5615396) = 3359232 * k + 2807698 := by
    unfold C
    simp [show (6718464 * k + 5615396) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2807698) = 1679616 * k + 1403849 := by
    unfold C
    simp [show (3359232 * k + 2807698) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1403849) = 5038848 * k + 4211548 := by
    unfold C
    simp [show (1679616 * k + 1403849) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4211548) = 2519424 * k + 2105774 := by
    unfold C
    simp [show (5038848 * k + 4211548) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2105774) = 1259712 * k + 1052887 := by
    unfold C
    simp [show (2519424 * k + 2105774) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1052887) = 3779136 * k + 3158662 := by
    unfold C
    simp [show (1259712 * k + 1052887) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3158662) = 1889568 * k + 1579331 := by
    unfold C
    simp [show (3779136 * k + 3158662) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1579331) = 5668704 * k + 4737994 := by
    unfold C
    simp [show (1889568 * k + 1579331) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4737994) = 2834352 * k + 2368997 := by
    unfold C
    simp [show (5668704 * k + 4737994) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2368997) = 8503056 * k + 7106992 := by
    unfold C
    simp [show (2834352 * k + 2368997) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7106992) = 4251528 * k + 3553496 := by
    unfold C
    simp [show (8503056 * k + 7106992) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3553496) = 2125764 * k + 1776748 := by
    unfold C
    simp [show (4251528 * k + 3553496) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1776748) = 1062882 * k + 888374 := by
    unfold C
    simp [show (2125764 * k + 1776748) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 888374) = 531441 * k + 444187 := by
    unfold C
    simp [show (1062882 * k + 888374) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 876415) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 876415)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_876571 : ∀ k : Nat,
    iterate (1048576 * k + 876571) 32 = 531441 * k + 444266 ∧
      531441 * k + 444266 < 1048576 * k + 876571 := by
  intro k
  have h1 : C (1048576 * k + 876571) = 3145728 * k + 2629714 := by
    unfold C
    simp [show (1048576 * k + 876571) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2629714) = 1572864 * k + 1314857 := by
    unfold C
    simp [show (3145728 * k + 2629714) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1314857) = 4718592 * k + 3944572 := by
    unfold C
    simp [show (1572864 * k + 1314857) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3944572) = 2359296 * k + 1972286 := by
    unfold C
    simp [show (4718592 * k + 3944572) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1972286) = 1179648 * k + 986143 := by
    unfold C
    simp [show (2359296 * k + 1972286) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 986143) = 3538944 * k + 2958430 := by
    unfold C
    simp [show (1179648 * k + 986143) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2958430) = 1769472 * k + 1479215 := by
    unfold C
    simp [show (3538944 * k + 2958430) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1479215) = 5308416 * k + 4437646 := by
    unfold C
    simp [show (1769472 * k + 1479215) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4437646) = 2654208 * k + 2218823 := by
    unfold C
    simp [show (5308416 * k + 4437646) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2218823) = 7962624 * k + 6656470 := by
    unfold C
    simp [show (2654208 * k + 2218823) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6656470) = 3981312 * k + 3328235 := by
    unfold C
    simp [show (7962624 * k + 6656470) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3328235) = 11943936 * k + 9984706 := by
    unfold C
    simp [show (3981312 * k + 3328235) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9984706) = 5971968 * k + 4992353 := by
    unfold C
    simp [show (11943936 * k + 9984706) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4992353) = 17915904 * k + 14977060 := by
    unfold C
    simp [show (5971968 * k + 4992353) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14977060) = 8957952 * k + 7488530 := by
    unfold C
    simp [show (17915904 * k + 14977060) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7488530) = 4478976 * k + 3744265 := by
    unfold C
    simp [show (8957952 * k + 7488530) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3744265) = 13436928 * k + 11232796 := by
    unfold C
    simp [show (4478976 * k + 3744265) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11232796) = 6718464 * k + 5616398 := by
    unfold C
    simp [show (13436928 * k + 11232796) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5616398) = 3359232 * k + 2808199 := by
    unfold C
    simp [show (6718464 * k + 5616398) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2808199) = 10077696 * k + 8424598 := by
    unfold C
    simp [show (3359232 * k + 2808199) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8424598) = 5038848 * k + 4212299 := by
    unfold C
    simp [show (10077696 * k + 8424598) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4212299) = 15116544 * k + 12636898 := by
    unfold C
    simp [show (5038848 * k + 4212299) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12636898) = 7558272 * k + 6318449 := by
    unfold C
    simp [show (15116544 * k + 12636898) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6318449) = 22674816 * k + 18955348 := by
    unfold C
    simp [show (7558272 * k + 6318449) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 18955348) = 11337408 * k + 9477674 := by
    unfold C
    simp [show (22674816 * k + 18955348) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9477674) = 5668704 * k + 4738837 := by
    unfold C
    simp [show (11337408 * k + 9477674) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4738837) = 17006112 * k + 14216512 := by
    unfold C
    simp [show (5668704 * k + 4738837) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 14216512) = 8503056 * k + 7108256 := by
    unfold C
    simp [show (17006112 * k + 14216512) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7108256) = 4251528 * k + 3554128 := by
    unfold C
    simp [show (8503056 * k + 7108256) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3554128) = 2125764 * k + 1777064 := by
    unfold C
    simp [show (4251528 * k + 3554128) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1777064) = 1062882 * k + 888532 := by
    unfold C
    simp [show (2125764 * k + 1777064) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 888532) = 531441 * k + 444266 := by
    unfold C
    simp [show (1062882 * k + 888532) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 876571) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 876571)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_876575 : ∀ k : Nat,
    iterate (1048576 * k + 876575) 32 = 531441 * k + 444268 ∧
      531441 * k + 444268 < 1048576 * k + 876575 := by
  intro k
  have h1 : C (1048576 * k + 876575) = 3145728 * k + 2629726 := by
    unfold C
    simp [show (1048576 * k + 876575) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2629726) = 1572864 * k + 1314863 := by
    unfold C
    simp [show (3145728 * k + 2629726) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1314863) = 4718592 * k + 3944590 := by
    unfold C
    simp [show (1572864 * k + 1314863) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3944590) = 2359296 * k + 1972295 := by
    unfold C
    simp [show (4718592 * k + 3944590) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1972295) = 7077888 * k + 5916886 := by
    unfold C
    simp [show (2359296 * k + 1972295) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5916886) = 3538944 * k + 2958443 := by
    unfold C
    simp [show (7077888 * k + 5916886) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2958443) = 10616832 * k + 8875330 := by
    unfold C
    simp [show (3538944 * k + 2958443) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8875330) = 5308416 * k + 4437665 := by
    unfold C
    simp [show (10616832 * k + 8875330) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4437665) = 15925248 * k + 13312996 := by
    unfold C
    simp [show (5308416 * k + 4437665) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13312996) = 7962624 * k + 6656498 := by
    unfold C
    simp [show (15925248 * k + 13312996) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6656498) = 3981312 * k + 3328249 := by
    unfold C
    simp [show (7962624 * k + 6656498) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3328249) = 11943936 * k + 9984748 := by
    unfold C
    simp [show (3981312 * k + 3328249) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9984748) = 5971968 * k + 4992374 := by
    unfold C
    simp [show (11943936 * k + 9984748) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4992374) = 2985984 * k + 2496187 := by
    unfold C
    simp [show (5971968 * k + 4992374) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2496187) = 8957952 * k + 7488562 := by
    unfold C
    simp [show (2985984 * k + 2496187) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7488562) = 4478976 * k + 3744281 := by
    unfold C
    simp [show (8957952 * k + 7488562) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3744281) = 13436928 * k + 11232844 := by
    unfold C
    simp [show (4478976 * k + 3744281) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11232844) = 6718464 * k + 5616422 := by
    unfold C
    simp [show (13436928 * k + 11232844) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5616422) = 3359232 * k + 2808211 := by
    unfold C
    simp [show (6718464 * k + 5616422) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2808211) = 10077696 * k + 8424634 := by
    unfold C
    simp [show (3359232 * k + 2808211) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8424634) = 5038848 * k + 4212317 := by
    unfold C
    simp [show (10077696 * k + 8424634) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4212317) = 15116544 * k + 12636952 := by
    unfold C
    simp [show (5038848 * k + 4212317) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12636952) = 7558272 * k + 6318476 := by
    unfold C
    simp [show (15116544 * k + 12636952) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6318476) = 3779136 * k + 3159238 := by
    unfold C
    simp [show (7558272 * k + 6318476) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3159238) = 1889568 * k + 1579619 := by
    unfold C
    simp [show (3779136 * k + 3159238) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1579619) = 5668704 * k + 4738858 := by
    unfold C
    simp [show (1889568 * k + 1579619) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4738858) = 2834352 * k + 2369429 := by
    unfold C
    simp [show (5668704 * k + 4738858) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2369429) = 8503056 * k + 7108288 := by
    unfold C
    simp [show (2834352 * k + 2369429) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7108288) = 4251528 * k + 3554144 := by
    unfold C
    simp [show (8503056 * k + 7108288) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3554144) = 2125764 * k + 1777072 := by
    unfold C
    simp [show (4251528 * k + 3554144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1777072) = 1062882 * k + 888536 := by
    unfold C
    simp [show (2125764 * k + 1777072) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 888536) = 531441 * k + 444268 := by
    unfold C
    simp [show (1062882 * k + 888536) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 876575) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 876575)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_876955 : ∀ k : Nat,
    iterate (1048576 * k + 876955) 32 = 531441 * k + 444461 ∧
      531441 * k + 444461 < 1048576 * k + 876955 := by
  intro k
  have h1 : C (1048576 * k + 876955) = 3145728 * k + 2630866 := by
    unfold C
    simp [show (1048576 * k + 876955) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2630866) = 1572864 * k + 1315433 := by
    unfold C
    simp [show (3145728 * k + 2630866) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1315433) = 4718592 * k + 3946300 := by
    unfold C
    simp [show (1572864 * k + 1315433) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3946300) = 2359296 * k + 1973150 := by
    unfold C
    simp [show (4718592 * k + 3946300) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1973150) = 1179648 * k + 986575 := by
    unfold C
    simp [show (2359296 * k + 1973150) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 986575) = 3538944 * k + 2959726 := by
    unfold C
    simp [show (1179648 * k + 986575) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2959726) = 1769472 * k + 1479863 := by
    unfold C
    simp [show (3538944 * k + 2959726) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1479863) = 5308416 * k + 4439590 := by
    unfold C
    simp [show (1769472 * k + 1479863) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4439590) = 2654208 * k + 2219795 := by
    unfold C
    simp [show (5308416 * k + 4439590) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2219795) = 7962624 * k + 6659386 := by
    unfold C
    simp [show (2654208 * k + 2219795) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6659386) = 3981312 * k + 3329693 := by
    unfold C
    simp [show (7962624 * k + 6659386) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3329693) = 11943936 * k + 9989080 := by
    unfold C
    simp [show (3981312 * k + 3329693) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9989080) = 5971968 * k + 4994540 := by
    unfold C
    simp [show (11943936 * k + 9989080) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4994540) = 2985984 * k + 2497270 := by
    unfold C
    simp [show (5971968 * k + 4994540) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2497270) = 1492992 * k + 1248635 := by
    unfold C
    simp [show (2985984 * k + 2497270) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1248635) = 4478976 * k + 3745906 := by
    unfold C
    simp [show (1492992 * k + 1248635) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3745906) = 2239488 * k + 1872953 := by
    unfold C
    simp [show (4478976 * k + 3745906) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1872953) = 6718464 * k + 5618860 := by
    unfold C
    simp [show (2239488 * k + 1872953) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5618860) = 3359232 * k + 2809430 := by
    unfold C
    simp [show (6718464 * k + 5618860) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2809430) = 1679616 * k + 1404715 := by
    unfold C
    simp [show (3359232 * k + 2809430) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1404715) = 5038848 * k + 4214146 := by
    unfold C
    simp [show (1679616 * k + 1404715) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4214146) = 2519424 * k + 2107073 := by
    unfold C
    simp [show (5038848 * k + 4214146) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2107073) = 7558272 * k + 6321220 := by
    unfold C
    simp [show (2519424 * k + 2107073) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6321220) = 3779136 * k + 3160610 := by
    unfold C
    simp [show (7558272 * k + 6321220) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3160610) = 1889568 * k + 1580305 := by
    unfold C
    simp [show (3779136 * k + 3160610) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1580305) = 5668704 * k + 4740916 := by
    unfold C
    simp [show (1889568 * k + 1580305) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4740916) = 2834352 * k + 2370458 := by
    unfold C
    simp [show (5668704 * k + 4740916) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2370458) = 1417176 * k + 1185229 := by
    unfold C
    simp [show (2834352 * k + 2370458) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1185229) = 4251528 * k + 3555688 := by
    unfold C
    simp [show (1417176 * k + 1185229) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3555688) = 2125764 * k + 1777844 := by
    unfold C
    simp [show (4251528 * k + 3555688) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1777844) = 1062882 * k + 888922 := by
    unfold C
    simp [show (2125764 * k + 1777844) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 888922) = 531441 * k + 444461 := by
    unfold C
    simp [show (1062882 * k + 888922) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 876955) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 876955)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_878079 : ∀ k : Nat,
    iterate (1048576 * k + 878079) 32 = 531441 * k + 445030 ∧
      531441 * k + 445030 < 1048576 * k + 878079 := by
  intro k
  have h1 : C (1048576 * k + 878079) = 3145728 * k + 2634238 := by
    unfold C
    simp [show (1048576 * k + 878079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2634238) = 1572864 * k + 1317119 := by
    unfold C
    simp [show (3145728 * k + 2634238) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1317119) = 4718592 * k + 3951358 := by
    unfold C
    simp [show (1572864 * k + 1317119) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3951358) = 2359296 * k + 1975679 := by
    unfold C
    simp [show (4718592 * k + 3951358) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1975679) = 7077888 * k + 5927038 := by
    unfold C
    simp [show (2359296 * k + 1975679) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5927038) = 3538944 * k + 2963519 := by
    unfold C
    simp [show (7077888 * k + 5927038) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2963519) = 10616832 * k + 8890558 := by
    unfold C
    simp [show (3538944 * k + 2963519) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8890558) = 5308416 * k + 4445279 := by
    unfold C
    simp [show (10616832 * k + 8890558) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4445279) = 15925248 * k + 13335838 := by
    unfold C
    simp [show (5308416 * k + 4445279) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13335838) = 7962624 * k + 6667919 := by
    unfold C
    simp [show (15925248 * k + 13335838) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6667919) = 23887872 * k + 20003758 := by
    unfold C
    simp [show (7962624 * k + 6667919) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 20003758) = 11943936 * k + 10001879 := by
    unfold C
    simp [show (23887872 * k + 20003758) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10001879) = 35831808 * k + 30005638 := by
    unfold C
    simp [show (11943936 * k + 10001879) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 30005638) = 17915904 * k + 15002819 := by
    unfold C
    simp [show (35831808 * k + 30005638) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 15002819) = 53747712 * k + 45008458 := by
    unfold C
    simp [show (17915904 * k + 15002819) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 45008458) = 26873856 * k + 22504229 := by
    unfold C
    simp [show (53747712 * k + 45008458) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 22504229) = 80621568 * k + 67512688 := by
    unfold C
    simp [show (26873856 * k + 22504229) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 67512688) = 40310784 * k + 33756344 := by
    unfold C
    simp [show (80621568 * k + 67512688) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 33756344) = 20155392 * k + 16878172 := by
    unfold C
    simp [show (40310784 * k + 33756344) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 16878172) = 10077696 * k + 8439086 := by
    unfold C
    simp [show (20155392 * k + 16878172) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8439086) = 5038848 * k + 4219543 := by
    unfold C
    simp [show (10077696 * k + 8439086) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4219543) = 15116544 * k + 12658630 := by
    unfold C
    simp [show (5038848 * k + 4219543) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12658630) = 7558272 * k + 6329315 := by
    unfold C
    simp [show (15116544 * k + 12658630) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6329315) = 22674816 * k + 18987946 := by
    unfold C
    simp [show (7558272 * k + 6329315) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 18987946) = 11337408 * k + 9493973 := by
    unfold C
    simp [show (22674816 * k + 18987946) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9493973) = 34012224 * k + 28481920 := by
    unfold C
    simp [show (11337408 * k + 9493973) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 28481920) = 17006112 * k + 14240960 := by
    unfold C
    simp [show (34012224 * k + 28481920) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 14240960) = 8503056 * k + 7120480 := by
    unfold C
    simp [show (17006112 * k + 14240960) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7120480) = 4251528 * k + 3560240 := by
    unfold C
    simp [show (8503056 * k + 7120480) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3560240) = 2125764 * k + 1780120 := by
    unfold C
    simp [show (4251528 * k + 3560240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1780120) = 1062882 * k + 890060 := by
    unfold C
    simp [show (2125764 * k + 1780120) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 890060) = 531441 * k + 445030 := by
    unfold C
    simp [show (1062882 * k + 890060) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 878079) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 878079)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_878447 : ∀ k : Nat,
    iterate (1048576 * k + 878447) 32 = 531441 * k + 445217 ∧
      531441 * k + 445217 < 1048576 * k + 878447 := by
  intro k
  have h1 : C (1048576 * k + 878447) = 3145728 * k + 2635342 := by
    unfold C
    simp [show (1048576 * k + 878447) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2635342) = 1572864 * k + 1317671 := by
    unfold C
    simp [show (3145728 * k + 2635342) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1317671) = 4718592 * k + 3953014 := by
    unfold C
    simp [show (1572864 * k + 1317671) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3953014) = 2359296 * k + 1976507 := by
    unfold C
    simp [show (4718592 * k + 3953014) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1976507) = 7077888 * k + 5929522 := by
    unfold C
    simp [show (2359296 * k + 1976507) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5929522) = 3538944 * k + 2964761 := by
    unfold C
    simp [show (7077888 * k + 5929522) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2964761) = 10616832 * k + 8894284 := by
    unfold C
    simp [show (3538944 * k + 2964761) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8894284) = 5308416 * k + 4447142 := by
    unfold C
    simp [show (10616832 * k + 8894284) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4447142) = 2654208 * k + 2223571 := by
    unfold C
    simp [show (5308416 * k + 4447142) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2223571) = 7962624 * k + 6670714 := by
    unfold C
    simp [show (2654208 * k + 2223571) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6670714) = 3981312 * k + 3335357 := by
    unfold C
    simp [show (7962624 * k + 6670714) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3335357) = 11943936 * k + 10006072 := by
    unfold C
    simp [show (3981312 * k + 3335357) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10006072) = 5971968 * k + 5003036 := by
    unfold C
    simp [show (11943936 * k + 10006072) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5003036) = 2985984 * k + 2501518 := by
    unfold C
    simp [show (5971968 * k + 5003036) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2501518) = 1492992 * k + 1250759 := by
    unfold C
    simp [show (2985984 * k + 2501518) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1250759) = 4478976 * k + 3752278 := by
    unfold C
    simp [show (1492992 * k + 1250759) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3752278) = 2239488 * k + 1876139 := by
    unfold C
    simp [show (4478976 * k + 3752278) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1876139) = 6718464 * k + 5628418 := by
    unfold C
    simp [show (2239488 * k + 1876139) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5628418) = 3359232 * k + 2814209 := by
    unfold C
    simp [show (6718464 * k + 5628418) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2814209) = 10077696 * k + 8442628 := by
    unfold C
    simp [show (3359232 * k + 2814209) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8442628) = 5038848 * k + 4221314 := by
    unfold C
    simp [show (10077696 * k + 8442628) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4221314) = 2519424 * k + 2110657 := by
    unfold C
    simp [show (5038848 * k + 4221314) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2110657) = 7558272 * k + 6331972 := by
    unfold C
    simp [show (2519424 * k + 2110657) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6331972) = 3779136 * k + 3165986 := by
    unfold C
    simp [show (7558272 * k + 6331972) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3165986) = 1889568 * k + 1582993 := by
    unfold C
    simp [show (3779136 * k + 3165986) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1582993) = 5668704 * k + 4748980 := by
    unfold C
    simp [show (1889568 * k + 1582993) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4748980) = 2834352 * k + 2374490 := by
    unfold C
    simp [show (5668704 * k + 4748980) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2374490) = 1417176 * k + 1187245 := by
    unfold C
    simp [show (2834352 * k + 2374490) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1187245) = 4251528 * k + 3561736 := by
    unfold C
    simp [show (1417176 * k + 1187245) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3561736) = 2125764 * k + 1780868 := by
    unfold C
    simp [show (4251528 * k + 3561736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1780868) = 1062882 * k + 890434 := by
    unfold C
    simp [show (2125764 * k + 1780868) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 890434) = 531441 * k + 445217 := by
    unfold C
    simp [show (1062882 * k + 890434) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 878447) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 878447)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_878759 : ∀ k : Nat,
    iterate (1048576 * k + 878759) 32 = 531441 * k + 445375 ∧
      531441 * k + 445375 < 1048576 * k + 878759 := by
  intro k
  have h1 : C (1048576 * k + 878759) = 3145728 * k + 2636278 := by
    unfold C
    simp [show (1048576 * k + 878759) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2636278) = 1572864 * k + 1318139 := by
    unfold C
    simp [show (3145728 * k + 2636278) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1318139) = 4718592 * k + 3954418 := by
    unfold C
    simp [show (1572864 * k + 1318139) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3954418) = 2359296 * k + 1977209 := by
    unfold C
    simp [show (4718592 * k + 3954418) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1977209) = 7077888 * k + 5931628 := by
    unfold C
    simp [show (2359296 * k + 1977209) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5931628) = 3538944 * k + 2965814 := by
    unfold C
    simp [show (7077888 * k + 5931628) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2965814) = 1769472 * k + 1482907 := by
    unfold C
    simp [show (3538944 * k + 2965814) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1482907) = 5308416 * k + 4448722 := by
    unfold C
    simp [show (1769472 * k + 1482907) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4448722) = 2654208 * k + 2224361 := by
    unfold C
    simp [show (5308416 * k + 4448722) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2224361) = 7962624 * k + 6673084 := by
    unfold C
    simp [show (2654208 * k + 2224361) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6673084) = 3981312 * k + 3336542 := by
    unfold C
    simp [show (7962624 * k + 6673084) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3336542) = 1990656 * k + 1668271 := by
    unfold C
    simp [show (3981312 * k + 3336542) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1668271) = 5971968 * k + 5004814 := by
    unfold C
    simp [show (1990656 * k + 1668271) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5004814) = 2985984 * k + 2502407 := by
    unfold C
    simp [show (5971968 * k + 5004814) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2502407) = 8957952 * k + 7507222 := by
    unfold C
    simp [show (2985984 * k + 2502407) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7507222) = 4478976 * k + 3753611 := by
    unfold C
    simp [show (8957952 * k + 7507222) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3753611) = 13436928 * k + 11260834 := by
    unfold C
    simp [show (4478976 * k + 3753611) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11260834) = 6718464 * k + 5630417 := by
    unfold C
    simp [show (13436928 * k + 11260834) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5630417) = 20155392 * k + 16891252 := by
    unfold C
    simp [show (6718464 * k + 5630417) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16891252) = 10077696 * k + 8445626 := by
    unfold C
    simp [show (20155392 * k + 16891252) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8445626) = 5038848 * k + 4222813 := by
    unfold C
    simp [show (10077696 * k + 8445626) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4222813) = 15116544 * k + 12668440 := by
    unfold C
    simp [show (5038848 * k + 4222813) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12668440) = 7558272 * k + 6334220 := by
    unfold C
    simp [show (15116544 * k + 12668440) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6334220) = 3779136 * k + 3167110 := by
    unfold C
    simp [show (7558272 * k + 6334220) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3167110) = 1889568 * k + 1583555 := by
    unfold C
    simp [show (3779136 * k + 3167110) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1583555) = 5668704 * k + 4750666 := by
    unfold C
    simp [show (1889568 * k + 1583555) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4750666) = 2834352 * k + 2375333 := by
    unfold C
    simp [show (5668704 * k + 4750666) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2375333) = 8503056 * k + 7126000 := by
    unfold C
    simp [show (2834352 * k + 2375333) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7126000) = 4251528 * k + 3563000 := by
    unfold C
    simp [show (8503056 * k + 7126000) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3563000) = 2125764 * k + 1781500 := by
    unfold C
    simp [show (4251528 * k + 3563000) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1781500) = 1062882 * k + 890750 := by
    unfold C
    simp [show (2125764 * k + 1781500) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 890750) = 531441 * k + 445375 := by
    unfold C
    simp [show (1062882 * k + 890750) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 878759) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 878759)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_879771 : ∀ k : Nat,
    iterate (1048576 * k + 879771) 32 = 531441 * k + 445888 ∧
      531441 * k + 445888 < 1048576 * k + 879771 := by
  intro k
  have h1 : C (1048576 * k + 879771) = 3145728 * k + 2639314 := by
    unfold C
    simp [show (1048576 * k + 879771) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2639314) = 1572864 * k + 1319657 := by
    unfold C
    simp [show (3145728 * k + 2639314) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1319657) = 4718592 * k + 3958972 := by
    unfold C
    simp [show (1572864 * k + 1319657) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3958972) = 2359296 * k + 1979486 := by
    unfold C
    simp [show (4718592 * k + 3958972) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1979486) = 1179648 * k + 989743 := by
    unfold C
    simp [show (2359296 * k + 1979486) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 989743) = 3538944 * k + 2969230 := by
    unfold C
    simp [show (1179648 * k + 989743) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2969230) = 1769472 * k + 1484615 := by
    unfold C
    simp [show (3538944 * k + 2969230) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1484615) = 5308416 * k + 4453846 := by
    unfold C
    simp [show (1769472 * k + 1484615) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4453846) = 2654208 * k + 2226923 := by
    unfold C
    simp [show (5308416 * k + 4453846) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2226923) = 7962624 * k + 6680770 := by
    unfold C
    simp [show (2654208 * k + 2226923) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6680770) = 3981312 * k + 3340385 := by
    unfold C
    simp [show (7962624 * k + 6680770) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3340385) = 11943936 * k + 10021156 := by
    unfold C
    simp [show (3981312 * k + 3340385) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10021156) = 5971968 * k + 5010578 := by
    unfold C
    simp [show (11943936 * k + 10021156) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5010578) = 2985984 * k + 2505289 := by
    unfold C
    simp [show (5971968 * k + 5010578) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2505289) = 8957952 * k + 7515868 := by
    unfold C
    simp [show (2985984 * k + 2505289) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7515868) = 4478976 * k + 3757934 := by
    unfold C
    simp [show (8957952 * k + 7515868) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3757934) = 2239488 * k + 1878967 := by
    unfold C
    simp [show (4478976 * k + 3757934) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1878967) = 6718464 * k + 5636902 := by
    unfold C
    simp [show (2239488 * k + 1878967) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5636902) = 3359232 * k + 2818451 := by
    unfold C
    simp [show (6718464 * k + 5636902) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2818451) = 10077696 * k + 8455354 := by
    unfold C
    simp [show (3359232 * k + 2818451) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8455354) = 5038848 * k + 4227677 := by
    unfold C
    simp [show (10077696 * k + 8455354) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4227677) = 15116544 * k + 12683032 := by
    unfold C
    simp [show (5038848 * k + 4227677) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12683032) = 7558272 * k + 6341516 := by
    unfold C
    simp [show (15116544 * k + 12683032) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6341516) = 3779136 * k + 3170758 := by
    unfold C
    simp [show (7558272 * k + 6341516) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3170758) = 1889568 * k + 1585379 := by
    unfold C
    simp [show (3779136 * k + 3170758) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1585379) = 5668704 * k + 4756138 := by
    unfold C
    simp [show (1889568 * k + 1585379) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4756138) = 2834352 * k + 2378069 := by
    unfold C
    simp [show (5668704 * k + 4756138) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2378069) = 8503056 * k + 7134208 := by
    unfold C
    simp [show (2834352 * k + 2378069) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7134208) = 4251528 * k + 3567104 := by
    unfold C
    simp [show (8503056 * k + 7134208) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3567104) = 2125764 * k + 1783552 := by
    unfold C
    simp [show (4251528 * k + 3567104) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1783552) = 1062882 * k + 891776 := by
    unfold C
    simp [show (2125764 * k + 1783552) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 891776) = 531441 * k + 445888 := by
    unfold C
    simp [show (1062882 * k + 891776) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 879771) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 879771)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_879783 : ∀ k : Nat,
    iterate (1048576 * k + 879783) 32 = 531441 * k + 445894 ∧
      531441 * k + 445894 < 1048576 * k + 879783 := by
  intro k
  have h1 : C (1048576 * k + 879783) = 3145728 * k + 2639350 := by
    unfold C
    simp [show (1048576 * k + 879783) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2639350) = 1572864 * k + 1319675 := by
    unfold C
    simp [show (3145728 * k + 2639350) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1319675) = 4718592 * k + 3959026 := by
    unfold C
    simp [show (1572864 * k + 1319675) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3959026) = 2359296 * k + 1979513 := by
    unfold C
    simp [show (4718592 * k + 3959026) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1979513) = 7077888 * k + 5938540 := by
    unfold C
    simp [show (2359296 * k + 1979513) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5938540) = 3538944 * k + 2969270 := by
    unfold C
    simp [show (7077888 * k + 5938540) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2969270) = 1769472 * k + 1484635 := by
    unfold C
    simp [show (3538944 * k + 2969270) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1484635) = 5308416 * k + 4453906 := by
    unfold C
    simp [show (1769472 * k + 1484635) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4453906) = 2654208 * k + 2226953 := by
    unfold C
    simp [show (5308416 * k + 4453906) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2226953) = 7962624 * k + 6680860 := by
    unfold C
    simp [show (2654208 * k + 2226953) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6680860) = 3981312 * k + 3340430 := by
    unfold C
    simp [show (7962624 * k + 6680860) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3340430) = 1990656 * k + 1670215 := by
    unfold C
    simp [show (3981312 * k + 3340430) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1670215) = 5971968 * k + 5010646 := by
    unfold C
    simp [show (1990656 * k + 1670215) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5010646) = 2985984 * k + 2505323 := by
    unfold C
    simp [show (5971968 * k + 5010646) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2505323) = 8957952 * k + 7515970 := by
    unfold C
    simp [show (2985984 * k + 2505323) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7515970) = 4478976 * k + 3757985 := by
    unfold C
    simp [show (8957952 * k + 7515970) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3757985) = 13436928 * k + 11273956 := by
    unfold C
    simp [show (4478976 * k + 3757985) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11273956) = 6718464 * k + 5636978 := by
    unfold C
    simp [show (13436928 * k + 11273956) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5636978) = 3359232 * k + 2818489 := by
    unfold C
    simp [show (6718464 * k + 5636978) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2818489) = 10077696 * k + 8455468 := by
    unfold C
    simp [show (3359232 * k + 2818489) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8455468) = 5038848 * k + 4227734 := by
    unfold C
    simp [show (10077696 * k + 8455468) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4227734) = 2519424 * k + 2113867 := by
    unfold C
    simp [show (5038848 * k + 4227734) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2113867) = 7558272 * k + 6341602 := by
    unfold C
    simp [show (2519424 * k + 2113867) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6341602) = 3779136 * k + 3170801 := by
    unfold C
    simp [show (7558272 * k + 6341602) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3170801) = 11337408 * k + 9512404 := by
    unfold C
    simp [show (3779136 * k + 3170801) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9512404) = 5668704 * k + 4756202 := by
    unfold C
    simp [show (11337408 * k + 9512404) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4756202) = 2834352 * k + 2378101 := by
    unfold C
    simp [show (5668704 * k + 4756202) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2378101) = 8503056 * k + 7134304 := by
    unfold C
    simp [show (2834352 * k + 2378101) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7134304) = 4251528 * k + 3567152 := by
    unfold C
    simp [show (8503056 * k + 7134304) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3567152) = 2125764 * k + 1783576 := by
    unfold C
    simp [show (4251528 * k + 3567152) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1783576) = 1062882 * k + 891788 := by
    unfold C
    simp [show (2125764 * k + 1783576) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 891788) = 531441 * k + 445894 := by
    unfold C
    simp [show (1062882 * k + 891788) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 879783) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 879783)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_880127 : ∀ k : Nat,
    iterate (1048576 * k + 880127) 32 = 531441 * k + 446068 ∧
      531441 * k + 446068 < 1048576 * k + 880127 := by
  intro k
  have h1 : C (1048576 * k + 880127) = 3145728 * k + 2640382 := by
    unfold C
    simp [show (1048576 * k + 880127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2640382) = 1572864 * k + 1320191 := by
    unfold C
    simp [show (3145728 * k + 2640382) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1320191) = 4718592 * k + 3960574 := by
    unfold C
    simp [show (1572864 * k + 1320191) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3960574) = 2359296 * k + 1980287 := by
    unfold C
    simp [show (4718592 * k + 3960574) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1980287) = 7077888 * k + 5940862 := by
    unfold C
    simp [show (2359296 * k + 1980287) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5940862) = 3538944 * k + 2970431 := by
    unfold C
    simp [show (7077888 * k + 5940862) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2970431) = 10616832 * k + 8911294 := by
    unfold C
    simp [show (3538944 * k + 2970431) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8911294) = 5308416 * k + 4455647 := by
    unfold C
    simp [show (10616832 * k + 8911294) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4455647) = 15925248 * k + 13366942 := by
    unfold C
    simp [show (5308416 * k + 4455647) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13366942) = 7962624 * k + 6683471 := by
    unfold C
    simp [show (15925248 * k + 13366942) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6683471) = 23887872 * k + 20050414 := by
    unfold C
    simp [show (7962624 * k + 6683471) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 20050414) = 11943936 * k + 10025207 := by
    unfold C
    simp [show (23887872 * k + 20050414) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10025207) = 35831808 * k + 30075622 := by
    unfold C
    simp [show (11943936 * k + 10025207) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 30075622) = 17915904 * k + 15037811 := by
    unfold C
    simp [show (35831808 * k + 30075622) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 15037811) = 53747712 * k + 45113434 := by
    unfold C
    simp [show (17915904 * k + 15037811) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 45113434) = 26873856 * k + 22556717 := by
    unfold C
    simp [show (53747712 * k + 45113434) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 22556717) = 80621568 * k + 67670152 := by
    unfold C
    simp [show (26873856 * k + 22556717) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 67670152) = 40310784 * k + 33835076 := by
    unfold C
    simp [show (80621568 * k + 67670152) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 33835076) = 20155392 * k + 16917538 := by
    unfold C
    simp [show (40310784 * k + 33835076) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 16917538) = 10077696 * k + 8458769 := by
    unfold C
    simp [show (20155392 * k + 16917538) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8458769) = 30233088 * k + 25376308 := by
    unfold C
    simp [show (10077696 * k + 8458769) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 25376308) = 15116544 * k + 12688154 := by
    unfold C
    simp [show (30233088 * k + 25376308) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12688154) = 7558272 * k + 6344077 := by
    unfold C
    simp [show (15116544 * k + 12688154) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6344077) = 22674816 * k + 19032232 := by
    unfold C
    simp [show (7558272 * k + 6344077) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 19032232) = 11337408 * k + 9516116 := by
    unfold C
    simp [show (22674816 * k + 19032232) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9516116) = 5668704 * k + 4758058 := by
    unfold C
    simp [show (11337408 * k + 9516116) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4758058) = 2834352 * k + 2379029 := by
    unfold C
    simp [show (5668704 * k + 4758058) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2379029) = 8503056 * k + 7137088 := by
    unfold C
    simp [show (2834352 * k + 2379029) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7137088) = 4251528 * k + 3568544 := by
    unfold C
    simp [show (8503056 * k + 7137088) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3568544) = 2125764 * k + 1784272 := by
    unfold C
    simp [show (4251528 * k + 3568544) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1784272) = 1062882 * k + 892136 := by
    unfold C
    simp [show (2125764 * k + 1784272) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 892136) = 531441 * k + 446068 := by
    unfold C
    simp [show (1062882 * k + 892136) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 880127) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 880127)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_880359 : ∀ k : Nat,
    iterate (1048576 * k + 880359) 32 = 531441 * k + 446186 ∧
      531441 * k + 446186 < 1048576 * k + 880359 := by
  intro k
  have h1 : C (1048576 * k + 880359) = 3145728 * k + 2641078 := by
    unfold C
    simp [show (1048576 * k + 880359) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2641078) = 1572864 * k + 1320539 := by
    unfold C
    simp [show (3145728 * k + 2641078) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1320539) = 4718592 * k + 3961618 := by
    unfold C
    simp [show (1572864 * k + 1320539) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3961618) = 2359296 * k + 1980809 := by
    unfold C
    simp [show (4718592 * k + 3961618) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1980809) = 7077888 * k + 5942428 := by
    unfold C
    simp [show (2359296 * k + 1980809) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5942428) = 3538944 * k + 2971214 := by
    unfold C
    simp [show (7077888 * k + 5942428) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2971214) = 1769472 * k + 1485607 := by
    unfold C
    simp [show (3538944 * k + 2971214) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1485607) = 5308416 * k + 4456822 := by
    unfold C
    simp [show (1769472 * k + 1485607) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4456822) = 2654208 * k + 2228411 := by
    unfold C
    simp [show (5308416 * k + 4456822) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2228411) = 7962624 * k + 6685234 := by
    unfold C
    simp [show (2654208 * k + 2228411) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6685234) = 3981312 * k + 3342617 := by
    unfold C
    simp [show (7962624 * k + 6685234) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3342617) = 11943936 * k + 10027852 := by
    unfold C
    simp [show (3981312 * k + 3342617) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10027852) = 5971968 * k + 5013926 := by
    unfold C
    simp [show (11943936 * k + 10027852) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5013926) = 2985984 * k + 2506963 := by
    unfold C
    simp [show (5971968 * k + 5013926) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2506963) = 8957952 * k + 7520890 := by
    unfold C
    simp [show (2985984 * k + 2506963) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7520890) = 4478976 * k + 3760445 := by
    unfold C
    simp [show (8957952 * k + 7520890) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3760445) = 13436928 * k + 11281336 := by
    unfold C
    simp [show (4478976 * k + 3760445) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11281336) = 6718464 * k + 5640668 := by
    unfold C
    simp [show (13436928 * k + 11281336) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5640668) = 3359232 * k + 2820334 := by
    unfold C
    simp [show (6718464 * k + 5640668) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2820334) = 1679616 * k + 1410167 := by
    unfold C
    simp [show (3359232 * k + 2820334) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1410167) = 5038848 * k + 4230502 := by
    unfold C
    simp [show (1679616 * k + 1410167) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4230502) = 2519424 * k + 2115251 := by
    unfold C
    simp [show (5038848 * k + 4230502) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2115251) = 7558272 * k + 6345754 := by
    unfold C
    simp [show (2519424 * k + 2115251) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6345754) = 3779136 * k + 3172877 := by
    unfold C
    simp [show (7558272 * k + 6345754) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3172877) = 11337408 * k + 9518632 := by
    unfold C
    simp [show (3779136 * k + 3172877) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9518632) = 5668704 * k + 4759316 := by
    unfold C
    simp [show (11337408 * k + 9518632) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4759316) = 2834352 * k + 2379658 := by
    unfold C
    simp [show (5668704 * k + 4759316) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2379658) = 1417176 * k + 1189829 := by
    unfold C
    simp [show (2834352 * k + 2379658) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1189829) = 4251528 * k + 3569488 := by
    unfold C
    simp [show (1417176 * k + 1189829) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3569488) = 2125764 * k + 1784744 := by
    unfold C
    simp [show (4251528 * k + 3569488) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1784744) = 1062882 * k + 892372 := by
    unfold C
    simp [show (2125764 * k + 1784744) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 892372) = 531441 * k + 446186 := by
    unfold C
    simp [show (1062882 * k + 892372) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 880359) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 880359)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_880543 : ∀ k : Nat,
    iterate (1048576 * k + 880543) 32 = 531441 * k + 446279 ∧
      531441 * k + 446279 < 1048576 * k + 880543 := by
  intro k
  have h1 : C (1048576 * k + 880543) = 3145728 * k + 2641630 := by
    unfold C
    simp [show (1048576 * k + 880543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2641630) = 1572864 * k + 1320815 := by
    unfold C
    simp [show (3145728 * k + 2641630) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1320815) = 4718592 * k + 3962446 := by
    unfold C
    simp [show (1572864 * k + 1320815) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3962446) = 2359296 * k + 1981223 := by
    unfold C
    simp [show (4718592 * k + 3962446) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1981223) = 7077888 * k + 5943670 := by
    unfold C
    simp [show (2359296 * k + 1981223) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5943670) = 3538944 * k + 2971835 := by
    unfold C
    simp [show (7077888 * k + 5943670) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2971835) = 10616832 * k + 8915506 := by
    unfold C
    simp [show (3538944 * k + 2971835) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8915506) = 5308416 * k + 4457753 := by
    unfold C
    simp [show (10616832 * k + 8915506) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4457753) = 15925248 * k + 13373260 := by
    unfold C
    simp [show (5308416 * k + 4457753) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13373260) = 7962624 * k + 6686630 := by
    unfold C
    simp [show (15925248 * k + 13373260) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6686630) = 3981312 * k + 3343315 := by
    unfold C
    simp [show (7962624 * k + 6686630) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3343315) = 11943936 * k + 10029946 := by
    unfold C
    simp [show (3981312 * k + 3343315) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10029946) = 5971968 * k + 5014973 := by
    unfold C
    simp [show (11943936 * k + 10029946) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5014973) = 17915904 * k + 15044920 := by
    unfold C
    simp [show (5971968 * k + 5014973) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15044920) = 8957952 * k + 7522460 := by
    unfold C
    simp [show (17915904 * k + 15044920) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7522460) = 4478976 * k + 3761230 := by
    unfold C
    simp [show (8957952 * k + 7522460) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3761230) = 2239488 * k + 1880615 := by
    unfold C
    simp [show (4478976 * k + 3761230) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1880615) = 6718464 * k + 5641846 := by
    unfold C
    simp [show (2239488 * k + 1880615) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5641846) = 3359232 * k + 2820923 := by
    unfold C
    simp [show (6718464 * k + 5641846) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2820923) = 10077696 * k + 8462770 := by
    unfold C
    simp [show (3359232 * k + 2820923) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8462770) = 5038848 * k + 4231385 := by
    unfold C
    simp [show (10077696 * k + 8462770) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4231385) = 15116544 * k + 12694156 := by
    unfold C
    simp [show (5038848 * k + 4231385) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12694156) = 7558272 * k + 6347078 := by
    unfold C
    simp [show (15116544 * k + 12694156) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6347078) = 3779136 * k + 3173539 := by
    unfold C
    simp [show (7558272 * k + 6347078) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3173539) = 11337408 * k + 9520618 := by
    unfold C
    simp [show (3779136 * k + 3173539) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9520618) = 5668704 * k + 4760309 := by
    unfold C
    simp [show (11337408 * k + 9520618) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4760309) = 17006112 * k + 14280928 := by
    unfold C
    simp [show (5668704 * k + 4760309) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 14280928) = 8503056 * k + 7140464 := by
    unfold C
    simp [show (17006112 * k + 14280928) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7140464) = 4251528 * k + 3570232 := by
    unfold C
    simp [show (8503056 * k + 7140464) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3570232) = 2125764 * k + 1785116 := by
    unfold C
    simp [show (4251528 * k + 3570232) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1785116) = 1062882 * k + 892558 := by
    unfold C
    simp [show (2125764 * k + 1785116) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 892558) = 531441 * k + 446279 := by
    unfold C
    simp [show (1062882 * k + 892558) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 880543) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 880543)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_880667 : ∀ k : Nat,
    iterate (1048576 * k + 880667) 32 = 531441 * k + 446342 ∧
      531441 * k + 446342 < 1048576 * k + 880667 := by
  intro k
  have h1 : C (1048576 * k + 880667) = 3145728 * k + 2642002 := by
    unfold C
    simp [show (1048576 * k + 880667) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2642002) = 1572864 * k + 1321001 := by
    unfold C
    simp [show (3145728 * k + 2642002) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1321001) = 4718592 * k + 3963004 := by
    unfold C
    simp [show (1572864 * k + 1321001) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3963004) = 2359296 * k + 1981502 := by
    unfold C
    simp [show (4718592 * k + 3963004) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1981502) = 1179648 * k + 990751 := by
    unfold C
    simp [show (2359296 * k + 1981502) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 990751) = 3538944 * k + 2972254 := by
    unfold C
    simp [show (1179648 * k + 990751) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2972254) = 1769472 * k + 1486127 := by
    unfold C
    simp [show (3538944 * k + 2972254) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1486127) = 5308416 * k + 4458382 := by
    unfold C
    simp [show (1769472 * k + 1486127) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4458382) = 2654208 * k + 2229191 := by
    unfold C
    simp [show (5308416 * k + 4458382) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2229191) = 7962624 * k + 6687574 := by
    unfold C
    simp [show (2654208 * k + 2229191) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6687574) = 3981312 * k + 3343787 := by
    unfold C
    simp [show (7962624 * k + 6687574) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3343787) = 11943936 * k + 10031362 := by
    unfold C
    simp [show (3981312 * k + 3343787) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10031362) = 5971968 * k + 5015681 := by
    unfold C
    simp [show (11943936 * k + 10031362) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5015681) = 17915904 * k + 15047044 := by
    unfold C
    simp [show (5971968 * k + 5015681) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15047044) = 8957952 * k + 7523522 := by
    unfold C
    simp [show (17915904 * k + 15047044) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7523522) = 4478976 * k + 3761761 := by
    unfold C
    simp [show (8957952 * k + 7523522) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3761761) = 13436928 * k + 11285284 := by
    unfold C
    simp [show (4478976 * k + 3761761) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11285284) = 6718464 * k + 5642642 := by
    unfold C
    simp [show (13436928 * k + 11285284) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5642642) = 3359232 * k + 2821321 := by
    unfold C
    simp [show (6718464 * k + 5642642) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2821321) = 10077696 * k + 8463964 := by
    unfold C
    simp [show (3359232 * k + 2821321) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8463964) = 5038848 * k + 4231982 := by
    unfold C
    simp [show (10077696 * k + 8463964) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4231982) = 2519424 * k + 2115991 := by
    unfold C
    simp [show (5038848 * k + 4231982) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2115991) = 7558272 * k + 6347974 := by
    unfold C
    simp [show (2519424 * k + 2115991) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6347974) = 3779136 * k + 3173987 := by
    unfold C
    simp [show (7558272 * k + 6347974) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3173987) = 11337408 * k + 9521962 := by
    unfold C
    simp [show (3779136 * k + 3173987) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9521962) = 5668704 * k + 4760981 := by
    unfold C
    simp [show (11337408 * k + 9521962) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4760981) = 17006112 * k + 14282944 := by
    unfold C
    simp [show (5668704 * k + 4760981) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 14282944) = 8503056 * k + 7141472 := by
    unfold C
    simp [show (17006112 * k + 14282944) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7141472) = 4251528 * k + 3570736 := by
    unfold C
    simp [show (8503056 * k + 7141472) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3570736) = 2125764 * k + 1785368 := by
    unfold C
    simp [show (4251528 * k + 3570736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1785368) = 1062882 * k + 892684 := by
    unfold C
    simp [show (2125764 * k + 1785368) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 892684) = 531441 * k + 446342 := by
    unfold C
    simp [show (1062882 * k + 892684) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 880667) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 880667)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_881151 : ∀ k : Nat,
    iterate (1048576 * k + 881151) 32 = 531441 * k + 446587 ∧
      531441 * k + 446587 < 1048576 * k + 881151 := by
  intro k
  have h1 : C (1048576 * k + 881151) = 3145728 * k + 2643454 := by
    unfold C
    simp [show (1048576 * k + 881151) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2643454) = 1572864 * k + 1321727 := by
    unfold C
    simp [show (3145728 * k + 2643454) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1321727) = 4718592 * k + 3965182 := by
    unfold C
    simp [show (1572864 * k + 1321727) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3965182) = 2359296 * k + 1982591 := by
    unfold C
    simp [show (4718592 * k + 3965182) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1982591) = 7077888 * k + 5947774 := by
    unfold C
    simp [show (2359296 * k + 1982591) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5947774) = 3538944 * k + 2973887 := by
    unfold C
    simp [show (7077888 * k + 5947774) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2973887) = 10616832 * k + 8921662 := by
    unfold C
    simp [show (3538944 * k + 2973887) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8921662) = 5308416 * k + 4460831 := by
    unfold C
    simp [show (10616832 * k + 8921662) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4460831) = 15925248 * k + 13382494 := by
    unfold C
    simp [show (5308416 * k + 4460831) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13382494) = 7962624 * k + 6691247 := by
    unfold C
    simp [show (15925248 * k + 13382494) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6691247) = 23887872 * k + 20073742 := by
    unfold C
    simp [show (7962624 * k + 6691247) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 20073742) = 11943936 * k + 10036871 := by
    unfold C
    simp [show (23887872 * k + 20073742) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10036871) = 35831808 * k + 30110614 := by
    unfold C
    simp [show (11943936 * k + 10036871) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 30110614) = 17915904 * k + 15055307 := by
    unfold C
    simp [show (35831808 * k + 30110614) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 15055307) = 53747712 * k + 45165922 := by
    unfold C
    simp [show (17915904 * k + 15055307) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 45165922) = 26873856 * k + 22582961 := by
    unfold C
    simp [show (53747712 * k + 45165922) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 22582961) = 80621568 * k + 67748884 := by
    unfold C
    simp [show (26873856 * k + 22582961) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 67748884) = 40310784 * k + 33874442 := by
    unfold C
    simp [show (80621568 * k + 67748884) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 33874442) = 20155392 * k + 16937221 := by
    unfold C
    simp [show (40310784 * k + 33874442) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 16937221) = 60466176 * k + 50811664 := by
    unfold C
    simp [show (20155392 * k + 16937221) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 50811664) = 30233088 * k + 25405832 := by
    unfold C
    simp [show (60466176 * k + 50811664) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 25405832) = 15116544 * k + 12702916 := by
    unfold C
    simp [show (30233088 * k + 25405832) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12702916) = 7558272 * k + 6351458 := by
    unfold C
    simp [show (15116544 * k + 12702916) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6351458) = 3779136 * k + 3175729 := by
    unfold C
    simp [show (7558272 * k + 6351458) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3175729) = 11337408 * k + 9527188 := by
    unfold C
    simp [show (3779136 * k + 3175729) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9527188) = 5668704 * k + 4763594 := by
    unfold C
    simp [show (11337408 * k + 9527188) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4763594) = 2834352 * k + 2381797 := by
    unfold C
    simp [show (5668704 * k + 4763594) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2381797) = 8503056 * k + 7145392 := by
    unfold C
    simp [show (2834352 * k + 2381797) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7145392) = 4251528 * k + 3572696 := by
    unfold C
    simp [show (8503056 * k + 7145392) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3572696) = 2125764 * k + 1786348 := by
    unfold C
    simp [show (4251528 * k + 3572696) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1786348) = 1062882 * k + 893174 := by
    unfold C
    simp [show (2125764 * k + 1786348) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 893174) = 531441 * k + 446587 := by
    unfold C
    simp [show (1062882 * k + 893174) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 881151) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 881151)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_881359 : ∀ k : Nat,
    iterate (1048576 * k + 881359) 32 = 531441 * k + 446693 ∧
      531441 * k + 446693 < 1048576 * k + 881359 := by
  intro k
  have h1 : C (1048576 * k + 881359) = 3145728 * k + 2644078 := by
    unfold C
    simp [show (1048576 * k + 881359) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2644078) = 1572864 * k + 1322039 := by
    unfold C
    simp [show (3145728 * k + 2644078) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1322039) = 4718592 * k + 3966118 := by
    unfold C
    simp [show (1572864 * k + 1322039) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3966118) = 2359296 * k + 1983059 := by
    unfold C
    simp [show (4718592 * k + 3966118) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1983059) = 7077888 * k + 5949178 := by
    unfold C
    simp [show (2359296 * k + 1983059) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5949178) = 3538944 * k + 2974589 := by
    unfold C
    simp [show (7077888 * k + 5949178) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2974589) = 10616832 * k + 8923768 := by
    unfold C
    simp [show (3538944 * k + 2974589) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8923768) = 5308416 * k + 4461884 := by
    unfold C
    simp [show (10616832 * k + 8923768) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4461884) = 2654208 * k + 2230942 := by
    unfold C
    simp [show (5308416 * k + 4461884) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2230942) = 1327104 * k + 1115471 := by
    unfold C
    simp [show (2654208 * k + 2230942) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1115471) = 3981312 * k + 3346414 := by
    unfold C
    simp [show (1327104 * k + 1115471) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3346414) = 1990656 * k + 1673207 := by
    unfold C
    simp [show (3981312 * k + 3346414) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1673207) = 5971968 * k + 5019622 := by
    unfold C
    simp [show (1990656 * k + 1673207) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5019622) = 2985984 * k + 2509811 := by
    unfold C
    simp [show (5971968 * k + 5019622) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2509811) = 8957952 * k + 7529434 := by
    unfold C
    simp [show (2985984 * k + 2509811) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7529434) = 4478976 * k + 3764717 := by
    unfold C
    simp [show (8957952 * k + 7529434) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3764717) = 13436928 * k + 11294152 := by
    unfold C
    simp [show (4478976 * k + 3764717) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11294152) = 6718464 * k + 5647076 := by
    unfold C
    simp [show (13436928 * k + 11294152) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5647076) = 3359232 * k + 2823538 := by
    unfold C
    simp [show (6718464 * k + 5647076) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2823538) = 1679616 * k + 1411769 := by
    unfold C
    simp [show (3359232 * k + 2823538) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1411769) = 5038848 * k + 4235308 := by
    unfold C
    simp [show (1679616 * k + 1411769) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4235308) = 2519424 * k + 2117654 := by
    unfold C
    simp [show (5038848 * k + 4235308) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2117654) = 1259712 * k + 1058827 := by
    unfold C
    simp [show (2519424 * k + 2117654) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1058827) = 3779136 * k + 3176482 := by
    unfold C
    simp [show (1259712 * k + 1058827) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3176482) = 1889568 * k + 1588241 := by
    unfold C
    simp [show (3779136 * k + 3176482) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1588241) = 5668704 * k + 4764724 := by
    unfold C
    simp [show (1889568 * k + 1588241) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4764724) = 2834352 * k + 2382362 := by
    unfold C
    simp [show (5668704 * k + 4764724) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2382362) = 1417176 * k + 1191181 := by
    unfold C
    simp [show (2834352 * k + 2382362) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1191181) = 4251528 * k + 3573544 := by
    unfold C
    simp [show (1417176 * k + 1191181) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3573544) = 2125764 * k + 1786772 := by
    unfold C
    simp [show (4251528 * k + 3573544) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1786772) = 1062882 * k + 893386 := by
    unfold C
    simp [show (2125764 * k + 1786772) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 893386) = 531441 * k + 446693 := by
    unfold C
    simp [show (1062882 * k + 893386) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 881359) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 881359)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_881691 : ∀ k : Nat,
    iterate (1048576 * k + 881691) 32 = 531441 * k + 446861 ∧
      531441 * k + 446861 < 1048576 * k + 881691 := by
  intro k
  have h1 : C (1048576 * k + 881691) = 3145728 * k + 2645074 := by
    unfold C
    simp [show (1048576 * k + 881691) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2645074) = 1572864 * k + 1322537 := by
    unfold C
    simp [show (3145728 * k + 2645074) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1322537) = 4718592 * k + 3967612 := by
    unfold C
    simp [show (1572864 * k + 1322537) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3967612) = 2359296 * k + 1983806 := by
    unfold C
    simp [show (4718592 * k + 3967612) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1983806) = 1179648 * k + 991903 := by
    unfold C
    simp [show (2359296 * k + 1983806) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 991903) = 3538944 * k + 2975710 := by
    unfold C
    simp [show (1179648 * k + 991903) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2975710) = 1769472 * k + 1487855 := by
    unfold C
    simp [show (3538944 * k + 2975710) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1487855) = 5308416 * k + 4463566 := by
    unfold C
    simp [show (1769472 * k + 1487855) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4463566) = 2654208 * k + 2231783 := by
    unfold C
    simp [show (5308416 * k + 4463566) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2231783) = 7962624 * k + 6695350 := by
    unfold C
    simp [show (2654208 * k + 2231783) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6695350) = 3981312 * k + 3347675 := by
    unfold C
    simp [show (7962624 * k + 6695350) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3347675) = 11943936 * k + 10043026 := by
    unfold C
    simp [show (3981312 * k + 3347675) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10043026) = 5971968 * k + 5021513 := by
    unfold C
    simp [show (11943936 * k + 10043026) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5021513) = 17915904 * k + 15064540 := by
    unfold C
    simp [show (5971968 * k + 5021513) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15064540) = 8957952 * k + 7532270 := by
    unfold C
    simp [show (17915904 * k + 15064540) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7532270) = 4478976 * k + 3766135 := by
    unfold C
    simp [show (8957952 * k + 7532270) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3766135) = 13436928 * k + 11298406 := by
    unfold C
    simp [show (4478976 * k + 3766135) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11298406) = 6718464 * k + 5649203 := by
    unfold C
    simp [show (13436928 * k + 11298406) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5649203) = 20155392 * k + 16947610 := by
    unfold C
    simp [show (6718464 * k + 5649203) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16947610) = 10077696 * k + 8473805 := by
    unfold C
    simp [show (20155392 * k + 16947610) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8473805) = 30233088 * k + 25421416 := by
    unfold C
    simp [show (10077696 * k + 8473805) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 25421416) = 15116544 * k + 12710708 := by
    unfold C
    simp [show (30233088 * k + 25421416) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12710708) = 7558272 * k + 6355354 := by
    unfold C
    simp [show (15116544 * k + 12710708) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6355354) = 3779136 * k + 3177677 := by
    unfold C
    simp [show (7558272 * k + 6355354) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3177677) = 11337408 * k + 9533032 := by
    unfold C
    simp [show (3779136 * k + 3177677) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9533032) = 5668704 * k + 4766516 := by
    unfold C
    simp [show (11337408 * k + 9533032) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4766516) = 2834352 * k + 2383258 := by
    unfold C
    simp [show (5668704 * k + 4766516) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2383258) = 1417176 * k + 1191629 := by
    unfold C
    simp [show (2834352 * k + 2383258) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1191629) = 4251528 * k + 3574888 := by
    unfold C
    simp [show (1417176 * k + 1191629) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3574888) = 2125764 * k + 1787444 := by
    unfold C
    simp [show (4251528 * k + 3574888) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1787444) = 1062882 * k + 893722 := by
    unfold C
    simp [show (2125764 * k + 1787444) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 893722) = 531441 * k + 446861 := by
    unfold C
    simp [show (1062882 * k + 893722) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 881691) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 881691)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard112
