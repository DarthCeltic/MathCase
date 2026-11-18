import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard017

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_115291 : ∀ k : Nat,
    iterate (1048576 * k + 115291) 32 = 531441 * k + 58433 ∧
      531441 * k + 58433 < 1048576 * k + 115291 := by
  intro k
  have h1 : C (1048576 * k + 115291) = 3145728 * k + 345874 := by
    unfold C
    simp [show (1048576 * k + 115291) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 345874) = 1572864 * k + 172937 := by
    unfold C
    simp [show (3145728 * k + 345874) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 172937) = 4718592 * k + 518812 := by
    unfold C
    simp [show (1572864 * k + 172937) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 518812) = 2359296 * k + 259406 := by
    unfold C
    simp [show (4718592 * k + 518812) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 259406) = 1179648 * k + 129703 := by
    unfold C
    simp [show (2359296 * k + 259406) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 129703) = 3538944 * k + 389110 := by
    unfold C
    simp [show (1179648 * k + 129703) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 389110) = 1769472 * k + 194555 := by
    unfold C
    simp [show (3538944 * k + 389110) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 194555) = 5308416 * k + 583666 := by
    unfold C
    simp [show (1769472 * k + 194555) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 583666) = 2654208 * k + 291833 := by
    unfold C
    simp [show (5308416 * k + 583666) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 291833) = 7962624 * k + 875500 := by
    unfold C
    simp [show (2654208 * k + 291833) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 875500) = 3981312 * k + 437750 := by
    unfold C
    simp [show (7962624 * k + 875500) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 437750) = 1990656 * k + 218875 := by
    unfold C
    simp [show (3981312 * k + 437750) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 218875) = 5971968 * k + 656626 := by
    unfold C
    simp [show (1990656 * k + 218875) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 656626) = 2985984 * k + 328313 := by
    unfold C
    simp [show (5971968 * k + 656626) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 328313) = 8957952 * k + 984940 := by
    unfold C
    simp [show (2985984 * k + 328313) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 984940) = 4478976 * k + 492470 := by
    unfold C
    simp [show (8957952 * k + 984940) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 492470) = 2239488 * k + 246235 := by
    unfold C
    simp [show (4478976 * k + 492470) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 246235) = 6718464 * k + 738706 := by
    unfold C
    simp [show (2239488 * k + 246235) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 738706) = 3359232 * k + 369353 := by
    unfold C
    simp [show (6718464 * k + 738706) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 369353) = 10077696 * k + 1108060 := by
    unfold C
    simp [show (3359232 * k + 369353) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1108060) = 5038848 * k + 554030 := by
    unfold C
    simp [show (10077696 * k + 1108060) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 554030) = 2519424 * k + 277015 := by
    unfold C
    simp [show (5038848 * k + 554030) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 277015) = 7558272 * k + 831046 := by
    unfold C
    simp [show (2519424 * k + 277015) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 831046) = 3779136 * k + 415523 := by
    unfold C
    simp [show (7558272 * k + 831046) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 415523) = 11337408 * k + 1246570 := by
    unfold C
    simp [show (3779136 * k + 415523) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1246570) = 5668704 * k + 623285 := by
    unfold C
    simp [show (11337408 * k + 1246570) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 623285) = 17006112 * k + 1869856 := by
    unfold C
    simp [show (5668704 * k + 623285) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1869856) = 8503056 * k + 934928 := by
    unfold C
    simp [show (17006112 * k + 1869856) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 934928) = 4251528 * k + 467464 := by
    unfold C
    simp [show (8503056 * k + 934928) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 467464) = 2125764 * k + 233732 := by
    unfold C
    simp [show (4251528 * k + 467464) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 233732) = 1062882 * k + 116866 := by
    unfold C
    simp [show (2125764 * k + 233732) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 116866) = 531441 * k + 58433 := by
    unfold C
    simp [show (1062882 * k + 116866) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 115291) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 115291)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_115647 : ∀ k : Nat,
    iterate (1048576 * k + 115647) 32 = 531441 * k + 58613 ∧
      531441 * k + 58613 < 1048576 * k + 115647 := by
  intro k
  have h1 : C (1048576 * k + 115647) = 3145728 * k + 346942 := by
    unfold C
    simp [show (1048576 * k + 115647) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 346942) = 1572864 * k + 173471 := by
    unfold C
    simp [show (3145728 * k + 346942) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 173471) = 4718592 * k + 520414 := by
    unfold C
    simp [show (1572864 * k + 173471) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 520414) = 2359296 * k + 260207 := by
    unfold C
    simp [show (4718592 * k + 520414) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 260207) = 7077888 * k + 780622 := by
    unfold C
    simp [show (2359296 * k + 260207) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 780622) = 3538944 * k + 390311 := by
    unfold C
    simp [show (7077888 * k + 780622) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 390311) = 10616832 * k + 1170934 := by
    unfold C
    simp [show (3538944 * k + 390311) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1170934) = 5308416 * k + 585467 := by
    unfold C
    simp [show (10616832 * k + 1170934) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 585467) = 15925248 * k + 1756402 := by
    unfold C
    simp [show (5308416 * k + 585467) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1756402) = 7962624 * k + 878201 := by
    unfold C
    simp [show (15925248 * k + 1756402) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 878201) = 23887872 * k + 2634604 := by
    unfold C
    simp [show (7962624 * k + 878201) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 2634604) = 11943936 * k + 1317302 := by
    unfold C
    simp [show (23887872 * k + 2634604) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1317302) = 5971968 * k + 658651 := by
    unfold C
    simp [show (11943936 * k + 1317302) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 658651) = 17915904 * k + 1975954 := by
    unfold C
    simp [show (5971968 * k + 658651) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1975954) = 8957952 * k + 987977 := by
    unfold C
    simp [show (17915904 * k + 1975954) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 987977) = 26873856 * k + 2963932 := by
    unfold C
    simp [show (8957952 * k + 987977) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2963932) = 13436928 * k + 1481966 := by
    unfold C
    simp [show (26873856 * k + 2963932) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1481966) = 6718464 * k + 740983 := by
    unfold C
    simp [show (13436928 * k + 1481966) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 740983) = 20155392 * k + 2222950 := by
    unfold C
    simp [show (6718464 * k + 740983) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2222950) = 10077696 * k + 1111475 := by
    unfold C
    simp [show (20155392 * k + 2222950) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1111475) = 30233088 * k + 3334426 := by
    unfold C
    simp [show (10077696 * k + 1111475) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 3334426) = 15116544 * k + 1667213 := by
    unfold C
    simp [show (30233088 * k + 3334426) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1667213) = 45349632 * k + 5001640 := by
    unfold C
    simp [show (15116544 * k + 1667213) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 5001640) = 22674816 * k + 2500820 := by
    unfold C
    simp [show (45349632 * k + 5001640) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 2500820) = 11337408 * k + 1250410 := by
    unfold C
    simp [show (22674816 * k + 2500820) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1250410) = 5668704 * k + 625205 := by
    unfold C
    simp [show (11337408 * k + 1250410) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 625205) = 17006112 * k + 1875616 := by
    unfold C
    simp [show (5668704 * k + 625205) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1875616) = 8503056 * k + 937808 := by
    unfold C
    simp [show (17006112 * k + 1875616) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 937808) = 4251528 * k + 468904 := by
    unfold C
    simp [show (8503056 * k + 937808) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 468904) = 2125764 * k + 234452 := by
    unfold C
    simp [show (4251528 * k + 468904) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 234452) = 1062882 * k + 117226 := by
    unfold C
    simp [show (2125764 * k + 234452) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 117226) = 531441 * k + 58613 := by
    unfold C
    simp [show (1062882 * k + 117226) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 115647) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 115647)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_116191 : ∀ k : Nat,
    iterate (1048576 * k + 116191) 32 = 531441 * k + 58889 ∧
      531441 * k + 58889 < 1048576 * k + 116191 := by
  intro k
  have h1 : C (1048576 * k + 116191) = 3145728 * k + 348574 := by
    unfold C
    simp [show (1048576 * k + 116191) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 348574) = 1572864 * k + 174287 := by
    unfold C
    simp [show (3145728 * k + 348574) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 174287) = 4718592 * k + 522862 := by
    unfold C
    simp [show (1572864 * k + 174287) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 522862) = 2359296 * k + 261431 := by
    unfold C
    simp [show (4718592 * k + 522862) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 261431) = 7077888 * k + 784294 := by
    unfold C
    simp [show (2359296 * k + 261431) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 784294) = 3538944 * k + 392147 := by
    unfold C
    simp [show (7077888 * k + 784294) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 392147) = 10616832 * k + 1176442 := by
    unfold C
    simp [show (3538944 * k + 392147) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1176442) = 5308416 * k + 588221 := by
    unfold C
    simp [show (10616832 * k + 1176442) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 588221) = 15925248 * k + 1764664 := by
    unfold C
    simp [show (5308416 * k + 588221) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1764664) = 7962624 * k + 882332 := by
    unfold C
    simp [show (15925248 * k + 1764664) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 882332) = 3981312 * k + 441166 := by
    unfold C
    simp [show (7962624 * k + 882332) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 441166) = 1990656 * k + 220583 := by
    unfold C
    simp [show (3981312 * k + 441166) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 220583) = 5971968 * k + 661750 := by
    unfold C
    simp [show (1990656 * k + 220583) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 661750) = 2985984 * k + 330875 := by
    unfold C
    simp [show (5971968 * k + 661750) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 330875) = 8957952 * k + 992626 := by
    unfold C
    simp [show (2985984 * k + 330875) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 992626) = 4478976 * k + 496313 := by
    unfold C
    simp [show (8957952 * k + 992626) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 496313) = 13436928 * k + 1488940 := by
    unfold C
    simp [show (4478976 * k + 496313) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1488940) = 6718464 * k + 744470 := by
    unfold C
    simp [show (13436928 * k + 1488940) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 744470) = 3359232 * k + 372235 := by
    unfold C
    simp [show (6718464 * k + 744470) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 372235) = 10077696 * k + 1116706 := by
    unfold C
    simp [show (3359232 * k + 372235) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1116706) = 5038848 * k + 558353 := by
    unfold C
    simp [show (10077696 * k + 1116706) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 558353) = 15116544 * k + 1675060 := by
    unfold C
    simp [show (5038848 * k + 558353) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1675060) = 7558272 * k + 837530 := by
    unfold C
    simp [show (15116544 * k + 1675060) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 837530) = 3779136 * k + 418765 := by
    unfold C
    simp [show (7558272 * k + 837530) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 418765) = 11337408 * k + 1256296 := by
    unfold C
    simp [show (3779136 * k + 418765) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1256296) = 5668704 * k + 628148 := by
    unfold C
    simp [show (11337408 * k + 1256296) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 628148) = 2834352 * k + 314074 := by
    unfold C
    simp [show (5668704 * k + 628148) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 314074) = 1417176 * k + 157037 := by
    unfold C
    simp [show (2834352 * k + 314074) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 157037) = 4251528 * k + 471112 := by
    unfold C
    simp [show (1417176 * k + 157037) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 471112) = 2125764 * k + 235556 := by
    unfold C
    simp [show (4251528 * k + 471112) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 235556) = 1062882 * k + 117778 := by
    unfold C
    simp [show (2125764 * k + 235556) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 117778) = 531441 * k + 58889 := by
    unfold C
    simp [show (1062882 * k + 117778) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 116191) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 116191)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_116463 : ∀ k : Nat,
    iterate (1048576 * k + 116463) 32 = 531441 * k + 59027 ∧
      531441 * k + 59027 < 1048576 * k + 116463 := by
  intro k
  have h1 : C (1048576 * k + 116463) = 3145728 * k + 349390 := by
    unfold C
    simp [show (1048576 * k + 116463) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 349390) = 1572864 * k + 174695 := by
    unfold C
    simp [show (3145728 * k + 349390) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 174695) = 4718592 * k + 524086 := by
    unfold C
    simp [show (1572864 * k + 174695) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 524086) = 2359296 * k + 262043 := by
    unfold C
    simp [show (4718592 * k + 524086) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 262043) = 7077888 * k + 786130 := by
    unfold C
    simp [show (2359296 * k + 262043) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 786130) = 3538944 * k + 393065 := by
    unfold C
    simp [show (7077888 * k + 786130) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 393065) = 10616832 * k + 1179196 := by
    unfold C
    simp [show (3538944 * k + 393065) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1179196) = 5308416 * k + 589598 := by
    unfold C
    simp [show (10616832 * k + 1179196) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 589598) = 2654208 * k + 294799 := by
    unfold C
    simp [show (5308416 * k + 589598) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 294799) = 7962624 * k + 884398 := by
    unfold C
    simp [show (2654208 * k + 294799) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 884398) = 3981312 * k + 442199 := by
    unfold C
    simp [show (7962624 * k + 884398) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 442199) = 11943936 * k + 1326598 := by
    unfold C
    simp [show (3981312 * k + 442199) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1326598) = 5971968 * k + 663299 := by
    unfold C
    simp [show (11943936 * k + 1326598) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 663299) = 17915904 * k + 1989898 := by
    unfold C
    simp [show (5971968 * k + 663299) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1989898) = 8957952 * k + 994949 := by
    unfold C
    simp [show (17915904 * k + 1989898) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 994949) = 26873856 * k + 2984848 := by
    unfold C
    simp [show (8957952 * k + 994949) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2984848) = 13436928 * k + 1492424 := by
    unfold C
    simp [show (26873856 * k + 2984848) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1492424) = 6718464 * k + 746212 := by
    unfold C
    simp [show (13436928 * k + 1492424) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 746212) = 3359232 * k + 373106 := by
    unfold C
    simp [show (6718464 * k + 746212) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 373106) = 1679616 * k + 186553 := by
    unfold C
    simp [show (3359232 * k + 373106) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 186553) = 5038848 * k + 559660 := by
    unfold C
    simp [show (1679616 * k + 186553) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 559660) = 2519424 * k + 279830 := by
    unfold C
    simp [show (5038848 * k + 559660) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 279830) = 1259712 * k + 139915 := by
    unfold C
    simp [show (2519424 * k + 279830) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 139915) = 3779136 * k + 419746 := by
    unfold C
    simp [show (1259712 * k + 139915) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 419746) = 1889568 * k + 209873 := by
    unfold C
    simp [show (3779136 * k + 419746) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 209873) = 5668704 * k + 629620 := by
    unfold C
    simp [show (1889568 * k + 209873) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 629620) = 2834352 * k + 314810 := by
    unfold C
    simp [show (5668704 * k + 629620) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 314810) = 1417176 * k + 157405 := by
    unfold C
    simp [show (2834352 * k + 314810) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 157405) = 4251528 * k + 472216 := by
    unfold C
    simp [show (1417176 * k + 157405) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 472216) = 2125764 * k + 236108 := by
    unfold C
    simp [show (4251528 * k + 472216) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 236108) = 1062882 * k + 118054 := by
    unfold C
    simp [show (2125764 * k + 236108) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 118054) = 531441 * k + 59027 := by
    unfold C
    simp [show (1062882 * k + 118054) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 116463) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 116463)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_117231 : ∀ k : Nat,
    iterate (1048576 * k + 117231) 32 = 531441 * k + 59416 ∧
      531441 * k + 59416 < 1048576 * k + 117231 := by
  intro k
  have h1 : C (1048576 * k + 117231) = 3145728 * k + 351694 := by
    unfold C
    simp [show (1048576 * k + 117231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 351694) = 1572864 * k + 175847 := by
    unfold C
    simp [show (3145728 * k + 351694) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 175847) = 4718592 * k + 527542 := by
    unfold C
    simp [show (1572864 * k + 175847) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 527542) = 2359296 * k + 263771 := by
    unfold C
    simp [show (4718592 * k + 527542) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 263771) = 7077888 * k + 791314 := by
    unfold C
    simp [show (2359296 * k + 263771) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 791314) = 3538944 * k + 395657 := by
    unfold C
    simp [show (7077888 * k + 791314) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 395657) = 10616832 * k + 1186972 := by
    unfold C
    simp [show (3538944 * k + 395657) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1186972) = 5308416 * k + 593486 := by
    unfold C
    simp [show (10616832 * k + 1186972) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 593486) = 2654208 * k + 296743 := by
    unfold C
    simp [show (5308416 * k + 593486) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 296743) = 7962624 * k + 890230 := by
    unfold C
    simp [show (2654208 * k + 296743) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 890230) = 3981312 * k + 445115 := by
    unfold C
    simp [show (7962624 * k + 890230) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 445115) = 11943936 * k + 1335346 := by
    unfold C
    simp [show (3981312 * k + 445115) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1335346) = 5971968 * k + 667673 := by
    unfold C
    simp [show (11943936 * k + 1335346) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 667673) = 17915904 * k + 2003020 := by
    unfold C
    simp [show (5971968 * k + 667673) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2003020) = 8957952 * k + 1001510 := by
    unfold C
    simp [show (17915904 * k + 2003020) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1001510) = 4478976 * k + 500755 := by
    unfold C
    simp [show (8957952 * k + 1001510) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 500755) = 13436928 * k + 1502266 := by
    unfold C
    simp [show (4478976 * k + 500755) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1502266) = 6718464 * k + 751133 := by
    unfold C
    simp [show (13436928 * k + 1502266) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 751133) = 20155392 * k + 2253400 := by
    unfold C
    simp [show (6718464 * k + 751133) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2253400) = 10077696 * k + 1126700 := by
    unfold C
    simp [show (20155392 * k + 2253400) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1126700) = 5038848 * k + 563350 := by
    unfold C
    simp [show (10077696 * k + 1126700) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 563350) = 2519424 * k + 281675 := by
    unfold C
    simp [show (5038848 * k + 563350) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 281675) = 7558272 * k + 845026 := by
    unfold C
    simp [show (2519424 * k + 281675) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 845026) = 3779136 * k + 422513 := by
    unfold C
    simp [show (7558272 * k + 845026) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 422513) = 11337408 * k + 1267540 := by
    unfold C
    simp [show (3779136 * k + 422513) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1267540) = 5668704 * k + 633770 := by
    unfold C
    simp [show (11337408 * k + 1267540) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 633770) = 2834352 * k + 316885 := by
    unfold C
    simp [show (5668704 * k + 633770) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 316885) = 8503056 * k + 950656 := by
    unfold C
    simp [show (2834352 * k + 316885) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 950656) = 4251528 * k + 475328 := by
    unfold C
    simp [show (8503056 * k + 950656) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 475328) = 2125764 * k + 237664 := by
    unfold C
    simp [show (4251528 * k + 475328) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 237664) = 1062882 * k + 118832 := by
    unfold C
    simp [show (2125764 * k + 237664) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 118832) = 531441 * k + 59416 := by
    unfold C
    simp [show (1062882 * k + 118832) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 117231) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 117231)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_117695 : ∀ k : Nat,
    iterate (1048576 * k + 117695) 32 = 531441 * k + 59651 ∧
      531441 * k + 59651 < 1048576 * k + 117695 := by
  intro k
  have h1 : C (1048576 * k + 117695) = 3145728 * k + 353086 := by
    unfold C
    simp [show (1048576 * k + 117695) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 353086) = 1572864 * k + 176543 := by
    unfold C
    simp [show (3145728 * k + 353086) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 176543) = 4718592 * k + 529630 := by
    unfold C
    simp [show (1572864 * k + 176543) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 529630) = 2359296 * k + 264815 := by
    unfold C
    simp [show (4718592 * k + 529630) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 264815) = 7077888 * k + 794446 := by
    unfold C
    simp [show (2359296 * k + 264815) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 794446) = 3538944 * k + 397223 := by
    unfold C
    simp [show (7077888 * k + 794446) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 397223) = 10616832 * k + 1191670 := by
    unfold C
    simp [show (3538944 * k + 397223) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1191670) = 5308416 * k + 595835 := by
    unfold C
    simp [show (10616832 * k + 1191670) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 595835) = 15925248 * k + 1787506 := by
    unfold C
    simp [show (5308416 * k + 595835) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1787506) = 7962624 * k + 893753 := by
    unfold C
    simp [show (15925248 * k + 1787506) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 893753) = 23887872 * k + 2681260 := by
    unfold C
    simp [show (7962624 * k + 893753) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 2681260) = 11943936 * k + 1340630 := by
    unfold C
    simp [show (23887872 * k + 2681260) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1340630) = 5971968 * k + 670315 := by
    unfold C
    simp [show (11943936 * k + 1340630) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 670315) = 17915904 * k + 2010946 := by
    unfold C
    simp [show (5971968 * k + 670315) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2010946) = 8957952 * k + 1005473 := by
    unfold C
    simp [show (17915904 * k + 2010946) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1005473) = 26873856 * k + 3016420 := by
    unfold C
    simp [show (8957952 * k + 1005473) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 3016420) = 13436928 * k + 1508210 := by
    unfold C
    simp [show (26873856 * k + 3016420) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1508210) = 6718464 * k + 754105 := by
    unfold C
    simp [show (13436928 * k + 1508210) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 754105) = 20155392 * k + 2262316 := by
    unfold C
    simp [show (6718464 * k + 754105) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2262316) = 10077696 * k + 1131158 := by
    unfold C
    simp [show (20155392 * k + 2262316) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1131158) = 5038848 * k + 565579 := by
    unfold C
    simp [show (10077696 * k + 1131158) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 565579) = 15116544 * k + 1696738 := by
    unfold C
    simp [show (5038848 * k + 565579) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1696738) = 7558272 * k + 848369 := by
    unfold C
    simp [show (15116544 * k + 1696738) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 848369) = 22674816 * k + 2545108 := by
    unfold C
    simp [show (7558272 * k + 848369) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 2545108) = 11337408 * k + 1272554 := by
    unfold C
    simp [show (22674816 * k + 2545108) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1272554) = 5668704 * k + 636277 := by
    unfold C
    simp [show (11337408 * k + 1272554) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 636277) = 17006112 * k + 1908832 := by
    unfold C
    simp [show (5668704 * k + 636277) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1908832) = 8503056 * k + 954416 := by
    unfold C
    simp [show (17006112 * k + 1908832) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 954416) = 4251528 * k + 477208 := by
    unfold C
    simp [show (8503056 * k + 954416) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 477208) = 2125764 * k + 238604 := by
    unfold C
    simp [show (4251528 * k + 477208) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 238604) = 1062882 * k + 119302 := by
    unfold C
    simp [show (2125764 * k + 238604) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 119302) = 531441 * k + 59651 := by
    unfold C
    simp [show (1062882 * k + 119302) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 117695) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 117695)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_118119 : ∀ k : Nat,
    iterate (1048576 * k + 118119) 32 = 531441 * k + 59866 ∧
      531441 * k + 59866 < 1048576 * k + 118119 := by
  intro k
  have h1 : C (1048576 * k + 118119) = 3145728 * k + 354358 := by
    unfold C
    simp [show (1048576 * k + 118119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 354358) = 1572864 * k + 177179 := by
    unfold C
    simp [show (3145728 * k + 354358) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 177179) = 4718592 * k + 531538 := by
    unfold C
    simp [show (1572864 * k + 177179) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 531538) = 2359296 * k + 265769 := by
    unfold C
    simp [show (4718592 * k + 531538) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 265769) = 7077888 * k + 797308 := by
    unfold C
    simp [show (2359296 * k + 265769) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 797308) = 3538944 * k + 398654 := by
    unfold C
    simp [show (7077888 * k + 797308) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 398654) = 1769472 * k + 199327 := by
    unfold C
    simp [show (3538944 * k + 398654) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 199327) = 5308416 * k + 597982 := by
    unfold C
    simp [show (1769472 * k + 199327) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 597982) = 2654208 * k + 298991 := by
    unfold C
    simp [show (5308416 * k + 597982) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 298991) = 7962624 * k + 896974 := by
    unfold C
    simp [show (2654208 * k + 298991) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 896974) = 3981312 * k + 448487 := by
    unfold C
    simp [show (7962624 * k + 896974) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 448487) = 11943936 * k + 1345462 := by
    unfold C
    simp [show (3981312 * k + 448487) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1345462) = 5971968 * k + 672731 := by
    unfold C
    simp [show (11943936 * k + 1345462) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 672731) = 17915904 * k + 2018194 := by
    unfold C
    simp [show (5971968 * k + 672731) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2018194) = 8957952 * k + 1009097 := by
    unfold C
    simp [show (17915904 * k + 2018194) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1009097) = 26873856 * k + 3027292 := by
    unfold C
    simp [show (8957952 * k + 1009097) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 3027292) = 13436928 * k + 1513646 := by
    unfold C
    simp [show (26873856 * k + 3027292) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1513646) = 6718464 * k + 756823 := by
    unfold C
    simp [show (13436928 * k + 1513646) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 756823) = 20155392 * k + 2270470 := by
    unfold C
    simp [show (6718464 * k + 756823) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2270470) = 10077696 * k + 1135235 := by
    unfold C
    simp [show (20155392 * k + 2270470) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1135235) = 30233088 * k + 3405706 := by
    unfold C
    simp [show (10077696 * k + 1135235) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 3405706) = 15116544 * k + 1702853 := by
    unfold C
    simp [show (30233088 * k + 3405706) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1702853) = 45349632 * k + 5108560 := by
    unfold C
    simp [show (15116544 * k + 1702853) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 5108560) = 22674816 * k + 2554280 := by
    unfold C
    simp [show (45349632 * k + 5108560) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 2554280) = 11337408 * k + 1277140 := by
    unfold C
    simp [show (22674816 * k + 2554280) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1277140) = 5668704 * k + 638570 := by
    unfold C
    simp [show (11337408 * k + 1277140) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 638570) = 2834352 * k + 319285 := by
    unfold C
    simp [show (5668704 * k + 638570) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 319285) = 8503056 * k + 957856 := by
    unfold C
    simp [show (2834352 * k + 319285) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 957856) = 4251528 * k + 478928 := by
    unfold C
    simp [show (8503056 * k + 957856) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 478928) = 2125764 * k + 239464 := by
    unfold C
    simp [show (4251528 * k + 478928) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 239464) = 1062882 * k + 119732 := by
    unfold C
    simp [show (2125764 * k + 239464) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 119732) = 531441 * k + 59866 := by
    unfold C
    simp [show (1062882 * k + 119732) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 118119) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 118119)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_119387 : ∀ k : Nat,
    iterate (1048576 * k + 119387) 32 = 531441 * k + 60509 ∧
      531441 * k + 60509 < 1048576 * k + 119387 := by
  intro k
  have h1 : C (1048576 * k + 119387) = 3145728 * k + 358162 := by
    unfold C
    simp [show (1048576 * k + 119387) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 358162) = 1572864 * k + 179081 := by
    unfold C
    simp [show (3145728 * k + 358162) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 179081) = 4718592 * k + 537244 := by
    unfold C
    simp [show (1572864 * k + 179081) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 537244) = 2359296 * k + 268622 := by
    unfold C
    simp [show (4718592 * k + 537244) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 268622) = 1179648 * k + 134311 := by
    unfold C
    simp [show (2359296 * k + 268622) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 134311) = 3538944 * k + 402934 := by
    unfold C
    simp [show (1179648 * k + 134311) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 402934) = 1769472 * k + 201467 := by
    unfold C
    simp [show (3538944 * k + 402934) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 201467) = 5308416 * k + 604402 := by
    unfold C
    simp [show (1769472 * k + 201467) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 604402) = 2654208 * k + 302201 := by
    unfold C
    simp [show (5308416 * k + 604402) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 302201) = 7962624 * k + 906604 := by
    unfold C
    simp [show (2654208 * k + 302201) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 906604) = 3981312 * k + 453302 := by
    unfold C
    simp [show (7962624 * k + 906604) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 453302) = 1990656 * k + 226651 := by
    unfold C
    simp [show (3981312 * k + 453302) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 226651) = 5971968 * k + 679954 := by
    unfold C
    simp [show (1990656 * k + 226651) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 679954) = 2985984 * k + 339977 := by
    unfold C
    simp [show (5971968 * k + 679954) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 339977) = 8957952 * k + 1019932 := by
    unfold C
    simp [show (2985984 * k + 339977) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1019932) = 4478976 * k + 509966 := by
    unfold C
    simp [show (8957952 * k + 1019932) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 509966) = 2239488 * k + 254983 := by
    unfold C
    simp [show (4478976 * k + 509966) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 254983) = 6718464 * k + 764950 := by
    unfold C
    simp [show (2239488 * k + 254983) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 764950) = 3359232 * k + 382475 := by
    unfold C
    simp [show (6718464 * k + 764950) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 382475) = 10077696 * k + 1147426 := by
    unfold C
    simp [show (3359232 * k + 382475) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1147426) = 5038848 * k + 573713 := by
    unfold C
    simp [show (10077696 * k + 1147426) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 573713) = 15116544 * k + 1721140 := by
    unfold C
    simp [show (5038848 * k + 573713) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1721140) = 7558272 * k + 860570 := by
    unfold C
    simp [show (15116544 * k + 1721140) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 860570) = 3779136 * k + 430285 := by
    unfold C
    simp [show (7558272 * k + 860570) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 430285) = 11337408 * k + 1290856 := by
    unfold C
    simp [show (3779136 * k + 430285) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1290856) = 5668704 * k + 645428 := by
    unfold C
    simp [show (11337408 * k + 1290856) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 645428) = 2834352 * k + 322714 := by
    unfold C
    simp [show (5668704 * k + 645428) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 322714) = 1417176 * k + 161357 := by
    unfold C
    simp [show (2834352 * k + 322714) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 161357) = 4251528 * k + 484072 := by
    unfold C
    simp [show (1417176 * k + 161357) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 484072) = 2125764 * k + 242036 := by
    unfold C
    simp [show (4251528 * k + 484072) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 242036) = 1062882 * k + 121018 := by
    unfold C
    simp [show (2125764 * k + 242036) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 121018) = 531441 * k + 60509 := by
    unfold C
    simp [show (1062882 * k + 121018) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 119387) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 119387)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_120167 : ∀ k : Nat,
    iterate (1048576 * k + 120167) 32 = 531441 * k + 60904 ∧
      531441 * k + 60904 < 1048576 * k + 120167 := by
  intro k
  have h1 : C (1048576 * k + 120167) = 3145728 * k + 360502 := by
    unfold C
    simp [show (1048576 * k + 120167) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 360502) = 1572864 * k + 180251 := by
    unfold C
    simp [show (3145728 * k + 360502) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 180251) = 4718592 * k + 540754 := by
    unfold C
    simp [show (1572864 * k + 180251) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 540754) = 2359296 * k + 270377 := by
    unfold C
    simp [show (4718592 * k + 540754) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 270377) = 7077888 * k + 811132 := by
    unfold C
    simp [show (2359296 * k + 270377) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 811132) = 3538944 * k + 405566 := by
    unfold C
    simp [show (7077888 * k + 811132) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 405566) = 1769472 * k + 202783 := by
    unfold C
    simp [show (3538944 * k + 405566) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 202783) = 5308416 * k + 608350 := by
    unfold C
    simp [show (1769472 * k + 202783) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 608350) = 2654208 * k + 304175 := by
    unfold C
    simp [show (5308416 * k + 608350) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 304175) = 7962624 * k + 912526 := by
    unfold C
    simp [show (2654208 * k + 304175) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 912526) = 3981312 * k + 456263 := by
    unfold C
    simp [show (7962624 * k + 912526) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 456263) = 11943936 * k + 1368790 := by
    unfold C
    simp [show (3981312 * k + 456263) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1368790) = 5971968 * k + 684395 := by
    unfold C
    simp [show (11943936 * k + 1368790) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 684395) = 17915904 * k + 2053186 := by
    unfold C
    simp [show (5971968 * k + 684395) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2053186) = 8957952 * k + 1026593 := by
    unfold C
    simp [show (17915904 * k + 2053186) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1026593) = 26873856 * k + 3079780 := by
    unfold C
    simp [show (8957952 * k + 1026593) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 3079780) = 13436928 * k + 1539890 := by
    unfold C
    simp [show (26873856 * k + 3079780) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1539890) = 6718464 * k + 769945 := by
    unfold C
    simp [show (13436928 * k + 1539890) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 769945) = 20155392 * k + 2309836 := by
    unfold C
    simp [show (6718464 * k + 769945) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2309836) = 10077696 * k + 1154918 := by
    unfold C
    simp [show (20155392 * k + 2309836) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1154918) = 5038848 * k + 577459 := by
    unfold C
    simp [show (10077696 * k + 1154918) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 577459) = 15116544 * k + 1732378 := by
    unfold C
    simp [show (5038848 * k + 577459) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1732378) = 7558272 * k + 866189 := by
    unfold C
    simp [show (15116544 * k + 1732378) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 866189) = 22674816 * k + 2598568 := by
    unfold C
    simp [show (7558272 * k + 866189) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 2598568) = 11337408 * k + 1299284 := by
    unfold C
    simp [show (22674816 * k + 2598568) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1299284) = 5668704 * k + 649642 := by
    unfold C
    simp [show (11337408 * k + 1299284) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 649642) = 2834352 * k + 324821 := by
    unfold C
    simp [show (5668704 * k + 649642) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 324821) = 8503056 * k + 974464 := by
    unfold C
    simp [show (2834352 * k + 324821) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 974464) = 4251528 * k + 487232 := by
    unfold C
    simp [show (8503056 * k + 974464) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 487232) = 2125764 * k + 243616 := by
    unfold C
    simp [show (4251528 * k + 487232) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 243616) = 1062882 * k + 121808 := by
    unfold C
    simp [show (2125764 * k + 243616) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 121808) = 531441 * k + 60904 := by
    unfold C
    simp [show (1062882 * k + 121808) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 120167) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 120167)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_120423 : ∀ k : Nat,
    iterate (1048576 * k + 120423) 32 = 531441 * k + 61034 ∧
      531441 * k + 61034 < 1048576 * k + 120423 := by
  intro k
  have h1 : C (1048576 * k + 120423) = 3145728 * k + 361270 := by
    unfold C
    simp [show (1048576 * k + 120423) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 361270) = 1572864 * k + 180635 := by
    unfold C
    simp [show (3145728 * k + 361270) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 180635) = 4718592 * k + 541906 := by
    unfold C
    simp [show (1572864 * k + 180635) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 541906) = 2359296 * k + 270953 := by
    unfold C
    simp [show (4718592 * k + 541906) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 270953) = 7077888 * k + 812860 := by
    unfold C
    simp [show (2359296 * k + 270953) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 812860) = 3538944 * k + 406430 := by
    unfold C
    simp [show (7077888 * k + 812860) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 406430) = 1769472 * k + 203215 := by
    unfold C
    simp [show (3538944 * k + 406430) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 203215) = 5308416 * k + 609646 := by
    unfold C
    simp [show (1769472 * k + 203215) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 609646) = 2654208 * k + 304823 := by
    unfold C
    simp [show (5308416 * k + 609646) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 304823) = 7962624 * k + 914470 := by
    unfold C
    simp [show (2654208 * k + 304823) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 914470) = 3981312 * k + 457235 := by
    unfold C
    simp [show (7962624 * k + 914470) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 457235) = 11943936 * k + 1371706 := by
    unfold C
    simp [show (3981312 * k + 457235) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1371706) = 5971968 * k + 685853 := by
    unfold C
    simp [show (11943936 * k + 1371706) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 685853) = 17915904 * k + 2057560 := by
    unfold C
    simp [show (5971968 * k + 685853) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2057560) = 8957952 * k + 1028780 := by
    unfold C
    simp [show (17915904 * k + 2057560) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1028780) = 4478976 * k + 514390 := by
    unfold C
    simp [show (8957952 * k + 1028780) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 514390) = 2239488 * k + 257195 := by
    unfold C
    simp [show (4478976 * k + 514390) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 257195) = 6718464 * k + 771586 := by
    unfold C
    simp [show (2239488 * k + 257195) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 771586) = 3359232 * k + 385793 := by
    unfold C
    simp [show (6718464 * k + 771586) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 385793) = 10077696 * k + 1157380 := by
    unfold C
    simp [show (3359232 * k + 385793) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1157380) = 5038848 * k + 578690 := by
    unfold C
    simp [show (10077696 * k + 1157380) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 578690) = 2519424 * k + 289345 := by
    unfold C
    simp [show (5038848 * k + 578690) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 289345) = 7558272 * k + 868036 := by
    unfold C
    simp [show (2519424 * k + 289345) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 868036) = 3779136 * k + 434018 := by
    unfold C
    simp [show (7558272 * k + 868036) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 434018) = 1889568 * k + 217009 := by
    unfold C
    simp [show (3779136 * k + 434018) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 217009) = 5668704 * k + 651028 := by
    unfold C
    simp [show (1889568 * k + 217009) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 651028) = 2834352 * k + 325514 := by
    unfold C
    simp [show (5668704 * k + 651028) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 325514) = 1417176 * k + 162757 := by
    unfold C
    simp [show (2834352 * k + 325514) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 162757) = 4251528 * k + 488272 := by
    unfold C
    simp [show (1417176 * k + 162757) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 488272) = 2125764 * k + 244136 := by
    unfold C
    simp [show (4251528 * k + 488272) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 244136) = 1062882 * k + 122068 := by
    unfold C
    simp [show (2125764 * k + 244136) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 122068) = 531441 * k + 61034 := by
    unfold C
    simp [show (1062882 * k + 122068) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 120423) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 120423)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_120859 : ∀ k : Nat,
    iterate (1048576 * k + 120859) 32 = 531441 * k + 61255 ∧
      531441 * k + 61255 < 1048576 * k + 120859 := by
  intro k
  have h1 : C (1048576 * k + 120859) = 3145728 * k + 362578 := by
    unfold C
    simp [show (1048576 * k + 120859) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 362578) = 1572864 * k + 181289 := by
    unfold C
    simp [show (3145728 * k + 362578) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 181289) = 4718592 * k + 543868 := by
    unfold C
    simp [show (1572864 * k + 181289) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 543868) = 2359296 * k + 271934 := by
    unfold C
    simp [show (4718592 * k + 543868) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 271934) = 1179648 * k + 135967 := by
    unfold C
    simp [show (2359296 * k + 271934) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 135967) = 3538944 * k + 407902 := by
    unfold C
    simp [show (1179648 * k + 135967) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 407902) = 1769472 * k + 203951 := by
    unfold C
    simp [show (3538944 * k + 407902) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 203951) = 5308416 * k + 611854 := by
    unfold C
    simp [show (1769472 * k + 203951) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 611854) = 2654208 * k + 305927 := by
    unfold C
    simp [show (5308416 * k + 611854) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 305927) = 7962624 * k + 917782 := by
    unfold C
    simp [show (2654208 * k + 305927) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 917782) = 3981312 * k + 458891 := by
    unfold C
    simp [show (7962624 * k + 917782) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 458891) = 11943936 * k + 1376674 := by
    unfold C
    simp [show (3981312 * k + 458891) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1376674) = 5971968 * k + 688337 := by
    unfold C
    simp [show (11943936 * k + 1376674) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 688337) = 17915904 * k + 2065012 := by
    unfold C
    simp [show (5971968 * k + 688337) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2065012) = 8957952 * k + 1032506 := by
    unfold C
    simp [show (17915904 * k + 2065012) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1032506) = 4478976 * k + 516253 := by
    unfold C
    simp [show (8957952 * k + 1032506) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 516253) = 13436928 * k + 1548760 := by
    unfold C
    simp [show (4478976 * k + 516253) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1548760) = 6718464 * k + 774380 := by
    unfold C
    simp [show (13436928 * k + 1548760) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 774380) = 3359232 * k + 387190 := by
    unfold C
    simp [show (6718464 * k + 774380) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 387190) = 1679616 * k + 193595 := by
    unfold C
    simp [show (3359232 * k + 387190) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 193595) = 5038848 * k + 580786 := by
    unfold C
    simp [show (1679616 * k + 193595) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 580786) = 2519424 * k + 290393 := by
    unfold C
    simp [show (5038848 * k + 580786) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 290393) = 7558272 * k + 871180 := by
    unfold C
    simp [show (2519424 * k + 290393) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 871180) = 3779136 * k + 435590 := by
    unfold C
    simp [show (7558272 * k + 871180) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 435590) = 1889568 * k + 217795 := by
    unfold C
    simp [show (3779136 * k + 435590) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 217795) = 5668704 * k + 653386 := by
    unfold C
    simp [show (1889568 * k + 217795) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 653386) = 2834352 * k + 326693 := by
    unfold C
    simp [show (5668704 * k + 653386) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 326693) = 8503056 * k + 980080 := by
    unfold C
    simp [show (2834352 * k + 326693) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 980080) = 4251528 * k + 490040 := by
    unfold C
    simp [show (8503056 * k + 980080) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 490040) = 2125764 * k + 245020 := by
    unfold C
    simp [show (4251528 * k + 490040) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 245020) = 1062882 * k + 122510 := by
    unfold C
    simp [show (2125764 * k + 245020) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 122510) = 531441 * k + 61255 := by
    unfold C
    simp [show (1062882 * k + 122510) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 120859) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 120859)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_121471 : ∀ k : Nat,
    iterate (1048576 * k + 121471) 32 = 531441 * k + 61565 ∧
      531441 * k + 61565 < 1048576 * k + 121471 := by
  intro k
  have h1 : C (1048576 * k + 121471) = 3145728 * k + 364414 := by
    unfold C
    simp [show (1048576 * k + 121471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 364414) = 1572864 * k + 182207 := by
    unfold C
    simp [show (3145728 * k + 364414) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 182207) = 4718592 * k + 546622 := by
    unfold C
    simp [show (1572864 * k + 182207) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 546622) = 2359296 * k + 273311 := by
    unfold C
    simp [show (4718592 * k + 546622) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 273311) = 7077888 * k + 819934 := by
    unfold C
    simp [show (2359296 * k + 273311) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 819934) = 3538944 * k + 409967 := by
    unfold C
    simp [show (7077888 * k + 819934) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 409967) = 10616832 * k + 1229902 := by
    unfold C
    simp [show (3538944 * k + 409967) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1229902) = 5308416 * k + 614951 := by
    unfold C
    simp [show (10616832 * k + 1229902) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 614951) = 15925248 * k + 1844854 := by
    unfold C
    simp [show (5308416 * k + 614951) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1844854) = 7962624 * k + 922427 := by
    unfold C
    simp [show (15925248 * k + 1844854) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 922427) = 23887872 * k + 2767282 := by
    unfold C
    simp [show (7962624 * k + 922427) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 2767282) = 11943936 * k + 1383641 := by
    unfold C
    simp [show (23887872 * k + 2767282) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1383641) = 35831808 * k + 4150924 := by
    unfold C
    simp [show (11943936 * k + 1383641) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 4150924) = 17915904 * k + 2075462 := by
    unfold C
    simp [show (35831808 * k + 4150924) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 2075462) = 8957952 * k + 1037731 := by
    unfold C
    simp [show (17915904 * k + 2075462) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1037731) = 26873856 * k + 3113194 := by
    unfold C
    simp [show (8957952 * k + 1037731) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 3113194) = 13436928 * k + 1556597 := by
    unfold C
    simp [show (26873856 * k + 3113194) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1556597) = 40310784 * k + 4669792 := by
    unfold C
    simp [show (13436928 * k + 1556597) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 4669792) = 20155392 * k + 2334896 := by
    unfold C
    simp [show (40310784 * k + 4669792) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 2334896) = 10077696 * k + 1167448 := by
    unfold C
    simp [show (20155392 * k + 2334896) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1167448) = 5038848 * k + 583724 := by
    unfold C
    simp [show (10077696 * k + 1167448) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 583724) = 2519424 * k + 291862 := by
    unfold C
    simp [show (5038848 * k + 583724) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 291862) = 1259712 * k + 145931 := by
    unfold C
    simp [show (2519424 * k + 291862) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 145931) = 3779136 * k + 437794 := by
    unfold C
    simp [show (1259712 * k + 145931) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 437794) = 1889568 * k + 218897 := by
    unfold C
    simp [show (3779136 * k + 437794) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 218897) = 5668704 * k + 656692 := by
    unfold C
    simp [show (1889568 * k + 218897) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 656692) = 2834352 * k + 328346 := by
    unfold C
    simp [show (5668704 * k + 656692) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 328346) = 1417176 * k + 164173 := by
    unfold C
    simp [show (2834352 * k + 328346) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 164173) = 4251528 * k + 492520 := by
    unfold C
    simp [show (1417176 * k + 164173) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 492520) = 2125764 * k + 246260 := by
    unfold C
    simp [show (4251528 * k + 492520) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 246260) = 1062882 * k + 123130 := by
    unfold C
    simp [show (2125764 * k + 246260) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 123130) = 531441 * k + 61565 := by
    unfold C
    simp [show (1062882 * k + 123130) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 121471) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 121471)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_121791 : ∀ k : Nat,
    iterate (1048576 * k + 121791) 32 = 531441 * k + 61727 ∧
      531441 * k + 61727 < 1048576 * k + 121791 := by
  intro k
  have h1 : C (1048576 * k + 121791) = 3145728 * k + 365374 := by
    unfold C
    simp [show (1048576 * k + 121791) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 365374) = 1572864 * k + 182687 := by
    unfold C
    simp [show (3145728 * k + 365374) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 182687) = 4718592 * k + 548062 := by
    unfold C
    simp [show (1572864 * k + 182687) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 548062) = 2359296 * k + 274031 := by
    unfold C
    simp [show (4718592 * k + 548062) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 274031) = 7077888 * k + 822094 := by
    unfold C
    simp [show (2359296 * k + 274031) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 822094) = 3538944 * k + 411047 := by
    unfold C
    simp [show (7077888 * k + 822094) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 411047) = 10616832 * k + 1233142 := by
    unfold C
    simp [show (3538944 * k + 411047) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1233142) = 5308416 * k + 616571 := by
    unfold C
    simp [show (10616832 * k + 1233142) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 616571) = 15925248 * k + 1849714 := by
    unfold C
    simp [show (5308416 * k + 616571) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1849714) = 7962624 * k + 924857 := by
    unfold C
    simp [show (15925248 * k + 1849714) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 924857) = 23887872 * k + 2774572 := by
    unfold C
    simp [show (7962624 * k + 924857) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 2774572) = 11943936 * k + 1387286 := by
    unfold C
    simp [show (23887872 * k + 2774572) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1387286) = 5971968 * k + 693643 := by
    unfold C
    simp [show (11943936 * k + 1387286) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 693643) = 17915904 * k + 2080930 := by
    unfold C
    simp [show (5971968 * k + 693643) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2080930) = 8957952 * k + 1040465 := by
    unfold C
    simp [show (17915904 * k + 2080930) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1040465) = 26873856 * k + 3121396 := by
    unfold C
    simp [show (8957952 * k + 1040465) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 3121396) = 13436928 * k + 1560698 := by
    unfold C
    simp [show (26873856 * k + 3121396) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1560698) = 6718464 * k + 780349 := by
    unfold C
    simp [show (13436928 * k + 1560698) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 780349) = 20155392 * k + 2341048 := by
    unfold C
    simp [show (6718464 * k + 780349) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2341048) = 10077696 * k + 1170524 := by
    unfold C
    simp [show (20155392 * k + 2341048) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1170524) = 5038848 * k + 585262 := by
    unfold C
    simp [show (10077696 * k + 1170524) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 585262) = 2519424 * k + 292631 := by
    unfold C
    simp [show (5038848 * k + 585262) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 292631) = 7558272 * k + 877894 := by
    unfold C
    simp [show (2519424 * k + 292631) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 877894) = 3779136 * k + 438947 := by
    unfold C
    simp [show (7558272 * k + 877894) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 438947) = 11337408 * k + 1316842 := by
    unfold C
    simp [show (3779136 * k + 438947) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1316842) = 5668704 * k + 658421 := by
    unfold C
    simp [show (11337408 * k + 1316842) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 658421) = 17006112 * k + 1975264 := by
    unfold C
    simp [show (5668704 * k + 658421) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1975264) = 8503056 * k + 987632 := by
    unfold C
    simp [show (17006112 * k + 1975264) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 987632) = 4251528 * k + 493816 := by
    unfold C
    simp [show (8503056 * k + 987632) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 493816) = 2125764 * k + 246908 := by
    unfold C
    simp [show (4251528 * k + 493816) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 246908) = 1062882 * k + 123454 := by
    unfold C
    simp [show (2125764 * k + 246908) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 123454) = 531441 * k + 61727 := by
    unfold C
    simp [show (1062882 * k + 123454) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 121791) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 121791)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_122335 : ∀ k : Nat,
    iterate (1048576 * k + 122335) 32 = 531441 * k + 62003 ∧
      531441 * k + 62003 < 1048576 * k + 122335 := by
  intro k
  have h1 : C (1048576 * k + 122335) = 3145728 * k + 367006 := by
    unfold C
    simp [show (1048576 * k + 122335) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 367006) = 1572864 * k + 183503 := by
    unfold C
    simp [show (3145728 * k + 367006) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 183503) = 4718592 * k + 550510 := by
    unfold C
    simp [show (1572864 * k + 183503) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 550510) = 2359296 * k + 275255 := by
    unfold C
    simp [show (4718592 * k + 550510) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 275255) = 7077888 * k + 825766 := by
    unfold C
    simp [show (2359296 * k + 275255) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 825766) = 3538944 * k + 412883 := by
    unfold C
    simp [show (7077888 * k + 825766) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 412883) = 10616832 * k + 1238650 := by
    unfold C
    simp [show (3538944 * k + 412883) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1238650) = 5308416 * k + 619325 := by
    unfold C
    simp [show (10616832 * k + 1238650) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 619325) = 15925248 * k + 1857976 := by
    unfold C
    simp [show (5308416 * k + 619325) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1857976) = 7962624 * k + 928988 := by
    unfold C
    simp [show (15925248 * k + 1857976) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 928988) = 3981312 * k + 464494 := by
    unfold C
    simp [show (7962624 * k + 928988) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 464494) = 1990656 * k + 232247 := by
    unfold C
    simp [show (3981312 * k + 464494) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 232247) = 5971968 * k + 696742 := by
    unfold C
    simp [show (1990656 * k + 232247) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 696742) = 2985984 * k + 348371 := by
    unfold C
    simp [show (5971968 * k + 696742) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 348371) = 8957952 * k + 1045114 := by
    unfold C
    simp [show (2985984 * k + 348371) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1045114) = 4478976 * k + 522557 := by
    unfold C
    simp [show (8957952 * k + 1045114) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 522557) = 13436928 * k + 1567672 := by
    unfold C
    simp [show (4478976 * k + 522557) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1567672) = 6718464 * k + 783836 := by
    unfold C
    simp [show (13436928 * k + 1567672) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 783836) = 3359232 * k + 391918 := by
    unfold C
    simp [show (6718464 * k + 783836) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 391918) = 1679616 * k + 195959 := by
    unfold C
    simp [show (3359232 * k + 391918) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 195959) = 5038848 * k + 587878 := by
    unfold C
    simp [show (1679616 * k + 195959) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 587878) = 2519424 * k + 293939 := by
    unfold C
    simp [show (5038848 * k + 587878) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 293939) = 7558272 * k + 881818 := by
    unfold C
    simp [show (2519424 * k + 293939) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 881818) = 3779136 * k + 440909 := by
    unfold C
    simp [show (7558272 * k + 881818) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 440909) = 11337408 * k + 1322728 := by
    unfold C
    simp [show (3779136 * k + 440909) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1322728) = 5668704 * k + 661364 := by
    unfold C
    simp [show (11337408 * k + 1322728) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 661364) = 2834352 * k + 330682 := by
    unfold C
    simp [show (5668704 * k + 661364) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 330682) = 1417176 * k + 165341 := by
    unfold C
    simp [show (2834352 * k + 330682) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 165341) = 4251528 * k + 496024 := by
    unfold C
    simp [show (1417176 * k + 165341) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 496024) = 2125764 * k + 248012 := by
    unfold C
    simp [show (4251528 * k + 496024) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 248012) = 1062882 * k + 124006 := by
    unfold C
    simp [show (2125764 * k + 248012) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 124006) = 531441 * k + 62003 := by
    unfold C
    simp [show (1062882 * k + 124006) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 122335) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 122335)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_122351 : ∀ k : Nat,
    iterate (1048576 * k + 122351) 32 = 531441 * k + 62011 ∧
      531441 * k + 62011 < 1048576 * k + 122351 := by
  intro k
  have h1 : C (1048576 * k + 122351) = 3145728 * k + 367054 := by
    unfold C
    simp [show (1048576 * k + 122351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 367054) = 1572864 * k + 183527 := by
    unfold C
    simp [show (3145728 * k + 367054) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 183527) = 4718592 * k + 550582 := by
    unfold C
    simp [show (1572864 * k + 183527) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 550582) = 2359296 * k + 275291 := by
    unfold C
    simp [show (4718592 * k + 550582) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 275291) = 7077888 * k + 825874 := by
    unfold C
    simp [show (2359296 * k + 275291) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 825874) = 3538944 * k + 412937 := by
    unfold C
    simp [show (7077888 * k + 825874) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 412937) = 10616832 * k + 1238812 := by
    unfold C
    simp [show (3538944 * k + 412937) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1238812) = 5308416 * k + 619406 := by
    unfold C
    simp [show (10616832 * k + 1238812) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 619406) = 2654208 * k + 309703 := by
    unfold C
    simp [show (5308416 * k + 619406) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 309703) = 7962624 * k + 929110 := by
    unfold C
    simp [show (2654208 * k + 309703) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 929110) = 3981312 * k + 464555 := by
    unfold C
    simp [show (7962624 * k + 929110) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 464555) = 11943936 * k + 1393666 := by
    unfold C
    simp [show (3981312 * k + 464555) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1393666) = 5971968 * k + 696833 := by
    unfold C
    simp [show (11943936 * k + 1393666) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 696833) = 17915904 * k + 2090500 := by
    unfold C
    simp [show (5971968 * k + 696833) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2090500) = 8957952 * k + 1045250 := by
    unfold C
    simp [show (17915904 * k + 2090500) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1045250) = 4478976 * k + 522625 := by
    unfold C
    simp [show (8957952 * k + 1045250) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 522625) = 13436928 * k + 1567876 := by
    unfold C
    simp [show (4478976 * k + 522625) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1567876) = 6718464 * k + 783938 := by
    unfold C
    simp [show (13436928 * k + 1567876) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 783938) = 3359232 * k + 391969 := by
    unfold C
    simp [show (6718464 * k + 783938) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 391969) = 10077696 * k + 1175908 := by
    unfold C
    simp [show (3359232 * k + 391969) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1175908) = 5038848 * k + 587954 := by
    unfold C
    simp [show (10077696 * k + 1175908) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 587954) = 2519424 * k + 293977 := by
    unfold C
    simp [show (5038848 * k + 587954) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 293977) = 7558272 * k + 881932 := by
    unfold C
    simp [show (2519424 * k + 293977) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 881932) = 3779136 * k + 440966 := by
    unfold C
    simp [show (7558272 * k + 881932) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 440966) = 1889568 * k + 220483 := by
    unfold C
    simp [show (3779136 * k + 440966) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 220483) = 5668704 * k + 661450 := by
    unfold C
    simp [show (1889568 * k + 220483) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 661450) = 2834352 * k + 330725 := by
    unfold C
    simp [show (5668704 * k + 661450) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 330725) = 8503056 * k + 992176 := by
    unfold C
    simp [show (2834352 * k + 330725) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 992176) = 4251528 * k + 496088 := by
    unfold C
    simp [show (8503056 * k + 992176) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 496088) = 2125764 * k + 248044 := by
    unfold C
    simp [show (4251528 * k + 496088) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 248044) = 1062882 * k + 124022 := by
    unfold C
    simp [show (2125764 * k + 248044) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 124022) = 531441 * k + 62011 := by
    unfold C
    simp [show (1062882 * k + 124022) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 122351) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 122351)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_122927 : ∀ k : Nat,
    iterate (1048576 * k + 122927) 32 = 531441 * k + 62303 ∧
      531441 * k + 62303 < 1048576 * k + 122927 := by
  intro k
  have h1 : C (1048576 * k + 122927) = 3145728 * k + 368782 := by
    unfold C
    simp [show (1048576 * k + 122927) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 368782) = 1572864 * k + 184391 := by
    unfold C
    simp [show (3145728 * k + 368782) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 184391) = 4718592 * k + 553174 := by
    unfold C
    simp [show (1572864 * k + 184391) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 553174) = 2359296 * k + 276587 := by
    unfold C
    simp [show (4718592 * k + 553174) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 276587) = 7077888 * k + 829762 := by
    unfold C
    simp [show (2359296 * k + 276587) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 829762) = 3538944 * k + 414881 := by
    unfold C
    simp [show (7077888 * k + 829762) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 414881) = 10616832 * k + 1244644 := by
    unfold C
    simp [show (3538944 * k + 414881) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1244644) = 5308416 * k + 622322 := by
    unfold C
    simp [show (10616832 * k + 1244644) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 622322) = 2654208 * k + 311161 := by
    unfold C
    simp [show (5308416 * k + 622322) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 311161) = 7962624 * k + 933484 := by
    unfold C
    simp [show (2654208 * k + 311161) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 933484) = 3981312 * k + 466742 := by
    unfold C
    simp [show (7962624 * k + 933484) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 466742) = 1990656 * k + 233371 := by
    unfold C
    simp [show (3981312 * k + 466742) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 233371) = 5971968 * k + 700114 := by
    unfold C
    simp [show (1990656 * k + 233371) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 700114) = 2985984 * k + 350057 := by
    unfold C
    simp [show (5971968 * k + 700114) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 350057) = 8957952 * k + 1050172 := by
    unfold C
    simp [show (2985984 * k + 350057) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1050172) = 4478976 * k + 525086 := by
    unfold C
    simp [show (8957952 * k + 1050172) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 525086) = 2239488 * k + 262543 := by
    unfold C
    simp [show (4478976 * k + 525086) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 262543) = 6718464 * k + 787630 := by
    unfold C
    simp [show (2239488 * k + 262543) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 787630) = 3359232 * k + 393815 := by
    unfold C
    simp [show (6718464 * k + 787630) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 393815) = 10077696 * k + 1181446 := by
    unfold C
    simp [show (3359232 * k + 393815) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1181446) = 5038848 * k + 590723 := by
    unfold C
    simp [show (10077696 * k + 1181446) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 590723) = 15116544 * k + 1772170 := by
    unfold C
    simp [show (5038848 * k + 590723) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1772170) = 7558272 * k + 886085 := by
    unfold C
    simp [show (15116544 * k + 1772170) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 886085) = 22674816 * k + 2658256 := by
    unfold C
    simp [show (7558272 * k + 886085) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 2658256) = 11337408 * k + 1329128 := by
    unfold C
    simp [show (22674816 * k + 2658256) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1329128) = 5668704 * k + 664564 := by
    unfold C
    simp [show (11337408 * k + 1329128) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 664564) = 2834352 * k + 332282 := by
    unfold C
    simp [show (5668704 * k + 664564) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 332282) = 1417176 * k + 166141 := by
    unfold C
    simp [show (2834352 * k + 332282) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 166141) = 4251528 * k + 498424 := by
    unfold C
    simp [show (1417176 * k + 166141) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 498424) = 2125764 * k + 249212 := by
    unfold C
    simp [show (4251528 * k + 498424) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 249212) = 1062882 * k + 124606 := by
    unfold C
    simp [show (2125764 * k + 249212) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 124606) = 531441 * k + 62303 := by
    unfold C
    simp [show (1062882 * k + 124606) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 122927) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 122927)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_124263 : ∀ k : Nat,
    iterate (1048576 * k + 124263) 32 = 531441 * k + 62980 ∧
      531441 * k + 62980 < 1048576 * k + 124263 := by
  intro k
  have h1 : C (1048576 * k + 124263) = 3145728 * k + 372790 := by
    unfold C
    simp [show (1048576 * k + 124263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 372790) = 1572864 * k + 186395 := by
    unfold C
    simp [show (3145728 * k + 372790) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 186395) = 4718592 * k + 559186 := by
    unfold C
    simp [show (1572864 * k + 186395) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 559186) = 2359296 * k + 279593 := by
    unfold C
    simp [show (4718592 * k + 559186) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 279593) = 7077888 * k + 838780 := by
    unfold C
    simp [show (2359296 * k + 279593) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 838780) = 3538944 * k + 419390 := by
    unfold C
    simp [show (7077888 * k + 838780) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 419390) = 1769472 * k + 209695 := by
    unfold C
    simp [show (3538944 * k + 419390) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 209695) = 5308416 * k + 629086 := by
    unfold C
    simp [show (1769472 * k + 209695) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 629086) = 2654208 * k + 314543 := by
    unfold C
    simp [show (5308416 * k + 629086) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 314543) = 7962624 * k + 943630 := by
    unfold C
    simp [show (2654208 * k + 314543) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 943630) = 3981312 * k + 471815 := by
    unfold C
    simp [show (7962624 * k + 943630) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 471815) = 11943936 * k + 1415446 := by
    unfold C
    simp [show (3981312 * k + 471815) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1415446) = 5971968 * k + 707723 := by
    unfold C
    simp [show (11943936 * k + 1415446) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 707723) = 17915904 * k + 2123170 := by
    unfold C
    simp [show (5971968 * k + 707723) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2123170) = 8957952 * k + 1061585 := by
    unfold C
    simp [show (17915904 * k + 2123170) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1061585) = 26873856 * k + 3184756 := by
    unfold C
    simp [show (8957952 * k + 1061585) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 3184756) = 13436928 * k + 1592378 := by
    unfold C
    simp [show (26873856 * k + 3184756) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1592378) = 6718464 * k + 796189 := by
    unfold C
    simp [show (13436928 * k + 1592378) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 796189) = 20155392 * k + 2388568 := by
    unfold C
    simp [show (6718464 * k + 796189) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2388568) = 10077696 * k + 1194284 := by
    unfold C
    simp [show (20155392 * k + 2388568) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1194284) = 5038848 * k + 597142 := by
    unfold C
    simp [show (10077696 * k + 1194284) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 597142) = 2519424 * k + 298571 := by
    unfold C
    simp [show (5038848 * k + 597142) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 298571) = 7558272 * k + 895714 := by
    unfold C
    simp [show (2519424 * k + 298571) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 895714) = 3779136 * k + 447857 := by
    unfold C
    simp [show (7558272 * k + 895714) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 447857) = 11337408 * k + 1343572 := by
    unfold C
    simp [show (3779136 * k + 447857) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1343572) = 5668704 * k + 671786 := by
    unfold C
    simp [show (11337408 * k + 1343572) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 671786) = 2834352 * k + 335893 := by
    unfold C
    simp [show (5668704 * k + 671786) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 335893) = 8503056 * k + 1007680 := by
    unfold C
    simp [show (2834352 * k + 335893) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1007680) = 4251528 * k + 503840 := by
    unfold C
    simp [show (8503056 * k + 1007680) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 503840) = 2125764 * k + 251920 := by
    unfold C
    simp [show (4251528 * k + 503840) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 251920) = 1062882 * k + 125960 := by
    unfold C
    simp [show (2125764 * k + 251920) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 125960) = 531441 * k + 62980 := by
    unfold C
    simp [show (1062882 * k + 125960) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 124263) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 124263)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_124507 : ∀ k : Nat,
    iterate (1048576 * k + 124507) 32 = 531441 * k + 63104 ∧
      531441 * k + 63104 < 1048576 * k + 124507 := by
  intro k
  have h1 : C (1048576 * k + 124507) = 3145728 * k + 373522 := by
    unfold C
    simp [show (1048576 * k + 124507) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 373522) = 1572864 * k + 186761 := by
    unfold C
    simp [show (3145728 * k + 373522) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 186761) = 4718592 * k + 560284 := by
    unfold C
    simp [show (1572864 * k + 186761) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 560284) = 2359296 * k + 280142 := by
    unfold C
    simp [show (4718592 * k + 560284) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 280142) = 1179648 * k + 140071 := by
    unfold C
    simp [show (2359296 * k + 280142) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 140071) = 3538944 * k + 420214 := by
    unfold C
    simp [show (1179648 * k + 140071) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 420214) = 1769472 * k + 210107 := by
    unfold C
    simp [show (3538944 * k + 420214) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 210107) = 5308416 * k + 630322 := by
    unfold C
    simp [show (1769472 * k + 210107) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 630322) = 2654208 * k + 315161 := by
    unfold C
    simp [show (5308416 * k + 630322) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 315161) = 7962624 * k + 945484 := by
    unfold C
    simp [show (2654208 * k + 315161) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 945484) = 3981312 * k + 472742 := by
    unfold C
    simp [show (7962624 * k + 945484) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 472742) = 1990656 * k + 236371 := by
    unfold C
    simp [show (3981312 * k + 472742) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 236371) = 5971968 * k + 709114 := by
    unfold C
    simp [show (1990656 * k + 236371) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 709114) = 2985984 * k + 354557 := by
    unfold C
    simp [show (5971968 * k + 709114) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 354557) = 8957952 * k + 1063672 := by
    unfold C
    simp [show (2985984 * k + 354557) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1063672) = 4478976 * k + 531836 := by
    unfold C
    simp [show (8957952 * k + 1063672) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 531836) = 2239488 * k + 265918 := by
    unfold C
    simp [show (4478976 * k + 531836) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 265918) = 1119744 * k + 132959 := by
    unfold C
    simp [show (2239488 * k + 265918) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 132959) = 3359232 * k + 398878 := by
    unfold C
    simp [show (1119744 * k + 132959) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 398878) = 1679616 * k + 199439 := by
    unfold C
    simp [show (3359232 * k + 398878) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 199439) = 5038848 * k + 598318 := by
    unfold C
    simp [show (1679616 * k + 199439) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 598318) = 2519424 * k + 299159 := by
    unfold C
    simp [show (5038848 * k + 598318) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 299159) = 7558272 * k + 897478 := by
    unfold C
    simp [show (2519424 * k + 299159) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 897478) = 3779136 * k + 448739 := by
    unfold C
    simp [show (7558272 * k + 897478) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 448739) = 11337408 * k + 1346218 := by
    unfold C
    simp [show (3779136 * k + 448739) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1346218) = 5668704 * k + 673109 := by
    unfold C
    simp [show (11337408 * k + 1346218) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 673109) = 17006112 * k + 2019328 := by
    unfold C
    simp [show (5668704 * k + 673109) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2019328) = 8503056 * k + 1009664 := by
    unfold C
    simp [show (17006112 * k + 2019328) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1009664) = 4251528 * k + 504832 := by
    unfold C
    simp [show (8503056 * k + 1009664) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 504832) = 2125764 * k + 252416 := by
    unfold C
    simp [show (4251528 * k + 504832) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 252416) = 1062882 * k + 126208 := by
    unfold C
    simp [show (2125764 * k + 252416) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 126208) = 531441 * k + 63104 := by
    unfold C
    simp [show (1062882 * k + 126208) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 124507) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 124507)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_124991 : ∀ k : Nat,
    iterate (1048576 * k + 124991) 32 = 531441 * k + 63349 ∧
      531441 * k + 63349 < 1048576 * k + 124991 := by
  intro k
  have h1 : C (1048576 * k + 124991) = 3145728 * k + 374974 := by
    unfold C
    simp [show (1048576 * k + 124991) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 374974) = 1572864 * k + 187487 := by
    unfold C
    simp [show (3145728 * k + 374974) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 187487) = 4718592 * k + 562462 := by
    unfold C
    simp [show (1572864 * k + 187487) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 562462) = 2359296 * k + 281231 := by
    unfold C
    simp [show (4718592 * k + 562462) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 281231) = 7077888 * k + 843694 := by
    unfold C
    simp [show (2359296 * k + 281231) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 843694) = 3538944 * k + 421847 := by
    unfold C
    simp [show (7077888 * k + 843694) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 421847) = 10616832 * k + 1265542 := by
    unfold C
    simp [show (3538944 * k + 421847) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1265542) = 5308416 * k + 632771 := by
    unfold C
    simp [show (10616832 * k + 1265542) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 632771) = 15925248 * k + 1898314 := by
    unfold C
    simp [show (5308416 * k + 632771) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1898314) = 7962624 * k + 949157 := by
    unfold C
    simp [show (15925248 * k + 1898314) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 949157) = 23887872 * k + 2847472 := by
    unfold C
    simp [show (7962624 * k + 949157) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 2847472) = 11943936 * k + 1423736 := by
    unfold C
    simp [show (23887872 * k + 2847472) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1423736) = 5971968 * k + 711868 := by
    unfold C
    simp [show (11943936 * k + 1423736) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 711868) = 2985984 * k + 355934 := by
    unfold C
    simp [show (5971968 * k + 711868) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 355934) = 1492992 * k + 177967 := by
    unfold C
    simp [show (2985984 * k + 355934) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 177967) = 4478976 * k + 533902 := by
    unfold C
    simp [show (1492992 * k + 177967) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 533902) = 2239488 * k + 266951 := by
    unfold C
    simp [show (4478976 * k + 533902) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 266951) = 6718464 * k + 800854 := by
    unfold C
    simp [show (2239488 * k + 266951) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 800854) = 3359232 * k + 400427 := by
    unfold C
    simp [show (6718464 * k + 800854) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 400427) = 10077696 * k + 1201282 := by
    unfold C
    simp [show (3359232 * k + 400427) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1201282) = 5038848 * k + 600641 := by
    unfold C
    simp [show (10077696 * k + 1201282) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 600641) = 15116544 * k + 1801924 := by
    unfold C
    simp [show (5038848 * k + 600641) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1801924) = 7558272 * k + 900962 := by
    unfold C
    simp [show (15116544 * k + 1801924) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 900962) = 3779136 * k + 450481 := by
    unfold C
    simp [show (7558272 * k + 900962) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 450481) = 11337408 * k + 1351444 := by
    unfold C
    simp [show (3779136 * k + 450481) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1351444) = 5668704 * k + 675722 := by
    unfold C
    simp [show (11337408 * k + 1351444) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 675722) = 2834352 * k + 337861 := by
    unfold C
    simp [show (5668704 * k + 675722) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 337861) = 8503056 * k + 1013584 := by
    unfold C
    simp [show (2834352 * k + 337861) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1013584) = 4251528 * k + 506792 := by
    unfold C
    simp [show (8503056 * k + 1013584) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 506792) = 2125764 * k + 253396 := by
    unfold C
    simp [show (4251528 * k + 506792) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 253396) = 1062882 * k + 126698 := by
    unfold C
    simp [show (2125764 * k + 253396) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 126698) = 531441 * k + 63349 := by
    unfold C
    simp [show (1062882 * k + 126698) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 124991) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 124991)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_125423 : ∀ k : Nat,
    iterate (1048576 * k + 125423) 32 = 531441 * k + 63568 ∧
      531441 * k + 63568 < 1048576 * k + 125423 := by
  intro k
  have h1 : C (1048576 * k + 125423) = 3145728 * k + 376270 := by
    unfold C
    simp [show (1048576 * k + 125423) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 376270) = 1572864 * k + 188135 := by
    unfold C
    simp [show (3145728 * k + 376270) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 188135) = 4718592 * k + 564406 := by
    unfold C
    simp [show (1572864 * k + 188135) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 564406) = 2359296 * k + 282203 := by
    unfold C
    simp [show (4718592 * k + 564406) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 282203) = 7077888 * k + 846610 := by
    unfold C
    simp [show (2359296 * k + 282203) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 846610) = 3538944 * k + 423305 := by
    unfold C
    simp [show (7077888 * k + 846610) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 423305) = 10616832 * k + 1269916 := by
    unfold C
    simp [show (3538944 * k + 423305) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1269916) = 5308416 * k + 634958 := by
    unfold C
    simp [show (10616832 * k + 1269916) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 634958) = 2654208 * k + 317479 := by
    unfold C
    simp [show (5308416 * k + 634958) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 317479) = 7962624 * k + 952438 := by
    unfold C
    simp [show (2654208 * k + 317479) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 952438) = 3981312 * k + 476219 := by
    unfold C
    simp [show (7962624 * k + 952438) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 476219) = 11943936 * k + 1428658 := by
    unfold C
    simp [show (3981312 * k + 476219) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1428658) = 5971968 * k + 714329 := by
    unfold C
    simp [show (11943936 * k + 1428658) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 714329) = 17915904 * k + 2142988 := by
    unfold C
    simp [show (5971968 * k + 714329) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2142988) = 8957952 * k + 1071494 := by
    unfold C
    simp [show (17915904 * k + 2142988) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1071494) = 4478976 * k + 535747 := by
    unfold C
    simp [show (8957952 * k + 1071494) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 535747) = 13436928 * k + 1607242 := by
    unfold C
    simp [show (4478976 * k + 535747) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1607242) = 6718464 * k + 803621 := by
    unfold C
    simp [show (13436928 * k + 1607242) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 803621) = 20155392 * k + 2410864 := by
    unfold C
    simp [show (6718464 * k + 803621) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2410864) = 10077696 * k + 1205432 := by
    unfold C
    simp [show (20155392 * k + 2410864) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1205432) = 5038848 * k + 602716 := by
    unfold C
    simp [show (10077696 * k + 1205432) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 602716) = 2519424 * k + 301358 := by
    unfold C
    simp [show (5038848 * k + 602716) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 301358) = 1259712 * k + 150679 := by
    unfold C
    simp [show (2519424 * k + 301358) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 150679) = 3779136 * k + 452038 := by
    unfold C
    simp [show (1259712 * k + 150679) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 452038) = 1889568 * k + 226019 := by
    unfold C
    simp [show (3779136 * k + 452038) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 226019) = 5668704 * k + 678058 := by
    unfold C
    simp [show (1889568 * k + 226019) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 678058) = 2834352 * k + 339029 := by
    unfold C
    simp [show (5668704 * k + 678058) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 339029) = 8503056 * k + 1017088 := by
    unfold C
    simp [show (2834352 * k + 339029) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1017088) = 4251528 * k + 508544 := by
    unfold C
    simp [show (8503056 * k + 1017088) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 508544) = 2125764 * k + 254272 := by
    unfold C
    simp [show (4251528 * k + 508544) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 254272) = 1062882 * k + 127136 := by
    unfold C
    simp [show (2125764 * k + 254272) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 127136) = 531441 * k + 63568 := by
    unfold C
    simp [show (1062882 * k + 127136) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 125423) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 125423)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard017
