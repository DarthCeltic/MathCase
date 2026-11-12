import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard098

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_764159 : ∀ k : Nat,
    iterate (1048576 * k + 764159) 32 = 531441 * k + 387293 ∧
      531441 * k + 387293 < 1048576 * k + 764159 := by
  intro k
  have h1 : C (1048576 * k + 764159) = 3145728 * k + 2292478 := by
    unfold C
    simp [show (1048576 * k + 764159) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2292478) = 1572864 * k + 1146239 := by
    unfold C
    simp [show (3145728 * k + 2292478) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1146239) = 4718592 * k + 3438718 := by
    unfold C
    simp [show (1572864 * k + 1146239) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3438718) = 2359296 * k + 1719359 := by
    unfold C
    simp [show (4718592 * k + 3438718) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1719359) = 7077888 * k + 5158078 := by
    unfold C
    simp [show (2359296 * k + 1719359) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5158078) = 3538944 * k + 2579039 := by
    unfold C
    simp [show (7077888 * k + 5158078) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2579039) = 10616832 * k + 7737118 := by
    unfold C
    simp [show (3538944 * k + 2579039) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7737118) = 5308416 * k + 3868559 := by
    unfold C
    simp [show (10616832 * k + 7737118) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3868559) = 15925248 * k + 11605678 := by
    unfold C
    simp [show (5308416 * k + 3868559) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11605678) = 7962624 * k + 5802839 := by
    unfold C
    simp [show (15925248 * k + 11605678) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5802839) = 23887872 * k + 17408518 := by
    unfold C
    simp [show (7962624 * k + 5802839) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 17408518) = 11943936 * k + 8704259 := by
    unfold C
    simp [show (23887872 * k + 17408518) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8704259) = 35831808 * k + 26112778 := by
    unfold C
    simp [show (11943936 * k + 8704259) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 26112778) = 17915904 * k + 13056389 := by
    unfold C
    simp [show (35831808 * k + 26112778) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 13056389) = 53747712 * k + 39169168 := by
    unfold C
    simp [show (17915904 * k + 13056389) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 39169168) = 26873856 * k + 19584584 := by
    unfold C
    simp [show (53747712 * k + 39169168) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 19584584) = 13436928 * k + 9792292 := by
    unfold C
    simp [show (26873856 * k + 19584584) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9792292) = 6718464 * k + 4896146 := by
    unfold C
    simp [show (13436928 * k + 9792292) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4896146) = 3359232 * k + 2448073 := by
    unfold C
    simp [show (6718464 * k + 4896146) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2448073) = 10077696 * k + 7344220 := by
    unfold C
    simp [show (3359232 * k + 2448073) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7344220) = 5038848 * k + 3672110 := by
    unfold C
    simp [show (10077696 * k + 7344220) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3672110) = 2519424 * k + 1836055 := by
    unfold C
    simp [show (5038848 * k + 3672110) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1836055) = 7558272 * k + 5508166 := by
    unfold C
    simp [show (2519424 * k + 1836055) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5508166) = 3779136 * k + 2754083 := by
    unfold C
    simp [show (7558272 * k + 5508166) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2754083) = 11337408 * k + 8262250 := by
    unfold C
    simp [show (3779136 * k + 2754083) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8262250) = 5668704 * k + 4131125 := by
    unfold C
    simp [show (11337408 * k + 8262250) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4131125) = 17006112 * k + 12393376 := by
    unfold C
    simp [show (5668704 * k + 4131125) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 12393376) = 8503056 * k + 6196688 := by
    unfold C
    simp [show (17006112 * k + 12393376) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6196688) = 4251528 * k + 3098344 := by
    unfold C
    simp [show (8503056 * k + 6196688) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3098344) = 2125764 * k + 1549172 := by
    unfold C
    simp [show (4251528 * k + 3098344) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1549172) = 1062882 * k + 774586 := by
    unfold C
    simp [show (2125764 * k + 1549172) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 774586) = 531441 * k + 387293 := by
    unfold C
    simp [show (1062882 * k + 774586) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 764159) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 764159)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_764607 : ∀ k : Nat,
    iterate (1048576 * k + 764607) 32 = 531441 * k + 387520 ∧
      531441 * k + 387520 < 1048576 * k + 764607 := by
  intro k
  have h1 : C (1048576 * k + 764607) = 3145728 * k + 2293822 := by
    unfold C
    simp [show (1048576 * k + 764607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2293822) = 1572864 * k + 1146911 := by
    unfold C
    simp [show (3145728 * k + 2293822) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1146911) = 4718592 * k + 3440734 := by
    unfold C
    simp [show (1572864 * k + 1146911) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3440734) = 2359296 * k + 1720367 := by
    unfold C
    simp [show (4718592 * k + 3440734) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1720367) = 7077888 * k + 5161102 := by
    unfold C
    simp [show (2359296 * k + 1720367) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5161102) = 3538944 * k + 2580551 := by
    unfold C
    simp [show (7077888 * k + 5161102) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2580551) = 10616832 * k + 7741654 := by
    unfold C
    simp [show (3538944 * k + 2580551) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7741654) = 5308416 * k + 3870827 := by
    unfold C
    simp [show (10616832 * k + 7741654) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3870827) = 15925248 * k + 11612482 := by
    unfold C
    simp [show (5308416 * k + 3870827) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11612482) = 7962624 * k + 5806241 := by
    unfold C
    simp [show (15925248 * k + 11612482) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5806241) = 23887872 * k + 17418724 := by
    unfold C
    simp [show (7962624 * k + 5806241) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 17418724) = 11943936 * k + 8709362 := by
    unfold C
    simp [show (23887872 * k + 17418724) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8709362) = 5971968 * k + 4354681 := by
    unfold C
    simp [show (11943936 * k + 8709362) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4354681) = 17915904 * k + 13064044 := by
    unfold C
    simp [show (5971968 * k + 4354681) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13064044) = 8957952 * k + 6532022 := by
    unfold C
    simp [show (17915904 * k + 13064044) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6532022) = 4478976 * k + 3266011 := by
    unfold C
    simp [show (8957952 * k + 6532022) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3266011) = 13436928 * k + 9798034 := by
    unfold C
    simp [show (4478976 * k + 3266011) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9798034) = 6718464 * k + 4899017 := by
    unfold C
    simp [show (13436928 * k + 9798034) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4899017) = 20155392 * k + 14697052 := by
    unfold C
    simp [show (6718464 * k + 4899017) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14697052) = 10077696 * k + 7348526 := by
    unfold C
    simp [show (20155392 * k + 14697052) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7348526) = 5038848 * k + 3674263 := by
    unfold C
    simp [show (10077696 * k + 7348526) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3674263) = 15116544 * k + 11022790 := by
    unfold C
    simp [show (5038848 * k + 3674263) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11022790) = 7558272 * k + 5511395 := by
    unfold C
    simp [show (15116544 * k + 11022790) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5511395) = 22674816 * k + 16534186 := by
    unfold C
    simp [show (7558272 * k + 5511395) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 16534186) = 11337408 * k + 8267093 := by
    unfold C
    simp [show (22674816 * k + 16534186) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8267093) = 34012224 * k + 24801280 := by
    unfold C
    simp [show (11337408 * k + 8267093) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 24801280) = 17006112 * k + 12400640 := by
    unfold C
    simp [show (34012224 * k + 24801280) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 12400640) = 8503056 * k + 6200320 := by
    unfold C
    simp [show (17006112 * k + 12400640) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6200320) = 4251528 * k + 3100160 := by
    unfold C
    simp [show (8503056 * k + 6200320) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3100160) = 2125764 * k + 1550080 := by
    unfold C
    simp [show (4251528 * k + 3100160) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1550080) = 1062882 * k + 775040 := by
    unfold C
    simp [show (2125764 * k + 1550080) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 775040) = 531441 * k + 387520 := by
    unfold C
    simp [show (1062882 * k + 775040) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 764607) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 764607)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_764703 : ∀ k : Nat,
    iterate (1048576 * k + 764703) 32 = 531441 * k + 387569 ∧
      531441 * k + 387569 < 1048576 * k + 764703 := by
  intro k
  have h1 : C (1048576 * k + 764703) = 3145728 * k + 2294110 := by
    unfold C
    simp [show (1048576 * k + 764703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2294110) = 1572864 * k + 1147055 := by
    unfold C
    simp [show (3145728 * k + 2294110) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1147055) = 4718592 * k + 3441166 := by
    unfold C
    simp [show (1572864 * k + 1147055) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3441166) = 2359296 * k + 1720583 := by
    unfold C
    simp [show (4718592 * k + 3441166) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1720583) = 7077888 * k + 5161750 := by
    unfold C
    simp [show (2359296 * k + 1720583) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5161750) = 3538944 * k + 2580875 := by
    unfold C
    simp [show (7077888 * k + 5161750) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2580875) = 10616832 * k + 7742626 := by
    unfold C
    simp [show (3538944 * k + 2580875) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7742626) = 5308416 * k + 3871313 := by
    unfold C
    simp [show (10616832 * k + 7742626) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3871313) = 15925248 * k + 11613940 := by
    unfold C
    simp [show (5308416 * k + 3871313) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11613940) = 7962624 * k + 5806970 := by
    unfold C
    simp [show (15925248 * k + 11613940) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5806970) = 3981312 * k + 2903485 := by
    unfold C
    simp [show (7962624 * k + 5806970) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2903485) = 11943936 * k + 8710456 := by
    unfold C
    simp [show (3981312 * k + 2903485) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8710456) = 5971968 * k + 4355228 := by
    unfold C
    simp [show (11943936 * k + 8710456) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4355228) = 2985984 * k + 2177614 := by
    unfold C
    simp [show (5971968 * k + 4355228) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2177614) = 1492992 * k + 1088807 := by
    unfold C
    simp [show (2985984 * k + 2177614) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1088807) = 4478976 * k + 3266422 := by
    unfold C
    simp [show (1492992 * k + 1088807) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3266422) = 2239488 * k + 1633211 := by
    unfold C
    simp [show (4478976 * k + 3266422) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1633211) = 6718464 * k + 4899634 := by
    unfold C
    simp [show (2239488 * k + 1633211) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4899634) = 3359232 * k + 2449817 := by
    unfold C
    simp [show (6718464 * k + 4899634) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2449817) = 10077696 * k + 7349452 := by
    unfold C
    simp [show (3359232 * k + 2449817) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7349452) = 5038848 * k + 3674726 := by
    unfold C
    simp [show (10077696 * k + 7349452) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3674726) = 2519424 * k + 1837363 := by
    unfold C
    simp [show (5038848 * k + 3674726) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1837363) = 7558272 * k + 5512090 := by
    unfold C
    simp [show (2519424 * k + 1837363) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5512090) = 3779136 * k + 2756045 := by
    unfold C
    simp [show (7558272 * k + 5512090) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2756045) = 11337408 * k + 8268136 := by
    unfold C
    simp [show (3779136 * k + 2756045) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8268136) = 5668704 * k + 4134068 := by
    unfold C
    simp [show (11337408 * k + 8268136) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4134068) = 2834352 * k + 2067034 := by
    unfold C
    simp [show (5668704 * k + 4134068) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2067034) = 1417176 * k + 1033517 := by
    unfold C
    simp [show (2834352 * k + 2067034) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1033517) = 4251528 * k + 3100552 := by
    unfold C
    simp [show (1417176 * k + 1033517) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3100552) = 2125764 * k + 1550276 := by
    unfold C
    simp [show (4251528 * k + 3100552) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1550276) = 1062882 * k + 775138 := by
    unfold C
    simp [show (2125764 * k + 1550276) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 775138) = 531441 * k + 387569 := by
    unfold C
    simp [show (1062882 * k + 775138) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 764703) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 764703)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_765183 : ∀ k : Nat,
    iterate (1048576 * k + 765183) 32 = 531441 * k + 387812 ∧
      531441 * k + 387812 < 1048576 * k + 765183 := by
  intro k
  have h1 : C (1048576 * k + 765183) = 3145728 * k + 2295550 := by
    unfold C
    simp [show (1048576 * k + 765183) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2295550) = 1572864 * k + 1147775 := by
    unfold C
    simp [show (3145728 * k + 2295550) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1147775) = 4718592 * k + 3443326 := by
    unfold C
    simp [show (1572864 * k + 1147775) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3443326) = 2359296 * k + 1721663 := by
    unfold C
    simp [show (4718592 * k + 3443326) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1721663) = 7077888 * k + 5164990 := by
    unfold C
    simp [show (2359296 * k + 1721663) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5164990) = 3538944 * k + 2582495 := by
    unfold C
    simp [show (7077888 * k + 5164990) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2582495) = 10616832 * k + 7747486 := by
    unfold C
    simp [show (3538944 * k + 2582495) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7747486) = 5308416 * k + 3873743 := by
    unfold C
    simp [show (10616832 * k + 7747486) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3873743) = 15925248 * k + 11621230 := by
    unfold C
    simp [show (5308416 * k + 3873743) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11621230) = 7962624 * k + 5810615 := by
    unfold C
    simp [show (15925248 * k + 11621230) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5810615) = 23887872 * k + 17431846 := by
    unfold C
    simp [show (7962624 * k + 5810615) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 17431846) = 11943936 * k + 8715923 := by
    unfold C
    simp [show (23887872 * k + 17431846) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8715923) = 35831808 * k + 26147770 := by
    unfold C
    simp [show (11943936 * k + 8715923) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 26147770) = 17915904 * k + 13073885 := by
    unfold C
    simp [show (35831808 * k + 26147770) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 13073885) = 53747712 * k + 39221656 := by
    unfold C
    simp [show (17915904 * k + 13073885) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 39221656) = 26873856 * k + 19610828 := by
    unfold C
    simp [show (53747712 * k + 39221656) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 19610828) = 13436928 * k + 9805414 := by
    unfold C
    simp [show (26873856 * k + 19610828) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9805414) = 6718464 * k + 4902707 := by
    unfold C
    simp [show (13436928 * k + 9805414) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4902707) = 20155392 * k + 14708122 := by
    unfold C
    simp [show (6718464 * k + 4902707) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14708122) = 10077696 * k + 7354061 := by
    unfold C
    simp [show (20155392 * k + 14708122) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7354061) = 30233088 * k + 22062184 := by
    unfold C
    simp [show (10077696 * k + 7354061) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 22062184) = 15116544 * k + 11031092 := by
    unfold C
    simp [show (30233088 * k + 22062184) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11031092) = 7558272 * k + 5515546 := by
    unfold C
    simp [show (15116544 * k + 11031092) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5515546) = 3779136 * k + 2757773 := by
    unfold C
    simp [show (7558272 * k + 5515546) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2757773) = 11337408 * k + 8273320 := by
    unfold C
    simp [show (3779136 * k + 2757773) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8273320) = 5668704 * k + 4136660 := by
    unfold C
    simp [show (11337408 * k + 8273320) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4136660) = 2834352 * k + 2068330 := by
    unfold C
    simp [show (5668704 * k + 4136660) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2068330) = 1417176 * k + 1034165 := by
    unfold C
    simp [show (2834352 * k + 2068330) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1034165) = 4251528 * k + 3102496 := by
    unfold C
    simp [show (1417176 * k + 1034165) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3102496) = 2125764 * k + 1551248 := by
    unfold C
    simp [show (4251528 * k + 3102496) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1551248) = 1062882 * k + 775624 := by
    unfold C
    simp [show (2125764 * k + 1551248) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 775624) = 531441 * k + 387812 := by
    unfold C
    simp [show (1062882 * k + 775624) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 765183) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 765183)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_765863 : ∀ k : Nat,
    iterate (1048576 * k + 765863) 32 = 531441 * k + 388157 ∧
      531441 * k + 388157 < 1048576 * k + 765863 := by
  intro k
  have h1 : C (1048576 * k + 765863) = 3145728 * k + 2297590 := by
    unfold C
    simp [show (1048576 * k + 765863) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2297590) = 1572864 * k + 1148795 := by
    unfold C
    simp [show (3145728 * k + 2297590) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1148795) = 4718592 * k + 3446386 := by
    unfold C
    simp [show (1572864 * k + 1148795) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3446386) = 2359296 * k + 1723193 := by
    unfold C
    simp [show (4718592 * k + 3446386) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1723193) = 7077888 * k + 5169580 := by
    unfold C
    simp [show (2359296 * k + 1723193) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5169580) = 3538944 * k + 2584790 := by
    unfold C
    simp [show (7077888 * k + 5169580) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2584790) = 1769472 * k + 1292395 := by
    unfold C
    simp [show (3538944 * k + 2584790) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1292395) = 5308416 * k + 3877186 := by
    unfold C
    simp [show (1769472 * k + 1292395) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3877186) = 2654208 * k + 1938593 := by
    unfold C
    simp [show (5308416 * k + 3877186) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1938593) = 7962624 * k + 5815780 := by
    unfold C
    simp [show (2654208 * k + 1938593) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5815780) = 3981312 * k + 2907890 := by
    unfold C
    simp [show (7962624 * k + 5815780) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2907890) = 1990656 * k + 1453945 := by
    unfold C
    simp [show (3981312 * k + 2907890) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1453945) = 5971968 * k + 4361836 := by
    unfold C
    simp [show (1990656 * k + 1453945) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4361836) = 2985984 * k + 2180918 := by
    unfold C
    simp [show (5971968 * k + 4361836) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2180918) = 1492992 * k + 1090459 := by
    unfold C
    simp [show (2985984 * k + 2180918) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1090459) = 4478976 * k + 3271378 := by
    unfold C
    simp [show (1492992 * k + 1090459) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3271378) = 2239488 * k + 1635689 := by
    unfold C
    simp [show (4478976 * k + 3271378) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1635689) = 6718464 * k + 4907068 := by
    unfold C
    simp [show (2239488 * k + 1635689) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4907068) = 3359232 * k + 2453534 := by
    unfold C
    simp [show (6718464 * k + 4907068) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2453534) = 1679616 * k + 1226767 := by
    unfold C
    simp [show (3359232 * k + 2453534) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1226767) = 5038848 * k + 3680302 := by
    unfold C
    simp [show (1679616 * k + 1226767) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3680302) = 2519424 * k + 1840151 := by
    unfold C
    simp [show (5038848 * k + 3680302) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1840151) = 7558272 * k + 5520454 := by
    unfold C
    simp [show (2519424 * k + 1840151) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5520454) = 3779136 * k + 2760227 := by
    unfold C
    simp [show (7558272 * k + 5520454) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2760227) = 11337408 * k + 8280682 := by
    unfold C
    simp [show (3779136 * k + 2760227) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8280682) = 5668704 * k + 4140341 := by
    unfold C
    simp [show (11337408 * k + 8280682) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4140341) = 17006112 * k + 12421024 := by
    unfold C
    simp [show (5668704 * k + 4140341) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 12421024) = 8503056 * k + 6210512 := by
    unfold C
    simp [show (17006112 * k + 12421024) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6210512) = 4251528 * k + 3105256 := by
    unfold C
    simp [show (8503056 * k + 6210512) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3105256) = 2125764 * k + 1552628 := by
    unfold C
    simp [show (4251528 * k + 3105256) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1552628) = 1062882 * k + 776314 := by
    unfold C
    simp [show (2125764 * k + 1552628) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 776314) = 531441 * k + 388157 := by
    unfold C
    simp [show (1062882 * k + 776314) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 765863) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 765863)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_766063 : ∀ k : Nat,
    iterate (1048576 * k + 766063) 32 = 531441 * k + 388258 ∧
      531441 * k + 388258 < 1048576 * k + 766063 := by
  intro k
  have h1 : C (1048576 * k + 766063) = 3145728 * k + 2298190 := by
    unfold C
    simp [show (1048576 * k + 766063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2298190) = 1572864 * k + 1149095 := by
    unfold C
    simp [show (3145728 * k + 2298190) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1149095) = 4718592 * k + 3447286 := by
    unfold C
    simp [show (1572864 * k + 1149095) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3447286) = 2359296 * k + 1723643 := by
    unfold C
    simp [show (4718592 * k + 3447286) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1723643) = 7077888 * k + 5170930 := by
    unfold C
    simp [show (2359296 * k + 1723643) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5170930) = 3538944 * k + 2585465 := by
    unfold C
    simp [show (7077888 * k + 5170930) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2585465) = 10616832 * k + 7756396 := by
    unfold C
    simp [show (3538944 * k + 2585465) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7756396) = 5308416 * k + 3878198 := by
    unfold C
    simp [show (10616832 * k + 7756396) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3878198) = 2654208 * k + 1939099 := by
    unfold C
    simp [show (5308416 * k + 3878198) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1939099) = 7962624 * k + 5817298 := by
    unfold C
    simp [show (2654208 * k + 1939099) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5817298) = 3981312 * k + 2908649 := by
    unfold C
    simp [show (7962624 * k + 5817298) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2908649) = 11943936 * k + 8725948 := by
    unfold C
    simp [show (3981312 * k + 2908649) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8725948) = 5971968 * k + 4362974 := by
    unfold C
    simp [show (11943936 * k + 8725948) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4362974) = 2985984 * k + 2181487 := by
    unfold C
    simp [show (5971968 * k + 4362974) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2181487) = 8957952 * k + 6544462 := by
    unfold C
    simp [show (2985984 * k + 2181487) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6544462) = 4478976 * k + 3272231 := by
    unfold C
    simp [show (8957952 * k + 6544462) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3272231) = 13436928 * k + 9816694 := by
    unfold C
    simp [show (4478976 * k + 3272231) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9816694) = 6718464 * k + 4908347 := by
    unfold C
    simp [show (13436928 * k + 9816694) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4908347) = 20155392 * k + 14725042 := by
    unfold C
    simp [show (6718464 * k + 4908347) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14725042) = 10077696 * k + 7362521 := by
    unfold C
    simp [show (20155392 * k + 14725042) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7362521) = 30233088 * k + 22087564 := by
    unfold C
    simp [show (10077696 * k + 7362521) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 22087564) = 15116544 * k + 11043782 := by
    unfold C
    simp [show (30233088 * k + 22087564) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11043782) = 7558272 * k + 5521891 := by
    unfold C
    simp [show (15116544 * k + 11043782) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5521891) = 22674816 * k + 16565674 := by
    unfold C
    simp [show (7558272 * k + 5521891) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 16565674) = 11337408 * k + 8282837 := by
    unfold C
    simp [show (22674816 * k + 16565674) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8282837) = 34012224 * k + 24848512 := by
    unfold C
    simp [show (11337408 * k + 8282837) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 24848512) = 17006112 * k + 12424256 := by
    unfold C
    simp [show (34012224 * k + 24848512) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 12424256) = 8503056 * k + 6212128 := by
    unfold C
    simp [show (17006112 * k + 12424256) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6212128) = 4251528 * k + 3106064 := by
    unfold C
    simp [show (8503056 * k + 6212128) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3106064) = 2125764 * k + 1553032 := by
    unfold C
    simp [show (4251528 * k + 3106064) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1553032) = 1062882 * k + 776516 := by
    unfold C
    simp [show (2125764 * k + 1553032) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 776516) = 531441 * k + 388258 := by
    unfold C
    simp [show (1062882 * k + 776516) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 766063) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 766063)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_766655 : ∀ k : Nat,
    iterate (1048576 * k + 766655) 32 = 531441 * k + 388558 ∧
      531441 * k + 388558 < 1048576 * k + 766655 := by
  intro k
  have h1 : C (1048576 * k + 766655) = 3145728 * k + 2299966 := by
    unfold C
    simp [show (1048576 * k + 766655) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2299966) = 1572864 * k + 1149983 := by
    unfold C
    simp [show (3145728 * k + 2299966) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1149983) = 4718592 * k + 3449950 := by
    unfold C
    simp [show (1572864 * k + 1149983) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3449950) = 2359296 * k + 1724975 := by
    unfold C
    simp [show (4718592 * k + 3449950) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1724975) = 7077888 * k + 5174926 := by
    unfold C
    simp [show (2359296 * k + 1724975) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5174926) = 3538944 * k + 2587463 := by
    unfold C
    simp [show (7077888 * k + 5174926) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2587463) = 10616832 * k + 7762390 := by
    unfold C
    simp [show (3538944 * k + 2587463) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7762390) = 5308416 * k + 3881195 := by
    unfold C
    simp [show (10616832 * k + 7762390) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3881195) = 15925248 * k + 11643586 := by
    unfold C
    simp [show (5308416 * k + 3881195) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11643586) = 7962624 * k + 5821793 := by
    unfold C
    simp [show (15925248 * k + 11643586) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5821793) = 23887872 * k + 17465380 := by
    unfold C
    simp [show (7962624 * k + 5821793) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 17465380) = 11943936 * k + 8732690 := by
    unfold C
    simp [show (23887872 * k + 17465380) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8732690) = 5971968 * k + 4366345 := by
    unfold C
    simp [show (11943936 * k + 8732690) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4366345) = 17915904 * k + 13099036 := by
    unfold C
    simp [show (5971968 * k + 4366345) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13099036) = 8957952 * k + 6549518 := by
    unfold C
    simp [show (17915904 * k + 13099036) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6549518) = 4478976 * k + 3274759 := by
    unfold C
    simp [show (8957952 * k + 6549518) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3274759) = 13436928 * k + 9824278 := by
    unfold C
    simp [show (4478976 * k + 3274759) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9824278) = 6718464 * k + 4912139 := by
    unfold C
    simp [show (13436928 * k + 9824278) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4912139) = 20155392 * k + 14736418 := by
    unfold C
    simp [show (6718464 * k + 4912139) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14736418) = 10077696 * k + 7368209 := by
    unfold C
    simp [show (20155392 * k + 14736418) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7368209) = 30233088 * k + 22104628 := by
    unfold C
    simp [show (10077696 * k + 7368209) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 22104628) = 15116544 * k + 11052314 := by
    unfold C
    simp [show (30233088 * k + 22104628) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11052314) = 7558272 * k + 5526157 := by
    unfold C
    simp [show (15116544 * k + 11052314) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5526157) = 22674816 * k + 16578472 := by
    unfold C
    simp [show (7558272 * k + 5526157) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 16578472) = 11337408 * k + 8289236 := by
    unfold C
    simp [show (22674816 * k + 16578472) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8289236) = 5668704 * k + 4144618 := by
    unfold C
    simp [show (11337408 * k + 8289236) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4144618) = 2834352 * k + 2072309 := by
    unfold C
    simp [show (5668704 * k + 4144618) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2072309) = 8503056 * k + 6216928 := by
    unfold C
    simp [show (2834352 * k + 2072309) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6216928) = 4251528 * k + 3108464 := by
    unfold C
    simp [show (8503056 * k + 6216928) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3108464) = 2125764 * k + 1554232 := by
    unfold C
    simp [show (4251528 * k + 3108464) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1554232) = 1062882 * k + 777116 := by
    unfold C
    simp [show (2125764 * k + 1554232) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 777116) = 531441 * k + 388558 := by
    unfold C
    simp [show (1062882 * k + 777116) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 766655) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 766655)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_767391 : ∀ k : Nat,
    iterate (1048576 * k + 767391) 32 = 531441 * k + 388931 ∧
      531441 * k + 388931 < 1048576 * k + 767391 := by
  intro k
  have h1 : C (1048576 * k + 767391) = 3145728 * k + 2302174 := by
    unfold C
    simp [show (1048576 * k + 767391) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2302174) = 1572864 * k + 1151087 := by
    unfold C
    simp [show (3145728 * k + 2302174) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1151087) = 4718592 * k + 3453262 := by
    unfold C
    simp [show (1572864 * k + 1151087) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3453262) = 2359296 * k + 1726631 := by
    unfold C
    simp [show (4718592 * k + 3453262) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1726631) = 7077888 * k + 5179894 := by
    unfold C
    simp [show (2359296 * k + 1726631) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5179894) = 3538944 * k + 2589947 := by
    unfold C
    simp [show (7077888 * k + 5179894) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2589947) = 10616832 * k + 7769842 := by
    unfold C
    simp [show (3538944 * k + 2589947) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7769842) = 5308416 * k + 3884921 := by
    unfold C
    simp [show (10616832 * k + 7769842) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3884921) = 15925248 * k + 11654764 := by
    unfold C
    simp [show (5308416 * k + 3884921) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11654764) = 7962624 * k + 5827382 := by
    unfold C
    simp [show (15925248 * k + 11654764) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5827382) = 3981312 * k + 2913691 := by
    unfold C
    simp [show (7962624 * k + 5827382) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2913691) = 11943936 * k + 8741074 := by
    unfold C
    simp [show (3981312 * k + 2913691) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8741074) = 5971968 * k + 4370537 := by
    unfold C
    simp [show (11943936 * k + 8741074) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4370537) = 17915904 * k + 13111612 := by
    unfold C
    simp [show (5971968 * k + 4370537) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13111612) = 8957952 * k + 6555806 := by
    unfold C
    simp [show (17915904 * k + 13111612) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6555806) = 4478976 * k + 3277903 := by
    unfold C
    simp [show (8957952 * k + 6555806) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3277903) = 13436928 * k + 9833710 := by
    unfold C
    simp [show (4478976 * k + 3277903) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9833710) = 6718464 * k + 4916855 := by
    unfold C
    simp [show (13436928 * k + 9833710) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4916855) = 20155392 * k + 14750566 := by
    unfold C
    simp [show (6718464 * k + 4916855) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14750566) = 10077696 * k + 7375283 := by
    unfold C
    simp [show (20155392 * k + 14750566) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7375283) = 30233088 * k + 22125850 := by
    unfold C
    simp [show (10077696 * k + 7375283) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 22125850) = 15116544 * k + 11062925 := by
    unfold C
    simp [show (30233088 * k + 22125850) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11062925) = 45349632 * k + 33188776 := by
    unfold C
    simp [show (15116544 * k + 11062925) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 33188776) = 22674816 * k + 16594388 := by
    unfold C
    simp [show (45349632 * k + 33188776) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 16594388) = 11337408 * k + 8297194 := by
    unfold C
    simp [show (22674816 * k + 16594388) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8297194) = 5668704 * k + 4148597 := by
    unfold C
    simp [show (11337408 * k + 8297194) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4148597) = 17006112 * k + 12445792 := by
    unfold C
    simp [show (5668704 * k + 4148597) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 12445792) = 8503056 * k + 6222896 := by
    unfold C
    simp [show (17006112 * k + 12445792) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6222896) = 4251528 * k + 3111448 := by
    unfold C
    simp [show (8503056 * k + 6222896) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3111448) = 2125764 * k + 1555724 := by
    unfold C
    simp [show (4251528 * k + 3111448) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1555724) = 1062882 * k + 777862 := by
    unfold C
    simp [show (2125764 * k + 1555724) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 777862) = 531441 * k + 388931 := by
    unfold C
    simp [show (1062882 * k + 777862) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 767391) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 767391)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_768047 : ∀ k : Nat,
    iterate (1048576 * k + 768047) 32 = 531441 * k + 389264 ∧
      531441 * k + 389264 < 1048576 * k + 768047 := by
  intro k
  have h1 : C (1048576 * k + 768047) = 3145728 * k + 2304142 := by
    unfold C
    simp [show (1048576 * k + 768047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2304142) = 1572864 * k + 1152071 := by
    unfold C
    simp [show (3145728 * k + 2304142) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1152071) = 4718592 * k + 3456214 := by
    unfold C
    simp [show (1572864 * k + 1152071) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3456214) = 2359296 * k + 1728107 := by
    unfold C
    simp [show (4718592 * k + 3456214) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1728107) = 7077888 * k + 5184322 := by
    unfold C
    simp [show (2359296 * k + 1728107) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5184322) = 3538944 * k + 2592161 := by
    unfold C
    simp [show (7077888 * k + 5184322) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2592161) = 10616832 * k + 7776484 := by
    unfold C
    simp [show (3538944 * k + 2592161) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7776484) = 5308416 * k + 3888242 := by
    unfold C
    simp [show (10616832 * k + 7776484) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3888242) = 2654208 * k + 1944121 := by
    unfold C
    simp [show (5308416 * k + 3888242) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1944121) = 7962624 * k + 5832364 := by
    unfold C
    simp [show (2654208 * k + 1944121) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5832364) = 3981312 * k + 2916182 := by
    unfold C
    simp [show (7962624 * k + 5832364) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2916182) = 1990656 * k + 1458091 := by
    unfold C
    simp [show (3981312 * k + 2916182) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1458091) = 5971968 * k + 4374274 := by
    unfold C
    simp [show (1990656 * k + 1458091) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4374274) = 2985984 * k + 2187137 := by
    unfold C
    simp [show (5971968 * k + 4374274) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2187137) = 8957952 * k + 6561412 := by
    unfold C
    simp [show (2985984 * k + 2187137) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6561412) = 4478976 * k + 3280706 := by
    unfold C
    simp [show (8957952 * k + 6561412) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3280706) = 2239488 * k + 1640353 := by
    unfold C
    simp [show (4478976 * k + 3280706) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1640353) = 6718464 * k + 4921060 := by
    unfold C
    simp [show (2239488 * k + 1640353) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4921060) = 3359232 * k + 2460530 := by
    unfold C
    simp [show (6718464 * k + 4921060) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2460530) = 1679616 * k + 1230265 := by
    unfold C
    simp [show (3359232 * k + 2460530) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1230265) = 5038848 * k + 3690796 := by
    unfold C
    simp [show (1679616 * k + 1230265) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3690796) = 2519424 * k + 1845398 := by
    unfold C
    simp [show (5038848 * k + 3690796) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1845398) = 1259712 * k + 922699 := by
    unfold C
    simp [show (2519424 * k + 1845398) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 922699) = 3779136 * k + 2768098 := by
    unfold C
    simp [show (1259712 * k + 922699) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2768098) = 1889568 * k + 1384049 := by
    unfold C
    simp [show (3779136 * k + 2768098) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1384049) = 5668704 * k + 4152148 := by
    unfold C
    simp [show (1889568 * k + 1384049) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4152148) = 2834352 * k + 2076074 := by
    unfold C
    simp [show (5668704 * k + 4152148) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2076074) = 1417176 * k + 1038037 := by
    unfold C
    simp [show (2834352 * k + 2076074) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1038037) = 4251528 * k + 3114112 := by
    unfold C
    simp [show (1417176 * k + 1038037) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3114112) = 2125764 * k + 1557056 := by
    unfold C
    simp [show (4251528 * k + 3114112) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1557056) = 1062882 * k + 778528 := by
    unfold C
    simp [show (2125764 * k + 1557056) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 778528) = 531441 * k + 389264 := by
    unfold C
    simp [show (1062882 * k + 778528) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 768047) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 768047)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_768207 : ∀ k : Nat,
    iterate (1048576 * k + 768207) 32 = 531441 * k + 389345 ∧
      531441 * k + 389345 < 1048576 * k + 768207 := by
  intro k
  have h1 : C (1048576 * k + 768207) = 3145728 * k + 2304622 := by
    unfold C
    simp [show (1048576 * k + 768207) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2304622) = 1572864 * k + 1152311 := by
    unfold C
    simp [show (3145728 * k + 2304622) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1152311) = 4718592 * k + 3456934 := by
    unfold C
    simp [show (1572864 * k + 1152311) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3456934) = 2359296 * k + 1728467 := by
    unfold C
    simp [show (4718592 * k + 3456934) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1728467) = 7077888 * k + 5185402 := by
    unfold C
    simp [show (2359296 * k + 1728467) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5185402) = 3538944 * k + 2592701 := by
    unfold C
    simp [show (7077888 * k + 5185402) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2592701) = 10616832 * k + 7778104 := by
    unfold C
    simp [show (3538944 * k + 2592701) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7778104) = 5308416 * k + 3889052 := by
    unfold C
    simp [show (10616832 * k + 7778104) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3889052) = 2654208 * k + 1944526 := by
    unfold C
    simp [show (5308416 * k + 3889052) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1944526) = 1327104 * k + 972263 := by
    unfold C
    simp [show (2654208 * k + 1944526) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 972263) = 3981312 * k + 2916790 := by
    unfold C
    simp [show (1327104 * k + 972263) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2916790) = 1990656 * k + 1458395 := by
    unfold C
    simp [show (3981312 * k + 2916790) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1458395) = 5971968 * k + 4375186 := by
    unfold C
    simp [show (1990656 * k + 1458395) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4375186) = 2985984 * k + 2187593 := by
    unfold C
    simp [show (5971968 * k + 4375186) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2187593) = 8957952 * k + 6562780 := by
    unfold C
    simp [show (2985984 * k + 2187593) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6562780) = 4478976 * k + 3281390 := by
    unfold C
    simp [show (8957952 * k + 6562780) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3281390) = 2239488 * k + 1640695 := by
    unfold C
    simp [show (4478976 * k + 3281390) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1640695) = 6718464 * k + 4922086 := by
    unfold C
    simp [show (2239488 * k + 1640695) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4922086) = 3359232 * k + 2461043 := by
    unfold C
    simp [show (6718464 * k + 4922086) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2461043) = 10077696 * k + 7383130 := by
    unfold C
    simp [show (3359232 * k + 2461043) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7383130) = 5038848 * k + 3691565 := by
    unfold C
    simp [show (10077696 * k + 7383130) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3691565) = 15116544 * k + 11074696 := by
    unfold C
    simp [show (5038848 * k + 3691565) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11074696) = 7558272 * k + 5537348 := by
    unfold C
    simp [show (15116544 * k + 11074696) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5537348) = 3779136 * k + 2768674 := by
    unfold C
    simp [show (7558272 * k + 5537348) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2768674) = 1889568 * k + 1384337 := by
    unfold C
    simp [show (3779136 * k + 2768674) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1384337) = 5668704 * k + 4153012 := by
    unfold C
    simp [show (1889568 * k + 1384337) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4153012) = 2834352 * k + 2076506 := by
    unfold C
    simp [show (5668704 * k + 4153012) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2076506) = 1417176 * k + 1038253 := by
    unfold C
    simp [show (2834352 * k + 2076506) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1038253) = 4251528 * k + 3114760 := by
    unfold C
    simp [show (1417176 * k + 1038253) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3114760) = 2125764 * k + 1557380 := by
    unfold C
    simp [show (4251528 * k + 3114760) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1557380) = 1062882 * k + 778690 := by
    unfold C
    simp [show (2125764 * k + 1557380) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 778690) = 531441 * k + 389345 := by
    unfold C
    simp [show (1062882 * k + 778690) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 768207) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 768207)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_768255 : ∀ k : Nat,
    iterate (1048576 * k + 768255) 32 = 531441 * k + 389369 ∧
      531441 * k + 389369 < 1048576 * k + 768255 := by
  intro k
  have h1 : C (1048576 * k + 768255) = 3145728 * k + 2304766 := by
    unfold C
    simp [show (1048576 * k + 768255) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2304766) = 1572864 * k + 1152383 := by
    unfold C
    simp [show (3145728 * k + 2304766) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1152383) = 4718592 * k + 3457150 := by
    unfold C
    simp [show (1572864 * k + 1152383) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3457150) = 2359296 * k + 1728575 := by
    unfold C
    simp [show (4718592 * k + 3457150) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1728575) = 7077888 * k + 5185726 := by
    unfold C
    simp [show (2359296 * k + 1728575) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5185726) = 3538944 * k + 2592863 := by
    unfold C
    simp [show (7077888 * k + 5185726) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2592863) = 10616832 * k + 7778590 := by
    unfold C
    simp [show (3538944 * k + 2592863) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7778590) = 5308416 * k + 3889295 := by
    unfold C
    simp [show (10616832 * k + 7778590) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3889295) = 15925248 * k + 11667886 := by
    unfold C
    simp [show (5308416 * k + 3889295) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11667886) = 7962624 * k + 5833943 := by
    unfold C
    simp [show (15925248 * k + 11667886) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5833943) = 23887872 * k + 17501830 := by
    unfold C
    simp [show (7962624 * k + 5833943) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 17501830) = 11943936 * k + 8750915 := by
    unfold C
    simp [show (23887872 * k + 17501830) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8750915) = 35831808 * k + 26252746 := by
    unfold C
    simp [show (11943936 * k + 8750915) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 26252746) = 17915904 * k + 13126373 := by
    unfold C
    simp [show (35831808 * k + 26252746) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 13126373) = 53747712 * k + 39379120 := by
    unfold C
    simp [show (17915904 * k + 13126373) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 39379120) = 26873856 * k + 19689560 := by
    unfold C
    simp [show (53747712 * k + 39379120) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 19689560) = 13436928 * k + 9844780 := by
    unfold C
    simp [show (26873856 * k + 19689560) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9844780) = 6718464 * k + 4922390 := by
    unfold C
    simp [show (13436928 * k + 9844780) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4922390) = 3359232 * k + 2461195 := by
    unfold C
    simp [show (6718464 * k + 4922390) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2461195) = 10077696 * k + 7383586 := by
    unfold C
    simp [show (3359232 * k + 2461195) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7383586) = 5038848 * k + 3691793 := by
    unfold C
    simp [show (10077696 * k + 7383586) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3691793) = 15116544 * k + 11075380 := by
    unfold C
    simp [show (5038848 * k + 3691793) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11075380) = 7558272 * k + 5537690 := by
    unfold C
    simp [show (15116544 * k + 11075380) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5537690) = 3779136 * k + 2768845 := by
    unfold C
    simp [show (7558272 * k + 5537690) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2768845) = 11337408 * k + 8306536 := by
    unfold C
    simp [show (3779136 * k + 2768845) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8306536) = 5668704 * k + 4153268 := by
    unfold C
    simp [show (11337408 * k + 8306536) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4153268) = 2834352 * k + 2076634 := by
    unfold C
    simp [show (5668704 * k + 4153268) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2076634) = 1417176 * k + 1038317 := by
    unfold C
    simp [show (2834352 * k + 2076634) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1038317) = 4251528 * k + 3114952 := by
    unfold C
    simp [show (1417176 * k + 1038317) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3114952) = 2125764 * k + 1557476 := by
    unfold C
    simp [show (4251528 * k + 3114952) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1557476) = 1062882 * k + 778738 := by
    unfold C
    simp [show (2125764 * k + 1557476) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 778738) = 531441 * k + 389369 := by
    unfold C
    simp [show (1062882 * k + 778738) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 768255) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 768255)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_769023 : ∀ k : Nat,
    iterate (1048576 * k + 769023) 32 = 531441 * k + 389758 ∧
      531441 * k + 389758 < 1048576 * k + 769023 := by
  intro k
  have h1 : C (1048576 * k + 769023) = 3145728 * k + 2307070 := by
    unfold C
    simp [show (1048576 * k + 769023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2307070) = 1572864 * k + 1153535 := by
    unfold C
    simp [show (3145728 * k + 2307070) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1153535) = 4718592 * k + 3460606 := by
    unfold C
    simp [show (1572864 * k + 1153535) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3460606) = 2359296 * k + 1730303 := by
    unfold C
    simp [show (4718592 * k + 3460606) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1730303) = 7077888 * k + 5190910 := by
    unfold C
    simp [show (2359296 * k + 1730303) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5190910) = 3538944 * k + 2595455 := by
    unfold C
    simp [show (7077888 * k + 5190910) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2595455) = 10616832 * k + 7786366 := by
    unfold C
    simp [show (3538944 * k + 2595455) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7786366) = 5308416 * k + 3893183 := by
    unfold C
    simp [show (10616832 * k + 7786366) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3893183) = 15925248 * k + 11679550 := by
    unfold C
    simp [show (5308416 * k + 3893183) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11679550) = 7962624 * k + 5839775 := by
    unfold C
    simp [show (15925248 * k + 11679550) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5839775) = 23887872 * k + 17519326 := by
    unfold C
    simp [show (7962624 * k + 5839775) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 17519326) = 11943936 * k + 8759663 := by
    unfold C
    simp [show (23887872 * k + 17519326) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8759663) = 35831808 * k + 26278990 := by
    unfold C
    simp [show (11943936 * k + 8759663) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 26278990) = 17915904 * k + 13139495 := by
    unfold C
    simp [show (35831808 * k + 26278990) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 13139495) = 53747712 * k + 39418486 := by
    unfold C
    simp [show (17915904 * k + 13139495) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 39418486) = 26873856 * k + 19709243 := by
    unfold C
    simp [show (53747712 * k + 39418486) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 19709243) = 80621568 * k + 59127730 := by
    unfold C
    simp [show (26873856 * k + 19709243) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 59127730) = 40310784 * k + 29563865 := by
    unfold C
    simp [show (80621568 * k + 59127730) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 29563865) = 120932352 * k + 88691596 := by
    unfold C
    simp [show (40310784 * k + 29563865) % 2 ≠ 0 by omega]
    omega
  have h20 : C (120932352 * k + 88691596) = 60466176 * k + 44345798 := by
    unfold C
    simp [show (120932352 * k + 88691596) % 2 = 0 by omega]
    omega
  have h21 : C (60466176 * k + 44345798) = 30233088 * k + 22172899 := by
    unfold C
    simp [show (60466176 * k + 44345798) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 22172899) = 90699264 * k + 66518698 := by
    unfold C
    simp [show (30233088 * k + 22172899) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 66518698) = 45349632 * k + 33259349 := by
    unfold C
    simp [show (90699264 * k + 66518698) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 33259349) = 136048896 * k + 99778048 := by
    unfold C
    simp [show (45349632 * k + 33259349) % 2 ≠ 0 by omega]
    omega
  have h25 : C (136048896 * k + 99778048) = 68024448 * k + 49889024 := by
    unfold C
    simp [show (136048896 * k + 99778048) % 2 = 0 by omega]
    omega
  have h26 : C (68024448 * k + 49889024) = 34012224 * k + 24944512 := by
    unfold C
    simp [show (68024448 * k + 49889024) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 24944512) = 17006112 * k + 12472256 := by
    unfold C
    simp [show (34012224 * k + 24944512) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 12472256) = 8503056 * k + 6236128 := by
    unfold C
    simp [show (17006112 * k + 12472256) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6236128) = 4251528 * k + 3118064 := by
    unfold C
    simp [show (8503056 * k + 6236128) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3118064) = 2125764 * k + 1559032 := by
    unfold C
    simp [show (4251528 * k + 3118064) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1559032) = 1062882 * k + 779516 := by
    unfold C
    simp [show (2125764 * k + 1559032) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 779516) = 531441 * k + 389758 := by
    unfold C
    simp [show (1062882 * k + 779516) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 769023) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 769023)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_769087 : ∀ k : Nat,
    iterate (1048576 * k + 769087) 32 = 531441 * k + 389791 ∧
      531441 * k + 389791 < 1048576 * k + 769087 := by
  intro k
  have h1 : C (1048576 * k + 769087) = 3145728 * k + 2307262 := by
    unfold C
    simp [show (1048576 * k + 769087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2307262) = 1572864 * k + 1153631 := by
    unfold C
    simp [show (3145728 * k + 2307262) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1153631) = 4718592 * k + 3460894 := by
    unfold C
    simp [show (1572864 * k + 1153631) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3460894) = 2359296 * k + 1730447 := by
    unfold C
    simp [show (4718592 * k + 3460894) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1730447) = 7077888 * k + 5191342 := by
    unfold C
    simp [show (2359296 * k + 1730447) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5191342) = 3538944 * k + 2595671 := by
    unfold C
    simp [show (7077888 * k + 5191342) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2595671) = 10616832 * k + 7787014 := by
    unfold C
    simp [show (3538944 * k + 2595671) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7787014) = 5308416 * k + 3893507 := by
    unfold C
    simp [show (10616832 * k + 7787014) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3893507) = 15925248 * k + 11680522 := by
    unfold C
    simp [show (5308416 * k + 3893507) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11680522) = 7962624 * k + 5840261 := by
    unfold C
    simp [show (15925248 * k + 11680522) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5840261) = 23887872 * k + 17520784 := by
    unfold C
    simp [show (7962624 * k + 5840261) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 17520784) = 11943936 * k + 8760392 := by
    unfold C
    simp [show (23887872 * k + 17520784) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8760392) = 5971968 * k + 4380196 := by
    unfold C
    simp [show (11943936 * k + 8760392) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4380196) = 2985984 * k + 2190098 := by
    unfold C
    simp [show (5971968 * k + 4380196) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2190098) = 1492992 * k + 1095049 := by
    unfold C
    simp [show (2985984 * k + 2190098) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1095049) = 4478976 * k + 3285148 := by
    unfold C
    simp [show (1492992 * k + 1095049) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3285148) = 2239488 * k + 1642574 := by
    unfold C
    simp [show (4478976 * k + 3285148) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1642574) = 1119744 * k + 821287 := by
    unfold C
    simp [show (2239488 * k + 1642574) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 821287) = 3359232 * k + 2463862 := by
    unfold C
    simp [show (1119744 * k + 821287) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2463862) = 1679616 * k + 1231931 := by
    unfold C
    simp [show (3359232 * k + 2463862) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1231931) = 5038848 * k + 3695794 := by
    unfold C
    simp [show (1679616 * k + 1231931) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3695794) = 2519424 * k + 1847897 := by
    unfold C
    simp [show (5038848 * k + 3695794) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1847897) = 7558272 * k + 5543692 := by
    unfold C
    simp [show (2519424 * k + 1847897) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5543692) = 3779136 * k + 2771846 := by
    unfold C
    simp [show (7558272 * k + 5543692) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2771846) = 1889568 * k + 1385923 := by
    unfold C
    simp [show (3779136 * k + 2771846) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1385923) = 5668704 * k + 4157770 := by
    unfold C
    simp [show (1889568 * k + 1385923) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4157770) = 2834352 * k + 2078885 := by
    unfold C
    simp [show (5668704 * k + 4157770) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2078885) = 8503056 * k + 6236656 := by
    unfold C
    simp [show (2834352 * k + 2078885) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6236656) = 4251528 * k + 3118328 := by
    unfold C
    simp [show (8503056 * k + 6236656) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3118328) = 2125764 * k + 1559164 := by
    unfold C
    simp [show (4251528 * k + 3118328) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1559164) = 1062882 * k + 779582 := by
    unfold C
    simp [show (2125764 * k + 1559164) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 779582) = 531441 * k + 389791 := by
    unfold C
    simp [show (1062882 * k + 779582) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 769087) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 769087)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_769135 : ∀ k : Nat,
    iterate (1048576 * k + 769135) 32 = 531441 * k + 389815 ∧
      531441 * k + 389815 < 1048576 * k + 769135 := by
  intro k
  have h1 : C (1048576 * k + 769135) = 3145728 * k + 2307406 := by
    unfold C
    simp [show (1048576 * k + 769135) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2307406) = 1572864 * k + 1153703 := by
    unfold C
    simp [show (3145728 * k + 2307406) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1153703) = 4718592 * k + 3461110 := by
    unfold C
    simp [show (1572864 * k + 1153703) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3461110) = 2359296 * k + 1730555 := by
    unfold C
    simp [show (4718592 * k + 3461110) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1730555) = 7077888 * k + 5191666 := by
    unfold C
    simp [show (2359296 * k + 1730555) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5191666) = 3538944 * k + 2595833 := by
    unfold C
    simp [show (7077888 * k + 5191666) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2595833) = 10616832 * k + 7787500 := by
    unfold C
    simp [show (3538944 * k + 2595833) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7787500) = 5308416 * k + 3893750 := by
    unfold C
    simp [show (10616832 * k + 7787500) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3893750) = 2654208 * k + 1946875 := by
    unfold C
    simp [show (5308416 * k + 3893750) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1946875) = 7962624 * k + 5840626 := by
    unfold C
    simp [show (2654208 * k + 1946875) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5840626) = 3981312 * k + 2920313 := by
    unfold C
    simp [show (7962624 * k + 5840626) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2920313) = 11943936 * k + 8760940 := by
    unfold C
    simp [show (3981312 * k + 2920313) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8760940) = 5971968 * k + 4380470 := by
    unfold C
    simp [show (11943936 * k + 8760940) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4380470) = 2985984 * k + 2190235 := by
    unfold C
    simp [show (5971968 * k + 4380470) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2190235) = 8957952 * k + 6570706 := by
    unfold C
    simp [show (2985984 * k + 2190235) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6570706) = 4478976 * k + 3285353 := by
    unfold C
    simp [show (8957952 * k + 6570706) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3285353) = 13436928 * k + 9856060 := by
    unfold C
    simp [show (4478976 * k + 3285353) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9856060) = 6718464 * k + 4928030 := by
    unfold C
    simp [show (13436928 * k + 9856060) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4928030) = 3359232 * k + 2464015 := by
    unfold C
    simp [show (6718464 * k + 4928030) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2464015) = 10077696 * k + 7392046 := by
    unfold C
    simp [show (3359232 * k + 2464015) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7392046) = 5038848 * k + 3696023 := by
    unfold C
    simp [show (10077696 * k + 7392046) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3696023) = 15116544 * k + 11088070 := by
    unfold C
    simp [show (5038848 * k + 3696023) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11088070) = 7558272 * k + 5544035 := by
    unfold C
    simp [show (15116544 * k + 11088070) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5544035) = 22674816 * k + 16632106 := by
    unfold C
    simp [show (7558272 * k + 5544035) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 16632106) = 11337408 * k + 8316053 := by
    unfold C
    simp [show (22674816 * k + 16632106) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8316053) = 34012224 * k + 24948160 := by
    unfold C
    simp [show (11337408 * k + 8316053) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 24948160) = 17006112 * k + 12474080 := by
    unfold C
    simp [show (34012224 * k + 24948160) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 12474080) = 8503056 * k + 6237040 := by
    unfold C
    simp [show (17006112 * k + 12474080) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6237040) = 4251528 * k + 3118520 := by
    unfold C
    simp [show (8503056 * k + 6237040) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3118520) = 2125764 * k + 1559260 := by
    unfold C
    simp [show (4251528 * k + 3118520) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1559260) = 1062882 * k + 779630 := by
    unfold C
    simp [show (2125764 * k + 1559260) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 779630) = 531441 * k + 389815 := by
    unfold C
    simp [show (1062882 * k + 779630) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 769135) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 769135)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_769407 : ∀ k : Nat,
    iterate (1048576 * k + 769407) 32 = 531441 * k + 389953 ∧
      531441 * k + 389953 < 1048576 * k + 769407 := by
  intro k
  have h1 : C (1048576 * k + 769407) = 3145728 * k + 2308222 := by
    unfold C
    simp [show (1048576 * k + 769407) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2308222) = 1572864 * k + 1154111 := by
    unfold C
    simp [show (3145728 * k + 2308222) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1154111) = 4718592 * k + 3462334 := by
    unfold C
    simp [show (1572864 * k + 1154111) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3462334) = 2359296 * k + 1731167 := by
    unfold C
    simp [show (4718592 * k + 3462334) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1731167) = 7077888 * k + 5193502 := by
    unfold C
    simp [show (2359296 * k + 1731167) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5193502) = 3538944 * k + 2596751 := by
    unfold C
    simp [show (7077888 * k + 5193502) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2596751) = 10616832 * k + 7790254 := by
    unfold C
    simp [show (3538944 * k + 2596751) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7790254) = 5308416 * k + 3895127 := by
    unfold C
    simp [show (10616832 * k + 7790254) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3895127) = 15925248 * k + 11685382 := by
    unfold C
    simp [show (5308416 * k + 3895127) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11685382) = 7962624 * k + 5842691 := by
    unfold C
    simp [show (15925248 * k + 11685382) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5842691) = 23887872 * k + 17528074 := by
    unfold C
    simp [show (7962624 * k + 5842691) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 17528074) = 11943936 * k + 8764037 := by
    unfold C
    simp [show (23887872 * k + 17528074) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8764037) = 35831808 * k + 26292112 := by
    unfold C
    simp [show (11943936 * k + 8764037) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 26292112) = 17915904 * k + 13146056 := by
    unfold C
    simp [show (35831808 * k + 26292112) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 13146056) = 8957952 * k + 6573028 := by
    unfold C
    simp [show (17915904 * k + 13146056) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6573028) = 4478976 * k + 3286514 := by
    unfold C
    simp [show (8957952 * k + 6573028) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3286514) = 2239488 * k + 1643257 := by
    unfold C
    simp [show (4478976 * k + 3286514) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1643257) = 6718464 * k + 4929772 := by
    unfold C
    simp [show (2239488 * k + 1643257) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4929772) = 3359232 * k + 2464886 := by
    unfold C
    simp [show (6718464 * k + 4929772) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2464886) = 1679616 * k + 1232443 := by
    unfold C
    simp [show (3359232 * k + 2464886) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1232443) = 5038848 * k + 3697330 := by
    unfold C
    simp [show (1679616 * k + 1232443) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3697330) = 2519424 * k + 1848665 := by
    unfold C
    simp [show (5038848 * k + 3697330) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1848665) = 7558272 * k + 5545996 := by
    unfold C
    simp [show (2519424 * k + 1848665) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5545996) = 3779136 * k + 2772998 := by
    unfold C
    simp [show (7558272 * k + 5545996) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2772998) = 1889568 * k + 1386499 := by
    unfold C
    simp [show (3779136 * k + 2772998) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1386499) = 5668704 * k + 4159498 := by
    unfold C
    simp [show (1889568 * k + 1386499) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4159498) = 2834352 * k + 2079749 := by
    unfold C
    simp [show (5668704 * k + 4159498) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2079749) = 8503056 * k + 6239248 := by
    unfold C
    simp [show (2834352 * k + 2079749) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6239248) = 4251528 * k + 3119624 := by
    unfold C
    simp [show (8503056 * k + 6239248) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3119624) = 2125764 * k + 1559812 := by
    unfold C
    simp [show (4251528 * k + 3119624) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1559812) = 1062882 * k + 779906 := by
    unfold C
    simp [show (2125764 * k + 1559812) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 779906) = 531441 * k + 389953 := by
    unfold C
    simp [show (1062882 * k + 779906) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 769407) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 769407)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_769439 : ∀ k : Nat,
    iterate (1048576 * k + 769439) 32 = 531441 * k + 389969 ∧
      531441 * k + 389969 < 1048576 * k + 769439 := by
  intro k
  have h1 : C (1048576 * k + 769439) = 3145728 * k + 2308318 := by
    unfold C
    simp [show (1048576 * k + 769439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2308318) = 1572864 * k + 1154159 := by
    unfold C
    simp [show (3145728 * k + 2308318) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1154159) = 4718592 * k + 3462478 := by
    unfold C
    simp [show (1572864 * k + 1154159) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3462478) = 2359296 * k + 1731239 := by
    unfold C
    simp [show (4718592 * k + 3462478) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1731239) = 7077888 * k + 5193718 := by
    unfold C
    simp [show (2359296 * k + 1731239) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5193718) = 3538944 * k + 2596859 := by
    unfold C
    simp [show (7077888 * k + 5193718) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2596859) = 10616832 * k + 7790578 := by
    unfold C
    simp [show (3538944 * k + 2596859) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7790578) = 5308416 * k + 3895289 := by
    unfold C
    simp [show (10616832 * k + 7790578) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3895289) = 15925248 * k + 11685868 := by
    unfold C
    simp [show (5308416 * k + 3895289) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11685868) = 7962624 * k + 5842934 := by
    unfold C
    simp [show (15925248 * k + 11685868) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5842934) = 3981312 * k + 2921467 := by
    unfold C
    simp [show (7962624 * k + 5842934) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2921467) = 11943936 * k + 8764402 := by
    unfold C
    simp [show (3981312 * k + 2921467) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8764402) = 5971968 * k + 4382201 := by
    unfold C
    simp [show (11943936 * k + 8764402) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4382201) = 17915904 * k + 13146604 := by
    unfold C
    simp [show (5971968 * k + 4382201) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13146604) = 8957952 * k + 6573302 := by
    unfold C
    simp [show (17915904 * k + 13146604) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6573302) = 4478976 * k + 3286651 := by
    unfold C
    simp [show (8957952 * k + 6573302) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3286651) = 13436928 * k + 9859954 := by
    unfold C
    simp [show (4478976 * k + 3286651) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9859954) = 6718464 * k + 4929977 := by
    unfold C
    simp [show (13436928 * k + 9859954) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4929977) = 20155392 * k + 14789932 := by
    unfold C
    simp [show (6718464 * k + 4929977) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14789932) = 10077696 * k + 7394966 := by
    unfold C
    simp [show (20155392 * k + 14789932) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7394966) = 5038848 * k + 3697483 := by
    unfold C
    simp [show (10077696 * k + 7394966) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3697483) = 15116544 * k + 11092450 := by
    unfold C
    simp [show (5038848 * k + 3697483) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11092450) = 7558272 * k + 5546225 := by
    unfold C
    simp [show (15116544 * k + 11092450) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5546225) = 22674816 * k + 16638676 := by
    unfold C
    simp [show (7558272 * k + 5546225) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 16638676) = 11337408 * k + 8319338 := by
    unfold C
    simp [show (22674816 * k + 16638676) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8319338) = 5668704 * k + 4159669 := by
    unfold C
    simp [show (11337408 * k + 8319338) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4159669) = 17006112 * k + 12479008 := by
    unfold C
    simp [show (5668704 * k + 4159669) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 12479008) = 8503056 * k + 6239504 := by
    unfold C
    simp [show (17006112 * k + 12479008) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6239504) = 4251528 * k + 3119752 := by
    unfold C
    simp [show (8503056 * k + 6239504) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3119752) = 2125764 * k + 1559876 := by
    unfold C
    simp [show (4251528 * k + 3119752) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1559876) = 1062882 * k + 779938 := by
    unfold C
    simp [show (2125764 * k + 1559876) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 779938) = 531441 * k + 389969 := by
    unfold C
    simp [show (1062882 * k + 779938) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 769439) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 769439)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_769567 : ∀ k : Nat,
    iterate (1048576 * k + 769567) 32 = 531441 * k + 390034 ∧
      531441 * k + 390034 < 1048576 * k + 769567 := by
  intro k
  have h1 : C (1048576 * k + 769567) = 3145728 * k + 2308702 := by
    unfold C
    simp [show (1048576 * k + 769567) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2308702) = 1572864 * k + 1154351 := by
    unfold C
    simp [show (3145728 * k + 2308702) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1154351) = 4718592 * k + 3463054 := by
    unfold C
    simp [show (1572864 * k + 1154351) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3463054) = 2359296 * k + 1731527 := by
    unfold C
    simp [show (4718592 * k + 3463054) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1731527) = 7077888 * k + 5194582 := by
    unfold C
    simp [show (2359296 * k + 1731527) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5194582) = 3538944 * k + 2597291 := by
    unfold C
    simp [show (7077888 * k + 5194582) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2597291) = 10616832 * k + 7791874 := by
    unfold C
    simp [show (3538944 * k + 2597291) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7791874) = 5308416 * k + 3895937 := by
    unfold C
    simp [show (10616832 * k + 7791874) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3895937) = 15925248 * k + 11687812 := by
    unfold C
    simp [show (5308416 * k + 3895937) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11687812) = 7962624 * k + 5843906 := by
    unfold C
    simp [show (15925248 * k + 11687812) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5843906) = 3981312 * k + 2921953 := by
    unfold C
    simp [show (7962624 * k + 5843906) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2921953) = 11943936 * k + 8765860 := by
    unfold C
    simp [show (3981312 * k + 2921953) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8765860) = 5971968 * k + 4382930 := by
    unfold C
    simp [show (11943936 * k + 8765860) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4382930) = 2985984 * k + 2191465 := by
    unfold C
    simp [show (5971968 * k + 4382930) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2191465) = 8957952 * k + 6574396 := by
    unfold C
    simp [show (2985984 * k + 2191465) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6574396) = 4478976 * k + 3287198 := by
    unfold C
    simp [show (8957952 * k + 6574396) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3287198) = 2239488 * k + 1643599 := by
    unfold C
    simp [show (4478976 * k + 3287198) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1643599) = 6718464 * k + 4930798 := by
    unfold C
    simp [show (2239488 * k + 1643599) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4930798) = 3359232 * k + 2465399 := by
    unfold C
    simp [show (6718464 * k + 4930798) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2465399) = 10077696 * k + 7396198 := by
    unfold C
    simp [show (3359232 * k + 2465399) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7396198) = 5038848 * k + 3698099 := by
    unfold C
    simp [show (10077696 * k + 7396198) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3698099) = 15116544 * k + 11094298 := by
    unfold C
    simp [show (5038848 * k + 3698099) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11094298) = 7558272 * k + 5547149 := by
    unfold C
    simp [show (15116544 * k + 11094298) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5547149) = 22674816 * k + 16641448 := by
    unfold C
    simp [show (7558272 * k + 5547149) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 16641448) = 11337408 * k + 8320724 := by
    unfold C
    simp [show (22674816 * k + 16641448) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8320724) = 5668704 * k + 4160362 := by
    unfold C
    simp [show (11337408 * k + 8320724) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4160362) = 2834352 * k + 2080181 := by
    unfold C
    simp [show (5668704 * k + 4160362) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2080181) = 8503056 * k + 6240544 := by
    unfold C
    simp [show (2834352 * k + 2080181) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6240544) = 4251528 * k + 3120272 := by
    unfold C
    simp [show (8503056 * k + 6240544) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3120272) = 2125764 * k + 1560136 := by
    unfold C
    simp [show (4251528 * k + 3120272) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1560136) = 1062882 * k + 780068 := by
    unfold C
    simp [show (2125764 * k + 1560136) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 780068) = 531441 * k + 390034 := by
    unfold C
    simp [show (1062882 * k + 780068) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 769567) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 769567)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_769727 : ∀ k : Nat,
    iterate (1048576 * k + 769727) 32 = 531441 * k + 390115 ∧
      531441 * k + 390115 < 1048576 * k + 769727 := by
  intro k
  have h1 : C (1048576 * k + 769727) = 3145728 * k + 2309182 := by
    unfold C
    simp [show (1048576 * k + 769727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2309182) = 1572864 * k + 1154591 := by
    unfold C
    simp [show (3145728 * k + 2309182) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1154591) = 4718592 * k + 3463774 := by
    unfold C
    simp [show (1572864 * k + 1154591) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3463774) = 2359296 * k + 1731887 := by
    unfold C
    simp [show (4718592 * k + 3463774) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1731887) = 7077888 * k + 5195662 := by
    unfold C
    simp [show (2359296 * k + 1731887) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5195662) = 3538944 * k + 2597831 := by
    unfold C
    simp [show (7077888 * k + 5195662) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2597831) = 10616832 * k + 7793494 := by
    unfold C
    simp [show (3538944 * k + 2597831) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7793494) = 5308416 * k + 3896747 := by
    unfold C
    simp [show (10616832 * k + 7793494) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3896747) = 15925248 * k + 11690242 := by
    unfold C
    simp [show (5308416 * k + 3896747) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11690242) = 7962624 * k + 5845121 := by
    unfold C
    simp [show (15925248 * k + 11690242) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5845121) = 23887872 * k + 17535364 := by
    unfold C
    simp [show (7962624 * k + 5845121) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 17535364) = 11943936 * k + 8767682 := by
    unfold C
    simp [show (23887872 * k + 17535364) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8767682) = 5971968 * k + 4383841 := by
    unfold C
    simp [show (11943936 * k + 8767682) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4383841) = 17915904 * k + 13151524 := by
    unfold C
    simp [show (5971968 * k + 4383841) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13151524) = 8957952 * k + 6575762 := by
    unfold C
    simp [show (17915904 * k + 13151524) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6575762) = 4478976 * k + 3287881 := by
    unfold C
    simp [show (8957952 * k + 6575762) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3287881) = 13436928 * k + 9863644 := by
    unfold C
    simp [show (4478976 * k + 3287881) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9863644) = 6718464 * k + 4931822 := by
    unfold C
    simp [show (13436928 * k + 9863644) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4931822) = 3359232 * k + 2465911 := by
    unfold C
    simp [show (6718464 * k + 4931822) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2465911) = 10077696 * k + 7397734 := by
    unfold C
    simp [show (3359232 * k + 2465911) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7397734) = 5038848 * k + 3698867 := by
    unfold C
    simp [show (10077696 * k + 7397734) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3698867) = 15116544 * k + 11096602 := by
    unfold C
    simp [show (5038848 * k + 3698867) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11096602) = 7558272 * k + 5548301 := by
    unfold C
    simp [show (15116544 * k + 11096602) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5548301) = 22674816 * k + 16644904 := by
    unfold C
    simp [show (7558272 * k + 5548301) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 16644904) = 11337408 * k + 8322452 := by
    unfold C
    simp [show (22674816 * k + 16644904) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8322452) = 5668704 * k + 4161226 := by
    unfold C
    simp [show (11337408 * k + 8322452) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4161226) = 2834352 * k + 2080613 := by
    unfold C
    simp [show (5668704 * k + 4161226) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2080613) = 8503056 * k + 6241840 := by
    unfold C
    simp [show (2834352 * k + 2080613) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6241840) = 4251528 * k + 3120920 := by
    unfold C
    simp [show (8503056 * k + 6241840) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3120920) = 2125764 * k + 1560460 := by
    unfold C
    simp [show (4251528 * k + 3120920) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1560460) = 1062882 * k + 780230 := by
    unfold C
    simp [show (2125764 * k + 1560460) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 780230) = 531441 * k + 390115 := by
    unfold C
    simp [show (1062882 * k + 780230) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 769727) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 769727)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_771071 : ∀ k : Nat,
    iterate (1048576 * k + 771071) 32 = 531441 * k + 390796 ∧
      531441 * k + 390796 < 1048576 * k + 771071 := by
  intro k
  have h1 : C (1048576 * k + 771071) = 3145728 * k + 2313214 := by
    unfold C
    simp [show (1048576 * k + 771071) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2313214) = 1572864 * k + 1156607 := by
    unfold C
    simp [show (3145728 * k + 2313214) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1156607) = 4718592 * k + 3469822 := by
    unfold C
    simp [show (1572864 * k + 1156607) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3469822) = 2359296 * k + 1734911 := by
    unfold C
    simp [show (4718592 * k + 3469822) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1734911) = 7077888 * k + 5204734 := by
    unfold C
    simp [show (2359296 * k + 1734911) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5204734) = 3538944 * k + 2602367 := by
    unfold C
    simp [show (7077888 * k + 5204734) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2602367) = 10616832 * k + 7807102 := by
    unfold C
    simp [show (3538944 * k + 2602367) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7807102) = 5308416 * k + 3903551 := by
    unfold C
    simp [show (10616832 * k + 7807102) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3903551) = 15925248 * k + 11710654 := by
    unfold C
    simp [show (5308416 * k + 3903551) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11710654) = 7962624 * k + 5855327 := by
    unfold C
    simp [show (15925248 * k + 11710654) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5855327) = 23887872 * k + 17565982 := by
    unfold C
    simp [show (7962624 * k + 5855327) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 17565982) = 11943936 * k + 8782991 := by
    unfold C
    simp [show (23887872 * k + 17565982) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8782991) = 35831808 * k + 26348974 := by
    unfold C
    simp [show (11943936 * k + 8782991) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 26348974) = 17915904 * k + 13174487 := by
    unfold C
    simp [show (35831808 * k + 26348974) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 13174487) = 53747712 * k + 39523462 := by
    unfold C
    simp [show (17915904 * k + 13174487) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 39523462) = 26873856 * k + 19761731 := by
    unfold C
    simp [show (53747712 * k + 39523462) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 19761731) = 80621568 * k + 59285194 := by
    unfold C
    simp [show (26873856 * k + 19761731) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 59285194) = 40310784 * k + 29642597 := by
    unfold C
    simp [show (80621568 * k + 59285194) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 29642597) = 120932352 * k + 88927792 := by
    unfold C
    simp [show (40310784 * k + 29642597) % 2 ≠ 0 by omega]
    omega
  have h20 : C (120932352 * k + 88927792) = 60466176 * k + 44463896 := by
    unfold C
    simp [show (120932352 * k + 88927792) % 2 = 0 by omega]
    omega
  have h21 : C (60466176 * k + 44463896) = 30233088 * k + 22231948 := by
    unfold C
    simp [show (60466176 * k + 44463896) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 22231948) = 15116544 * k + 11115974 := by
    unfold C
    simp [show (30233088 * k + 22231948) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11115974) = 7558272 * k + 5557987 := by
    unfold C
    simp [show (15116544 * k + 11115974) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5557987) = 22674816 * k + 16673962 := by
    unfold C
    simp [show (7558272 * k + 5557987) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 16673962) = 11337408 * k + 8336981 := by
    unfold C
    simp [show (22674816 * k + 16673962) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8336981) = 34012224 * k + 25010944 := by
    unfold C
    simp [show (11337408 * k + 8336981) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 25010944) = 17006112 * k + 12505472 := by
    unfold C
    simp [show (34012224 * k + 25010944) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 12505472) = 8503056 * k + 6252736 := by
    unfold C
    simp [show (17006112 * k + 12505472) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6252736) = 4251528 * k + 3126368 := by
    unfold C
    simp [show (8503056 * k + 6252736) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3126368) = 2125764 * k + 1563184 := by
    unfold C
    simp [show (4251528 * k + 3126368) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1563184) = 1062882 * k + 781592 := by
    unfold C
    simp [show (2125764 * k + 1563184) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 781592) = 531441 * k + 390796 := by
    unfold C
    simp [show (1062882 * k + 781592) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 771071) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 771071)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_772007 : ∀ k : Nat,
    iterate (1048576 * k + 772007) 32 = 531441 * k + 391271 ∧
      531441 * k + 391271 < 1048576 * k + 772007 := by
  intro k
  have h1 : C (1048576 * k + 772007) = 3145728 * k + 2316022 := by
    unfold C
    simp [show (1048576 * k + 772007) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2316022) = 1572864 * k + 1158011 := by
    unfold C
    simp [show (3145728 * k + 2316022) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1158011) = 4718592 * k + 3474034 := by
    unfold C
    simp [show (1572864 * k + 1158011) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3474034) = 2359296 * k + 1737017 := by
    unfold C
    simp [show (4718592 * k + 3474034) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1737017) = 7077888 * k + 5211052 := by
    unfold C
    simp [show (2359296 * k + 1737017) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5211052) = 3538944 * k + 2605526 := by
    unfold C
    simp [show (7077888 * k + 5211052) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2605526) = 1769472 * k + 1302763 := by
    unfold C
    simp [show (3538944 * k + 2605526) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1302763) = 5308416 * k + 3908290 := by
    unfold C
    simp [show (1769472 * k + 1302763) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3908290) = 2654208 * k + 1954145 := by
    unfold C
    simp [show (5308416 * k + 3908290) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1954145) = 7962624 * k + 5862436 := by
    unfold C
    simp [show (2654208 * k + 1954145) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5862436) = 3981312 * k + 2931218 := by
    unfold C
    simp [show (7962624 * k + 5862436) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2931218) = 1990656 * k + 1465609 := by
    unfold C
    simp [show (3981312 * k + 2931218) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1465609) = 5971968 * k + 4396828 := by
    unfold C
    simp [show (1990656 * k + 1465609) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4396828) = 2985984 * k + 2198414 := by
    unfold C
    simp [show (5971968 * k + 4396828) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2198414) = 1492992 * k + 1099207 := by
    unfold C
    simp [show (2985984 * k + 2198414) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1099207) = 4478976 * k + 3297622 := by
    unfold C
    simp [show (1492992 * k + 1099207) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3297622) = 2239488 * k + 1648811 := by
    unfold C
    simp [show (4478976 * k + 3297622) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1648811) = 6718464 * k + 4946434 := by
    unfold C
    simp [show (2239488 * k + 1648811) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4946434) = 3359232 * k + 2473217 := by
    unfold C
    simp [show (6718464 * k + 4946434) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2473217) = 10077696 * k + 7419652 := by
    unfold C
    simp [show (3359232 * k + 2473217) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7419652) = 5038848 * k + 3709826 := by
    unfold C
    simp [show (10077696 * k + 7419652) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3709826) = 2519424 * k + 1854913 := by
    unfold C
    simp [show (5038848 * k + 3709826) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1854913) = 7558272 * k + 5564740 := by
    unfold C
    simp [show (2519424 * k + 1854913) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5564740) = 3779136 * k + 2782370 := by
    unfold C
    simp [show (7558272 * k + 5564740) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2782370) = 1889568 * k + 1391185 := by
    unfold C
    simp [show (3779136 * k + 2782370) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1391185) = 5668704 * k + 4173556 := by
    unfold C
    simp [show (1889568 * k + 1391185) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4173556) = 2834352 * k + 2086778 := by
    unfold C
    simp [show (5668704 * k + 4173556) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2086778) = 1417176 * k + 1043389 := by
    unfold C
    simp [show (2834352 * k + 2086778) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1043389) = 4251528 * k + 3130168 := by
    unfold C
    simp [show (1417176 * k + 1043389) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3130168) = 2125764 * k + 1565084 := by
    unfold C
    simp [show (4251528 * k + 3130168) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1565084) = 1062882 * k + 782542 := by
    unfold C
    simp [show (2125764 * k + 1565084) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 782542) = 531441 * k + 391271 := by
    unfold C
    simp [show (1062882 * k + 782542) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 772007) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 772007)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard098
