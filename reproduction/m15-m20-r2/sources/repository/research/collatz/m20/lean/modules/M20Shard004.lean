import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard004

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_17215 : ∀ k : Nat,
    iterate (1048576 * k + 17215) 32 = 531441 * k + 8726 ∧
      531441 * k + 8726 < 1048576 * k + 17215 := by
  intro k
  have h1 : C (1048576 * k + 17215) = 3145728 * k + 51646 := by
    unfold C
    simp [show (1048576 * k + 17215) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 51646) = 1572864 * k + 25823 := by
    unfold C
    simp [show (3145728 * k + 51646) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 25823) = 4718592 * k + 77470 := by
    unfold C
    simp [show (1572864 * k + 25823) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 77470) = 2359296 * k + 38735 := by
    unfold C
    simp [show (4718592 * k + 77470) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 38735) = 7077888 * k + 116206 := by
    unfold C
    simp [show (2359296 * k + 38735) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 116206) = 3538944 * k + 58103 := by
    unfold C
    simp [show (7077888 * k + 116206) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 58103) = 10616832 * k + 174310 := by
    unfold C
    simp [show (3538944 * k + 58103) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 174310) = 5308416 * k + 87155 := by
    unfold C
    simp [show (10616832 * k + 174310) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 87155) = 15925248 * k + 261466 := by
    unfold C
    simp [show (5308416 * k + 87155) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 261466) = 7962624 * k + 130733 := by
    unfold C
    simp [show (15925248 * k + 261466) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 130733) = 23887872 * k + 392200 := by
    unfold C
    simp [show (7962624 * k + 130733) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 392200) = 11943936 * k + 196100 := by
    unfold C
    simp [show (23887872 * k + 392200) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 196100) = 5971968 * k + 98050 := by
    unfold C
    simp [show (11943936 * k + 196100) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 98050) = 2985984 * k + 49025 := by
    unfold C
    simp [show (5971968 * k + 98050) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 49025) = 8957952 * k + 147076 := by
    unfold C
    simp [show (2985984 * k + 49025) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 147076) = 4478976 * k + 73538 := by
    unfold C
    simp [show (8957952 * k + 147076) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 73538) = 2239488 * k + 36769 := by
    unfold C
    simp [show (4478976 * k + 73538) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 36769) = 6718464 * k + 110308 := by
    unfold C
    simp [show (2239488 * k + 36769) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 110308) = 3359232 * k + 55154 := by
    unfold C
    simp [show (6718464 * k + 110308) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 55154) = 1679616 * k + 27577 := by
    unfold C
    simp [show (3359232 * k + 55154) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 27577) = 5038848 * k + 82732 := by
    unfold C
    simp [show (1679616 * k + 27577) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 82732) = 2519424 * k + 41366 := by
    unfold C
    simp [show (5038848 * k + 82732) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 41366) = 1259712 * k + 20683 := by
    unfold C
    simp [show (2519424 * k + 41366) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 20683) = 3779136 * k + 62050 := by
    unfold C
    simp [show (1259712 * k + 20683) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 62050) = 1889568 * k + 31025 := by
    unfold C
    simp [show (3779136 * k + 62050) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 31025) = 5668704 * k + 93076 := by
    unfold C
    simp [show (1889568 * k + 31025) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 93076) = 2834352 * k + 46538 := by
    unfold C
    simp [show (5668704 * k + 93076) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 46538) = 1417176 * k + 23269 := by
    unfold C
    simp [show (2834352 * k + 46538) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 23269) = 4251528 * k + 69808 := by
    unfold C
    simp [show (1417176 * k + 23269) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 69808) = 2125764 * k + 34904 := by
    unfold C
    simp [show (4251528 * k + 69808) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 34904) = 1062882 * k + 17452 := by
    unfold C
    simp [show (2125764 * k + 34904) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 17452) = 531441 * k + 8726 := by
    unfold C
    simp [show (1062882 * k + 17452) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 17215) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 17215)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_17375 : ∀ k : Nat,
    iterate (1048576 * k + 17375) 32 = 531441 * k + 8807 ∧
      531441 * k + 8807 < 1048576 * k + 17375 := by
  intro k
  have h1 : C (1048576 * k + 17375) = 3145728 * k + 52126 := by
    unfold C
    simp [show (1048576 * k + 17375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 52126) = 1572864 * k + 26063 := by
    unfold C
    simp [show (3145728 * k + 52126) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 26063) = 4718592 * k + 78190 := by
    unfold C
    simp [show (1572864 * k + 26063) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 78190) = 2359296 * k + 39095 := by
    unfold C
    simp [show (4718592 * k + 78190) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 39095) = 7077888 * k + 117286 := by
    unfold C
    simp [show (2359296 * k + 39095) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 117286) = 3538944 * k + 58643 := by
    unfold C
    simp [show (7077888 * k + 117286) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 58643) = 10616832 * k + 175930 := by
    unfold C
    simp [show (3538944 * k + 58643) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 175930) = 5308416 * k + 87965 := by
    unfold C
    simp [show (10616832 * k + 175930) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 87965) = 15925248 * k + 263896 := by
    unfold C
    simp [show (5308416 * k + 87965) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 263896) = 7962624 * k + 131948 := by
    unfold C
    simp [show (15925248 * k + 263896) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 131948) = 3981312 * k + 65974 := by
    unfold C
    simp [show (7962624 * k + 131948) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 65974) = 1990656 * k + 32987 := by
    unfold C
    simp [show (3981312 * k + 65974) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 32987) = 5971968 * k + 98962 := by
    unfold C
    simp [show (1990656 * k + 32987) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 98962) = 2985984 * k + 49481 := by
    unfold C
    simp [show (5971968 * k + 98962) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 49481) = 8957952 * k + 148444 := by
    unfold C
    simp [show (2985984 * k + 49481) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 148444) = 4478976 * k + 74222 := by
    unfold C
    simp [show (8957952 * k + 148444) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 74222) = 2239488 * k + 37111 := by
    unfold C
    simp [show (4478976 * k + 74222) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 37111) = 6718464 * k + 111334 := by
    unfold C
    simp [show (2239488 * k + 37111) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 111334) = 3359232 * k + 55667 := by
    unfold C
    simp [show (6718464 * k + 111334) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 55667) = 10077696 * k + 167002 := by
    unfold C
    simp [show (3359232 * k + 55667) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 167002) = 5038848 * k + 83501 := by
    unfold C
    simp [show (10077696 * k + 167002) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 83501) = 15116544 * k + 250504 := by
    unfold C
    simp [show (5038848 * k + 83501) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 250504) = 7558272 * k + 125252 := by
    unfold C
    simp [show (15116544 * k + 250504) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 125252) = 3779136 * k + 62626 := by
    unfold C
    simp [show (7558272 * k + 125252) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 62626) = 1889568 * k + 31313 := by
    unfold C
    simp [show (3779136 * k + 62626) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 31313) = 5668704 * k + 93940 := by
    unfold C
    simp [show (1889568 * k + 31313) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 93940) = 2834352 * k + 46970 := by
    unfold C
    simp [show (5668704 * k + 93940) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 46970) = 1417176 * k + 23485 := by
    unfold C
    simp [show (2834352 * k + 46970) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 23485) = 4251528 * k + 70456 := by
    unfold C
    simp [show (1417176 * k + 23485) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 70456) = 2125764 * k + 35228 := by
    unfold C
    simp [show (4251528 * k + 70456) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 35228) = 1062882 * k + 17614 := by
    unfold C
    simp [show (2125764 * k + 35228) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 17614) = 531441 * k + 8807 := by
    unfold C
    simp [show (1062882 * k + 17614) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 17375) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 17375)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_17499 : ∀ k : Nat,
    iterate (1048576 * k + 17499) 32 = 531441 * k + 8870 ∧
      531441 * k + 8870 < 1048576 * k + 17499 := by
  intro k
  have h1 : C (1048576 * k + 17499) = 3145728 * k + 52498 := by
    unfold C
    simp [show (1048576 * k + 17499) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 52498) = 1572864 * k + 26249 := by
    unfold C
    simp [show (3145728 * k + 52498) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 26249) = 4718592 * k + 78748 := by
    unfold C
    simp [show (1572864 * k + 26249) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 78748) = 2359296 * k + 39374 := by
    unfold C
    simp [show (4718592 * k + 78748) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 39374) = 1179648 * k + 19687 := by
    unfold C
    simp [show (2359296 * k + 39374) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 19687) = 3538944 * k + 59062 := by
    unfold C
    simp [show (1179648 * k + 19687) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 59062) = 1769472 * k + 29531 := by
    unfold C
    simp [show (3538944 * k + 59062) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 29531) = 5308416 * k + 88594 := by
    unfold C
    simp [show (1769472 * k + 29531) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 88594) = 2654208 * k + 44297 := by
    unfold C
    simp [show (5308416 * k + 88594) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 44297) = 7962624 * k + 132892 := by
    unfold C
    simp [show (2654208 * k + 44297) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 132892) = 3981312 * k + 66446 := by
    unfold C
    simp [show (7962624 * k + 132892) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 66446) = 1990656 * k + 33223 := by
    unfold C
    simp [show (3981312 * k + 66446) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 33223) = 5971968 * k + 99670 := by
    unfold C
    simp [show (1990656 * k + 33223) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 99670) = 2985984 * k + 49835 := by
    unfold C
    simp [show (5971968 * k + 99670) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 49835) = 8957952 * k + 149506 := by
    unfold C
    simp [show (2985984 * k + 49835) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 149506) = 4478976 * k + 74753 := by
    unfold C
    simp [show (8957952 * k + 149506) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 74753) = 13436928 * k + 224260 := by
    unfold C
    simp [show (4478976 * k + 74753) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 224260) = 6718464 * k + 112130 := by
    unfold C
    simp [show (13436928 * k + 224260) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 112130) = 3359232 * k + 56065 := by
    unfold C
    simp [show (6718464 * k + 112130) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 56065) = 10077696 * k + 168196 := by
    unfold C
    simp [show (3359232 * k + 56065) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 168196) = 5038848 * k + 84098 := by
    unfold C
    simp [show (10077696 * k + 168196) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 84098) = 2519424 * k + 42049 := by
    unfold C
    simp [show (5038848 * k + 84098) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 42049) = 7558272 * k + 126148 := by
    unfold C
    simp [show (2519424 * k + 42049) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 126148) = 3779136 * k + 63074 := by
    unfold C
    simp [show (7558272 * k + 126148) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 63074) = 1889568 * k + 31537 := by
    unfold C
    simp [show (3779136 * k + 63074) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 31537) = 5668704 * k + 94612 := by
    unfold C
    simp [show (1889568 * k + 31537) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 94612) = 2834352 * k + 47306 := by
    unfold C
    simp [show (5668704 * k + 94612) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 47306) = 1417176 * k + 23653 := by
    unfold C
    simp [show (2834352 * k + 47306) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 23653) = 4251528 * k + 70960 := by
    unfold C
    simp [show (1417176 * k + 23653) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 70960) = 2125764 * k + 35480 := by
    unfold C
    simp [show (4251528 * k + 70960) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 35480) = 1062882 * k + 17740 := by
    unfold C
    simp [show (2125764 * k + 35480) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 17740) = 531441 * k + 8870 := by
    unfold C
    simp [show (1062882 * k + 17740) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 17499) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 17499)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_17535 : ∀ k : Nat,
    iterate (1048576 * k + 17535) 32 = 531441 * k + 8888 ∧
      531441 * k + 8888 < 1048576 * k + 17535 := by
  intro k
  have h1 : C (1048576 * k + 17535) = 3145728 * k + 52606 := by
    unfold C
    simp [show (1048576 * k + 17535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 52606) = 1572864 * k + 26303 := by
    unfold C
    simp [show (3145728 * k + 52606) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 26303) = 4718592 * k + 78910 := by
    unfold C
    simp [show (1572864 * k + 26303) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 78910) = 2359296 * k + 39455 := by
    unfold C
    simp [show (4718592 * k + 78910) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 39455) = 7077888 * k + 118366 := by
    unfold C
    simp [show (2359296 * k + 39455) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 118366) = 3538944 * k + 59183 := by
    unfold C
    simp [show (7077888 * k + 118366) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 59183) = 10616832 * k + 177550 := by
    unfold C
    simp [show (3538944 * k + 59183) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 177550) = 5308416 * k + 88775 := by
    unfold C
    simp [show (10616832 * k + 177550) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 88775) = 15925248 * k + 266326 := by
    unfold C
    simp [show (5308416 * k + 88775) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 266326) = 7962624 * k + 133163 := by
    unfold C
    simp [show (15925248 * k + 266326) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 133163) = 23887872 * k + 399490 := by
    unfold C
    simp [show (7962624 * k + 133163) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 399490) = 11943936 * k + 199745 := by
    unfold C
    simp [show (23887872 * k + 399490) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 199745) = 35831808 * k + 599236 := by
    unfold C
    simp [show (11943936 * k + 199745) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 599236) = 17915904 * k + 299618 := by
    unfold C
    simp [show (35831808 * k + 599236) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 299618) = 8957952 * k + 149809 := by
    unfold C
    simp [show (17915904 * k + 299618) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 149809) = 26873856 * k + 449428 := by
    unfold C
    simp [show (8957952 * k + 149809) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 449428) = 13436928 * k + 224714 := by
    unfold C
    simp [show (26873856 * k + 449428) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 224714) = 6718464 * k + 112357 := by
    unfold C
    simp [show (13436928 * k + 224714) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 112357) = 20155392 * k + 337072 := by
    unfold C
    simp [show (6718464 * k + 112357) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 337072) = 10077696 * k + 168536 := by
    unfold C
    simp [show (20155392 * k + 337072) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 168536) = 5038848 * k + 84268 := by
    unfold C
    simp [show (10077696 * k + 168536) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 84268) = 2519424 * k + 42134 := by
    unfold C
    simp [show (5038848 * k + 84268) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 42134) = 1259712 * k + 21067 := by
    unfold C
    simp [show (2519424 * k + 42134) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 21067) = 3779136 * k + 63202 := by
    unfold C
    simp [show (1259712 * k + 21067) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 63202) = 1889568 * k + 31601 := by
    unfold C
    simp [show (3779136 * k + 63202) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 31601) = 5668704 * k + 94804 := by
    unfold C
    simp [show (1889568 * k + 31601) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 94804) = 2834352 * k + 47402 := by
    unfold C
    simp [show (5668704 * k + 94804) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 47402) = 1417176 * k + 23701 := by
    unfold C
    simp [show (2834352 * k + 47402) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 23701) = 4251528 * k + 71104 := by
    unfold C
    simp [show (1417176 * k + 23701) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 71104) = 2125764 * k + 35552 := by
    unfold C
    simp [show (4251528 * k + 71104) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 35552) = 1062882 * k + 17776 := by
    unfold C
    simp [show (2125764 * k + 35552) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 17776) = 531441 * k + 8888 := by
    unfold C
    simp [show (1062882 * k + 17776) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 17535) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 17535)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_18127 : ∀ k : Nat,
    iterate (1048576 * k + 18127) 32 = 531441 * k + 9188 ∧
      531441 * k + 9188 < 1048576 * k + 18127 := by
  intro k
  have h1 : C (1048576 * k + 18127) = 3145728 * k + 54382 := by
    unfold C
    simp [show (1048576 * k + 18127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 54382) = 1572864 * k + 27191 := by
    unfold C
    simp [show (3145728 * k + 54382) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 27191) = 4718592 * k + 81574 := by
    unfold C
    simp [show (1572864 * k + 27191) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 81574) = 2359296 * k + 40787 := by
    unfold C
    simp [show (4718592 * k + 81574) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 40787) = 7077888 * k + 122362 := by
    unfold C
    simp [show (2359296 * k + 40787) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 122362) = 3538944 * k + 61181 := by
    unfold C
    simp [show (7077888 * k + 122362) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 61181) = 10616832 * k + 183544 := by
    unfold C
    simp [show (3538944 * k + 61181) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 183544) = 5308416 * k + 91772 := by
    unfold C
    simp [show (10616832 * k + 183544) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 91772) = 2654208 * k + 45886 := by
    unfold C
    simp [show (5308416 * k + 91772) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 45886) = 1327104 * k + 22943 := by
    unfold C
    simp [show (2654208 * k + 45886) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 22943) = 3981312 * k + 68830 := by
    unfold C
    simp [show (1327104 * k + 22943) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 68830) = 1990656 * k + 34415 := by
    unfold C
    simp [show (3981312 * k + 68830) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 34415) = 5971968 * k + 103246 := by
    unfold C
    simp [show (1990656 * k + 34415) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 103246) = 2985984 * k + 51623 := by
    unfold C
    simp [show (5971968 * k + 103246) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 51623) = 8957952 * k + 154870 := by
    unfold C
    simp [show (2985984 * k + 51623) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 154870) = 4478976 * k + 77435 := by
    unfold C
    simp [show (8957952 * k + 154870) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 77435) = 13436928 * k + 232306 := by
    unfold C
    simp [show (4478976 * k + 77435) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 232306) = 6718464 * k + 116153 := by
    unfold C
    simp [show (13436928 * k + 232306) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 116153) = 20155392 * k + 348460 := by
    unfold C
    simp [show (6718464 * k + 116153) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 348460) = 10077696 * k + 174230 := by
    unfold C
    simp [show (20155392 * k + 348460) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 174230) = 5038848 * k + 87115 := by
    unfold C
    simp [show (10077696 * k + 174230) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 87115) = 15116544 * k + 261346 := by
    unfold C
    simp [show (5038848 * k + 87115) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 261346) = 7558272 * k + 130673 := by
    unfold C
    simp [show (15116544 * k + 261346) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 130673) = 22674816 * k + 392020 := by
    unfold C
    simp [show (7558272 * k + 130673) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 392020) = 11337408 * k + 196010 := by
    unfold C
    simp [show (22674816 * k + 392020) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 196010) = 5668704 * k + 98005 := by
    unfold C
    simp [show (11337408 * k + 196010) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 98005) = 17006112 * k + 294016 := by
    unfold C
    simp [show (5668704 * k + 98005) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 294016) = 8503056 * k + 147008 := by
    unfold C
    simp [show (17006112 * k + 294016) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 147008) = 4251528 * k + 73504 := by
    unfold C
    simp [show (8503056 * k + 147008) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 73504) = 2125764 * k + 36752 := by
    unfold C
    simp [show (4251528 * k + 73504) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 36752) = 1062882 * k + 18376 := by
    unfold C
    simp [show (2125764 * k + 36752) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 18376) = 531441 * k + 9188 := by
    unfold C
    simp [show (1062882 * k + 18376) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 18127) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 18127)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_18303 : ∀ k : Nat,
    iterate (1048576 * k + 18303) 32 = 531441 * k + 9277 ∧
      531441 * k + 9277 < 1048576 * k + 18303 := by
  intro k
  have h1 : C (1048576 * k + 18303) = 3145728 * k + 54910 := by
    unfold C
    simp [show (1048576 * k + 18303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 54910) = 1572864 * k + 27455 := by
    unfold C
    simp [show (3145728 * k + 54910) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 27455) = 4718592 * k + 82366 := by
    unfold C
    simp [show (1572864 * k + 27455) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 82366) = 2359296 * k + 41183 := by
    unfold C
    simp [show (4718592 * k + 82366) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 41183) = 7077888 * k + 123550 := by
    unfold C
    simp [show (2359296 * k + 41183) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 123550) = 3538944 * k + 61775 := by
    unfold C
    simp [show (7077888 * k + 123550) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 61775) = 10616832 * k + 185326 := by
    unfold C
    simp [show (3538944 * k + 61775) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 185326) = 5308416 * k + 92663 := by
    unfold C
    simp [show (10616832 * k + 185326) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 92663) = 15925248 * k + 277990 := by
    unfold C
    simp [show (5308416 * k + 92663) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 277990) = 7962624 * k + 138995 := by
    unfold C
    simp [show (15925248 * k + 277990) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 138995) = 23887872 * k + 416986 := by
    unfold C
    simp [show (7962624 * k + 138995) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 416986) = 11943936 * k + 208493 := by
    unfold C
    simp [show (23887872 * k + 416986) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 208493) = 35831808 * k + 625480 := by
    unfold C
    simp [show (11943936 * k + 208493) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 625480) = 17915904 * k + 312740 := by
    unfold C
    simp [show (35831808 * k + 625480) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 312740) = 8957952 * k + 156370 := by
    unfold C
    simp [show (17915904 * k + 312740) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 156370) = 4478976 * k + 78185 := by
    unfold C
    simp [show (8957952 * k + 156370) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 78185) = 13436928 * k + 234556 := by
    unfold C
    simp [show (4478976 * k + 78185) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 234556) = 6718464 * k + 117278 := by
    unfold C
    simp [show (13436928 * k + 234556) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 117278) = 3359232 * k + 58639 := by
    unfold C
    simp [show (6718464 * k + 117278) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 58639) = 10077696 * k + 175918 := by
    unfold C
    simp [show (3359232 * k + 58639) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 175918) = 5038848 * k + 87959 := by
    unfold C
    simp [show (10077696 * k + 175918) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 87959) = 15116544 * k + 263878 := by
    unfold C
    simp [show (5038848 * k + 87959) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 263878) = 7558272 * k + 131939 := by
    unfold C
    simp [show (15116544 * k + 263878) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 131939) = 22674816 * k + 395818 := by
    unfold C
    simp [show (7558272 * k + 131939) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 395818) = 11337408 * k + 197909 := by
    unfold C
    simp [show (22674816 * k + 395818) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 197909) = 34012224 * k + 593728 := by
    unfold C
    simp [show (11337408 * k + 197909) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 593728) = 17006112 * k + 296864 := by
    unfold C
    simp [show (34012224 * k + 593728) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 296864) = 8503056 * k + 148432 := by
    unfold C
    simp [show (17006112 * k + 296864) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 148432) = 4251528 * k + 74216 := by
    unfold C
    simp [show (8503056 * k + 148432) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 74216) = 2125764 * k + 37108 := by
    unfold C
    simp [show (4251528 * k + 74216) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 37108) = 1062882 * k + 18554 := by
    unfold C
    simp [show (2125764 * k + 37108) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 18554) = 531441 * k + 9277 := by
    unfold C
    simp [show (1062882 * k + 18554) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 18303) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 18303)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_18503 : ∀ k : Nat,
    iterate (1048576 * k + 18503) 32 = 531441 * k + 9379 ∧
      531441 * k + 9379 < 1048576 * k + 18503 := by
  intro k
  have h1 : C (1048576 * k + 18503) = 3145728 * k + 55510 := by
    unfold C
    simp [show (1048576 * k + 18503) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 55510) = 1572864 * k + 27755 := by
    unfold C
    simp [show (3145728 * k + 55510) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 27755) = 4718592 * k + 83266 := by
    unfold C
    simp [show (1572864 * k + 27755) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 83266) = 2359296 * k + 41633 := by
    unfold C
    simp [show (4718592 * k + 83266) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 41633) = 7077888 * k + 124900 := by
    unfold C
    simp [show (2359296 * k + 41633) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 124900) = 3538944 * k + 62450 := by
    unfold C
    simp [show (7077888 * k + 124900) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 62450) = 1769472 * k + 31225 := by
    unfold C
    simp [show (3538944 * k + 62450) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 31225) = 5308416 * k + 93676 := by
    unfold C
    simp [show (1769472 * k + 31225) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 93676) = 2654208 * k + 46838 := by
    unfold C
    simp [show (5308416 * k + 93676) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 46838) = 1327104 * k + 23419 := by
    unfold C
    simp [show (2654208 * k + 46838) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 23419) = 3981312 * k + 70258 := by
    unfold C
    simp [show (1327104 * k + 23419) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 70258) = 1990656 * k + 35129 := by
    unfold C
    simp [show (3981312 * k + 70258) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 35129) = 5971968 * k + 105388 := by
    unfold C
    simp [show (1990656 * k + 35129) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 105388) = 2985984 * k + 52694 := by
    unfold C
    simp [show (5971968 * k + 105388) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 52694) = 1492992 * k + 26347 := by
    unfold C
    simp [show (2985984 * k + 52694) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 26347) = 4478976 * k + 79042 := by
    unfold C
    simp [show (1492992 * k + 26347) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 79042) = 2239488 * k + 39521 := by
    unfold C
    simp [show (4478976 * k + 79042) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 39521) = 6718464 * k + 118564 := by
    unfold C
    simp [show (2239488 * k + 39521) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 118564) = 3359232 * k + 59282 := by
    unfold C
    simp [show (6718464 * k + 118564) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 59282) = 1679616 * k + 29641 := by
    unfold C
    simp [show (3359232 * k + 59282) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 29641) = 5038848 * k + 88924 := by
    unfold C
    simp [show (1679616 * k + 29641) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 88924) = 2519424 * k + 44462 := by
    unfold C
    simp [show (5038848 * k + 88924) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 44462) = 1259712 * k + 22231 := by
    unfold C
    simp [show (2519424 * k + 44462) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 22231) = 3779136 * k + 66694 := by
    unfold C
    simp [show (1259712 * k + 22231) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 66694) = 1889568 * k + 33347 := by
    unfold C
    simp [show (3779136 * k + 66694) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 33347) = 5668704 * k + 100042 := by
    unfold C
    simp [show (1889568 * k + 33347) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 100042) = 2834352 * k + 50021 := by
    unfold C
    simp [show (5668704 * k + 100042) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 50021) = 8503056 * k + 150064 := by
    unfold C
    simp [show (2834352 * k + 50021) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 150064) = 4251528 * k + 75032 := by
    unfold C
    simp [show (8503056 * k + 150064) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 75032) = 2125764 * k + 37516 := by
    unfold C
    simp [show (4251528 * k + 75032) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 37516) = 1062882 * k + 18758 := by
    unfold C
    simp [show (2125764 * k + 37516) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 18758) = 531441 * k + 9379 := by
    unfold C
    simp [show (1062882 * k + 18758) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 18503) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 18503)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_18663 : ∀ k : Nat,
    iterate (1048576 * k + 18663) 32 = 531441 * k + 9460 ∧
      531441 * k + 9460 < 1048576 * k + 18663 := by
  intro k
  have h1 : C (1048576 * k + 18663) = 3145728 * k + 55990 := by
    unfold C
    simp [show (1048576 * k + 18663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 55990) = 1572864 * k + 27995 := by
    unfold C
    simp [show (3145728 * k + 55990) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 27995) = 4718592 * k + 83986 := by
    unfold C
    simp [show (1572864 * k + 27995) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 83986) = 2359296 * k + 41993 := by
    unfold C
    simp [show (4718592 * k + 83986) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 41993) = 7077888 * k + 125980 := by
    unfold C
    simp [show (2359296 * k + 41993) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 125980) = 3538944 * k + 62990 := by
    unfold C
    simp [show (7077888 * k + 125980) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 62990) = 1769472 * k + 31495 := by
    unfold C
    simp [show (3538944 * k + 62990) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 31495) = 5308416 * k + 94486 := by
    unfold C
    simp [show (1769472 * k + 31495) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 94486) = 2654208 * k + 47243 := by
    unfold C
    simp [show (5308416 * k + 94486) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 47243) = 7962624 * k + 141730 := by
    unfold C
    simp [show (2654208 * k + 47243) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 141730) = 3981312 * k + 70865 := by
    unfold C
    simp [show (7962624 * k + 141730) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 70865) = 11943936 * k + 212596 := by
    unfold C
    simp [show (3981312 * k + 70865) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 212596) = 5971968 * k + 106298 := by
    unfold C
    simp [show (11943936 * k + 212596) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 106298) = 2985984 * k + 53149 := by
    unfold C
    simp [show (5971968 * k + 106298) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 53149) = 8957952 * k + 159448 := by
    unfold C
    simp [show (2985984 * k + 53149) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 159448) = 4478976 * k + 79724 := by
    unfold C
    simp [show (8957952 * k + 159448) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 79724) = 2239488 * k + 39862 := by
    unfold C
    simp [show (4478976 * k + 79724) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 39862) = 1119744 * k + 19931 := by
    unfold C
    simp [show (2239488 * k + 39862) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 19931) = 3359232 * k + 59794 := by
    unfold C
    simp [show (1119744 * k + 19931) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 59794) = 1679616 * k + 29897 := by
    unfold C
    simp [show (3359232 * k + 59794) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 29897) = 5038848 * k + 89692 := by
    unfold C
    simp [show (1679616 * k + 29897) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 89692) = 2519424 * k + 44846 := by
    unfold C
    simp [show (5038848 * k + 89692) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 44846) = 1259712 * k + 22423 := by
    unfold C
    simp [show (2519424 * k + 44846) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 22423) = 3779136 * k + 67270 := by
    unfold C
    simp [show (1259712 * k + 22423) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 67270) = 1889568 * k + 33635 := by
    unfold C
    simp [show (3779136 * k + 67270) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 33635) = 5668704 * k + 100906 := by
    unfold C
    simp [show (1889568 * k + 33635) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 100906) = 2834352 * k + 50453 := by
    unfold C
    simp [show (5668704 * k + 100906) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 50453) = 8503056 * k + 151360 := by
    unfold C
    simp [show (2834352 * k + 50453) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 151360) = 4251528 * k + 75680 := by
    unfold C
    simp [show (8503056 * k + 151360) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 75680) = 2125764 * k + 37840 := by
    unfold C
    simp [show (4251528 * k + 75680) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 37840) = 1062882 * k + 18920 := by
    unfold C
    simp [show (2125764 * k + 37840) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 18920) = 531441 * k + 9460 := by
    unfold C
    simp [show (1062882 * k + 18920) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 18663) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 18663)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_18879 : ∀ k : Nat,
    iterate (1048576 * k + 18879) 32 = 531441 * k + 9569 ∧
      531441 * k + 9569 < 1048576 * k + 18879 := by
  intro k
  have h1 : C (1048576 * k + 18879) = 3145728 * k + 56638 := by
    unfold C
    simp [show (1048576 * k + 18879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 56638) = 1572864 * k + 28319 := by
    unfold C
    simp [show (3145728 * k + 56638) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 28319) = 4718592 * k + 84958 := by
    unfold C
    simp [show (1572864 * k + 28319) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 84958) = 2359296 * k + 42479 := by
    unfold C
    simp [show (4718592 * k + 84958) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 42479) = 7077888 * k + 127438 := by
    unfold C
    simp [show (2359296 * k + 42479) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 127438) = 3538944 * k + 63719 := by
    unfold C
    simp [show (7077888 * k + 127438) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 63719) = 10616832 * k + 191158 := by
    unfold C
    simp [show (3538944 * k + 63719) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 191158) = 5308416 * k + 95579 := by
    unfold C
    simp [show (10616832 * k + 191158) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 95579) = 15925248 * k + 286738 := by
    unfold C
    simp [show (5308416 * k + 95579) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 286738) = 7962624 * k + 143369 := by
    unfold C
    simp [show (15925248 * k + 286738) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 143369) = 23887872 * k + 430108 := by
    unfold C
    simp [show (7962624 * k + 143369) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 430108) = 11943936 * k + 215054 := by
    unfold C
    simp [show (23887872 * k + 430108) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 215054) = 5971968 * k + 107527 := by
    unfold C
    simp [show (11943936 * k + 215054) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 107527) = 17915904 * k + 322582 := by
    unfold C
    simp [show (5971968 * k + 107527) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 322582) = 8957952 * k + 161291 := by
    unfold C
    simp [show (17915904 * k + 322582) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 161291) = 26873856 * k + 483874 := by
    unfold C
    simp [show (8957952 * k + 161291) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 483874) = 13436928 * k + 241937 := by
    unfold C
    simp [show (26873856 * k + 483874) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 241937) = 40310784 * k + 725812 := by
    unfold C
    simp [show (13436928 * k + 241937) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 725812) = 20155392 * k + 362906 := by
    unfold C
    simp [show (40310784 * k + 725812) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 362906) = 10077696 * k + 181453 := by
    unfold C
    simp [show (20155392 * k + 362906) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 181453) = 30233088 * k + 544360 := by
    unfold C
    simp [show (10077696 * k + 181453) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 544360) = 15116544 * k + 272180 := by
    unfold C
    simp [show (30233088 * k + 544360) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 272180) = 7558272 * k + 136090 := by
    unfold C
    simp [show (15116544 * k + 272180) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 136090) = 3779136 * k + 68045 := by
    unfold C
    simp [show (7558272 * k + 136090) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 68045) = 11337408 * k + 204136 := by
    unfold C
    simp [show (3779136 * k + 68045) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 204136) = 5668704 * k + 102068 := by
    unfold C
    simp [show (11337408 * k + 204136) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 102068) = 2834352 * k + 51034 := by
    unfold C
    simp [show (5668704 * k + 102068) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 51034) = 1417176 * k + 25517 := by
    unfold C
    simp [show (2834352 * k + 51034) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 25517) = 4251528 * k + 76552 := by
    unfold C
    simp [show (1417176 * k + 25517) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 76552) = 2125764 * k + 38276 := by
    unfold C
    simp [show (4251528 * k + 76552) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 38276) = 1062882 * k + 19138 := by
    unfold C
    simp [show (2125764 * k + 38276) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 19138) = 531441 * k + 9569 := by
    unfold C
    simp [show (1062882 * k + 19138) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 18879) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 18879)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_19303 : ∀ k : Nat,
    iterate (1048576 * k + 19303) 32 = 531441 * k + 9784 ∧
      531441 * k + 9784 < 1048576 * k + 19303 := by
  intro k
  have h1 : C (1048576 * k + 19303) = 3145728 * k + 57910 := by
    unfold C
    simp [show (1048576 * k + 19303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 57910) = 1572864 * k + 28955 := by
    unfold C
    simp [show (3145728 * k + 57910) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 28955) = 4718592 * k + 86866 := by
    unfold C
    simp [show (1572864 * k + 28955) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 86866) = 2359296 * k + 43433 := by
    unfold C
    simp [show (4718592 * k + 86866) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 43433) = 7077888 * k + 130300 := by
    unfold C
    simp [show (2359296 * k + 43433) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 130300) = 3538944 * k + 65150 := by
    unfold C
    simp [show (7077888 * k + 130300) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 65150) = 1769472 * k + 32575 := by
    unfold C
    simp [show (3538944 * k + 65150) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 32575) = 5308416 * k + 97726 := by
    unfold C
    simp [show (1769472 * k + 32575) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 97726) = 2654208 * k + 48863 := by
    unfold C
    simp [show (5308416 * k + 97726) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 48863) = 7962624 * k + 146590 := by
    unfold C
    simp [show (2654208 * k + 48863) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 146590) = 3981312 * k + 73295 := by
    unfold C
    simp [show (7962624 * k + 146590) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 73295) = 11943936 * k + 219886 := by
    unfold C
    simp [show (3981312 * k + 73295) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 219886) = 5971968 * k + 109943 := by
    unfold C
    simp [show (11943936 * k + 219886) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 109943) = 17915904 * k + 329830 := by
    unfold C
    simp [show (5971968 * k + 109943) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 329830) = 8957952 * k + 164915 := by
    unfold C
    simp [show (17915904 * k + 329830) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 164915) = 26873856 * k + 494746 := by
    unfold C
    simp [show (8957952 * k + 164915) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 494746) = 13436928 * k + 247373 := by
    unfold C
    simp [show (26873856 * k + 494746) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 247373) = 40310784 * k + 742120 := by
    unfold C
    simp [show (13436928 * k + 247373) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 742120) = 20155392 * k + 371060 := by
    unfold C
    simp [show (40310784 * k + 742120) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 371060) = 10077696 * k + 185530 := by
    unfold C
    simp [show (20155392 * k + 371060) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 185530) = 5038848 * k + 92765 := by
    unfold C
    simp [show (10077696 * k + 185530) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 92765) = 15116544 * k + 278296 := by
    unfold C
    simp [show (5038848 * k + 92765) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 278296) = 7558272 * k + 139148 := by
    unfold C
    simp [show (15116544 * k + 278296) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 139148) = 3779136 * k + 69574 := by
    unfold C
    simp [show (7558272 * k + 139148) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 69574) = 1889568 * k + 34787 := by
    unfold C
    simp [show (3779136 * k + 69574) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 34787) = 5668704 * k + 104362 := by
    unfold C
    simp [show (1889568 * k + 34787) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 104362) = 2834352 * k + 52181 := by
    unfold C
    simp [show (5668704 * k + 104362) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 52181) = 8503056 * k + 156544 := by
    unfold C
    simp [show (2834352 * k + 52181) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 156544) = 4251528 * k + 78272 := by
    unfold C
    simp [show (8503056 * k + 156544) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 78272) = 2125764 * k + 39136 := by
    unfold C
    simp [show (4251528 * k + 78272) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 39136) = 1062882 * k + 19568 := by
    unfold C
    simp [show (2125764 * k + 39136) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 19568) = 531441 * k + 9784 := by
    unfold C
    simp [show (1062882 * k + 19568) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 19303) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 19303)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_19995 : ∀ k : Nat,
    iterate (1048576 * k + 19995) 32 = 531441 * k + 10135 ∧
      531441 * k + 10135 < 1048576 * k + 19995 := by
  intro k
  have h1 : C (1048576 * k + 19995) = 3145728 * k + 59986 := by
    unfold C
    simp [show (1048576 * k + 19995) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 59986) = 1572864 * k + 29993 := by
    unfold C
    simp [show (3145728 * k + 59986) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 29993) = 4718592 * k + 89980 := by
    unfold C
    simp [show (1572864 * k + 29993) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 89980) = 2359296 * k + 44990 := by
    unfold C
    simp [show (4718592 * k + 89980) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 44990) = 1179648 * k + 22495 := by
    unfold C
    simp [show (2359296 * k + 44990) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 22495) = 3538944 * k + 67486 := by
    unfold C
    simp [show (1179648 * k + 22495) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 67486) = 1769472 * k + 33743 := by
    unfold C
    simp [show (3538944 * k + 67486) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 33743) = 5308416 * k + 101230 := by
    unfold C
    simp [show (1769472 * k + 33743) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 101230) = 2654208 * k + 50615 := by
    unfold C
    simp [show (5308416 * k + 101230) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 50615) = 7962624 * k + 151846 := by
    unfold C
    simp [show (2654208 * k + 50615) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 151846) = 3981312 * k + 75923 := by
    unfold C
    simp [show (7962624 * k + 151846) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 75923) = 11943936 * k + 227770 := by
    unfold C
    simp [show (3981312 * k + 75923) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 227770) = 5971968 * k + 113885 := by
    unfold C
    simp [show (11943936 * k + 227770) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 113885) = 17915904 * k + 341656 := by
    unfold C
    simp [show (5971968 * k + 113885) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 341656) = 8957952 * k + 170828 := by
    unfold C
    simp [show (17915904 * k + 341656) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 170828) = 4478976 * k + 85414 := by
    unfold C
    simp [show (8957952 * k + 170828) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 85414) = 2239488 * k + 42707 := by
    unfold C
    simp [show (4478976 * k + 85414) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 42707) = 6718464 * k + 128122 := by
    unfold C
    simp [show (2239488 * k + 42707) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 128122) = 3359232 * k + 64061 := by
    unfold C
    simp [show (6718464 * k + 128122) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 64061) = 10077696 * k + 192184 := by
    unfold C
    simp [show (3359232 * k + 64061) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 192184) = 5038848 * k + 96092 := by
    unfold C
    simp [show (10077696 * k + 192184) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 96092) = 2519424 * k + 48046 := by
    unfold C
    simp [show (5038848 * k + 96092) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 48046) = 1259712 * k + 24023 := by
    unfold C
    simp [show (2519424 * k + 48046) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 24023) = 3779136 * k + 72070 := by
    unfold C
    simp [show (1259712 * k + 24023) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 72070) = 1889568 * k + 36035 := by
    unfold C
    simp [show (3779136 * k + 72070) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 36035) = 5668704 * k + 108106 := by
    unfold C
    simp [show (1889568 * k + 36035) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 108106) = 2834352 * k + 54053 := by
    unfold C
    simp [show (5668704 * k + 108106) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 54053) = 8503056 * k + 162160 := by
    unfold C
    simp [show (2834352 * k + 54053) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 162160) = 4251528 * k + 81080 := by
    unfold C
    simp [show (8503056 * k + 162160) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 81080) = 2125764 * k + 40540 := by
    unfold C
    simp [show (4251528 * k + 81080) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 40540) = 1062882 * k + 20270 := by
    unfold C
    simp [show (2125764 * k + 40540) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 20270) = 531441 * k + 10135 := by
    unfold C
    simp [show (1062882 * k + 20270) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 19995) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 19995)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_20223 : ∀ k : Nat,
    iterate (1048576 * k + 20223) 32 = 531441 * k + 10250 ∧
      531441 * k + 10250 < 1048576 * k + 20223 := by
  intro k
  have h1 : C (1048576 * k + 20223) = 3145728 * k + 60670 := by
    unfold C
    simp [show (1048576 * k + 20223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 60670) = 1572864 * k + 30335 := by
    unfold C
    simp [show (3145728 * k + 60670) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 30335) = 4718592 * k + 91006 := by
    unfold C
    simp [show (1572864 * k + 30335) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 91006) = 2359296 * k + 45503 := by
    unfold C
    simp [show (4718592 * k + 91006) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 45503) = 7077888 * k + 136510 := by
    unfold C
    simp [show (2359296 * k + 45503) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 136510) = 3538944 * k + 68255 := by
    unfold C
    simp [show (7077888 * k + 136510) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 68255) = 10616832 * k + 204766 := by
    unfold C
    simp [show (3538944 * k + 68255) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 204766) = 5308416 * k + 102383 := by
    unfold C
    simp [show (10616832 * k + 204766) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 102383) = 15925248 * k + 307150 := by
    unfold C
    simp [show (5308416 * k + 102383) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 307150) = 7962624 * k + 153575 := by
    unfold C
    simp [show (15925248 * k + 307150) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 153575) = 23887872 * k + 460726 := by
    unfold C
    simp [show (7962624 * k + 153575) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 460726) = 11943936 * k + 230363 := by
    unfold C
    simp [show (23887872 * k + 460726) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 230363) = 35831808 * k + 691090 := by
    unfold C
    simp [show (11943936 * k + 230363) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 691090) = 17915904 * k + 345545 := by
    unfold C
    simp [show (35831808 * k + 691090) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 345545) = 53747712 * k + 1036636 := by
    unfold C
    simp [show (17915904 * k + 345545) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 1036636) = 26873856 * k + 518318 := by
    unfold C
    simp [show (53747712 * k + 1036636) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 518318) = 13436928 * k + 259159 := by
    unfold C
    simp [show (26873856 * k + 518318) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 259159) = 40310784 * k + 777478 := by
    unfold C
    simp [show (13436928 * k + 259159) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 777478) = 20155392 * k + 388739 := by
    unfold C
    simp [show (40310784 * k + 777478) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 388739) = 60466176 * k + 1166218 := by
    unfold C
    simp [show (20155392 * k + 388739) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 1166218) = 30233088 * k + 583109 := by
    unfold C
    simp [show (60466176 * k + 1166218) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 583109) = 90699264 * k + 1749328 := by
    unfold C
    simp [show (30233088 * k + 583109) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 1749328) = 45349632 * k + 874664 := by
    unfold C
    simp [show (90699264 * k + 1749328) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 874664) = 22674816 * k + 437332 := by
    unfold C
    simp [show (45349632 * k + 874664) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 437332) = 11337408 * k + 218666 := by
    unfold C
    simp [show (22674816 * k + 437332) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 218666) = 5668704 * k + 109333 := by
    unfold C
    simp [show (11337408 * k + 218666) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 109333) = 17006112 * k + 328000 := by
    unfold C
    simp [show (5668704 * k + 109333) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 328000) = 8503056 * k + 164000 := by
    unfold C
    simp [show (17006112 * k + 328000) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 164000) = 4251528 * k + 82000 := by
    unfold C
    simp [show (8503056 * k + 164000) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 82000) = 2125764 * k + 41000 := by
    unfold C
    simp [show (4251528 * k + 82000) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 41000) = 1062882 * k + 20500 := by
    unfold C
    simp [show (2125764 * k + 41000) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 20500) = 531441 * k + 10250 := by
    unfold C
    simp [show (1062882 * k + 20500) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 20223) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 20223)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_20571 : ∀ k : Nat,
    iterate (1048576 * k + 20571) 32 = 531441 * k + 10427 ∧
      531441 * k + 10427 < 1048576 * k + 20571 := by
  intro k
  have h1 : C (1048576 * k + 20571) = 3145728 * k + 61714 := by
    unfold C
    simp [show (1048576 * k + 20571) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 61714) = 1572864 * k + 30857 := by
    unfold C
    simp [show (3145728 * k + 61714) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 30857) = 4718592 * k + 92572 := by
    unfold C
    simp [show (1572864 * k + 30857) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 92572) = 2359296 * k + 46286 := by
    unfold C
    simp [show (4718592 * k + 92572) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 46286) = 1179648 * k + 23143 := by
    unfold C
    simp [show (2359296 * k + 46286) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 23143) = 3538944 * k + 69430 := by
    unfold C
    simp [show (1179648 * k + 23143) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 69430) = 1769472 * k + 34715 := by
    unfold C
    simp [show (3538944 * k + 69430) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 34715) = 5308416 * k + 104146 := by
    unfold C
    simp [show (1769472 * k + 34715) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 104146) = 2654208 * k + 52073 := by
    unfold C
    simp [show (5308416 * k + 104146) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 52073) = 7962624 * k + 156220 := by
    unfold C
    simp [show (2654208 * k + 52073) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 156220) = 3981312 * k + 78110 := by
    unfold C
    simp [show (7962624 * k + 156220) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 78110) = 1990656 * k + 39055 := by
    unfold C
    simp [show (3981312 * k + 78110) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 39055) = 5971968 * k + 117166 := by
    unfold C
    simp [show (1990656 * k + 39055) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 117166) = 2985984 * k + 58583 := by
    unfold C
    simp [show (5971968 * k + 117166) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 58583) = 8957952 * k + 175750 := by
    unfold C
    simp [show (2985984 * k + 58583) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 175750) = 4478976 * k + 87875 := by
    unfold C
    simp [show (8957952 * k + 175750) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 87875) = 13436928 * k + 263626 := by
    unfold C
    simp [show (4478976 * k + 87875) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 263626) = 6718464 * k + 131813 := by
    unfold C
    simp [show (13436928 * k + 263626) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 131813) = 20155392 * k + 395440 := by
    unfold C
    simp [show (6718464 * k + 131813) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 395440) = 10077696 * k + 197720 := by
    unfold C
    simp [show (20155392 * k + 395440) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 197720) = 5038848 * k + 98860 := by
    unfold C
    simp [show (10077696 * k + 197720) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 98860) = 2519424 * k + 49430 := by
    unfold C
    simp [show (5038848 * k + 98860) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 49430) = 1259712 * k + 24715 := by
    unfold C
    simp [show (2519424 * k + 49430) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 24715) = 3779136 * k + 74146 := by
    unfold C
    simp [show (1259712 * k + 24715) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 74146) = 1889568 * k + 37073 := by
    unfold C
    simp [show (3779136 * k + 74146) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 37073) = 5668704 * k + 111220 := by
    unfold C
    simp [show (1889568 * k + 37073) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 111220) = 2834352 * k + 55610 := by
    unfold C
    simp [show (5668704 * k + 111220) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 55610) = 1417176 * k + 27805 := by
    unfold C
    simp [show (2834352 * k + 55610) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 27805) = 4251528 * k + 83416 := by
    unfold C
    simp [show (1417176 * k + 27805) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 83416) = 2125764 * k + 41708 := by
    unfold C
    simp [show (4251528 * k + 83416) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 41708) = 1062882 * k + 20854 := by
    unfold C
    simp [show (2125764 * k + 41708) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 20854) = 531441 * k + 10427 := by
    unfold C
    simp [show (1062882 * k + 20854) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 20571) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 20571)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_21019 : ∀ k : Nat,
    iterate (1048576 * k + 21019) 32 = 531441 * k + 10654 ∧
      531441 * k + 10654 < 1048576 * k + 21019 := by
  intro k
  have h1 : C (1048576 * k + 21019) = 3145728 * k + 63058 := by
    unfold C
    simp [show (1048576 * k + 21019) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 63058) = 1572864 * k + 31529 := by
    unfold C
    simp [show (3145728 * k + 63058) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 31529) = 4718592 * k + 94588 := by
    unfold C
    simp [show (1572864 * k + 31529) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 94588) = 2359296 * k + 47294 := by
    unfold C
    simp [show (4718592 * k + 94588) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 47294) = 1179648 * k + 23647 := by
    unfold C
    simp [show (2359296 * k + 47294) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 23647) = 3538944 * k + 70942 := by
    unfold C
    simp [show (1179648 * k + 23647) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 70942) = 1769472 * k + 35471 := by
    unfold C
    simp [show (3538944 * k + 70942) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 35471) = 5308416 * k + 106414 := by
    unfold C
    simp [show (1769472 * k + 35471) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 106414) = 2654208 * k + 53207 := by
    unfold C
    simp [show (5308416 * k + 106414) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 53207) = 7962624 * k + 159622 := by
    unfold C
    simp [show (2654208 * k + 53207) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 159622) = 3981312 * k + 79811 := by
    unfold C
    simp [show (7962624 * k + 159622) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 79811) = 11943936 * k + 239434 := by
    unfold C
    simp [show (3981312 * k + 79811) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 239434) = 5971968 * k + 119717 := by
    unfold C
    simp [show (11943936 * k + 239434) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 119717) = 17915904 * k + 359152 := by
    unfold C
    simp [show (5971968 * k + 119717) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 359152) = 8957952 * k + 179576 := by
    unfold C
    simp [show (17915904 * k + 359152) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 179576) = 4478976 * k + 89788 := by
    unfold C
    simp [show (8957952 * k + 179576) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 89788) = 2239488 * k + 44894 := by
    unfold C
    simp [show (4478976 * k + 89788) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 44894) = 1119744 * k + 22447 := by
    unfold C
    simp [show (2239488 * k + 44894) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 22447) = 3359232 * k + 67342 := by
    unfold C
    simp [show (1119744 * k + 22447) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 67342) = 1679616 * k + 33671 := by
    unfold C
    simp [show (3359232 * k + 67342) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 33671) = 5038848 * k + 101014 := by
    unfold C
    simp [show (1679616 * k + 33671) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 101014) = 2519424 * k + 50507 := by
    unfold C
    simp [show (5038848 * k + 101014) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 50507) = 7558272 * k + 151522 := by
    unfold C
    simp [show (2519424 * k + 50507) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 151522) = 3779136 * k + 75761 := by
    unfold C
    simp [show (7558272 * k + 151522) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 75761) = 11337408 * k + 227284 := by
    unfold C
    simp [show (3779136 * k + 75761) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 227284) = 5668704 * k + 113642 := by
    unfold C
    simp [show (11337408 * k + 227284) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 113642) = 2834352 * k + 56821 := by
    unfold C
    simp [show (5668704 * k + 113642) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 56821) = 8503056 * k + 170464 := by
    unfold C
    simp [show (2834352 * k + 56821) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 170464) = 4251528 * k + 85232 := by
    unfold C
    simp [show (8503056 * k + 170464) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 85232) = 2125764 * k + 42616 := by
    unfold C
    simp [show (4251528 * k + 85232) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 42616) = 1062882 * k + 21308 := by
    unfold C
    simp [show (2125764 * k + 42616) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 21308) = 531441 * k + 10654 := by
    unfold C
    simp [show (1062882 * k + 21308) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 21019) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 21019)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_21247 : ∀ k : Nat,
    iterate (1048576 * k + 21247) 32 = 531441 * k + 10769 ∧
      531441 * k + 10769 < 1048576 * k + 21247 := by
  intro k
  have h1 : C (1048576 * k + 21247) = 3145728 * k + 63742 := by
    unfold C
    simp [show (1048576 * k + 21247) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 63742) = 1572864 * k + 31871 := by
    unfold C
    simp [show (3145728 * k + 63742) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 31871) = 4718592 * k + 95614 := by
    unfold C
    simp [show (1572864 * k + 31871) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 95614) = 2359296 * k + 47807 := by
    unfold C
    simp [show (4718592 * k + 95614) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 47807) = 7077888 * k + 143422 := by
    unfold C
    simp [show (2359296 * k + 47807) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 143422) = 3538944 * k + 71711 := by
    unfold C
    simp [show (7077888 * k + 143422) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 71711) = 10616832 * k + 215134 := by
    unfold C
    simp [show (3538944 * k + 71711) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 215134) = 5308416 * k + 107567 := by
    unfold C
    simp [show (10616832 * k + 215134) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 107567) = 15925248 * k + 322702 := by
    unfold C
    simp [show (5308416 * k + 107567) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 322702) = 7962624 * k + 161351 := by
    unfold C
    simp [show (15925248 * k + 322702) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 161351) = 23887872 * k + 484054 := by
    unfold C
    simp [show (7962624 * k + 161351) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 484054) = 11943936 * k + 242027 := by
    unfold C
    simp [show (23887872 * k + 484054) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 242027) = 35831808 * k + 726082 := by
    unfold C
    simp [show (11943936 * k + 242027) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 726082) = 17915904 * k + 363041 := by
    unfold C
    simp [show (35831808 * k + 726082) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 363041) = 53747712 * k + 1089124 := by
    unfold C
    simp [show (17915904 * k + 363041) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 1089124) = 26873856 * k + 544562 := by
    unfold C
    simp [show (53747712 * k + 1089124) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 544562) = 13436928 * k + 272281 := by
    unfold C
    simp [show (26873856 * k + 544562) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 272281) = 40310784 * k + 816844 := by
    unfold C
    simp [show (13436928 * k + 272281) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 816844) = 20155392 * k + 408422 := by
    unfold C
    simp [show (40310784 * k + 816844) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 408422) = 10077696 * k + 204211 := by
    unfold C
    simp [show (20155392 * k + 408422) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 204211) = 30233088 * k + 612634 := by
    unfold C
    simp [show (10077696 * k + 204211) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 612634) = 15116544 * k + 306317 := by
    unfold C
    simp [show (30233088 * k + 612634) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 306317) = 45349632 * k + 918952 := by
    unfold C
    simp [show (15116544 * k + 306317) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 918952) = 22674816 * k + 459476 := by
    unfold C
    simp [show (45349632 * k + 918952) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 459476) = 11337408 * k + 229738 := by
    unfold C
    simp [show (22674816 * k + 459476) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 229738) = 5668704 * k + 114869 := by
    unfold C
    simp [show (11337408 * k + 229738) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 114869) = 17006112 * k + 344608 := by
    unfold C
    simp [show (5668704 * k + 114869) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 344608) = 8503056 * k + 172304 := by
    unfold C
    simp [show (17006112 * k + 344608) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 172304) = 4251528 * k + 86152 := by
    unfold C
    simp [show (8503056 * k + 172304) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 86152) = 2125764 * k + 43076 := by
    unfold C
    simp [show (4251528 * k + 86152) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 43076) = 1062882 * k + 21538 := by
    unfold C
    simp [show (2125764 * k + 43076) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 21538) = 531441 * k + 10769 := by
    unfold C
    simp [show (1062882 * k + 21538) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 21247) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 21247)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_21375 : ∀ k : Nat,
    iterate (1048576 * k + 21375) 32 = 531441 * k + 10834 ∧
      531441 * k + 10834 < 1048576 * k + 21375 := by
  intro k
  have h1 : C (1048576 * k + 21375) = 3145728 * k + 64126 := by
    unfold C
    simp [show (1048576 * k + 21375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 64126) = 1572864 * k + 32063 := by
    unfold C
    simp [show (3145728 * k + 64126) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 32063) = 4718592 * k + 96190 := by
    unfold C
    simp [show (1572864 * k + 32063) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 96190) = 2359296 * k + 48095 := by
    unfold C
    simp [show (4718592 * k + 96190) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 48095) = 7077888 * k + 144286 := by
    unfold C
    simp [show (2359296 * k + 48095) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 144286) = 3538944 * k + 72143 := by
    unfold C
    simp [show (7077888 * k + 144286) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 72143) = 10616832 * k + 216430 := by
    unfold C
    simp [show (3538944 * k + 72143) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 216430) = 5308416 * k + 108215 := by
    unfold C
    simp [show (10616832 * k + 216430) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 108215) = 15925248 * k + 324646 := by
    unfold C
    simp [show (5308416 * k + 108215) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 324646) = 7962624 * k + 162323 := by
    unfold C
    simp [show (15925248 * k + 324646) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 162323) = 23887872 * k + 486970 := by
    unfold C
    simp [show (7962624 * k + 162323) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 486970) = 11943936 * k + 243485 := by
    unfold C
    simp [show (23887872 * k + 486970) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 243485) = 35831808 * k + 730456 := by
    unfold C
    simp [show (11943936 * k + 243485) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 730456) = 17915904 * k + 365228 := by
    unfold C
    simp [show (35831808 * k + 730456) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 365228) = 8957952 * k + 182614 := by
    unfold C
    simp [show (17915904 * k + 365228) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 182614) = 4478976 * k + 91307 := by
    unfold C
    simp [show (8957952 * k + 182614) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 91307) = 13436928 * k + 273922 := by
    unfold C
    simp [show (4478976 * k + 91307) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 273922) = 6718464 * k + 136961 := by
    unfold C
    simp [show (13436928 * k + 273922) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 136961) = 20155392 * k + 410884 := by
    unfold C
    simp [show (6718464 * k + 136961) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 410884) = 10077696 * k + 205442 := by
    unfold C
    simp [show (20155392 * k + 410884) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 205442) = 5038848 * k + 102721 := by
    unfold C
    simp [show (10077696 * k + 205442) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 102721) = 15116544 * k + 308164 := by
    unfold C
    simp [show (5038848 * k + 102721) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 308164) = 7558272 * k + 154082 := by
    unfold C
    simp [show (15116544 * k + 308164) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 154082) = 3779136 * k + 77041 := by
    unfold C
    simp [show (7558272 * k + 154082) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 77041) = 11337408 * k + 231124 := by
    unfold C
    simp [show (3779136 * k + 77041) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 231124) = 5668704 * k + 115562 := by
    unfold C
    simp [show (11337408 * k + 231124) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 115562) = 2834352 * k + 57781 := by
    unfold C
    simp [show (5668704 * k + 115562) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 57781) = 8503056 * k + 173344 := by
    unfold C
    simp [show (2834352 * k + 57781) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 173344) = 4251528 * k + 86672 := by
    unfold C
    simp [show (8503056 * k + 173344) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 86672) = 2125764 * k + 43336 := by
    unfold C
    simp [show (4251528 * k + 86672) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 43336) = 1062882 * k + 21668 := by
    unfold C
    simp [show (2125764 * k + 43336) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 21668) = 531441 * k + 10834 := by
    unfold C
    simp [show (1062882 * k + 21668) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 21375) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 21375)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_22223 : ∀ k : Nat,
    iterate (1048576 * k + 22223) 32 = 531441 * k + 11264 ∧
      531441 * k + 11264 < 1048576 * k + 22223 := by
  intro k
  have h1 : C (1048576 * k + 22223) = 3145728 * k + 66670 := by
    unfold C
    simp [show (1048576 * k + 22223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 66670) = 1572864 * k + 33335 := by
    unfold C
    simp [show (3145728 * k + 66670) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 33335) = 4718592 * k + 100006 := by
    unfold C
    simp [show (1572864 * k + 33335) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 100006) = 2359296 * k + 50003 := by
    unfold C
    simp [show (4718592 * k + 100006) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 50003) = 7077888 * k + 150010 := by
    unfold C
    simp [show (2359296 * k + 50003) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 150010) = 3538944 * k + 75005 := by
    unfold C
    simp [show (7077888 * k + 150010) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 75005) = 10616832 * k + 225016 := by
    unfold C
    simp [show (3538944 * k + 75005) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 225016) = 5308416 * k + 112508 := by
    unfold C
    simp [show (10616832 * k + 225016) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 112508) = 2654208 * k + 56254 := by
    unfold C
    simp [show (5308416 * k + 112508) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 56254) = 1327104 * k + 28127 := by
    unfold C
    simp [show (2654208 * k + 56254) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 28127) = 3981312 * k + 84382 := by
    unfold C
    simp [show (1327104 * k + 28127) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 84382) = 1990656 * k + 42191 := by
    unfold C
    simp [show (3981312 * k + 84382) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 42191) = 5971968 * k + 126574 := by
    unfold C
    simp [show (1990656 * k + 42191) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 126574) = 2985984 * k + 63287 := by
    unfold C
    simp [show (5971968 * k + 126574) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 63287) = 8957952 * k + 189862 := by
    unfold C
    simp [show (2985984 * k + 63287) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 189862) = 4478976 * k + 94931 := by
    unfold C
    simp [show (8957952 * k + 189862) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 94931) = 13436928 * k + 284794 := by
    unfold C
    simp [show (4478976 * k + 94931) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 284794) = 6718464 * k + 142397 := by
    unfold C
    simp [show (13436928 * k + 284794) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 142397) = 20155392 * k + 427192 := by
    unfold C
    simp [show (6718464 * k + 142397) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 427192) = 10077696 * k + 213596 := by
    unfold C
    simp [show (20155392 * k + 427192) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 213596) = 5038848 * k + 106798 := by
    unfold C
    simp [show (10077696 * k + 213596) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 106798) = 2519424 * k + 53399 := by
    unfold C
    simp [show (5038848 * k + 106798) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 53399) = 7558272 * k + 160198 := by
    unfold C
    simp [show (2519424 * k + 53399) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 160198) = 3779136 * k + 80099 := by
    unfold C
    simp [show (7558272 * k + 160198) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 80099) = 11337408 * k + 240298 := by
    unfold C
    simp [show (3779136 * k + 80099) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 240298) = 5668704 * k + 120149 := by
    unfold C
    simp [show (11337408 * k + 240298) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 120149) = 17006112 * k + 360448 := by
    unfold C
    simp [show (5668704 * k + 120149) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 360448) = 8503056 * k + 180224 := by
    unfold C
    simp [show (17006112 * k + 360448) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 180224) = 4251528 * k + 90112 := by
    unfold C
    simp [show (8503056 * k + 180224) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 90112) = 2125764 * k + 45056 := by
    unfold C
    simp [show (4251528 * k + 90112) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 45056) = 1062882 * k + 22528 := by
    unfold C
    simp [show (2125764 * k + 45056) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 22528) = 531441 * k + 11264 := by
    unfold C
    simp [show (1062882 * k + 22528) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 22223) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 22223)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_23087 : ∀ k : Nat,
    iterate (1048576 * k + 23087) 32 = 531441 * k + 11702 ∧
      531441 * k + 11702 < 1048576 * k + 23087 := by
  intro k
  have h1 : C (1048576 * k + 23087) = 3145728 * k + 69262 := by
    unfold C
    simp [show (1048576 * k + 23087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 69262) = 1572864 * k + 34631 := by
    unfold C
    simp [show (3145728 * k + 69262) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 34631) = 4718592 * k + 103894 := by
    unfold C
    simp [show (1572864 * k + 34631) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 103894) = 2359296 * k + 51947 := by
    unfold C
    simp [show (4718592 * k + 103894) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 51947) = 7077888 * k + 155842 := by
    unfold C
    simp [show (2359296 * k + 51947) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 155842) = 3538944 * k + 77921 := by
    unfold C
    simp [show (7077888 * k + 155842) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 77921) = 10616832 * k + 233764 := by
    unfold C
    simp [show (3538944 * k + 77921) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 233764) = 5308416 * k + 116882 := by
    unfold C
    simp [show (10616832 * k + 233764) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 116882) = 2654208 * k + 58441 := by
    unfold C
    simp [show (5308416 * k + 116882) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 58441) = 7962624 * k + 175324 := by
    unfold C
    simp [show (2654208 * k + 58441) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 175324) = 3981312 * k + 87662 := by
    unfold C
    simp [show (7962624 * k + 175324) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 87662) = 1990656 * k + 43831 := by
    unfold C
    simp [show (3981312 * k + 87662) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 43831) = 5971968 * k + 131494 := by
    unfold C
    simp [show (1990656 * k + 43831) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 131494) = 2985984 * k + 65747 := by
    unfold C
    simp [show (5971968 * k + 131494) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 65747) = 8957952 * k + 197242 := by
    unfold C
    simp [show (2985984 * k + 65747) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 197242) = 4478976 * k + 98621 := by
    unfold C
    simp [show (8957952 * k + 197242) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 98621) = 13436928 * k + 295864 := by
    unfold C
    simp [show (4478976 * k + 98621) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 295864) = 6718464 * k + 147932 := by
    unfold C
    simp [show (13436928 * k + 295864) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 147932) = 3359232 * k + 73966 := by
    unfold C
    simp [show (6718464 * k + 147932) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 73966) = 1679616 * k + 36983 := by
    unfold C
    simp [show (3359232 * k + 73966) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 36983) = 5038848 * k + 110950 := by
    unfold C
    simp [show (1679616 * k + 36983) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 110950) = 2519424 * k + 55475 := by
    unfold C
    simp [show (5038848 * k + 110950) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 55475) = 7558272 * k + 166426 := by
    unfold C
    simp [show (2519424 * k + 55475) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 166426) = 3779136 * k + 83213 := by
    unfold C
    simp [show (7558272 * k + 166426) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 83213) = 11337408 * k + 249640 := by
    unfold C
    simp [show (3779136 * k + 83213) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 249640) = 5668704 * k + 124820 := by
    unfold C
    simp [show (11337408 * k + 249640) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 124820) = 2834352 * k + 62410 := by
    unfold C
    simp [show (5668704 * k + 124820) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 62410) = 1417176 * k + 31205 := by
    unfold C
    simp [show (2834352 * k + 62410) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 31205) = 4251528 * k + 93616 := by
    unfold C
    simp [show (1417176 * k + 31205) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 93616) = 2125764 * k + 46808 := by
    unfold C
    simp [show (4251528 * k + 93616) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 46808) = 1062882 * k + 23404 := by
    unfold C
    simp [show (2125764 * k + 46808) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 23404) = 531441 * k + 11702 := by
    unfold C
    simp [show (1062882 * k + 23404) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 23087) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 23087)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_23271 : ∀ k : Nat,
    iterate (1048576 * k + 23271) 32 = 531441 * k + 11795 ∧
      531441 * k + 11795 < 1048576 * k + 23271 := by
  intro k
  have h1 : C (1048576 * k + 23271) = 3145728 * k + 69814 := by
    unfold C
    simp [show (1048576 * k + 23271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 69814) = 1572864 * k + 34907 := by
    unfold C
    simp [show (3145728 * k + 69814) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 34907) = 4718592 * k + 104722 := by
    unfold C
    simp [show (1572864 * k + 34907) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 104722) = 2359296 * k + 52361 := by
    unfold C
    simp [show (4718592 * k + 104722) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 52361) = 7077888 * k + 157084 := by
    unfold C
    simp [show (2359296 * k + 52361) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 157084) = 3538944 * k + 78542 := by
    unfold C
    simp [show (7077888 * k + 157084) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 78542) = 1769472 * k + 39271 := by
    unfold C
    simp [show (3538944 * k + 78542) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 39271) = 5308416 * k + 117814 := by
    unfold C
    simp [show (1769472 * k + 39271) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 117814) = 2654208 * k + 58907 := by
    unfold C
    simp [show (5308416 * k + 117814) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 58907) = 7962624 * k + 176722 := by
    unfold C
    simp [show (2654208 * k + 58907) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 176722) = 3981312 * k + 88361 := by
    unfold C
    simp [show (7962624 * k + 176722) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 88361) = 11943936 * k + 265084 := by
    unfold C
    simp [show (3981312 * k + 88361) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 265084) = 5971968 * k + 132542 := by
    unfold C
    simp [show (11943936 * k + 265084) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 132542) = 2985984 * k + 66271 := by
    unfold C
    simp [show (5971968 * k + 132542) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 66271) = 8957952 * k + 198814 := by
    unfold C
    simp [show (2985984 * k + 66271) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 198814) = 4478976 * k + 99407 := by
    unfold C
    simp [show (8957952 * k + 198814) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 99407) = 13436928 * k + 298222 := by
    unfold C
    simp [show (4478976 * k + 99407) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 298222) = 6718464 * k + 149111 := by
    unfold C
    simp [show (13436928 * k + 298222) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 149111) = 20155392 * k + 447334 := by
    unfold C
    simp [show (6718464 * k + 149111) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 447334) = 10077696 * k + 223667 := by
    unfold C
    simp [show (20155392 * k + 447334) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 223667) = 30233088 * k + 671002 := by
    unfold C
    simp [show (10077696 * k + 223667) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 671002) = 15116544 * k + 335501 := by
    unfold C
    simp [show (30233088 * k + 671002) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 335501) = 45349632 * k + 1006504 := by
    unfold C
    simp [show (15116544 * k + 335501) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 1006504) = 22674816 * k + 503252 := by
    unfold C
    simp [show (45349632 * k + 1006504) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 503252) = 11337408 * k + 251626 := by
    unfold C
    simp [show (22674816 * k + 503252) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 251626) = 5668704 * k + 125813 := by
    unfold C
    simp [show (11337408 * k + 251626) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 125813) = 17006112 * k + 377440 := by
    unfold C
    simp [show (5668704 * k + 125813) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 377440) = 8503056 * k + 188720 := by
    unfold C
    simp [show (17006112 * k + 377440) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 188720) = 4251528 * k + 94360 := by
    unfold C
    simp [show (8503056 * k + 188720) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 94360) = 2125764 * k + 47180 := by
    unfold C
    simp [show (4251528 * k + 94360) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 47180) = 1062882 * k + 23590 := by
    unfold C
    simp [show (2125764 * k + 47180) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 23590) = 531441 * k + 11795 := by
    unfold C
    simp [show (1062882 * k + 23590) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 23271) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 23271)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_23295 : ∀ k : Nat,
    iterate (1048576 * k + 23295) 32 = 531441 * k + 11807 ∧
      531441 * k + 11807 < 1048576 * k + 23295 := by
  intro k
  have h1 : C (1048576 * k + 23295) = 3145728 * k + 69886 := by
    unfold C
    simp [show (1048576 * k + 23295) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 69886) = 1572864 * k + 34943 := by
    unfold C
    simp [show (3145728 * k + 69886) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 34943) = 4718592 * k + 104830 := by
    unfold C
    simp [show (1572864 * k + 34943) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 104830) = 2359296 * k + 52415 := by
    unfold C
    simp [show (4718592 * k + 104830) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 52415) = 7077888 * k + 157246 := by
    unfold C
    simp [show (2359296 * k + 52415) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 157246) = 3538944 * k + 78623 := by
    unfold C
    simp [show (7077888 * k + 157246) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 78623) = 10616832 * k + 235870 := by
    unfold C
    simp [show (3538944 * k + 78623) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 235870) = 5308416 * k + 117935 := by
    unfold C
    simp [show (10616832 * k + 235870) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 117935) = 15925248 * k + 353806 := by
    unfold C
    simp [show (5308416 * k + 117935) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 353806) = 7962624 * k + 176903 := by
    unfold C
    simp [show (15925248 * k + 353806) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 176903) = 23887872 * k + 530710 := by
    unfold C
    simp [show (7962624 * k + 176903) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 530710) = 11943936 * k + 265355 := by
    unfold C
    simp [show (23887872 * k + 530710) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 265355) = 35831808 * k + 796066 := by
    unfold C
    simp [show (11943936 * k + 265355) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 796066) = 17915904 * k + 398033 := by
    unfold C
    simp [show (35831808 * k + 796066) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 398033) = 53747712 * k + 1194100 := by
    unfold C
    simp [show (17915904 * k + 398033) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 1194100) = 26873856 * k + 597050 := by
    unfold C
    simp [show (53747712 * k + 1194100) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 597050) = 13436928 * k + 298525 := by
    unfold C
    simp [show (26873856 * k + 597050) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 298525) = 40310784 * k + 895576 := by
    unfold C
    simp [show (13436928 * k + 298525) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 895576) = 20155392 * k + 447788 := by
    unfold C
    simp [show (40310784 * k + 895576) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 447788) = 10077696 * k + 223894 := by
    unfold C
    simp [show (20155392 * k + 447788) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 223894) = 5038848 * k + 111947 := by
    unfold C
    simp [show (10077696 * k + 223894) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 111947) = 15116544 * k + 335842 := by
    unfold C
    simp [show (5038848 * k + 111947) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 335842) = 7558272 * k + 167921 := by
    unfold C
    simp [show (15116544 * k + 335842) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 167921) = 22674816 * k + 503764 := by
    unfold C
    simp [show (7558272 * k + 167921) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 503764) = 11337408 * k + 251882 := by
    unfold C
    simp [show (22674816 * k + 503764) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 251882) = 5668704 * k + 125941 := by
    unfold C
    simp [show (11337408 * k + 251882) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 125941) = 17006112 * k + 377824 := by
    unfold C
    simp [show (5668704 * k + 125941) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 377824) = 8503056 * k + 188912 := by
    unfold C
    simp [show (17006112 * k + 377824) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 188912) = 4251528 * k + 94456 := by
    unfold C
    simp [show (8503056 * k + 188912) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 94456) = 2125764 * k + 47228 := by
    unfold C
    simp [show (4251528 * k + 94456) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 47228) = 1062882 * k + 23614 := by
    unfold C
    simp [show (2125764 * k + 47228) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 23614) = 531441 * k + 11807 := by
    unfold C
    simp [show (1062882 * k + 23614) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 23295) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 23295)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard004
