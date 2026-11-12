import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard105

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_820059 : ∀ k : Nat,
    iterate (1048576 * k + 820059) 32 = 531441 * k + 415625 ∧
      531441 * k + 415625 < 1048576 * k + 820059 := by
  intro k
  have h1 : C (1048576 * k + 820059) = 3145728 * k + 2460178 := by
    unfold C
    simp [show (1048576 * k + 820059) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2460178) = 1572864 * k + 1230089 := by
    unfold C
    simp [show (3145728 * k + 2460178) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1230089) = 4718592 * k + 3690268 := by
    unfold C
    simp [show (1572864 * k + 1230089) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3690268) = 2359296 * k + 1845134 := by
    unfold C
    simp [show (4718592 * k + 3690268) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1845134) = 1179648 * k + 922567 := by
    unfold C
    simp [show (2359296 * k + 1845134) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 922567) = 3538944 * k + 2767702 := by
    unfold C
    simp [show (1179648 * k + 922567) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2767702) = 1769472 * k + 1383851 := by
    unfold C
    simp [show (3538944 * k + 2767702) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1383851) = 5308416 * k + 4151554 := by
    unfold C
    simp [show (1769472 * k + 1383851) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4151554) = 2654208 * k + 2075777 := by
    unfold C
    simp [show (5308416 * k + 4151554) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2075777) = 7962624 * k + 6227332 := by
    unfold C
    simp [show (2654208 * k + 2075777) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6227332) = 3981312 * k + 3113666 := by
    unfold C
    simp [show (7962624 * k + 6227332) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3113666) = 1990656 * k + 1556833 := by
    unfold C
    simp [show (3981312 * k + 3113666) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1556833) = 5971968 * k + 4670500 := by
    unfold C
    simp [show (1990656 * k + 1556833) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4670500) = 2985984 * k + 2335250 := by
    unfold C
    simp [show (5971968 * k + 4670500) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2335250) = 1492992 * k + 1167625 := by
    unfold C
    simp [show (2985984 * k + 2335250) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1167625) = 4478976 * k + 3502876 := by
    unfold C
    simp [show (1492992 * k + 1167625) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3502876) = 2239488 * k + 1751438 := by
    unfold C
    simp [show (4478976 * k + 3502876) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1751438) = 1119744 * k + 875719 := by
    unfold C
    simp [show (2239488 * k + 1751438) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 875719) = 3359232 * k + 2627158 := by
    unfold C
    simp [show (1119744 * k + 875719) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2627158) = 1679616 * k + 1313579 := by
    unfold C
    simp [show (3359232 * k + 2627158) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1313579) = 5038848 * k + 3940738 := by
    unfold C
    simp [show (1679616 * k + 1313579) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3940738) = 2519424 * k + 1970369 := by
    unfold C
    simp [show (5038848 * k + 3940738) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1970369) = 7558272 * k + 5911108 := by
    unfold C
    simp [show (2519424 * k + 1970369) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5911108) = 3779136 * k + 2955554 := by
    unfold C
    simp [show (7558272 * k + 5911108) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2955554) = 1889568 * k + 1477777 := by
    unfold C
    simp [show (3779136 * k + 2955554) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1477777) = 5668704 * k + 4433332 := by
    unfold C
    simp [show (1889568 * k + 1477777) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4433332) = 2834352 * k + 2216666 := by
    unfold C
    simp [show (5668704 * k + 4433332) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2216666) = 1417176 * k + 1108333 := by
    unfold C
    simp [show (2834352 * k + 2216666) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1108333) = 4251528 * k + 3325000 := by
    unfold C
    simp [show (1417176 * k + 1108333) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3325000) = 2125764 * k + 1662500 := by
    unfold C
    simp [show (4251528 * k + 3325000) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1662500) = 1062882 * k + 831250 := by
    unfold C
    simp [show (2125764 * k + 1662500) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 831250) = 531441 * k + 415625 := by
    unfold C
    simp [show (1062882 * k + 831250) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 820059) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 820059)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_820379 : ∀ k : Nat,
    iterate (1048576 * k + 820379) 32 = 531441 * k + 415787 ∧
      531441 * k + 415787 < 1048576 * k + 820379 := by
  intro k
  have h1 : C (1048576 * k + 820379) = 3145728 * k + 2461138 := by
    unfold C
    simp [show (1048576 * k + 820379) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2461138) = 1572864 * k + 1230569 := by
    unfold C
    simp [show (3145728 * k + 2461138) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1230569) = 4718592 * k + 3691708 := by
    unfold C
    simp [show (1572864 * k + 1230569) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3691708) = 2359296 * k + 1845854 := by
    unfold C
    simp [show (4718592 * k + 3691708) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1845854) = 1179648 * k + 922927 := by
    unfold C
    simp [show (2359296 * k + 1845854) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 922927) = 3538944 * k + 2768782 := by
    unfold C
    simp [show (1179648 * k + 922927) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2768782) = 1769472 * k + 1384391 := by
    unfold C
    simp [show (3538944 * k + 2768782) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1384391) = 5308416 * k + 4153174 := by
    unfold C
    simp [show (1769472 * k + 1384391) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4153174) = 2654208 * k + 2076587 := by
    unfold C
    simp [show (5308416 * k + 4153174) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2076587) = 7962624 * k + 6229762 := by
    unfold C
    simp [show (2654208 * k + 2076587) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6229762) = 3981312 * k + 3114881 := by
    unfold C
    simp [show (7962624 * k + 6229762) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3114881) = 11943936 * k + 9344644 := by
    unfold C
    simp [show (3981312 * k + 3114881) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9344644) = 5971968 * k + 4672322 := by
    unfold C
    simp [show (11943936 * k + 9344644) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4672322) = 2985984 * k + 2336161 := by
    unfold C
    simp [show (5971968 * k + 4672322) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2336161) = 8957952 * k + 7008484 := by
    unfold C
    simp [show (2985984 * k + 2336161) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7008484) = 4478976 * k + 3504242 := by
    unfold C
    simp [show (8957952 * k + 7008484) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3504242) = 2239488 * k + 1752121 := by
    unfold C
    simp [show (4478976 * k + 3504242) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1752121) = 6718464 * k + 5256364 := by
    unfold C
    simp [show (2239488 * k + 1752121) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5256364) = 3359232 * k + 2628182 := by
    unfold C
    simp [show (6718464 * k + 5256364) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2628182) = 1679616 * k + 1314091 := by
    unfold C
    simp [show (3359232 * k + 2628182) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1314091) = 5038848 * k + 3942274 := by
    unfold C
    simp [show (1679616 * k + 1314091) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3942274) = 2519424 * k + 1971137 := by
    unfold C
    simp [show (5038848 * k + 3942274) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1971137) = 7558272 * k + 5913412 := by
    unfold C
    simp [show (2519424 * k + 1971137) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5913412) = 3779136 * k + 2956706 := by
    unfold C
    simp [show (7558272 * k + 5913412) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2956706) = 1889568 * k + 1478353 := by
    unfold C
    simp [show (3779136 * k + 2956706) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1478353) = 5668704 * k + 4435060 := by
    unfold C
    simp [show (1889568 * k + 1478353) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4435060) = 2834352 * k + 2217530 := by
    unfold C
    simp [show (5668704 * k + 4435060) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2217530) = 1417176 * k + 1108765 := by
    unfold C
    simp [show (2834352 * k + 2217530) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1108765) = 4251528 * k + 3326296 := by
    unfold C
    simp [show (1417176 * k + 1108765) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3326296) = 2125764 * k + 1663148 := by
    unfold C
    simp [show (4251528 * k + 3326296) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1663148) = 1062882 * k + 831574 := by
    unfold C
    simp [show (2125764 * k + 1663148) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 831574) = 531441 * k + 415787 := by
    unfold C
    simp [show (1062882 * k + 831574) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 820379) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 820379)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_820463 : ∀ k : Nat,
    iterate (1048576 * k + 820463) 32 = 531441 * k + 415829 ∧
      531441 * k + 415829 < 1048576 * k + 820463 := by
  intro k
  have h1 : C (1048576 * k + 820463) = 3145728 * k + 2461390 := by
    unfold C
    simp [show (1048576 * k + 820463) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2461390) = 1572864 * k + 1230695 := by
    unfold C
    simp [show (3145728 * k + 2461390) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1230695) = 4718592 * k + 3692086 := by
    unfold C
    simp [show (1572864 * k + 1230695) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3692086) = 2359296 * k + 1846043 := by
    unfold C
    simp [show (4718592 * k + 3692086) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1846043) = 7077888 * k + 5538130 := by
    unfold C
    simp [show (2359296 * k + 1846043) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5538130) = 3538944 * k + 2769065 := by
    unfold C
    simp [show (7077888 * k + 5538130) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2769065) = 10616832 * k + 8307196 := by
    unfold C
    simp [show (3538944 * k + 2769065) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8307196) = 5308416 * k + 4153598 := by
    unfold C
    simp [show (10616832 * k + 8307196) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4153598) = 2654208 * k + 2076799 := by
    unfold C
    simp [show (5308416 * k + 4153598) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2076799) = 7962624 * k + 6230398 := by
    unfold C
    simp [show (2654208 * k + 2076799) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6230398) = 3981312 * k + 3115199 := by
    unfold C
    simp [show (7962624 * k + 6230398) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3115199) = 11943936 * k + 9345598 := by
    unfold C
    simp [show (3981312 * k + 3115199) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9345598) = 5971968 * k + 4672799 := by
    unfold C
    simp [show (11943936 * k + 9345598) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4672799) = 17915904 * k + 14018398 := by
    unfold C
    simp [show (5971968 * k + 4672799) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14018398) = 8957952 * k + 7009199 := by
    unfold C
    simp [show (17915904 * k + 14018398) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7009199) = 26873856 * k + 21027598 := by
    unfold C
    simp [show (8957952 * k + 7009199) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21027598) = 13436928 * k + 10513799 := by
    unfold C
    simp [show (26873856 * k + 21027598) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10513799) = 40310784 * k + 31541398 := by
    unfold C
    simp [show (13436928 * k + 10513799) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 31541398) = 20155392 * k + 15770699 := by
    unfold C
    simp [show (40310784 * k + 31541398) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15770699) = 60466176 * k + 47312098 := by
    unfold C
    simp [show (20155392 * k + 15770699) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 47312098) = 30233088 * k + 23656049 := by
    unfold C
    simp [show (60466176 * k + 47312098) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 23656049) = 90699264 * k + 70968148 := by
    unfold C
    simp [show (30233088 * k + 23656049) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 70968148) = 45349632 * k + 35484074 := by
    unfold C
    simp [show (90699264 * k + 70968148) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 35484074) = 22674816 * k + 17742037 := by
    unfold C
    simp [show (45349632 * k + 35484074) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 17742037) = 68024448 * k + 53226112 := by
    unfold C
    simp [show (22674816 * k + 17742037) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 53226112) = 34012224 * k + 26613056 := by
    unfold C
    simp [show (68024448 * k + 53226112) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 26613056) = 17006112 * k + 13306528 := by
    unfold C
    simp [show (34012224 * k + 26613056) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 13306528) = 8503056 * k + 6653264 := by
    unfold C
    simp [show (17006112 * k + 13306528) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6653264) = 4251528 * k + 3326632 := by
    unfold C
    simp [show (8503056 * k + 6653264) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3326632) = 2125764 * k + 1663316 := by
    unfold C
    simp [show (4251528 * k + 3326632) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1663316) = 1062882 * k + 831658 := by
    unfold C
    simp [show (2125764 * k + 1663316) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 831658) = 531441 * k + 415829 := by
    unfold C
    simp [show (1062882 * k + 831658) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 820463) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 820463)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_820735 : ∀ k : Nat,
    iterate (1048576 * k + 820735) 32 = 531441 * k + 415967 ∧
      531441 * k + 415967 < 1048576 * k + 820735 := by
  intro k
  have h1 : C (1048576 * k + 820735) = 3145728 * k + 2462206 := by
    unfold C
    simp [show (1048576 * k + 820735) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2462206) = 1572864 * k + 1231103 := by
    unfold C
    simp [show (3145728 * k + 2462206) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1231103) = 4718592 * k + 3693310 := by
    unfold C
    simp [show (1572864 * k + 1231103) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3693310) = 2359296 * k + 1846655 := by
    unfold C
    simp [show (4718592 * k + 3693310) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1846655) = 7077888 * k + 5539966 := by
    unfold C
    simp [show (2359296 * k + 1846655) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5539966) = 3538944 * k + 2769983 := by
    unfold C
    simp [show (7077888 * k + 5539966) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2769983) = 10616832 * k + 8309950 := by
    unfold C
    simp [show (3538944 * k + 2769983) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8309950) = 5308416 * k + 4154975 := by
    unfold C
    simp [show (10616832 * k + 8309950) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4154975) = 15925248 * k + 12464926 := by
    unfold C
    simp [show (5308416 * k + 4154975) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12464926) = 7962624 * k + 6232463 := by
    unfold C
    simp [show (15925248 * k + 12464926) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6232463) = 23887872 * k + 18697390 := by
    unfold C
    simp [show (7962624 * k + 6232463) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 18697390) = 11943936 * k + 9348695 := by
    unfold C
    simp [show (23887872 * k + 18697390) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9348695) = 35831808 * k + 28046086 := by
    unfold C
    simp [show (11943936 * k + 9348695) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 28046086) = 17915904 * k + 14023043 := by
    unfold C
    simp [show (35831808 * k + 28046086) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 14023043) = 53747712 * k + 42069130 := by
    unfold C
    simp [show (17915904 * k + 14023043) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 42069130) = 26873856 * k + 21034565 := by
    unfold C
    simp [show (53747712 * k + 42069130) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 21034565) = 80621568 * k + 63103696 := by
    unfold C
    simp [show (26873856 * k + 21034565) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 63103696) = 40310784 * k + 31551848 := by
    unfold C
    simp [show (80621568 * k + 63103696) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 31551848) = 20155392 * k + 15775924 := by
    unfold C
    simp [show (40310784 * k + 31551848) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15775924) = 10077696 * k + 7887962 := by
    unfold C
    simp [show (20155392 * k + 15775924) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7887962) = 5038848 * k + 3943981 := by
    unfold C
    simp [show (10077696 * k + 7887962) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3943981) = 15116544 * k + 11831944 := by
    unfold C
    simp [show (5038848 * k + 3943981) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11831944) = 7558272 * k + 5915972 := by
    unfold C
    simp [show (15116544 * k + 11831944) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5915972) = 3779136 * k + 2957986 := by
    unfold C
    simp [show (7558272 * k + 5915972) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2957986) = 1889568 * k + 1478993 := by
    unfold C
    simp [show (3779136 * k + 2957986) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1478993) = 5668704 * k + 4436980 := by
    unfold C
    simp [show (1889568 * k + 1478993) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4436980) = 2834352 * k + 2218490 := by
    unfold C
    simp [show (5668704 * k + 4436980) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2218490) = 1417176 * k + 1109245 := by
    unfold C
    simp [show (2834352 * k + 2218490) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1109245) = 4251528 * k + 3327736 := by
    unfold C
    simp [show (1417176 * k + 1109245) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3327736) = 2125764 * k + 1663868 := by
    unfold C
    simp [show (4251528 * k + 3327736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1663868) = 1062882 * k + 831934 := by
    unfold C
    simp [show (2125764 * k + 1663868) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 831934) = 531441 * k + 415967 := by
    unfold C
    simp [show (1062882 * k + 831934) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 820735) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 820735)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_820895 : ∀ k : Nat,
    iterate (1048576 * k + 820895) 32 = 531441 * k + 416048 ∧
      531441 * k + 416048 < 1048576 * k + 820895 := by
  intro k
  have h1 : C (1048576 * k + 820895) = 3145728 * k + 2462686 := by
    unfold C
    simp [show (1048576 * k + 820895) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2462686) = 1572864 * k + 1231343 := by
    unfold C
    simp [show (3145728 * k + 2462686) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1231343) = 4718592 * k + 3694030 := by
    unfold C
    simp [show (1572864 * k + 1231343) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3694030) = 2359296 * k + 1847015 := by
    unfold C
    simp [show (4718592 * k + 3694030) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1847015) = 7077888 * k + 5541046 := by
    unfold C
    simp [show (2359296 * k + 1847015) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5541046) = 3538944 * k + 2770523 := by
    unfold C
    simp [show (7077888 * k + 5541046) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2770523) = 10616832 * k + 8311570 := by
    unfold C
    simp [show (3538944 * k + 2770523) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8311570) = 5308416 * k + 4155785 := by
    unfold C
    simp [show (10616832 * k + 8311570) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4155785) = 15925248 * k + 12467356 := by
    unfold C
    simp [show (5308416 * k + 4155785) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12467356) = 7962624 * k + 6233678 := by
    unfold C
    simp [show (15925248 * k + 12467356) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6233678) = 3981312 * k + 3116839 := by
    unfold C
    simp [show (7962624 * k + 6233678) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3116839) = 11943936 * k + 9350518 := by
    unfold C
    simp [show (3981312 * k + 3116839) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9350518) = 5971968 * k + 4675259 := by
    unfold C
    simp [show (11943936 * k + 9350518) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4675259) = 17915904 * k + 14025778 := by
    unfold C
    simp [show (5971968 * k + 4675259) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14025778) = 8957952 * k + 7012889 := by
    unfold C
    simp [show (17915904 * k + 14025778) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7012889) = 26873856 * k + 21038668 := by
    unfold C
    simp [show (8957952 * k + 7012889) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21038668) = 13436928 * k + 10519334 := by
    unfold C
    simp [show (26873856 * k + 21038668) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10519334) = 6718464 * k + 5259667 := by
    unfold C
    simp [show (13436928 * k + 10519334) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5259667) = 20155392 * k + 15779002 := by
    unfold C
    simp [show (6718464 * k + 5259667) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15779002) = 10077696 * k + 7889501 := by
    unfold C
    simp [show (20155392 * k + 15779002) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7889501) = 30233088 * k + 23668504 := by
    unfold C
    simp [show (10077696 * k + 7889501) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 23668504) = 15116544 * k + 11834252 := by
    unfold C
    simp [show (30233088 * k + 23668504) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11834252) = 7558272 * k + 5917126 := by
    unfold C
    simp [show (15116544 * k + 11834252) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5917126) = 3779136 * k + 2958563 := by
    unfold C
    simp [show (7558272 * k + 5917126) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2958563) = 11337408 * k + 8875690 := by
    unfold C
    simp [show (3779136 * k + 2958563) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8875690) = 5668704 * k + 4437845 := by
    unfold C
    simp [show (11337408 * k + 8875690) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4437845) = 17006112 * k + 13313536 := by
    unfold C
    simp [show (5668704 * k + 4437845) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13313536) = 8503056 * k + 6656768 := by
    unfold C
    simp [show (17006112 * k + 13313536) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6656768) = 4251528 * k + 3328384 := by
    unfold C
    simp [show (8503056 * k + 6656768) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3328384) = 2125764 * k + 1664192 := by
    unfold C
    simp [show (4251528 * k + 3328384) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1664192) = 1062882 * k + 832096 := by
    unfold C
    simp [show (2125764 * k + 1664192) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 832096) = 531441 * k + 416048 := by
    unfold C
    simp [show (1062882 * k + 832096) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 820895) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 820895)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_821487 : ∀ k : Nat,
    iterate (1048576 * k + 821487) 32 = 531441 * k + 416348 ∧
      531441 * k + 416348 < 1048576 * k + 821487 := by
  intro k
  have h1 : C (1048576 * k + 821487) = 3145728 * k + 2464462 := by
    unfold C
    simp [show (1048576 * k + 821487) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2464462) = 1572864 * k + 1232231 := by
    unfold C
    simp [show (3145728 * k + 2464462) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1232231) = 4718592 * k + 3696694 := by
    unfold C
    simp [show (1572864 * k + 1232231) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3696694) = 2359296 * k + 1848347 := by
    unfold C
    simp [show (4718592 * k + 3696694) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1848347) = 7077888 * k + 5545042 := by
    unfold C
    simp [show (2359296 * k + 1848347) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5545042) = 3538944 * k + 2772521 := by
    unfold C
    simp [show (7077888 * k + 5545042) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2772521) = 10616832 * k + 8317564 := by
    unfold C
    simp [show (3538944 * k + 2772521) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8317564) = 5308416 * k + 4158782 := by
    unfold C
    simp [show (10616832 * k + 8317564) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4158782) = 2654208 * k + 2079391 := by
    unfold C
    simp [show (5308416 * k + 4158782) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2079391) = 7962624 * k + 6238174 := by
    unfold C
    simp [show (2654208 * k + 2079391) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6238174) = 3981312 * k + 3119087 := by
    unfold C
    simp [show (7962624 * k + 6238174) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3119087) = 11943936 * k + 9357262 := by
    unfold C
    simp [show (3981312 * k + 3119087) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9357262) = 5971968 * k + 4678631 := by
    unfold C
    simp [show (11943936 * k + 9357262) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4678631) = 17915904 * k + 14035894 := by
    unfold C
    simp [show (5971968 * k + 4678631) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14035894) = 8957952 * k + 7017947 := by
    unfold C
    simp [show (17915904 * k + 14035894) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7017947) = 26873856 * k + 21053842 := by
    unfold C
    simp [show (8957952 * k + 7017947) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21053842) = 13436928 * k + 10526921 := by
    unfold C
    simp [show (26873856 * k + 21053842) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10526921) = 40310784 * k + 31580764 := by
    unfold C
    simp [show (13436928 * k + 10526921) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 31580764) = 20155392 * k + 15790382 := by
    unfold C
    simp [show (40310784 * k + 31580764) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15790382) = 10077696 * k + 7895191 := by
    unfold C
    simp [show (20155392 * k + 15790382) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7895191) = 30233088 * k + 23685574 := by
    unfold C
    simp [show (10077696 * k + 7895191) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 23685574) = 15116544 * k + 11842787 := by
    unfold C
    simp [show (30233088 * k + 23685574) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11842787) = 45349632 * k + 35528362 := by
    unfold C
    simp [show (15116544 * k + 11842787) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 35528362) = 22674816 * k + 17764181 := by
    unfold C
    simp [show (45349632 * k + 35528362) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 17764181) = 68024448 * k + 53292544 := by
    unfold C
    simp [show (22674816 * k + 17764181) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 53292544) = 34012224 * k + 26646272 := by
    unfold C
    simp [show (68024448 * k + 53292544) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 26646272) = 17006112 * k + 13323136 := by
    unfold C
    simp [show (34012224 * k + 26646272) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 13323136) = 8503056 * k + 6661568 := by
    unfold C
    simp [show (17006112 * k + 13323136) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6661568) = 4251528 * k + 3330784 := by
    unfold C
    simp [show (8503056 * k + 6661568) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3330784) = 2125764 * k + 1665392 := by
    unfold C
    simp [show (4251528 * k + 3330784) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1665392) = 1062882 * k + 832696 := by
    unfold C
    simp [show (2125764 * k + 1665392) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 832696) = 531441 * k + 416348 := by
    unfold C
    simp [show (1062882 * k + 832696) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 821487) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 821487)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_821871 : ∀ k : Nat,
    iterate (1048576 * k + 821871) 32 = 531441 * k + 416543 ∧
      531441 * k + 416543 < 1048576 * k + 821871 := by
  intro k
  have h1 : C (1048576 * k + 821871) = 3145728 * k + 2465614 := by
    unfold C
    simp [show (1048576 * k + 821871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2465614) = 1572864 * k + 1232807 := by
    unfold C
    simp [show (3145728 * k + 2465614) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1232807) = 4718592 * k + 3698422 := by
    unfold C
    simp [show (1572864 * k + 1232807) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3698422) = 2359296 * k + 1849211 := by
    unfold C
    simp [show (4718592 * k + 3698422) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1849211) = 7077888 * k + 5547634 := by
    unfold C
    simp [show (2359296 * k + 1849211) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5547634) = 3538944 * k + 2773817 := by
    unfold C
    simp [show (7077888 * k + 5547634) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2773817) = 10616832 * k + 8321452 := by
    unfold C
    simp [show (3538944 * k + 2773817) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8321452) = 5308416 * k + 4160726 := by
    unfold C
    simp [show (10616832 * k + 8321452) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4160726) = 2654208 * k + 2080363 := by
    unfold C
    simp [show (5308416 * k + 4160726) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2080363) = 7962624 * k + 6241090 := by
    unfold C
    simp [show (2654208 * k + 2080363) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6241090) = 3981312 * k + 3120545 := by
    unfold C
    simp [show (7962624 * k + 6241090) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3120545) = 11943936 * k + 9361636 := by
    unfold C
    simp [show (3981312 * k + 3120545) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9361636) = 5971968 * k + 4680818 := by
    unfold C
    simp [show (11943936 * k + 9361636) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4680818) = 2985984 * k + 2340409 := by
    unfold C
    simp [show (5971968 * k + 4680818) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2340409) = 8957952 * k + 7021228 := by
    unfold C
    simp [show (2985984 * k + 2340409) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7021228) = 4478976 * k + 3510614 := by
    unfold C
    simp [show (8957952 * k + 7021228) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3510614) = 2239488 * k + 1755307 := by
    unfold C
    simp [show (4478976 * k + 3510614) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1755307) = 6718464 * k + 5265922 := by
    unfold C
    simp [show (2239488 * k + 1755307) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5265922) = 3359232 * k + 2632961 := by
    unfold C
    simp [show (6718464 * k + 5265922) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2632961) = 10077696 * k + 7898884 := by
    unfold C
    simp [show (3359232 * k + 2632961) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7898884) = 5038848 * k + 3949442 := by
    unfold C
    simp [show (10077696 * k + 7898884) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3949442) = 2519424 * k + 1974721 := by
    unfold C
    simp [show (5038848 * k + 3949442) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1974721) = 7558272 * k + 5924164 := by
    unfold C
    simp [show (2519424 * k + 1974721) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5924164) = 3779136 * k + 2962082 := by
    unfold C
    simp [show (7558272 * k + 5924164) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2962082) = 1889568 * k + 1481041 := by
    unfold C
    simp [show (3779136 * k + 2962082) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1481041) = 5668704 * k + 4443124 := by
    unfold C
    simp [show (1889568 * k + 1481041) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4443124) = 2834352 * k + 2221562 := by
    unfold C
    simp [show (5668704 * k + 4443124) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2221562) = 1417176 * k + 1110781 := by
    unfold C
    simp [show (2834352 * k + 2221562) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1110781) = 4251528 * k + 3332344 := by
    unfold C
    simp [show (1417176 * k + 1110781) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3332344) = 2125764 * k + 1666172 := by
    unfold C
    simp [show (4251528 * k + 3332344) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1666172) = 1062882 * k + 833086 := by
    unfold C
    simp [show (2125764 * k + 1666172) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 833086) = 531441 * k + 416543 := by
    unfold C
    simp [show (1062882 * k + 833086) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 821871) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 821871)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_822439 : ∀ k : Nat,
    iterate (1048576 * k + 822439) 32 = 531441 * k + 416831 ∧
      531441 * k + 416831 < 1048576 * k + 822439 := by
  intro k
  have h1 : C (1048576 * k + 822439) = 3145728 * k + 2467318 := by
    unfold C
    simp [show (1048576 * k + 822439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2467318) = 1572864 * k + 1233659 := by
    unfold C
    simp [show (3145728 * k + 2467318) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1233659) = 4718592 * k + 3700978 := by
    unfold C
    simp [show (1572864 * k + 1233659) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3700978) = 2359296 * k + 1850489 := by
    unfold C
    simp [show (4718592 * k + 3700978) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1850489) = 7077888 * k + 5551468 := by
    unfold C
    simp [show (2359296 * k + 1850489) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5551468) = 3538944 * k + 2775734 := by
    unfold C
    simp [show (7077888 * k + 5551468) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2775734) = 1769472 * k + 1387867 := by
    unfold C
    simp [show (3538944 * k + 2775734) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1387867) = 5308416 * k + 4163602 := by
    unfold C
    simp [show (1769472 * k + 1387867) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4163602) = 2654208 * k + 2081801 := by
    unfold C
    simp [show (5308416 * k + 4163602) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2081801) = 7962624 * k + 6245404 := by
    unfold C
    simp [show (2654208 * k + 2081801) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6245404) = 3981312 * k + 3122702 := by
    unfold C
    simp [show (7962624 * k + 6245404) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3122702) = 1990656 * k + 1561351 := by
    unfold C
    simp [show (3981312 * k + 3122702) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1561351) = 5971968 * k + 4684054 := by
    unfold C
    simp [show (1990656 * k + 1561351) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4684054) = 2985984 * k + 2342027 := by
    unfold C
    simp [show (5971968 * k + 4684054) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2342027) = 8957952 * k + 7026082 := by
    unfold C
    simp [show (2985984 * k + 2342027) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7026082) = 4478976 * k + 3513041 := by
    unfold C
    simp [show (8957952 * k + 7026082) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3513041) = 13436928 * k + 10539124 := by
    unfold C
    simp [show (4478976 * k + 3513041) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10539124) = 6718464 * k + 5269562 := by
    unfold C
    simp [show (13436928 * k + 10539124) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5269562) = 3359232 * k + 2634781 := by
    unfold C
    simp [show (6718464 * k + 5269562) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2634781) = 10077696 * k + 7904344 := by
    unfold C
    simp [show (3359232 * k + 2634781) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7904344) = 5038848 * k + 3952172 := by
    unfold C
    simp [show (10077696 * k + 7904344) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3952172) = 2519424 * k + 1976086 := by
    unfold C
    simp [show (5038848 * k + 3952172) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1976086) = 1259712 * k + 988043 := by
    unfold C
    simp [show (2519424 * k + 1976086) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 988043) = 3779136 * k + 2964130 := by
    unfold C
    simp [show (1259712 * k + 988043) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2964130) = 1889568 * k + 1482065 := by
    unfold C
    simp [show (3779136 * k + 2964130) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1482065) = 5668704 * k + 4446196 := by
    unfold C
    simp [show (1889568 * k + 1482065) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4446196) = 2834352 * k + 2223098 := by
    unfold C
    simp [show (5668704 * k + 4446196) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2223098) = 1417176 * k + 1111549 := by
    unfold C
    simp [show (2834352 * k + 2223098) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1111549) = 4251528 * k + 3334648 := by
    unfold C
    simp [show (1417176 * k + 1111549) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3334648) = 2125764 * k + 1667324 := by
    unfold C
    simp [show (4251528 * k + 3334648) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1667324) = 1062882 * k + 833662 := by
    unfold C
    simp [show (2125764 * k + 1667324) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 833662) = 531441 * k + 416831 := by
    unfold C
    simp [show (1062882 * k + 833662) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 822439) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 822439)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_822511 : ∀ k : Nat,
    iterate (1048576 * k + 822511) 32 = 531441 * k + 416867 ∧
      531441 * k + 416867 < 1048576 * k + 822511 := by
  intro k
  have h1 : C (1048576 * k + 822511) = 3145728 * k + 2467534 := by
    unfold C
    simp [show (1048576 * k + 822511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2467534) = 1572864 * k + 1233767 := by
    unfold C
    simp [show (3145728 * k + 2467534) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1233767) = 4718592 * k + 3701302 := by
    unfold C
    simp [show (1572864 * k + 1233767) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3701302) = 2359296 * k + 1850651 := by
    unfold C
    simp [show (4718592 * k + 3701302) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1850651) = 7077888 * k + 5551954 := by
    unfold C
    simp [show (2359296 * k + 1850651) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5551954) = 3538944 * k + 2775977 := by
    unfold C
    simp [show (7077888 * k + 5551954) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2775977) = 10616832 * k + 8327932 := by
    unfold C
    simp [show (3538944 * k + 2775977) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8327932) = 5308416 * k + 4163966 := by
    unfold C
    simp [show (10616832 * k + 8327932) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4163966) = 2654208 * k + 2081983 := by
    unfold C
    simp [show (5308416 * k + 4163966) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2081983) = 7962624 * k + 6245950 := by
    unfold C
    simp [show (2654208 * k + 2081983) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6245950) = 3981312 * k + 3122975 := by
    unfold C
    simp [show (7962624 * k + 6245950) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3122975) = 11943936 * k + 9368926 := by
    unfold C
    simp [show (3981312 * k + 3122975) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9368926) = 5971968 * k + 4684463 := by
    unfold C
    simp [show (11943936 * k + 9368926) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4684463) = 17915904 * k + 14053390 := by
    unfold C
    simp [show (5971968 * k + 4684463) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14053390) = 8957952 * k + 7026695 := by
    unfold C
    simp [show (17915904 * k + 14053390) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7026695) = 26873856 * k + 21080086 := by
    unfold C
    simp [show (8957952 * k + 7026695) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21080086) = 13436928 * k + 10540043 := by
    unfold C
    simp [show (26873856 * k + 21080086) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10540043) = 40310784 * k + 31620130 := by
    unfold C
    simp [show (13436928 * k + 10540043) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 31620130) = 20155392 * k + 15810065 := by
    unfold C
    simp [show (40310784 * k + 31620130) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15810065) = 60466176 * k + 47430196 := by
    unfold C
    simp [show (20155392 * k + 15810065) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 47430196) = 30233088 * k + 23715098 := by
    unfold C
    simp [show (60466176 * k + 47430196) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 23715098) = 15116544 * k + 11857549 := by
    unfold C
    simp [show (30233088 * k + 23715098) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11857549) = 45349632 * k + 35572648 := by
    unfold C
    simp [show (15116544 * k + 11857549) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 35572648) = 22674816 * k + 17786324 := by
    unfold C
    simp [show (45349632 * k + 35572648) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 17786324) = 11337408 * k + 8893162 := by
    unfold C
    simp [show (22674816 * k + 17786324) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8893162) = 5668704 * k + 4446581 := by
    unfold C
    simp [show (11337408 * k + 8893162) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4446581) = 17006112 * k + 13339744 := by
    unfold C
    simp [show (5668704 * k + 4446581) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13339744) = 8503056 * k + 6669872 := by
    unfold C
    simp [show (17006112 * k + 13339744) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6669872) = 4251528 * k + 3334936 := by
    unfold C
    simp [show (8503056 * k + 6669872) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3334936) = 2125764 * k + 1667468 := by
    unfold C
    simp [show (4251528 * k + 3334936) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1667468) = 1062882 * k + 833734 := by
    unfold C
    simp [show (2125764 * k + 1667468) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 833734) = 531441 * k + 416867 := by
    unfold C
    simp [show (1062882 * k + 833734) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 822511) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 822511)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_822599 : ∀ k : Nat,
    iterate (1048576 * k + 822599) 32 = 531441 * k + 416912 ∧
      531441 * k + 416912 < 1048576 * k + 822599 := by
  intro k
  have h1 : C (1048576 * k + 822599) = 3145728 * k + 2467798 := by
    unfold C
    simp [show (1048576 * k + 822599) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2467798) = 1572864 * k + 1233899 := by
    unfold C
    simp [show (3145728 * k + 2467798) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1233899) = 4718592 * k + 3701698 := by
    unfold C
    simp [show (1572864 * k + 1233899) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3701698) = 2359296 * k + 1850849 := by
    unfold C
    simp [show (4718592 * k + 3701698) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1850849) = 7077888 * k + 5552548 := by
    unfold C
    simp [show (2359296 * k + 1850849) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5552548) = 3538944 * k + 2776274 := by
    unfold C
    simp [show (7077888 * k + 5552548) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2776274) = 1769472 * k + 1388137 := by
    unfold C
    simp [show (3538944 * k + 2776274) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1388137) = 5308416 * k + 4164412 := by
    unfold C
    simp [show (1769472 * k + 1388137) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4164412) = 2654208 * k + 2082206 := by
    unfold C
    simp [show (5308416 * k + 4164412) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2082206) = 1327104 * k + 1041103 := by
    unfold C
    simp [show (2654208 * k + 2082206) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1041103) = 3981312 * k + 3123310 := by
    unfold C
    simp [show (1327104 * k + 1041103) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3123310) = 1990656 * k + 1561655 := by
    unfold C
    simp [show (3981312 * k + 3123310) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1561655) = 5971968 * k + 4684966 := by
    unfold C
    simp [show (1990656 * k + 1561655) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4684966) = 2985984 * k + 2342483 := by
    unfold C
    simp [show (5971968 * k + 4684966) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2342483) = 8957952 * k + 7027450 := by
    unfold C
    simp [show (2985984 * k + 2342483) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7027450) = 4478976 * k + 3513725 := by
    unfold C
    simp [show (8957952 * k + 7027450) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3513725) = 13436928 * k + 10541176 := by
    unfold C
    simp [show (4478976 * k + 3513725) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10541176) = 6718464 * k + 5270588 := by
    unfold C
    simp [show (13436928 * k + 10541176) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5270588) = 3359232 * k + 2635294 := by
    unfold C
    simp [show (6718464 * k + 5270588) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2635294) = 1679616 * k + 1317647 := by
    unfold C
    simp [show (3359232 * k + 2635294) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1317647) = 5038848 * k + 3952942 := by
    unfold C
    simp [show (1679616 * k + 1317647) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3952942) = 2519424 * k + 1976471 := by
    unfold C
    simp [show (5038848 * k + 3952942) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1976471) = 7558272 * k + 5929414 := by
    unfold C
    simp [show (2519424 * k + 1976471) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5929414) = 3779136 * k + 2964707 := by
    unfold C
    simp [show (7558272 * k + 5929414) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2964707) = 11337408 * k + 8894122 := by
    unfold C
    simp [show (3779136 * k + 2964707) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8894122) = 5668704 * k + 4447061 := by
    unfold C
    simp [show (11337408 * k + 8894122) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4447061) = 17006112 * k + 13341184 := by
    unfold C
    simp [show (5668704 * k + 4447061) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13341184) = 8503056 * k + 6670592 := by
    unfold C
    simp [show (17006112 * k + 13341184) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6670592) = 4251528 * k + 3335296 := by
    unfold C
    simp [show (8503056 * k + 6670592) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3335296) = 2125764 * k + 1667648 := by
    unfold C
    simp [show (4251528 * k + 3335296) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1667648) = 1062882 * k + 833824 := by
    unfold C
    simp [show (2125764 * k + 1667648) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 833824) = 531441 * k + 416912 := by
    unfold C
    simp [show (1062882 * k + 833824) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 822599) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 822599)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_823623 : ∀ k : Nat,
    iterate (1048576 * k + 823623) 32 = 531441 * k + 417431 ∧
      531441 * k + 417431 < 1048576 * k + 823623 := by
  intro k
  have h1 : C (1048576 * k + 823623) = 3145728 * k + 2470870 := by
    unfold C
    simp [show (1048576 * k + 823623) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2470870) = 1572864 * k + 1235435 := by
    unfold C
    simp [show (3145728 * k + 2470870) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1235435) = 4718592 * k + 3706306 := by
    unfold C
    simp [show (1572864 * k + 1235435) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3706306) = 2359296 * k + 1853153 := by
    unfold C
    simp [show (4718592 * k + 3706306) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1853153) = 7077888 * k + 5559460 := by
    unfold C
    simp [show (2359296 * k + 1853153) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5559460) = 3538944 * k + 2779730 := by
    unfold C
    simp [show (7077888 * k + 5559460) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2779730) = 1769472 * k + 1389865 := by
    unfold C
    simp [show (3538944 * k + 2779730) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1389865) = 5308416 * k + 4169596 := by
    unfold C
    simp [show (1769472 * k + 1389865) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4169596) = 2654208 * k + 2084798 := by
    unfold C
    simp [show (5308416 * k + 4169596) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2084798) = 1327104 * k + 1042399 := by
    unfold C
    simp [show (2654208 * k + 2084798) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1042399) = 3981312 * k + 3127198 := by
    unfold C
    simp [show (1327104 * k + 1042399) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3127198) = 1990656 * k + 1563599 := by
    unfold C
    simp [show (3981312 * k + 3127198) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1563599) = 5971968 * k + 4690798 := by
    unfold C
    simp [show (1990656 * k + 1563599) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4690798) = 2985984 * k + 2345399 := by
    unfold C
    simp [show (5971968 * k + 4690798) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2345399) = 8957952 * k + 7036198 := by
    unfold C
    simp [show (2985984 * k + 2345399) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7036198) = 4478976 * k + 3518099 := by
    unfold C
    simp [show (8957952 * k + 7036198) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3518099) = 13436928 * k + 10554298 := by
    unfold C
    simp [show (4478976 * k + 3518099) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10554298) = 6718464 * k + 5277149 := by
    unfold C
    simp [show (13436928 * k + 10554298) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5277149) = 20155392 * k + 15831448 := by
    unfold C
    simp [show (6718464 * k + 5277149) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15831448) = 10077696 * k + 7915724 := by
    unfold C
    simp [show (20155392 * k + 15831448) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7915724) = 5038848 * k + 3957862 := by
    unfold C
    simp [show (10077696 * k + 7915724) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3957862) = 2519424 * k + 1978931 := by
    unfold C
    simp [show (5038848 * k + 3957862) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1978931) = 7558272 * k + 5936794 := by
    unfold C
    simp [show (2519424 * k + 1978931) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5936794) = 3779136 * k + 2968397 := by
    unfold C
    simp [show (7558272 * k + 5936794) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2968397) = 11337408 * k + 8905192 := by
    unfold C
    simp [show (3779136 * k + 2968397) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8905192) = 5668704 * k + 4452596 := by
    unfold C
    simp [show (11337408 * k + 8905192) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4452596) = 2834352 * k + 2226298 := by
    unfold C
    simp [show (5668704 * k + 4452596) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2226298) = 1417176 * k + 1113149 := by
    unfold C
    simp [show (2834352 * k + 2226298) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1113149) = 4251528 * k + 3339448 := by
    unfold C
    simp [show (1417176 * k + 1113149) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3339448) = 2125764 * k + 1669724 := by
    unfold C
    simp [show (4251528 * k + 3339448) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1669724) = 1062882 * k + 834862 := by
    unfold C
    simp [show (2125764 * k + 1669724) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 834862) = 531441 * k + 417431 := by
    unfold C
    simp [show (1062882 * k + 834862) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 823623) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 823623)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_823967 : ∀ k : Nat,
    iterate (1048576 * k + 823967) 32 = 531441 * k + 417605 ∧
      531441 * k + 417605 < 1048576 * k + 823967 := by
  intro k
  have h1 : C (1048576 * k + 823967) = 3145728 * k + 2471902 := by
    unfold C
    simp [show (1048576 * k + 823967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2471902) = 1572864 * k + 1235951 := by
    unfold C
    simp [show (3145728 * k + 2471902) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1235951) = 4718592 * k + 3707854 := by
    unfold C
    simp [show (1572864 * k + 1235951) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3707854) = 2359296 * k + 1853927 := by
    unfold C
    simp [show (4718592 * k + 3707854) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1853927) = 7077888 * k + 5561782 := by
    unfold C
    simp [show (2359296 * k + 1853927) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5561782) = 3538944 * k + 2780891 := by
    unfold C
    simp [show (7077888 * k + 5561782) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2780891) = 10616832 * k + 8342674 := by
    unfold C
    simp [show (3538944 * k + 2780891) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8342674) = 5308416 * k + 4171337 := by
    unfold C
    simp [show (10616832 * k + 8342674) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4171337) = 15925248 * k + 12514012 := by
    unfold C
    simp [show (5308416 * k + 4171337) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12514012) = 7962624 * k + 6257006 := by
    unfold C
    simp [show (15925248 * k + 12514012) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6257006) = 3981312 * k + 3128503 := by
    unfold C
    simp [show (7962624 * k + 6257006) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3128503) = 11943936 * k + 9385510 := by
    unfold C
    simp [show (3981312 * k + 3128503) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9385510) = 5971968 * k + 4692755 := by
    unfold C
    simp [show (11943936 * k + 9385510) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4692755) = 17915904 * k + 14078266 := by
    unfold C
    simp [show (5971968 * k + 4692755) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14078266) = 8957952 * k + 7039133 := by
    unfold C
    simp [show (17915904 * k + 14078266) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7039133) = 26873856 * k + 21117400 := by
    unfold C
    simp [show (8957952 * k + 7039133) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21117400) = 13436928 * k + 10558700 := by
    unfold C
    simp [show (26873856 * k + 21117400) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10558700) = 6718464 * k + 5279350 := by
    unfold C
    simp [show (13436928 * k + 10558700) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5279350) = 3359232 * k + 2639675 := by
    unfold C
    simp [show (6718464 * k + 5279350) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2639675) = 10077696 * k + 7919026 := by
    unfold C
    simp [show (3359232 * k + 2639675) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7919026) = 5038848 * k + 3959513 := by
    unfold C
    simp [show (10077696 * k + 7919026) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3959513) = 15116544 * k + 11878540 := by
    unfold C
    simp [show (5038848 * k + 3959513) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11878540) = 7558272 * k + 5939270 := by
    unfold C
    simp [show (15116544 * k + 11878540) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5939270) = 3779136 * k + 2969635 := by
    unfold C
    simp [show (7558272 * k + 5939270) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2969635) = 11337408 * k + 8908906 := by
    unfold C
    simp [show (3779136 * k + 2969635) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8908906) = 5668704 * k + 4454453 := by
    unfold C
    simp [show (11337408 * k + 8908906) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4454453) = 17006112 * k + 13363360 := by
    unfold C
    simp [show (5668704 * k + 4454453) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13363360) = 8503056 * k + 6681680 := by
    unfold C
    simp [show (17006112 * k + 13363360) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6681680) = 4251528 * k + 3340840 := by
    unfold C
    simp [show (8503056 * k + 6681680) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3340840) = 2125764 * k + 1670420 := by
    unfold C
    simp [show (4251528 * k + 3340840) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1670420) = 1062882 * k + 835210 := by
    unfold C
    simp [show (2125764 * k + 1670420) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 835210) = 531441 * k + 417605 := by
    unfold C
    simp [show (1062882 * k + 835210) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 823967) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 823967)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_824091 : ∀ k : Nat,
    iterate (1048576 * k + 824091) 32 = 531441 * k + 417668 ∧
      531441 * k + 417668 < 1048576 * k + 824091 := by
  intro k
  have h1 : C (1048576 * k + 824091) = 3145728 * k + 2472274 := by
    unfold C
    simp [show (1048576 * k + 824091) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2472274) = 1572864 * k + 1236137 := by
    unfold C
    simp [show (3145728 * k + 2472274) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1236137) = 4718592 * k + 3708412 := by
    unfold C
    simp [show (1572864 * k + 1236137) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3708412) = 2359296 * k + 1854206 := by
    unfold C
    simp [show (4718592 * k + 3708412) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1854206) = 1179648 * k + 927103 := by
    unfold C
    simp [show (2359296 * k + 1854206) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 927103) = 3538944 * k + 2781310 := by
    unfold C
    simp [show (1179648 * k + 927103) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2781310) = 1769472 * k + 1390655 := by
    unfold C
    simp [show (3538944 * k + 2781310) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1390655) = 5308416 * k + 4171966 := by
    unfold C
    simp [show (1769472 * k + 1390655) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4171966) = 2654208 * k + 2085983 := by
    unfold C
    simp [show (5308416 * k + 4171966) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2085983) = 7962624 * k + 6257950 := by
    unfold C
    simp [show (2654208 * k + 2085983) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6257950) = 3981312 * k + 3128975 := by
    unfold C
    simp [show (7962624 * k + 6257950) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3128975) = 11943936 * k + 9386926 := by
    unfold C
    simp [show (3981312 * k + 3128975) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9386926) = 5971968 * k + 4693463 := by
    unfold C
    simp [show (11943936 * k + 9386926) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4693463) = 17915904 * k + 14080390 := by
    unfold C
    simp [show (5971968 * k + 4693463) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14080390) = 8957952 * k + 7040195 := by
    unfold C
    simp [show (17915904 * k + 14080390) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7040195) = 26873856 * k + 21120586 := by
    unfold C
    simp [show (8957952 * k + 7040195) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21120586) = 13436928 * k + 10560293 := by
    unfold C
    simp [show (26873856 * k + 21120586) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10560293) = 40310784 * k + 31680880 := by
    unfold C
    simp [show (13436928 * k + 10560293) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 31680880) = 20155392 * k + 15840440 := by
    unfold C
    simp [show (40310784 * k + 31680880) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15840440) = 10077696 * k + 7920220 := by
    unfold C
    simp [show (20155392 * k + 15840440) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7920220) = 5038848 * k + 3960110 := by
    unfold C
    simp [show (10077696 * k + 7920220) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3960110) = 2519424 * k + 1980055 := by
    unfold C
    simp [show (5038848 * k + 3960110) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1980055) = 7558272 * k + 5940166 := by
    unfold C
    simp [show (2519424 * k + 1980055) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5940166) = 3779136 * k + 2970083 := by
    unfold C
    simp [show (7558272 * k + 5940166) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2970083) = 11337408 * k + 8910250 := by
    unfold C
    simp [show (3779136 * k + 2970083) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8910250) = 5668704 * k + 4455125 := by
    unfold C
    simp [show (11337408 * k + 8910250) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4455125) = 17006112 * k + 13365376 := by
    unfold C
    simp [show (5668704 * k + 4455125) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13365376) = 8503056 * k + 6682688 := by
    unfold C
    simp [show (17006112 * k + 13365376) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6682688) = 4251528 * k + 3341344 := by
    unfold C
    simp [show (8503056 * k + 6682688) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3341344) = 2125764 * k + 1670672 := by
    unfold C
    simp [show (4251528 * k + 3341344) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1670672) = 1062882 * k + 835336 := by
    unfold C
    simp [show (2125764 * k + 1670672) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 835336) = 531441 * k + 417668 := by
    unfold C
    simp [show (1062882 * k + 835336) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 824091) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 824091)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_824623 : ∀ k : Nat,
    iterate (1048576 * k + 824623) 32 = 531441 * k + 417938 ∧
      531441 * k + 417938 < 1048576 * k + 824623 := by
  intro k
  have h1 : C (1048576 * k + 824623) = 3145728 * k + 2473870 := by
    unfold C
    simp [show (1048576 * k + 824623) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2473870) = 1572864 * k + 1236935 := by
    unfold C
    simp [show (3145728 * k + 2473870) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1236935) = 4718592 * k + 3710806 := by
    unfold C
    simp [show (1572864 * k + 1236935) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3710806) = 2359296 * k + 1855403 := by
    unfold C
    simp [show (4718592 * k + 3710806) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1855403) = 7077888 * k + 5566210 := by
    unfold C
    simp [show (2359296 * k + 1855403) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5566210) = 3538944 * k + 2783105 := by
    unfold C
    simp [show (7077888 * k + 5566210) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2783105) = 10616832 * k + 8349316 := by
    unfold C
    simp [show (3538944 * k + 2783105) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8349316) = 5308416 * k + 4174658 := by
    unfold C
    simp [show (10616832 * k + 8349316) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4174658) = 2654208 * k + 2087329 := by
    unfold C
    simp [show (5308416 * k + 4174658) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2087329) = 7962624 * k + 6261988 := by
    unfold C
    simp [show (2654208 * k + 2087329) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6261988) = 3981312 * k + 3130994 := by
    unfold C
    simp [show (7962624 * k + 6261988) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3130994) = 1990656 * k + 1565497 := by
    unfold C
    simp [show (3981312 * k + 3130994) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1565497) = 5971968 * k + 4696492 := by
    unfold C
    simp [show (1990656 * k + 1565497) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4696492) = 2985984 * k + 2348246 := by
    unfold C
    simp [show (5971968 * k + 4696492) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2348246) = 1492992 * k + 1174123 := by
    unfold C
    simp [show (2985984 * k + 2348246) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1174123) = 4478976 * k + 3522370 := by
    unfold C
    simp [show (1492992 * k + 1174123) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3522370) = 2239488 * k + 1761185 := by
    unfold C
    simp [show (4478976 * k + 3522370) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1761185) = 6718464 * k + 5283556 := by
    unfold C
    simp [show (2239488 * k + 1761185) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5283556) = 3359232 * k + 2641778 := by
    unfold C
    simp [show (6718464 * k + 5283556) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2641778) = 1679616 * k + 1320889 := by
    unfold C
    simp [show (3359232 * k + 2641778) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1320889) = 5038848 * k + 3962668 := by
    unfold C
    simp [show (1679616 * k + 1320889) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3962668) = 2519424 * k + 1981334 := by
    unfold C
    simp [show (5038848 * k + 3962668) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1981334) = 1259712 * k + 990667 := by
    unfold C
    simp [show (2519424 * k + 1981334) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 990667) = 3779136 * k + 2972002 := by
    unfold C
    simp [show (1259712 * k + 990667) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2972002) = 1889568 * k + 1486001 := by
    unfold C
    simp [show (3779136 * k + 2972002) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1486001) = 5668704 * k + 4458004 := by
    unfold C
    simp [show (1889568 * k + 1486001) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4458004) = 2834352 * k + 2229002 := by
    unfold C
    simp [show (5668704 * k + 4458004) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2229002) = 1417176 * k + 1114501 := by
    unfold C
    simp [show (2834352 * k + 2229002) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1114501) = 4251528 * k + 3343504 := by
    unfold C
    simp [show (1417176 * k + 1114501) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3343504) = 2125764 * k + 1671752 := by
    unfold C
    simp [show (4251528 * k + 3343504) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1671752) = 1062882 * k + 835876 := by
    unfold C
    simp [show (2125764 * k + 1671752) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 835876) = 531441 * k + 417938 := by
    unfold C
    simp [show (1062882 * k + 835876) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 824623) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 824623)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_824783 : ∀ k : Nat,
    iterate (1048576 * k + 824783) 32 = 531441 * k + 418019 ∧
      531441 * k + 418019 < 1048576 * k + 824783 := by
  intro k
  have h1 : C (1048576 * k + 824783) = 3145728 * k + 2474350 := by
    unfold C
    simp [show (1048576 * k + 824783) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2474350) = 1572864 * k + 1237175 := by
    unfold C
    simp [show (3145728 * k + 2474350) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1237175) = 4718592 * k + 3711526 := by
    unfold C
    simp [show (1572864 * k + 1237175) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3711526) = 2359296 * k + 1855763 := by
    unfold C
    simp [show (4718592 * k + 3711526) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1855763) = 7077888 * k + 5567290 := by
    unfold C
    simp [show (2359296 * k + 1855763) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5567290) = 3538944 * k + 2783645 := by
    unfold C
    simp [show (7077888 * k + 5567290) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2783645) = 10616832 * k + 8350936 := by
    unfold C
    simp [show (3538944 * k + 2783645) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8350936) = 5308416 * k + 4175468 := by
    unfold C
    simp [show (10616832 * k + 8350936) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4175468) = 2654208 * k + 2087734 := by
    unfold C
    simp [show (5308416 * k + 4175468) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2087734) = 1327104 * k + 1043867 := by
    unfold C
    simp [show (2654208 * k + 2087734) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1043867) = 3981312 * k + 3131602 := by
    unfold C
    simp [show (1327104 * k + 1043867) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3131602) = 1990656 * k + 1565801 := by
    unfold C
    simp [show (3981312 * k + 3131602) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1565801) = 5971968 * k + 4697404 := by
    unfold C
    simp [show (1990656 * k + 1565801) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4697404) = 2985984 * k + 2348702 := by
    unfold C
    simp [show (5971968 * k + 4697404) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2348702) = 1492992 * k + 1174351 := by
    unfold C
    simp [show (2985984 * k + 2348702) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1174351) = 4478976 * k + 3523054 := by
    unfold C
    simp [show (1492992 * k + 1174351) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3523054) = 2239488 * k + 1761527 := by
    unfold C
    simp [show (4478976 * k + 3523054) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1761527) = 6718464 * k + 5284582 := by
    unfold C
    simp [show (2239488 * k + 1761527) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5284582) = 3359232 * k + 2642291 := by
    unfold C
    simp [show (6718464 * k + 5284582) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2642291) = 10077696 * k + 7926874 := by
    unfold C
    simp [show (3359232 * k + 2642291) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7926874) = 5038848 * k + 3963437 := by
    unfold C
    simp [show (10077696 * k + 7926874) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3963437) = 15116544 * k + 11890312 := by
    unfold C
    simp [show (5038848 * k + 3963437) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11890312) = 7558272 * k + 5945156 := by
    unfold C
    simp [show (15116544 * k + 11890312) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5945156) = 3779136 * k + 2972578 := by
    unfold C
    simp [show (7558272 * k + 5945156) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2972578) = 1889568 * k + 1486289 := by
    unfold C
    simp [show (3779136 * k + 2972578) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1486289) = 5668704 * k + 4458868 := by
    unfold C
    simp [show (1889568 * k + 1486289) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4458868) = 2834352 * k + 2229434 := by
    unfold C
    simp [show (5668704 * k + 4458868) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2229434) = 1417176 * k + 1114717 := by
    unfold C
    simp [show (2834352 * k + 2229434) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1114717) = 4251528 * k + 3344152 := by
    unfold C
    simp [show (1417176 * k + 1114717) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3344152) = 2125764 * k + 1672076 := by
    unfold C
    simp [show (4251528 * k + 3344152) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1672076) = 1062882 * k + 836038 := by
    unfold C
    simp [show (2125764 * k + 1672076) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 836038) = 531441 * k + 418019 := by
    unfold C
    simp [show (1062882 * k + 836038) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 824783) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 824783)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_824991 : ∀ k : Nat,
    iterate (1048576 * k + 824991) 32 = 531441 * k + 418124 ∧
      531441 * k + 418124 < 1048576 * k + 824991 := by
  intro k
  have h1 : C (1048576 * k + 824991) = 3145728 * k + 2474974 := by
    unfold C
    simp [show (1048576 * k + 824991) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2474974) = 1572864 * k + 1237487 := by
    unfold C
    simp [show (3145728 * k + 2474974) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1237487) = 4718592 * k + 3712462 := by
    unfold C
    simp [show (1572864 * k + 1237487) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3712462) = 2359296 * k + 1856231 := by
    unfold C
    simp [show (4718592 * k + 3712462) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1856231) = 7077888 * k + 5568694 := by
    unfold C
    simp [show (2359296 * k + 1856231) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5568694) = 3538944 * k + 2784347 := by
    unfold C
    simp [show (7077888 * k + 5568694) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2784347) = 10616832 * k + 8353042 := by
    unfold C
    simp [show (3538944 * k + 2784347) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8353042) = 5308416 * k + 4176521 := by
    unfold C
    simp [show (10616832 * k + 8353042) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4176521) = 15925248 * k + 12529564 := by
    unfold C
    simp [show (5308416 * k + 4176521) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12529564) = 7962624 * k + 6264782 := by
    unfold C
    simp [show (15925248 * k + 12529564) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6264782) = 3981312 * k + 3132391 := by
    unfold C
    simp [show (7962624 * k + 6264782) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3132391) = 11943936 * k + 9397174 := by
    unfold C
    simp [show (3981312 * k + 3132391) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9397174) = 5971968 * k + 4698587 := by
    unfold C
    simp [show (11943936 * k + 9397174) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4698587) = 17915904 * k + 14095762 := by
    unfold C
    simp [show (5971968 * k + 4698587) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14095762) = 8957952 * k + 7047881 := by
    unfold C
    simp [show (17915904 * k + 14095762) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7047881) = 26873856 * k + 21143644 := by
    unfold C
    simp [show (8957952 * k + 7047881) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21143644) = 13436928 * k + 10571822 := by
    unfold C
    simp [show (26873856 * k + 21143644) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10571822) = 6718464 * k + 5285911 := by
    unfold C
    simp [show (13436928 * k + 10571822) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5285911) = 20155392 * k + 15857734 := by
    unfold C
    simp [show (6718464 * k + 5285911) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15857734) = 10077696 * k + 7928867 := by
    unfold C
    simp [show (20155392 * k + 15857734) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7928867) = 30233088 * k + 23786602 := by
    unfold C
    simp [show (10077696 * k + 7928867) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 23786602) = 15116544 * k + 11893301 := by
    unfold C
    simp [show (30233088 * k + 23786602) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11893301) = 45349632 * k + 35679904 := by
    unfold C
    simp [show (15116544 * k + 11893301) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 35679904) = 22674816 * k + 17839952 := by
    unfold C
    simp [show (45349632 * k + 35679904) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 17839952) = 11337408 * k + 8919976 := by
    unfold C
    simp [show (22674816 * k + 17839952) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8919976) = 5668704 * k + 4459988 := by
    unfold C
    simp [show (11337408 * k + 8919976) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4459988) = 2834352 * k + 2229994 := by
    unfold C
    simp [show (5668704 * k + 4459988) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2229994) = 1417176 * k + 1114997 := by
    unfold C
    simp [show (2834352 * k + 2229994) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1114997) = 4251528 * k + 3344992 := by
    unfold C
    simp [show (1417176 * k + 1114997) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3344992) = 2125764 * k + 1672496 := by
    unfold C
    simp [show (4251528 * k + 3344992) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1672496) = 1062882 * k + 836248 := by
    unfold C
    simp [show (2125764 * k + 1672496) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 836248) = 531441 * k + 418124 := by
    unfold C
    simp [show (1062882 * k + 836248) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 824991) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 824991)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_825391 : ∀ k : Nat,
    iterate (1048576 * k + 825391) 32 = 531441 * k + 418327 ∧
      531441 * k + 418327 < 1048576 * k + 825391 := by
  intro k
  have h1 : C (1048576 * k + 825391) = 3145728 * k + 2476174 := by
    unfold C
    simp [show (1048576 * k + 825391) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2476174) = 1572864 * k + 1238087 := by
    unfold C
    simp [show (3145728 * k + 2476174) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1238087) = 4718592 * k + 3714262 := by
    unfold C
    simp [show (1572864 * k + 1238087) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3714262) = 2359296 * k + 1857131 := by
    unfold C
    simp [show (4718592 * k + 3714262) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1857131) = 7077888 * k + 5571394 := by
    unfold C
    simp [show (2359296 * k + 1857131) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5571394) = 3538944 * k + 2785697 := by
    unfold C
    simp [show (7077888 * k + 5571394) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2785697) = 10616832 * k + 8357092 := by
    unfold C
    simp [show (3538944 * k + 2785697) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8357092) = 5308416 * k + 4178546 := by
    unfold C
    simp [show (10616832 * k + 8357092) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4178546) = 2654208 * k + 2089273 := by
    unfold C
    simp [show (5308416 * k + 4178546) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2089273) = 7962624 * k + 6267820 := by
    unfold C
    simp [show (2654208 * k + 2089273) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6267820) = 3981312 * k + 3133910 := by
    unfold C
    simp [show (7962624 * k + 6267820) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3133910) = 1990656 * k + 1566955 := by
    unfold C
    simp [show (3981312 * k + 3133910) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1566955) = 5971968 * k + 4700866 := by
    unfold C
    simp [show (1990656 * k + 1566955) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4700866) = 2985984 * k + 2350433 := by
    unfold C
    simp [show (5971968 * k + 4700866) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2350433) = 8957952 * k + 7051300 := by
    unfold C
    simp [show (2985984 * k + 2350433) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7051300) = 4478976 * k + 3525650 := by
    unfold C
    simp [show (8957952 * k + 7051300) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3525650) = 2239488 * k + 1762825 := by
    unfold C
    simp [show (4478976 * k + 3525650) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1762825) = 6718464 * k + 5288476 := by
    unfold C
    simp [show (2239488 * k + 1762825) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5288476) = 3359232 * k + 2644238 := by
    unfold C
    simp [show (6718464 * k + 5288476) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2644238) = 1679616 * k + 1322119 := by
    unfold C
    simp [show (3359232 * k + 2644238) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1322119) = 5038848 * k + 3966358 := by
    unfold C
    simp [show (1679616 * k + 1322119) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3966358) = 2519424 * k + 1983179 := by
    unfold C
    simp [show (5038848 * k + 3966358) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1983179) = 7558272 * k + 5949538 := by
    unfold C
    simp [show (2519424 * k + 1983179) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5949538) = 3779136 * k + 2974769 := by
    unfold C
    simp [show (7558272 * k + 5949538) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2974769) = 11337408 * k + 8924308 := by
    unfold C
    simp [show (3779136 * k + 2974769) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8924308) = 5668704 * k + 4462154 := by
    unfold C
    simp [show (11337408 * k + 8924308) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4462154) = 2834352 * k + 2231077 := by
    unfold C
    simp [show (5668704 * k + 4462154) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2231077) = 8503056 * k + 6693232 := by
    unfold C
    simp [show (2834352 * k + 2231077) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6693232) = 4251528 * k + 3346616 := by
    unfold C
    simp [show (8503056 * k + 6693232) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3346616) = 2125764 * k + 1673308 := by
    unfold C
    simp [show (4251528 * k + 3346616) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1673308) = 1062882 * k + 836654 := by
    unfold C
    simp [show (2125764 * k + 1673308) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 836654) = 531441 * k + 418327 := by
    unfold C
    simp [show (1062882 * k + 836654) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 825391) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 825391)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_825551 : ∀ k : Nat,
    iterate (1048576 * k + 825551) 32 = 531441 * k + 418408 ∧
      531441 * k + 418408 < 1048576 * k + 825551 := by
  intro k
  have h1 : C (1048576 * k + 825551) = 3145728 * k + 2476654 := by
    unfold C
    simp [show (1048576 * k + 825551) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2476654) = 1572864 * k + 1238327 := by
    unfold C
    simp [show (3145728 * k + 2476654) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1238327) = 4718592 * k + 3714982 := by
    unfold C
    simp [show (1572864 * k + 1238327) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3714982) = 2359296 * k + 1857491 := by
    unfold C
    simp [show (4718592 * k + 3714982) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1857491) = 7077888 * k + 5572474 := by
    unfold C
    simp [show (2359296 * k + 1857491) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5572474) = 3538944 * k + 2786237 := by
    unfold C
    simp [show (7077888 * k + 5572474) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2786237) = 10616832 * k + 8358712 := by
    unfold C
    simp [show (3538944 * k + 2786237) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8358712) = 5308416 * k + 4179356 := by
    unfold C
    simp [show (10616832 * k + 8358712) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4179356) = 2654208 * k + 2089678 := by
    unfold C
    simp [show (5308416 * k + 4179356) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2089678) = 1327104 * k + 1044839 := by
    unfold C
    simp [show (2654208 * k + 2089678) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1044839) = 3981312 * k + 3134518 := by
    unfold C
    simp [show (1327104 * k + 1044839) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3134518) = 1990656 * k + 1567259 := by
    unfold C
    simp [show (3981312 * k + 3134518) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1567259) = 5971968 * k + 4701778 := by
    unfold C
    simp [show (1990656 * k + 1567259) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4701778) = 2985984 * k + 2350889 := by
    unfold C
    simp [show (5971968 * k + 4701778) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2350889) = 8957952 * k + 7052668 := by
    unfold C
    simp [show (2985984 * k + 2350889) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7052668) = 4478976 * k + 3526334 := by
    unfold C
    simp [show (8957952 * k + 7052668) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3526334) = 2239488 * k + 1763167 := by
    unfold C
    simp [show (4478976 * k + 3526334) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1763167) = 6718464 * k + 5289502 := by
    unfold C
    simp [show (2239488 * k + 1763167) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5289502) = 3359232 * k + 2644751 := by
    unfold C
    simp [show (6718464 * k + 5289502) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2644751) = 10077696 * k + 7934254 := by
    unfold C
    simp [show (3359232 * k + 2644751) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7934254) = 5038848 * k + 3967127 := by
    unfold C
    simp [show (10077696 * k + 7934254) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3967127) = 15116544 * k + 11901382 := by
    unfold C
    simp [show (5038848 * k + 3967127) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11901382) = 7558272 * k + 5950691 := by
    unfold C
    simp [show (15116544 * k + 11901382) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5950691) = 22674816 * k + 17852074 := by
    unfold C
    simp [show (7558272 * k + 5950691) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 17852074) = 11337408 * k + 8926037 := by
    unfold C
    simp [show (22674816 * k + 17852074) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8926037) = 34012224 * k + 26778112 := by
    unfold C
    simp [show (11337408 * k + 8926037) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 26778112) = 17006112 * k + 13389056 := by
    unfold C
    simp [show (34012224 * k + 26778112) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 13389056) = 8503056 * k + 6694528 := by
    unfold C
    simp [show (17006112 * k + 13389056) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6694528) = 4251528 * k + 3347264 := by
    unfold C
    simp [show (8503056 * k + 6694528) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3347264) = 2125764 * k + 1673632 := by
    unfold C
    simp [show (4251528 * k + 3347264) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1673632) = 1062882 * k + 836816 := by
    unfold C
    simp [show (2125764 * k + 1673632) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 836816) = 531441 * k + 418408 := by
    unfold C
    simp [show (1062882 * k + 836816) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 825551) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 825551)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_825583 : ∀ k : Nat,
    iterate (1048576 * k + 825583) 32 = 531441 * k + 418424 ∧
      531441 * k + 418424 < 1048576 * k + 825583 := by
  intro k
  have h1 : C (1048576 * k + 825583) = 3145728 * k + 2476750 := by
    unfold C
    simp [show (1048576 * k + 825583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2476750) = 1572864 * k + 1238375 := by
    unfold C
    simp [show (3145728 * k + 2476750) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1238375) = 4718592 * k + 3715126 := by
    unfold C
    simp [show (1572864 * k + 1238375) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3715126) = 2359296 * k + 1857563 := by
    unfold C
    simp [show (4718592 * k + 3715126) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1857563) = 7077888 * k + 5572690 := by
    unfold C
    simp [show (2359296 * k + 1857563) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5572690) = 3538944 * k + 2786345 := by
    unfold C
    simp [show (7077888 * k + 5572690) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2786345) = 10616832 * k + 8359036 := by
    unfold C
    simp [show (3538944 * k + 2786345) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8359036) = 5308416 * k + 4179518 := by
    unfold C
    simp [show (10616832 * k + 8359036) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4179518) = 2654208 * k + 2089759 := by
    unfold C
    simp [show (5308416 * k + 4179518) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2089759) = 7962624 * k + 6269278 := by
    unfold C
    simp [show (2654208 * k + 2089759) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6269278) = 3981312 * k + 3134639 := by
    unfold C
    simp [show (7962624 * k + 6269278) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3134639) = 11943936 * k + 9403918 := by
    unfold C
    simp [show (3981312 * k + 3134639) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9403918) = 5971968 * k + 4701959 := by
    unfold C
    simp [show (11943936 * k + 9403918) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4701959) = 17915904 * k + 14105878 := by
    unfold C
    simp [show (5971968 * k + 4701959) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14105878) = 8957952 * k + 7052939 := by
    unfold C
    simp [show (17915904 * k + 14105878) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7052939) = 26873856 * k + 21158818 := by
    unfold C
    simp [show (8957952 * k + 7052939) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21158818) = 13436928 * k + 10579409 := by
    unfold C
    simp [show (26873856 * k + 21158818) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10579409) = 40310784 * k + 31738228 := by
    unfold C
    simp [show (13436928 * k + 10579409) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 31738228) = 20155392 * k + 15869114 := by
    unfold C
    simp [show (40310784 * k + 31738228) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15869114) = 10077696 * k + 7934557 := by
    unfold C
    simp [show (20155392 * k + 15869114) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7934557) = 30233088 * k + 23803672 := by
    unfold C
    simp [show (10077696 * k + 7934557) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 23803672) = 15116544 * k + 11901836 := by
    unfold C
    simp [show (30233088 * k + 23803672) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11901836) = 7558272 * k + 5950918 := by
    unfold C
    simp [show (15116544 * k + 11901836) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5950918) = 3779136 * k + 2975459 := by
    unfold C
    simp [show (7558272 * k + 5950918) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2975459) = 11337408 * k + 8926378 := by
    unfold C
    simp [show (3779136 * k + 2975459) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8926378) = 5668704 * k + 4463189 := by
    unfold C
    simp [show (11337408 * k + 8926378) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4463189) = 17006112 * k + 13389568 := by
    unfold C
    simp [show (5668704 * k + 4463189) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13389568) = 8503056 * k + 6694784 := by
    unfold C
    simp [show (17006112 * k + 13389568) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6694784) = 4251528 * k + 3347392 := by
    unfold C
    simp [show (8503056 * k + 6694784) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3347392) = 2125764 * k + 1673696 := by
    unfold C
    simp [show (4251528 * k + 3347392) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1673696) = 1062882 * k + 836848 := by
    unfold C
    simp [show (2125764 * k + 1673696) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 836848) = 531441 * k + 418424 := by
    unfold C
    simp [show (1062882 * k + 836848) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 825583) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 825583)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_826143 : ∀ k : Nat,
    iterate (1048576 * k + 826143) 32 = 531441 * k + 418708 ∧
      531441 * k + 418708 < 1048576 * k + 826143 := by
  intro k
  have h1 : C (1048576 * k + 826143) = 3145728 * k + 2478430 := by
    unfold C
    simp [show (1048576 * k + 826143) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2478430) = 1572864 * k + 1239215 := by
    unfold C
    simp [show (3145728 * k + 2478430) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1239215) = 4718592 * k + 3717646 := by
    unfold C
    simp [show (1572864 * k + 1239215) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3717646) = 2359296 * k + 1858823 := by
    unfold C
    simp [show (4718592 * k + 3717646) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1858823) = 7077888 * k + 5576470 := by
    unfold C
    simp [show (2359296 * k + 1858823) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5576470) = 3538944 * k + 2788235 := by
    unfold C
    simp [show (7077888 * k + 5576470) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2788235) = 10616832 * k + 8364706 := by
    unfold C
    simp [show (3538944 * k + 2788235) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8364706) = 5308416 * k + 4182353 := by
    unfold C
    simp [show (10616832 * k + 8364706) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4182353) = 15925248 * k + 12547060 := by
    unfold C
    simp [show (5308416 * k + 4182353) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12547060) = 7962624 * k + 6273530 := by
    unfold C
    simp [show (15925248 * k + 12547060) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6273530) = 3981312 * k + 3136765 := by
    unfold C
    simp [show (7962624 * k + 6273530) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3136765) = 11943936 * k + 9410296 := by
    unfold C
    simp [show (3981312 * k + 3136765) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9410296) = 5971968 * k + 4705148 := by
    unfold C
    simp [show (11943936 * k + 9410296) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4705148) = 2985984 * k + 2352574 := by
    unfold C
    simp [show (5971968 * k + 4705148) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2352574) = 1492992 * k + 1176287 := by
    unfold C
    simp [show (2985984 * k + 2352574) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1176287) = 4478976 * k + 3528862 := by
    unfold C
    simp [show (1492992 * k + 1176287) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3528862) = 2239488 * k + 1764431 := by
    unfold C
    simp [show (4478976 * k + 3528862) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1764431) = 6718464 * k + 5293294 := by
    unfold C
    simp [show (2239488 * k + 1764431) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5293294) = 3359232 * k + 2646647 := by
    unfold C
    simp [show (6718464 * k + 5293294) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2646647) = 10077696 * k + 7939942 := by
    unfold C
    simp [show (3359232 * k + 2646647) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7939942) = 5038848 * k + 3969971 := by
    unfold C
    simp [show (10077696 * k + 7939942) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3969971) = 15116544 * k + 11909914 := by
    unfold C
    simp [show (5038848 * k + 3969971) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11909914) = 7558272 * k + 5954957 := by
    unfold C
    simp [show (15116544 * k + 11909914) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5954957) = 22674816 * k + 17864872 := by
    unfold C
    simp [show (7558272 * k + 5954957) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 17864872) = 11337408 * k + 8932436 := by
    unfold C
    simp [show (22674816 * k + 17864872) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8932436) = 5668704 * k + 4466218 := by
    unfold C
    simp [show (11337408 * k + 8932436) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4466218) = 2834352 * k + 2233109 := by
    unfold C
    simp [show (5668704 * k + 4466218) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2233109) = 8503056 * k + 6699328 := by
    unfold C
    simp [show (2834352 * k + 2233109) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6699328) = 4251528 * k + 3349664 := by
    unfold C
    simp [show (8503056 * k + 6699328) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3349664) = 2125764 * k + 1674832 := by
    unfold C
    simp [show (4251528 * k + 3349664) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1674832) = 1062882 * k + 837416 := by
    unfold C
    simp [show (2125764 * k + 1674832) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 837416) = 531441 * k + 418708 := by
    unfold C
    simp [show (1062882 * k + 837416) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 826143) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 826143)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard105
