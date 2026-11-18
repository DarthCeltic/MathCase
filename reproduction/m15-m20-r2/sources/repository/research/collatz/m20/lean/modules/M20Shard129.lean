import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard129

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_1014951 : ∀ k : Nat,
    iterate (1048576 * k + 1014951) 32 = 531441 * k + 514400 ∧
      531441 * k + 514400 < 1048576 * k + 1014951 := by
  intro k
  have h1 : C (1048576 * k + 1014951) = 3145728 * k + 3044854 := by
    unfold C
    simp [show (1048576 * k + 1014951) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3044854) = 1572864 * k + 1522427 := by
    unfold C
    simp [show (3145728 * k + 3044854) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1522427) = 4718592 * k + 4567282 := by
    unfold C
    simp [show (1572864 * k + 1522427) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4567282) = 2359296 * k + 2283641 := by
    unfold C
    simp [show (4718592 * k + 4567282) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2283641) = 7077888 * k + 6850924 := by
    unfold C
    simp [show (2359296 * k + 2283641) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6850924) = 3538944 * k + 3425462 := by
    unfold C
    simp [show (7077888 * k + 6850924) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3425462) = 1769472 * k + 1712731 := by
    unfold C
    simp [show (3538944 * k + 3425462) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1712731) = 5308416 * k + 5138194 := by
    unfold C
    simp [show (1769472 * k + 1712731) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5138194) = 2654208 * k + 2569097 := by
    unfold C
    simp [show (5308416 * k + 5138194) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2569097) = 7962624 * k + 7707292 := by
    unfold C
    simp [show (2654208 * k + 2569097) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7707292) = 3981312 * k + 3853646 := by
    unfold C
    simp [show (7962624 * k + 7707292) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3853646) = 1990656 * k + 1926823 := by
    unfold C
    simp [show (3981312 * k + 3853646) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1926823) = 5971968 * k + 5780470 := by
    unfold C
    simp [show (1990656 * k + 1926823) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5780470) = 2985984 * k + 2890235 := by
    unfold C
    simp [show (5971968 * k + 5780470) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2890235) = 8957952 * k + 8670706 := by
    unfold C
    simp [show (2985984 * k + 2890235) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8670706) = 4478976 * k + 4335353 := by
    unfold C
    simp [show (8957952 * k + 8670706) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4335353) = 13436928 * k + 13006060 := by
    unfold C
    simp [show (4478976 * k + 4335353) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 13006060) = 6718464 * k + 6503030 := by
    unfold C
    simp [show (13436928 * k + 13006060) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6503030) = 3359232 * k + 3251515 := by
    unfold C
    simp [show (6718464 * k + 6503030) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3251515) = 10077696 * k + 9754546 := by
    unfold C
    simp [show (3359232 * k + 3251515) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9754546) = 5038848 * k + 4877273 := by
    unfold C
    simp [show (10077696 * k + 9754546) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4877273) = 15116544 * k + 14631820 := by
    unfold C
    simp [show (5038848 * k + 4877273) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14631820) = 7558272 * k + 7315910 := by
    unfold C
    simp [show (15116544 * k + 14631820) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7315910) = 3779136 * k + 3657955 := by
    unfold C
    simp [show (7558272 * k + 7315910) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3657955) = 11337408 * k + 10973866 := by
    unfold C
    simp [show (3779136 * k + 3657955) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10973866) = 5668704 * k + 5486933 := by
    unfold C
    simp [show (11337408 * k + 10973866) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5486933) = 17006112 * k + 16460800 := by
    unfold C
    simp [show (5668704 * k + 5486933) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 16460800) = 8503056 * k + 8230400 := by
    unfold C
    simp [show (17006112 * k + 16460800) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8230400) = 4251528 * k + 4115200 := by
    unfold C
    simp [show (8503056 * k + 8230400) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4115200) = 2125764 * k + 2057600 := by
    unfold C
    simp [show (4251528 * k + 4115200) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2057600) = 1062882 * k + 1028800 := by
    unfold C
    simp [show (2125764 * k + 2057600) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1028800) = 531441 * k + 514400 := by
    unfold C
    simp [show (1062882 * k + 1028800) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1014951) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1014951)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1014975 : ∀ k : Nat,
    iterate (1048576 * k + 1014975) 32 = 531441 * k + 514412 ∧
      531441 * k + 514412 < 1048576 * k + 1014975 := by
  intro k
  have h1 : C (1048576 * k + 1014975) = 3145728 * k + 3044926 := by
    unfold C
    simp [show (1048576 * k + 1014975) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3044926) = 1572864 * k + 1522463 := by
    unfold C
    simp [show (3145728 * k + 3044926) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1522463) = 4718592 * k + 4567390 := by
    unfold C
    simp [show (1572864 * k + 1522463) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4567390) = 2359296 * k + 2283695 := by
    unfold C
    simp [show (4718592 * k + 4567390) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2283695) = 7077888 * k + 6851086 := by
    unfold C
    simp [show (2359296 * k + 2283695) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6851086) = 3538944 * k + 3425543 := by
    unfold C
    simp [show (7077888 * k + 6851086) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3425543) = 10616832 * k + 10276630 := by
    unfold C
    simp [show (3538944 * k + 3425543) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10276630) = 5308416 * k + 5138315 := by
    unfold C
    simp [show (10616832 * k + 10276630) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5138315) = 15925248 * k + 15414946 := by
    unfold C
    simp [show (5308416 * k + 5138315) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15414946) = 7962624 * k + 7707473 := by
    unfold C
    simp [show (15925248 * k + 15414946) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7707473) = 23887872 * k + 23122420 := by
    unfold C
    simp [show (7962624 * k + 7707473) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23122420) = 11943936 * k + 11561210 := by
    unfold C
    simp [show (23887872 * k + 23122420) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11561210) = 5971968 * k + 5780605 := by
    unfold C
    simp [show (11943936 * k + 11561210) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5780605) = 17915904 * k + 17341816 := by
    unfold C
    simp [show (5971968 * k + 5780605) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17341816) = 8957952 * k + 8670908 := by
    unfold C
    simp [show (17915904 * k + 17341816) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8670908) = 4478976 * k + 4335454 := by
    unfold C
    simp [show (8957952 * k + 8670908) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4335454) = 2239488 * k + 2167727 := by
    unfold C
    simp [show (4478976 * k + 4335454) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2167727) = 6718464 * k + 6503182 := by
    unfold C
    simp [show (2239488 * k + 2167727) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6503182) = 3359232 * k + 3251591 := by
    unfold C
    simp [show (6718464 * k + 6503182) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3251591) = 10077696 * k + 9754774 := by
    unfold C
    simp [show (3359232 * k + 3251591) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9754774) = 5038848 * k + 4877387 := by
    unfold C
    simp [show (10077696 * k + 9754774) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4877387) = 15116544 * k + 14632162 := by
    unfold C
    simp [show (5038848 * k + 4877387) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14632162) = 7558272 * k + 7316081 := by
    unfold C
    simp [show (15116544 * k + 14632162) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7316081) = 22674816 * k + 21948244 := by
    unfold C
    simp [show (7558272 * k + 7316081) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 21948244) = 11337408 * k + 10974122 := by
    unfold C
    simp [show (22674816 * k + 21948244) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10974122) = 5668704 * k + 5487061 := by
    unfold C
    simp [show (11337408 * k + 10974122) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5487061) = 17006112 * k + 16461184 := by
    unfold C
    simp [show (5668704 * k + 5487061) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 16461184) = 8503056 * k + 8230592 := by
    unfold C
    simp [show (17006112 * k + 16461184) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8230592) = 4251528 * k + 4115296 := by
    unfold C
    simp [show (8503056 * k + 8230592) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4115296) = 2125764 * k + 2057648 := by
    unfold C
    simp [show (4251528 * k + 4115296) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2057648) = 1062882 * k + 1028824 := by
    unfold C
    simp [show (2125764 * k + 2057648) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1028824) = 531441 * k + 514412 := by
    unfold C
    simp [show (1062882 * k + 1028824) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1014975) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1014975)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1015103 : ∀ k : Nat,
    iterate (1048576 * k + 1015103) 32 = 531441 * k + 514477 ∧
      531441 * k + 514477 < 1048576 * k + 1015103 := by
  intro k
  have h1 : C (1048576 * k + 1015103) = 3145728 * k + 3045310 := by
    unfold C
    simp [show (1048576 * k + 1015103) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3045310) = 1572864 * k + 1522655 := by
    unfold C
    simp [show (3145728 * k + 3045310) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1522655) = 4718592 * k + 4567966 := by
    unfold C
    simp [show (1572864 * k + 1522655) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4567966) = 2359296 * k + 2283983 := by
    unfold C
    simp [show (4718592 * k + 4567966) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2283983) = 7077888 * k + 6851950 := by
    unfold C
    simp [show (2359296 * k + 2283983) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6851950) = 3538944 * k + 3425975 := by
    unfold C
    simp [show (7077888 * k + 6851950) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3425975) = 10616832 * k + 10277926 := by
    unfold C
    simp [show (3538944 * k + 3425975) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10277926) = 5308416 * k + 5138963 := by
    unfold C
    simp [show (10616832 * k + 10277926) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5138963) = 15925248 * k + 15416890 := by
    unfold C
    simp [show (5308416 * k + 5138963) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15416890) = 7962624 * k + 7708445 := by
    unfold C
    simp [show (15925248 * k + 15416890) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7708445) = 23887872 * k + 23125336 := by
    unfold C
    simp [show (7962624 * k + 7708445) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23125336) = 11943936 * k + 11562668 := by
    unfold C
    simp [show (23887872 * k + 23125336) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11562668) = 5971968 * k + 5781334 := by
    unfold C
    simp [show (11943936 * k + 11562668) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5781334) = 2985984 * k + 2890667 := by
    unfold C
    simp [show (5971968 * k + 5781334) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2890667) = 8957952 * k + 8672002 := by
    unfold C
    simp [show (2985984 * k + 2890667) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8672002) = 4478976 * k + 4336001 := by
    unfold C
    simp [show (8957952 * k + 8672002) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4336001) = 13436928 * k + 13008004 := by
    unfold C
    simp [show (4478976 * k + 4336001) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 13008004) = 6718464 * k + 6504002 := by
    unfold C
    simp [show (13436928 * k + 13008004) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6504002) = 3359232 * k + 3252001 := by
    unfold C
    simp [show (6718464 * k + 6504002) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3252001) = 10077696 * k + 9756004 := by
    unfold C
    simp [show (3359232 * k + 3252001) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9756004) = 5038848 * k + 4878002 := by
    unfold C
    simp [show (10077696 * k + 9756004) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4878002) = 2519424 * k + 2439001 := by
    unfold C
    simp [show (5038848 * k + 4878002) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2439001) = 7558272 * k + 7317004 := by
    unfold C
    simp [show (2519424 * k + 2439001) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7317004) = 3779136 * k + 3658502 := by
    unfold C
    simp [show (7558272 * k + 7317004) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3658502) = 1889568 * k + 1829251 := by
    unfold C
    simp [show (3779136 * k + 3658502) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1829251) = 5668704 * k + 5487754 := by
    unfold C
    simp [show (1889568 * k + 1829251) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5487754) = 2834352 * k + 2743877 := by
    unfold C
    simp [show (5668704 * k + 5487754) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2743877) = 8503056 * k + 8231632 := by
    unfold C
    simp [show (2834352 * k + 2743877) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8231632) = 4251528 * k + 4115816 := by
    unfold C
    simp [show (8503056 * k + 8231632) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4115816) = 2125764 * k + 2057908 := by
    unfold C
    simp [show (4251528 * k + 4115816) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2057908) = 1062882 * k + 1028954 := by
    unfold C
    simp [show (2125764 * k + 2057908) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1028954) = 531441 * k + 514477 := by
    unfold C
    simp [show (1062882 * k + 1028954) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1015103) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1015103)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1015295 : ∀ k : Nat,
    iterate (1048576 * k + 1015295) 32 = 531441 * k + 514574 ∧
      531441 * k + 514574 < 1048576 * k + 1015295 := by
  intro k
  have h1 : C (1048576 * k + 1015295) = 3145728 * k + 3045886 := by
    unfold C
    simp [show (1048576 * k + 1015295) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3045886) = 1572864 * k + 1522943 := by
    unfold C
    simp [show (3145728 * k + 3045886) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1522943) = 4718592 * k + 4568830 := by
    unfold C
    simp [show (1572864 * k + 1522943) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4568830) = 2359296 * k + 2284415 := by
    unfold C
    simp [show (4718592 * k + 4568830) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2284415) = 7077888 * k + 6853246 := by
    unfold C
    simp [show (2359296 * k + 2284415) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6853246) = 3538944 * k + 3426623 := by
    unfold C
    simp [show (7077888 * k + 6853246) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3426623) = 10616832 * k + 10279870 := by
    unfold C
    simp [show (3538944 * k + 3426623) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10279870) = 5308416 * k + 5139935 := by
    unfold C
    simp [show (10616832 * k + 10279870) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5139935) = 15925248 * k + 15419806 := by
    unfold C
    simp [show (5308416 * k + 5139935) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15419806) = 7962624 * k + 7709903 := by
    unfold C
    simp [show (15925248 * k + 15419806) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7709903) = 23887872 * k + 23129710 := by
    unfold C
    simp [show (7962624 * k + 7709903) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23129710) = 11943936 * k + 11564855 := by
    unfold C
    simp [show (23887872 * k + 23129710) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11564855) = 35831808 * k + 34694566 := by
    unfold C
    simp [show (11943936 * k + 11564855) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 34694566) = 17915904 * k + 17347283 := by
    unfold C
    simp [show (35831808 * k + 34694566) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 17347283) = 53747712 * k + 52041850 := by
    unfold C
    simp [show (17915904 * k + 17347283) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 52041850) = 26873856 * k + 26020925 := by
    unfold C
    simp [show (53747712 * k + 52041850) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 26020925) = 80621568 * k + 78062776 := by
    unfold C
    simp [show (26873856 * k + 26020925) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 78062776) = 40310784 * k + 39031388 := by
    unfold C
    simp [show (80621568 * k + 78062776) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 39031388) = 20155392 * k + 19515694 := by
    unfold C
    simp [show (40310784 * k + 39031388) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19515694) = 10077696 * k + 9757847 := by
    unfold C
    simp [show (20155392 * k + 19515694) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9757847) = 30233088 * k + 29273542 := by
    unfold C
    simp [show (10077696 * k + 9757847) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 29273542) = 15116544 * k + 14636771 := by
    unfold C
    simp [show (30233088 * k + 29273542) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14636771) = 45349632 * k + 43910314 := by
    unfold C
    simp [show (15116544 * k + 14636771) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 43910314) = 22674816 * k + 21955157 := by
    unfold C
    simp [show (45349632 * k + 43910314) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 21955157) = 68024448 * k + 65865472 := by
    unfold C
    simp [show (22674816 * k + 21955157) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 65865472) = 34012224 * k + 32932736 := by
    unfold C
    simp [show (68024448 * k + 65865472) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 32932736) = 17006112 * k + 16466368 := by
    unfold C
    simp [show (34012224 * k + 32932736) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 16466368) = 8503056 * k + 8233184 := by
    unfold C
    simp [show (17006112 * k + 16466368) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8233184) = 4251528 * k + 4116592 := by
    unfold C
    simp [show (8503056 * k + 8233184) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4116592) = 2125764 * k + 2058296 := by
    unfold C
    simp [show (4251528 * k + 4116592) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2058296) = 1062882 * k + 1029148 := by
    unfold C
    simp [show (2125764 * k + 2058296) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1029148) = 531441 * k + 514574 := by
    unfold C
    simp [show (1062882 * k + 1029148) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1015295) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1015295)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1015679 : ∀ k : Nat,
    iterate (1048576 * k + 1015679) 32 = 531441 * k + 514769 ∧
      531441 * k + 514769 < 1048576 * k + 1015679 := by
  intro k
  have h1 : C (1048576 * k + 1015679) = 3145728 * k + 3047038 := by
    unfold C
    simp [show (1048576 * k + 1015679) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3047038) = 1572864 * k + 1523519 := by
    unfold C
    simp [show (3145728 * k + 3047038) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1523519) = 4718592 * k + 4570558 := by
    unfold C
    simp [show (1572864 * k + 1523519) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4570558) = 2359296 * k + 2285279 := by
    unfold C
    simp [show (4718592 * k + 4570558) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2285279) = 7077888 * k + 6855838 := by
    unfold C
    simp [show (2359296 * k + 2285279) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6855838) = 3538944 * k + 3427919 := by
    unfold C
    simp [show (7077888 * k + 6855838) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3427919) = 10616832 * k + 10283758 := by
    unfold C
    simp [show (3538944 * k + 3427919) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10283758) = 5308416 * k + 5141879 := by
    unfold C
    simp [show (10616832 * k + 10283758) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5141879) = 15925248 * k + 15425638 := by
    unfold C
    simp [show (5308416 * k + 5141879) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15425638) = 7962624 * k + 7712819 := by
    unfold C
    simp [show (15925248 * k + 15425638) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7712819) = 23887872 * k + 23138458 := by
    unfold C
    simp [show (7962624 * k + 7712819) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23138458) = 11943936 * k + 11569229 := by
    unfold C
    simp [show (23887872 * k + 23138458) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11569229) = 35831808 * k + 34707688 := by
    unfold C
    simp [show (11943936 * k + 11569229) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 34707688) = 17915904 * k + 17353844 := by
    unfold C
    simp [show (35831808 * k + 34707688) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 17353844) = 8957952 * k + 8676922 := by
    unfold C
    simp [show (17915904 * k + 17353844) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8676922) = 4478976 * k + 4338461 := by
    unfold C
    simp [show (8957952 * k + 8676922) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4338461) = 13436928 * k + 13015384 := by
    unfold C
    simp [show (4478976 * k + 4338461) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 13015384) = 6718464 * k + 6507692 := by
    unfold C
    simp [show (13436928 * k + 13015384) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6507692) = 3359232 * k + 3253846 := by
    unfold C
    simp [show (6718464 * k + 6507692) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3253846) = 1679616 * k + 1626923 := by
    unfold C
    simp [show (3359232 * k + 3253846) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1626923) = 5038848 * k + 4880770 := by
    unfold C
    simp [show (1679616 * k + 1626923) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4880770) = 2519424 * k + 2440385 := by
    unfold C
    simp [show (5038848 * k + 4880770) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2440385) = 7558272 * k + 7321156 := by
    unfold C
    simp [show (2519424 * k + 2440385) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7321156) = 3779136 * k + 3660578 := by
    unfold C
    simp [show (7558272 * k + 7321156) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3660578) = 1889568 * k + 1830289 := by
    unfold C
    simp [show (3779136 * k + 3660578) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1830289) = 5668704 * k + 5490868 := by
    unfold C
    simp [show (1889568 * k + 1830289) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5490868) = 2834352 * k + 2745434 := by
    unfold C
    simp [show (5668704 * k + 5490868) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2745434) = 1417176 * k + 1372717 := by
    unfold C
    simp [show (2834352 * k + 2745434) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1372717) = 4251528 * k + 4118152 := by
    unfold C
    simp [show (1417176 * k + 1372717) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4118152) = 2125764 * k + 2059076 := by
    unfold C
    simp [show (4251528 * k + 4118152) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2059076) = 1062882 * k + 1029538 := by
    unfold C
    simp [show (2125764 * k + 2059076) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1029538) = 531441 * k + 514769 := by
    unfold C
    simp [show (1062882 * k + 1029538) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1015679) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1015679)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1015839 : ∀ k : Nat,
    iterate (1048576 * k + 1015839) 32 = 531441 * k + 514850 ∧
      531441 * k + 514850 < 1048576 * k + 1015839 := by
  intro k
  have h1 : C (1048576 * k + 1015839) = 3145728 * k + 3047518 := by
    unfold C
    simp [show (1048576 * k + 1015839) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3047518) = 1572864 * k + 1523759 := by
    unfold C
    simp [show (3145728 * k + 3047518) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1523759) = 4718592 * k + 4571278 := by
    unfold C
    simp [show (1572864 * k + 1523759) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4571278) = 2359296 * k + 2285639 := by
    unfold C
    simp [show (4718592 * k + 4571278) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2285639) = 7077888 * k + 6856918 := by
    unfold C
    simp [show (2359296 * k + 2285639) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6856918) = 3538944 * k + 3428459 := by
    unfold C
    simp [show (7077888 * k + 6856918) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3428459) = 10616832 * k + 10285378 := by
    unfold C
    simp [show (3538944 * k + 3428459) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10285378) = 5308416 * k + 5142689 := by
    unfold C
    simp [show (10616832 * k + 10285378) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5142689) = 15925248 * k + 15428068 := by
    unfold C
    simp [show (5308416 * k + 5142689) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15428068) = 7962624 * k + 7714034 := by
    unfold C
    simp [show (15925248 * k + 15428068) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7714034) = 3981312 * k + 3857017 := by
    unfold C
    simp [show (7962624 * k + 7714034) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3857017) = 11943936 * k + 11571052 := by
    unfold C
    simp [show (3981312 * k + 3857017) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11571052) = 5971968 * k + 5785526 := by
    unfold C
    simp [show (11943936 * k + 11571052) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5785526) = 2985984 * k + 2892763 := by
    unfold C
    simp [show (5971968 * k + 5785526) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2892763) = 8957952 * k + 8678290 := by
    unfold C
    simp [show (2985984 * k + 2892763) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8678290) = 4478976 * k + 4339145 := by
    unfold C
    simp [show (8957952 * k + 8678290) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4339145) = 13436928 * k + 13017436 := by
    unfold C
    simp [show (4478976 * k + 4339145) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 13017436) = 6718464 * k + 6508718 := by
    unfold C
    simp [show (13436928 * k + 13017436) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6508718) = 3359232 * k + 3254359 := by
    unfold C
    simp [show (6718464 * k + 6508718) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3254359) = 10077696 * k + 9763078 := by
    unfold C
    simp [show (3359232 * k + 3254359) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9763078) = 5038848 * k + 4881539 := by
    unfold C
    simp [show (10077696 * k + 9763078) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4881539) = 15116544 * k + 14644618 := by
    unfold C
    simp [show (5038848 * k + 4881539) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14644618) = 7558272 * k + 7322309 := by
    unfold C
    simp [show (15116544 * k + 14644618) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7322309) = 22674816 * k + 21966928 := by
    unfold C
    simp [show (7558272 * k + 7322309) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 21966928) = 11337408 * k + 10983464 := by
    unfold C
    simp [show (22674816 * k + 21966928) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10983464) = 5668704 * k + 5491732 := by
    unfold C
    simp [show (11337408 * k + 10983464) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5491732) = 2834352 * k + 2745866 := by
    unfold C
    simp [show (5668704 * k + 5491732) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2745866) = 1417176 * k + 1372933 := by
    unfold C
    simp [show (2834352 * k + 2745866) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1372933) = 4251528 * k + 4118800 := by
    unfold C
    simp [show (1417176 * k + 1372933) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4118800) = 2125764 * k + 2059400 := by
    unfold C
    simp [show (4251528 * k + 4118800) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2059400) = 1062882 * k + 1029700 := by
    unfold C
    simp [show (2125764 * k + 2059400) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1029700) = 531441 * k + 514850 := by
    unfold C
    simp [show (1062882 * k + 1029700) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1015839) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1015839)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1015975 : ∀ k : Nat,
    iterate (1048576 * k + 1015975) 32 = 531441 * k + 514919 ∧
      531441 * k + 514919 < 1048576 * k + 1015975 := by
  intro k
  have h1 : C (1048576 * k + 1015975) = 3145728 * k + 3047926 := by
    unfold C
    simp [show (1048576 * k + 1015975) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3047926) = 1572864 * k + 1523963 := by
    unfold C
    simp [show (3145728 * k + 3047926) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1523963) = 4718592 * k + 4571890 := by
    unfold C
    simp [show (1572864 * k + 1523963) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4571890) = 2359296 * k + 2285945 := by
    unfold C
    simp [show (4718592 * k + 4571890) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2285945) = 7077888 * k + 6857836 := by
    unfold C
    simp [show (2359296 * k + 2285945) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6857836) = 3538944 * k + 3428918 := by
    unfold C
    simp [show (7077888 * k + 6857836) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3428918) = 1769472 * k + 1714459 := by
    unfold C
    simp [show (3538944 * k + 3428918) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1714459) = 5308416 * k + 5143378 := by
    unfold C
    simp [show (1769472 * k + 1714459) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5143378) = 2654208 * k + 2571689 := by
    unfold C
    simp [show (5308416 * k + 5143378) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2571689) = 7962624 * k + 7715068 := by
    unfold C
    simp [show (2654208 * k + 2571689) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7715068) = 3981312 * k + 3857534 := by
    unfold C
    simp [show (7962624 * k + 7715068) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3857534) = 1990656 * k + 1928767 := by
    unfold C
    simp [show (3981312 * k + 3857534) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1928767) = 5971968 * k + 5786302 := by
    unfold C
    simp [show (1990656 * k + 1928767) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5786302) = 2985984 * k + 2893151 := by
    unfold C
    simp [show (5971968 * k + 5786302) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2893151) = 8957952 * k + 8679454 := by
    unfold C
    simp [show (2985984 * k + 2893151) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8679454) = 4478976 * k + 4339727 := by
    unfold C
    simp [show (8957952 * k + 8679454) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4339727) = 13436928 * k + 13019182 := by
    unfold C
    simp [show (4478976 * k + 4339727) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 13019182) = 6718464 * k + 6509591 := by
    unfold C
    simp [show (13436928 * k + 13019182) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6509591) = 20155392 * k + 19528774 := by
    unfold C
    simp [show (6718464 * k + 6509591) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19528774) = 10077696 * k + 9764387 := by
    unfold C
    simp [show (20155392 * k + 19528774) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9764387) = 30233088 * k + 29293162 := by
    unfold C
    simp [show (10077696 * k + 9764387) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 29293162) = 15116544 * k + 14646581 := by
    unfold C
    simp [show (30233088 * k + 29293162) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14646581) = 45349632 * k + 43939744 := by
    unfold C
    simp [show (15116544 * k + 14646581) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 43939744) = 22674816 * k + 21969872 := by
    unfold C
    simp [show (45349632 * k + 43939744) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 21969872) = 11337408 * k + 10984936 := by
    unfold C
    simp [show (22674816 * k + 21969872) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10984936) = 5668704 * k + 5492468 := by
    unfold C
    simp [show (11337408 * k + 10984936) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5492468) = 2834352 * k + 2746234 := by
    unfold C
    simp [show (5668704 * k + 5492468) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2746234) = 1417176 * k + 1373117 := by
    unfold C
    simp [show (2834352 * k + 2746234) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1373117) = 4251528 * k + 4119352 := by
    unfold C
    simp [show (1417176 * k + 1373117) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4119352) = 2125764 * k + 2059676 := by
    unfold C
    simp [show (4251528 * k + 4119352) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2059676) = 1062882 * k + 1029838 := by
    unfold C
    simp [show (2125764 * k + 2059676) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1029838) = 531441 * k + 514919 := by
    unfold C
    simp [show (1062882 * k + 1029838) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1015975) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1015975)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1016319 : ∀ k : Nat,
    iterate (1048576 * k + 1016319) 32 = 531441 * k + 515093 ∧
      531441 * k + 515093 < 1048576 * k + 1016319 := by
  intro k
  have h1 : C (1048576 * k + 1016319) = 3145728 * k + 3048958 := by
    unfold C
    simp [show (1048576 * k + 1016319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3048958) = 1572864 * k + 1524479 := by
    unfold C
    simp [show (3145728 * k + 3048958) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1524479) = 4718592 * k + 4573438 := by
    unfold C
    simp [show (1572864 * k + 1524479) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4573438) = 2359296 * k + 2286719 := by
    unfold C
    simp [show (4718592 * k + 4573438) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2286719) = 7077888 * k + 6860158 := by
    unfold C
    simp [show (2359296 * k + 2286719) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6860158) = 3538944 * k + 3430079 := by
    unfold C
    simp [show (7077888 * k + 6860158) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3430079) = 10616832 * k + 10290238 := by
    unfold C
    simp [show (3538944 * k + 3430079) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10290238) = 5308416 * k + 5145119 := by
    unfold C
    simp [show (10616832 * k + 10290238) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5145119) = 15925248 * k + 15435358 := by
    unfold C
    simp [show (5308416 * k + 5145119) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15435358) = 7962624 * k + 7717679 := by
    unfold C
    simp [show (15925248 * k + 15435358) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7717679) = 23887872 * k + 23153038 := by
    unfold C
    simp [show (7962624 * k + 7717679) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23153038) = 11943936 * k + 11576519 := by
    unfold C
    simp [show (23887872 * k + 23153038) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11576519) = 35831808 * k + 34729558 := by
    unfold C
    simp [show (11943936 * k + 11576519) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 34729558) = 17915904 * k + 17364779 := by
    unfold C
    simp [show (35831808 * k + 34729558) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 17364779) = 53747712 * k + 52094338 := by
    unfold C
    simp [show (17915904 * k + 17364779) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 52094338) = 26873856 * k + 26047169 := by
    unfold C
    simp [show (53747712 * k + 52094338) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 26047169) = 80621568 * k + 78141508 := by
    unfold C
    simp [show (26873856 * k + 26047169) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 78141508) = 40310784 * k + 39070754 := by
    unfold C
    simp [show (80621568 * k + 78141508) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 39070754) = 20155392 * k + 19535377 := by
    unfold C
    simp [show (40310784 * k + 39070754) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19535377) = 60466176 * k + 58606132 := by
    unfold C
    simp [show (20155392 * k + 19535377) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 58606132) = 30233088 * k + 29303066 := by
    unfold C
    simp [show (60466176 * k + 58606132) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 29303066) = 15116544 * k + 14651533 := by
    unfold C
    simp [show (30233088 * k + 29303066) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14651533) = 45349632 * k + 43954600 := by
    unfold C
    simp [show (15116544 * k + 14651533) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 43954600) = 22674816 * k + 21977300 := by
    unfold C
    simp [show (45349632 * k + 43954600) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 21977300) = 11337408 * k + 10988650 := by
    unfold C
    simp [show (22674816 * k + 21977300) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10988650) = 5668704 * k + 5494325 := by
    unfold C
    simp [show (11337408 * k + 10988650) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5494325) = 17006112 * k + 16482976 := by
    unfold C
    simp [show (5668704 * k + 5494325) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 16482976) = 8503056 * k + 8241488 := by
    unfold C
    simp [show (17006112 * k + 16482976) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8241488) = 4251528 * k + 4120744 := by
    unfold C
    simp [show (8503056 * k + 8241488) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4120744) = 2125764 * k + 2060372 := by
    unfold C
    simp [show (4251528 * k + 4120744) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2060372) = 1062882 * k + 1030186 := by
    unfold C
    simp [show (2125764 * k + 2060372) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1030186) = 531441 * k + 515093 := by
    unfold C
    simp [show (1062882 * k + 1030186) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1016319) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1016319)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1017447 : ∀ k : Nat,
    iterate (1048576 * k + 1017447) 32 = 531441 * k + 515665 ∧
      531441 * k + 515665 < 1048576 * k + 1017447 := by
  intro k
  have h1 : C (1048576 * k + 1017447) = 3145728 * k + 3052342 := by
    unfold C
    simp [show (1048576 * k + 1017447) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3052342) = 1572864 * k + 1526171 := by
    unfold C
    simp [show (3145728 * k + 3052342) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1526171) = 4718592 * k + 4578514 := by
    unfold C
    simp [show (1572864 * k + 1526171) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4578514) = 2359296 * k + 2289257 := by
    unfold C
    simp [show (4718592 * k + 4578514) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2289257) = 7077888 * k + 6867772 := by
    unfold C
    simp [show (2359296 * k + 2289257) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6867772) = 3538944 * k + 3433886 := by
    unfold C
    simp [show (7077888 * k + 6867772) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3433886) = 1769472 * k + 1716943 := by
    unfold C
    simp [show (3538944 * k + 3433886) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1716943) = 5308416 * k + 5150830 := by
    unfold C
    simp [show (1769472 * k + 1716943) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5150830) = 2654208 * k + 2575415 := by
    unfold C
    simp [show (5308416 * k + 5150830) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2575415) = 7962624 * k + 7726246 := by
    unfold C
    simp [show (2654208 * k + 2575415) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7726246) = 3981312 * k + 3863123 := by
    unfold C
    simp [show (7962624 * k + 7726246) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3863123) = 11943936 * k + 11589370 := by
    unfold C
    simp [show (3981312 * k + 3863123) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11589370) = 5971968 * k + 5794685 := by
    unfold C
    simp [show (11943936 * k + 11589370) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5794685) = 17915904 * k + 17384056 := by
    unfold C
    simp [show (5971968 * k + 5794685) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17384056) = 8957952 * k + 8692028 := by
    unfold C
    simp [show (17915904 * k + 17384056) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8692028) = 4478976 * k + 4346014 := by
    unfold C
    simp [show (8957952 * k + 8692028) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4346014) = 2239488 * k + 2173007 := by
    unfold C
    simp [show (4478976 * k + 4346014) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2173007) = 6718464 * k + 6519022 := by
    unfold C
    simp [show (2239488 * k + 2173007) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6519022) = 3359232 * k + 3259511 := by
    unfold C
    simp [show (6718464 * k + 6519022) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3259511) = 10077696 * k + 9778534 := by
    unfold C
    simp [show (3359232 * k + 3259511) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9778534) = 5038848 * k + 4889267 := by
    unfold C
    simp [show (10077696 * k + 9778534) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4889267) = 15116544 * k + 14667802 := by
    unfold C
    simp [show (5038848 * k + 4889267) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14667802) = 7558272 * k + 7333901 := by
    unfold C
    simp [show (15116544 * k + 14667802) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7333901) = 22674816 * k + 22001704 := by
    unfold C
    simp [show (7558272 * k + 7333901) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 22001704) = 11337408 * k + 11000852 := by
    unfold C
    simp [show (22674816 * k + 22001704) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 11000852) = 5668704 * k + 5500426 := by
    unfold C
    simp [show (11337408 * k + 11000852) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5500426) = 2834352 * k + 2750213 := by
    unfold C
    simp [show (5668704 * k + 5500426) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2750213) = 8503056 * k + 8250640 := by
    unfold C
    simp [show (2834352 * k + 2750213) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8250640) = 4251528 * k + 4125320 := by
    unfold C
    simp [show (8503056 * k + 8250640) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4125320) = 2125764 * k + 2062660 := by
    unfold C
    simp [show (4251528 * k + 4125320) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2062660) = 1062882 * k + 1031330 := by
    unfold C
    simp [show (2125764 * k + 2062660) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1031330) = 531441 * k + 515665 := by
    unfold C
    simp [show (1062882 * k + 1031330) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1017447) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1017447)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1017851 : ∀ k : Nat,
    iterate (1048576 * k + 1017851) 32 = 531441 * k + 515870 ∧
      531441 * k + 515870 < 1048576 * k + 1017851 := by
  intro k
  have h1 : C (1048576 * k + 1017851) = 3145728 * k + 3053554 := by
    unfold C
    simp [show (1048576 * k + 1017851) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3053554) = 1572864 * k + 1526777 := by
    unfold C
    simp [show (3145728 * k + 3053554) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1526777) = 4718592 * k + 4580332 := by
    unfold C
    simp [show (1572864 * k + 1526777) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4580332) = 2359296 * k + 2290166 := by
    unfold C
    simp [show (4718592 * k + 4580332) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2290166) = 1179648 * k + 1145083 := by
    unfold C
    simp [show (2359296 * k + 2290166) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1145083) = 3538944 * k + 3435250 := by
    unfold C
    simp [show (1179648 * k + 1145083) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3435250) = 1769472 * k + 1717625 := by
    unfold C
    simp [show (3538944 * k + 3435250) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1717625) = 5308416 * k + 5152876 := by
    unfold C
    simp [show (1769472 * k + 1717625) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5152876) = 2654208 * k + 2576438 := by
    unfold C
    simp [show (5308416 * k + 5152876) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2576438) = 1327104 * k + 1288219 := by
    unfold C
    simp [show (2654208 * k + 2576438) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1288219) = 3981312 * k + 3864658 := by
    unfold C
    simp [show (1327104 * k + 1288219) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3864658) = 1990656 * k + 1932329 := by
    unfold C
    simp [show (3981312 * k + 3864658) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1932329) = 5971968 * k + 5796988 := by
    unfold C
    simp [show (1990656 * k + 1932329) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5796988) = 2985984 * k + 2898494 := by
    unfold C
    simp [show (5971968 * k + 5796988) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2898494) = 1492992 * k + 1449247 := by
    unfold C
    simp [show (2985984 * k + 2898494) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1449247) = 4478976 * k + 4347742 := by
    unfold C
    simp [show (1492992 * k + 1449247) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4347742) = 2239488 * k + 2173871 := by
    unfold C
    simp [show (4478976 * k + 4347742) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2173871) = 6718464 * k + 6521614 := by
    unfold C
    simp [show (2239488 * k + 2173871) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6521614) = 3359232 * k + 3260807 := by
    unfold C
    simp [show (6718464 * k + 6521614) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3260807) = 10077696 * k + 9782422 := by
    unfold C
    simp [show (3359232 * k + 3260807) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9782422) = 5038848 * k + 4891211 := by
    unfold C
    simp [show (10077696 * k + 9782422) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4891211) = 15116544 * k + 14673634 := by
    unfold C
    simp [show (5038848 * k + 4891211) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14673634) = 7558272 * k + 7336817 := by
    unfold C
    simp [show (15116544 * k + 14673634) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7336817) = 22674816 * k + 22010452 := by
    unfold C
    simp [show (7558272 * k + 7336817) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 22010452) = 11337408 * k + 11005226 := by
    unfold C
    simp [show (22674816 * k + 22010452) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 11005226) = 5668704 * k + 5502613 := by
    unfold C
    simp [show (11337408 * k + 11005226) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5502613) = 17006112 * k + 16507840 := by
    unfold C
    simp [show (5668704 * k + 5502613) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 16507840) = 8503056 * k + 8253920 := by
    unfold C
    simp [show (17006112 * k + 16507840) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8253920) = 4251528 * k + 4126960 := by
    unfold C
    simp [show (8503056 * k + 8253920) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4126960) = 2125764 * k + 2063480 := by
    unfold C
    simp [show (4251528 * k + 4126960) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2063480) = 1062882 * k + 1031740 := by
    unfold C
    simp [show (2125764 * k + 2063480) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1031740) = 531441 * k + 515870 := by
    unfold C
    simp [show (1062882 * k + 1031740) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1017851) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1017851)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1018023 : ∀ k : Nat,
    iterate (1048576 * k + 1018023) 32 = 531441 * k + 515957 ∧
      531441 * k + 515957 < 1048576 * k + 1018023 := by
  intro k
  have h1 : C (1048576 * k + 1018023) = 3145728 * k + 3054070 := by
    unfold C
    simp [show (1048576 * k + 1018023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3054070) = 1572864 * k + 1527035 := by
    unfold C
    simp [show (3145728 * k + 3054070) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1527035) = 4718592 * k + 4581106 := by
    unfold C
    simp [show (1572864 * k + 1527035) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4581106) = 2359296 * k + 2290553 := by
    unfold C
    simp [show (4718592 * k + 4581106) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2290553) = 7077888 * k + 6871660 := by
    unfold C
    simp [show (2359296 * k + 2290553) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6871660) = 3538944 * k + 3435830 := by
    unfold C
    simp [show (7077888 * k + 6871660) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3435830) = 1769472 * k + 1717915 := by
    unfold C
    simp [show (3538944 * k + 3435830) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1717915) = 5308416 * k + 5153746 := by
    unfold C
    simp [show (1769472 * k + 1717915) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5153746) = 2654208 * k + 2576873 := by
    unfold C
    simp [show (5308416 * k + 5153746) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2576873) = 7962624 * k + 7730620 := by
    unfold C
    simp [show (2654208 * k + 2576873) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7730620) = 3981312 * k + 3865310 := by
    unfold C
    simp [show (7962624 * k + 7730620) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3865310) = 1990656 * k + 1932655 := by
    unfold C
    simp [show (3981312 * k + 3865310) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1932655) = 5971968 * k + 5797966 := by
    unfold C
    simp [show (1990656 * k + 1932655) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5797966) = 2985984 * k + 2898983 := by
    unfold C
    simp [show (5971968 * k + 5797966) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2898983) = 8957952 * k + 8696950 := by
    unfold C
    simp [show (2985984 * k + 2898983) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8696950) = 4478976 * k + 4348475 := by
    unfold C
    simp [show (8957952 * k + 8696950) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4348475) = 13436928 * k + 13045426 := by
    unfold C
    simp [show (4478976 * k + 4348475) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 13045426) = 6718464 * k + 6522713 := by
    unfold C
    simp [show (13436928 * k + 13045426) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6522713) = 20155392 * k + 19568140 := by
    unfold C
    simp [show (6718464 * k + 6522713) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19568140) = 10077696 * k + 9784070 := by
    unfold C
    simp [show (20155392 * k + 19568140) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9784070) = 5038848 * k + 4892035 := by
    unfold C
    simp [show (10077696 * k + 9784070) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4892035) = 15116544 * k + 14676106 := by
    unfold C
    simp [show (5038848 * k + 4892035) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14676106) = 7558272 * k + 7338053 := by
    unfold C
    simp [show (15116544 * k + 14676106) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7338053) = 22674816 * k + 22014160 := by
    unfold C
    simp [show (7558272 * k + 7338053) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 22014160) = 11337408 * k + 11007080 := by
    unfold C
    simp [show (22674816 * k + 22014160) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 11007080) = 5668704 * k + 5503540 := by
    unfold C
    simp [show (11337408 * k + 11007080) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5503540) = 2834352 * k + 2751770 := by
    unfold C
    simp [show (5668704 * k + 5503540) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2751770) = 1417176 * k + 1375885 := by
    unfold C
    simp [show (2834352 * k + 2751770) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1375885) = 4251528 * k + 4127656 := by
    unfold C
    simp [show (1417176 * k + 1375885) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4127656) = 2125764 * k + 2063828 := by
    unfold C
    simp [show (4251528 * k + 4127656) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2063828) = 1062882 * k + 1031914 := by
    unfold C
    simp [show (2125764 * k + 2063828) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1031914) = 531441 * k + 515957 := by
    unfold C
    simp [show (1062882 * k + 1031914) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1018023) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1018023)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1018175 : ∀ k : Nat,
    iterate (1048576 * k + 1018175) 32 = 531441 * k + 516034 ∧
      531441 * k + 516034 < 1048576 * k + 1018175 := by
  intro k
  have h1 : C (1048576 * k + 1018175) = 3145728 * k + 3054526 := by
    unfold C
    simp [show (1048576 * k + 1018175) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3054526) = 1572864 * k + 1527263 := by
    unfold C
    simp [show (3145728 * k + 3054526) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1527263) = 4718592 * k + 4581790 := by
    unfold C
    simp [show (1572864 * k + 1527263) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4581790) = 2359296 * k + 2290895 := by
    unfold C
    simp [show (4718592 * k + 4581790) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2290895) = 7077888 * k + 6872686 := by
    unfold C
    simp [show (2359296 * k + 2290895) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6872686) = 3538944 * k + 3436343 := by
    unfold C
    simp [show (7077888 * k + 6872686) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3436343) = 10616832 * k + 10309030 := by
    unfold C
    simp [show (3538944 * k + 3436343) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10309030) = 5308416 * k + 5154515 := by
    unfold C
    simp [show (10616832 * k + 10309030) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5154515) = 15925248 * k + 15463546 := by
    unfold C
    simp [show (5308416 * k + 5154515) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15463546) = 7962624 * k + 7731773 := by
    unfold C
    simp [show (15925248 * k + 15463546) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7731773) = 23887872 * k + 23195320 := by
    unfold C
    simp [show (7962624 * k + 7731773) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23195320) = 11943936 * k + 11597660 := by
    unfold C
    simp [show (23887872 * k + 23195320) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11597660) = 5971968 * k + 5798830 := by
    unfold C
    simp [show (11943936 * k + 11597660) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5798830) = 2985984 * k + 2899415 := by
    unfold C
    simp [show (5971968 * k + 5798830) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2899415) = 8957952 * k + 8698246 := by
    unfold C
    simp [show (2985984 * k + 2899415) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8698246) = 4478976 * k + 4349123 := by
    unfold C
    simp [show (8957952 * k + 8698246) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4349123) = 13436928 * k + 13047370 := by
    unfold C
    simp [show (4478976 * k + 4349123) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 13047370) = 6718464 * k + 6523685 := by
    unfold C
    simp [show (13436928 * k + 13047370) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6523685) = 20155392 * k + 19571056 := by
    unfold C
    simp [show (6718464 * k + 6523685) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19571056) = 10077696 * k + 9785528 := by
    unfold C
    simp [show (20155392 * k + 19571056) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9785528) = 5038848 * k + 4892764 := by
    unfold C
    simp [show (10077696 * k + 9785528) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4892764) = 2519424 * k + 2446382 := by
    unfold C
    simp [show (5038848 * k + 4892764) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2446382) = 1259712 * k + 1223191 := by
    unfold C
    simp [show (2519424 * k + 2446382) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1223191) = 3779136 * k + 3669574 := by
    unfold C
    simp [show (1259712 * k + 1223191) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3669574) = 1889568 * k + 1834787 := by
    unfold C
    simp [show (3779136 * k + 3669574) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1834787) = 5668704 * k + 5504362 := by
    unfold C
    simp [show (1889568 * k + 1834787) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5504362) = 2834352 * k + 2752181 := by
    unfold C
    simp [show (5668704 * k + 5504362) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2752181) = 8503056 * k + 8256544 := by
    unfold C
    simp [show (2834352 * k + 2752181) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8256544) = 4251528 * k + 4128272 := by
    unfold C
    simp [show (8503056 * k + 8256544) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4128272) = 2125764 * k + 2064136 := by
    unfold C
    simp [show (4251528 * k + 4128272) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2064136) = 1062882 * k + 1032068 := by
    unfold C
    simp [show (2125764 * k + 2064136) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1032068) = 531441 * k + 516034 := by
    unfold C
    simp [show (1062882 * k + 1032068) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1018175) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1018175)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1018495 : ∀ k : Nat,
    iterate (1048576 * k + 1018495) 32 = 531441 * k + 516196 ∧
      531441 * k + 516196 < 1048576 * k + 1018495 := by
  intro k
  have h1 : C (1048576 * k + 1018495) = 3145728 * k + 3055486 := by
    unfold C
    simp [show (1048576 * k + 1018495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3055486) = 1572864 * k + 1527743 := by
    unfold C
    simp [show (3145728 * k + 3055486) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1527743) = 4718592 * k + 4583230 := by
    unfold C
    simp [show (1572864 * k + 1527743) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4583230) = 2359296 * k + 2291615 := by
    unfold C
    simp [show (4718592 * k + 4583230) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2291615) = 7077888 * k + 6874846 := by
    unfold C
    simp [show (2359296 * k + 2291615) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6874846) = 3538944 * k + 3437423 := by
    unfold C
    simp [show (7077888 * k + 6874846) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3437423) = 10616832 * k + 10312270 := by
    unfold C
    simp [show (3538944 * k + 3437423) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10312270) = 5308416 * k + 5156135 := by
    unfold C
    simp [show (10616832 * k + 10312270) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5156135) = 15925248 * k + 15468406 := by
    unfold C
    simp [show (5308416 * k + 5156135) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15468406) = 7962624 * k + 7734203 := by
    unfold C
    simp [show (15925248 * k + 15468406) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7734203) = 23887872 * k + 23202610 := by
    unfold C
    simp [show (7962624 * k + 7734203) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23202610) = 11943936 * k + 11601305 := by
    unfold C
    simp [show (23887872 * k + 23202610) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11601305) = 35831808 * k + 34803916 := by
    unfold C
    simp [show (11943936 * k + 11601305) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 34803916) = 17915904 * k + 17401958 := by
    unfold C
    simp [show (35831808 * k + 34803916) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 17401958) = 8957952 * k + 8700979 := by
    unfold C
    simp [show (17915904 * k + 17401958) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8700979) = 26873856 * k + 26102938 := by
    unfold C
    simp [show (8957952 * k + 8700979) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 26102938) = 13436928 * k + 13051469 := by
    unfold C
    simp [show (26873856 * k + 26102938) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 13051469) = 40310784 * k + 39154408 := by
    unfold C
    simp [show (13436928 * k + 13051469) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 39154408) = 20155392 * k + 19577204 := by
    unfold C
    simp [show (40310784 * k + 39154408) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19577204) = 10077696 * k + 9788602 := by
    unfold C
    simp [show (20155392 * k + 19577204) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9788602) = 5038848 * k + 4894301 := by
    unfold C
    simp [show (10077696 * k + 9788602) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4894301) = 15116544 * k + 14682904 := by
    unfold C
    simp [show (5038848 * k + 4894301) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14682904) = 7558272 * k + 7341452 := by
    unfold C
    simp [show (15116544 * k + 14682904) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7341452) = 3779136 * k + 3670726 := by
    unfold C
    simp [show (7558272 * k + 7341452) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3670726) = 1889568 * k + 1835363 := by
    unfold C
    simp [show (3779136 * k + 3670726) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1835363) = 5668704 * k + 5506090 := by
    unfold C
    simp [show (1889568 * k + 1835363) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5506090) = 2834352 * k + 2753045 := by
    unfold C
    simp [show (5668704 * k + 5506090) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2753045) = 8503056 * k + 8259136 := by
    unfold C
    simp [show (2834352 * k + 2753045) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8259136) = 4251528 * k + 4129568 := by
    unfold C
    simp [show (8503056 * k + 8259136) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4129568) = 2125764 * k + 2064784 := by
    unfold C
    simp [show (4251528 * k + 4129568) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2064784) = 1062882 * k + 1032392 := by
    unfold C
    simp [show (2125764 * k + 2064784) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1032392) = 531441 * k + 516196 := by
    unfold C
    simp [show (1062882 * k + 1032392) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1018495) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1018495)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1018911 : ∀ k : Nat,
    iterate (1048576 * k + 1018911) 32 = 531441 * k + 516407 ∧
      531441 * k + 516407 < 1048576 * k + 1018911 := by
  intro k
  have h1 : C (1048576 * k + 1018911) = 3145728 * k + 3056734 := by
    unfold C
    simp [show (1048576 * k + 1018911) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3056734) = 1572864 * k + 1528367 := by
    unfold C
    simp [show (3145728 * k + 3056734) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1528367) = 4718592 * k + 4585102 := by
    unfold C
    simp [show (1572864 * k + 1528367) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4585102) = 2359296 * k + 2292551 := by
    unfold C
    simp [show (4718592 * k + 4585102) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2292551) = 7077888 * k + 6877654 := by
    unfold C
    simp [show (2359296 * k + 2292551) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6877654) = 3538944 * k + 3438827 := by
    unfold C
    simp [show (7077888 * k + 6877654) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3438827) = 10616832 * k + 10316482 := by
    unfold C
    simp [show (3538944 * k + 3438827) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10316482) = 5308416 * k + 5158241 := by
    unfold C
    simp [show (10616832 * k + 10316482) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5158241) = 15925248 * k + 15474724 := by
    unfold C
    simp [show (5308416 * k + 5158241) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15474724) = 7962624 * k + 7737362 := by
    unfold C
    simp [show (15925248 * k + 15474724) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7737362) = 3981312 * k + 3868681 := by
    unfold C
    simp [show (7962624 * k + 7737362) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3868681) = 11943936 * k + 11606044 := by
    unfold C
    simp [show (3981312 * k + 3868681) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11606044) = 5971968 * k + 5803022 := by
    unfold C
    simp [show (11943936 * k + 11606044) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5803022) = 2985984 * k + 2901511 := by
    unfold C
    simp [show (5971968 * k + 5803022) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2901511) = 8957952 * k + 8704534 := by
    unfold C
    simp [show (2985984 * k + 2901511) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8704534) = 4478976 * k + 4352267 := by
    unfold C
    simp [show (8957952 * k + 8704534) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4352267) = 13436928 * k + 13056802 := by
    unfold C
    simp [show (4478976 * k + 4352267) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 13056802) = 6718464 * k + 6528401 := by
    unfold C
    simp [show (13436928 * k + 13056802) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6528401) = 20155392 * k + 19585204 := by
    unfold C
    simp [show (6718464 * k + 6528401) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19585204) = 10077696 * k + 9792602 := by
    unfold C
    simp [show (20155392 * k + 19585204) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9792602) = 5038848 * k + 4896301 := by
    unfold C
    simp [show (10077696 * k + 9792602) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4896301) = 15116544 * k + 14688904 := by
    unfold C
    simp [show (5038848 * k + 4896301) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14688904) = 7558272 * k + 7344452 := by
    unfold C
    simp [show (15116544 * k + 14688904) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7344452) = 3779136 * k + 3672226 := by
    unfold C
    simp [show (7558272 * k + 7344452) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3672226) = 1889568 * k + 1836113 := by
    unfold C
    simp [show (3779136 * k + 3672226) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1836113) = 5668704 * k + 5508340 := by
    unfold C
    simp [show (1889568 * k + 1836113) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5508340) = 2834352 * k + 2754170 := by
    unfold C
    simp [show (5668704 * k + 5508340) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2754170) = 1417176 * k + 1377085 := by
    unfold C
    simp [show (2834352 * k + 2754170) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1377085) = 4251528 * k + 4131256 := by
    unfold C
    simp [show (1417176 * k + 1377085) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4131256) = 2125764 * k + 2065628 := by
    unfold C
    simp [show (4251528 * k + 4131256) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2065628) = 1062882 * k + 1032814 := by
    unfold C
    simp [show (2125764 * k + 2065628) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1032814) = 531441 * k + 516407 := by
    unfold C
    simp [show (1062882 * k + 1032814) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1018911) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1018911)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1019035 : ∀ k : Nat,
    iterate (1048576 * k + 1019035) 32 = 531441 * k + 516470 ∧
      531441 * k + 516470 < 1048576 * k + 1019035 := by
  intro k
  have h1 : C (1048576 * k + 1019035) = 3145728 * k + 3057106 := by
    unfold C
    simp [show (1048576 * k + 1019035) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3057106) = 1572864 * k + 1528553 := by
    unfold C
    simp [show (3145728 * k + 3057106) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1528553) = 4718592 * k + 4585660 := by
    unfold C
    simp [show (1572864 * k + 1528553) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4585660) = 2359296 * k + 2292830 := by
    unfold C
    simp [show (4718592 * k + 4585660) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2292830) = 1179648 * k + 1146415 := by
    unfold C
    simp [show (2359296 * k + 2292830) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1146415) = 3538944 * k + 3439246 := by
    unfold C
    simp [show (1179648 * k + 1146415) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3439246) = 1769472 * k + 1719623 := by
    unfold C
    simp [show (3538944 * k + 3439246) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1719623) = 5308416 * k + 5158870 := by
    unfold C
    simp [show (1769472 * k + 1719623) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5158870) = 2654208 * k + 2579435 := by
    unfold C
    simp [show (5308416 * k + 5158870) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2579435) = 7962624 * k + 7738306 := by
    unfold C
    simp [show (2654208 * k + 2579435) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7738306) = 3981312 * k + 3869153 := by
    unfold C
    simp [show (7962624 * k + 7738306) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3869153) = 11943936 * k + 11607460 := by
    unfold C
    simp [show (3981312 * k + 3869153) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11607460) = 5971968 * k + 5803730 := by
    unfold C
    simp [show (11943936 * k + 11607460) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5803730) = 2985984 * k + 2901865 := by
    unfold C
    simp [show (5971968 * k + 5803730) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2901865) = 8957952 * k + 8705596 := by
    unfold C
    simp [show (2985984 * k + 2901865) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8705596) = 4478976 * k + 4352798 := by
    unfold C
    simp [show (8957952 * k + 8705596) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4352798) = 2239488 * k + 2176399 := by
    unfold C
    simp [show (4478976 * k + 4352798) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2176399) = 6718464 * k + 6529198 := by
    unfold C
    simp [show (2239488 * k + 2176399) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6529198) = 3359232 * k + 3264599 := by
    unfold C
    simp [show (6718464 * k + 6529198) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3264599) = 10077696 * k + 9793798 := by
    unfold C
    simp [show (3359232 * k + 3264599) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9793798) = 5038848 * k + 4896899 := by
    unfold C
    simp [show (10077696 * k + 9793798) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4896899) = 15116544 * k + 14690698 := by
    unfold C
    simp [show (5038848 * k + 4896899) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14690698) = 7558272 * k + 7345349 := by
    unfold C
    simp [show (15116544 * k + 14690698) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7345349) = 22674816 * k + 22036048 := by
    unfold C
    simp [show (7558272 * k + 7345349) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 22036048) = 11337408 * k + 11018024 := by
    unfold C
    simp [show (22674816 * k + 22036048) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 11018024) = 5668704 * k + 5509012 := by
    unfold C
    simp [show (11337408 * k + 11018024) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5509012) = 2834352 * k + 2754506 := by
    unfold C
    simp [show (5668704 * k + 5509012) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2754506) = 1417176 * k + 1377253 := by
    unfold C
    simp [show (2834352 * k + 2754506) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1377253) = 4251528 * k + 4131760 := by
    unfold C
    simp [show (1417176 * k + 1377253) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4131760) = 2125764 * k + 2065880 := by
    unfold C
    simp [show (4251528 * k + 4131760) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2065880) = 1062882 * k + 1032940 := by
    unfold C
    simp [show (2125764 * k + 2065880) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1032940) = 531441 * k + 516470 := by
    unfold C
    simp [show (1062882 * k + 1032940) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1019035) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1019035)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1019071 : ∀ k : Nat,
    iterate (1048576 * k + 1019071) 32 = 531441 * k + 516488 ∧
      531441 * k + 516488 < 1048576 * k + 1019071 := by
  intro k
  have h1 : C (1048576 * k + 1019071) = 3145728 * k + 3057214 := by
    unfold C
    simp [show (1048576 * k + 1019071) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3057214) = 1572864 * k + 1528607 := by
    unfold C
    simp [show (3145728 * k + 3057214) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1528607) = 4718592 * k + 4585822 := by
    unfold C
    simp [show (1572864 * k + 1528607) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4585822) = 2359296 * k + 2292911 := by
    unfold C
    simp [show (4718592 * k + 4585822) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2292911) = 7077888 * k + 6878734 := by
    unfold C
    simp [show (2359296 * k + 2292911) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6878734) = 3538944 * k + 3439367 := by
    unfold C
    simp [show (7077888 * k + 6878734) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3439367) = 10616832 * k + 10318102 := by
    unfold C
    simp [show (3538944 * k + 3439367) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10318102) = 5308416 * k + 5159051 := by
    unfold C
    simp [show (10616832 * k + 10318102) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5159051) = 15925248 * k + 15477154 := by
    unfold C
    simp [show (5308416 * k + 5159051) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15477154) = 7962624 * k + 7738577 := by
    unfold C
    simp [show (15925248 * k + 15477154) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7738577) = 23887872 * k + 23215732 := by
    unfold C
    simp [show (7962624 * k + 7738577) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23215732) = 11943936 * k + 11607866 := by
    unfold C
    simp [show (23887872 * k + 23215732) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11607866) = 5971968 * k + 5803933 := by
    unfold C
    simp [show (11943936 * k + 11607866) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5803933) = 17915904 * k + 17411800 := by
    unfold C
    simp [show (5971968 * k + 5803933) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17411800) = 8957952 * k + 8705900 := by
    unfold C
    simp [show (17915904 * k + 17411800) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8705900) = 4478976 * k + 4352950 := by
    unfold C
    simp [show (8957952 * k + 8705900) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4352950) = 2239488 * k + 2176475 := by
    unfold C
    simp [show (4478976 * k + 4352950) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2176475) = 6718464 * k + 6529426 := by
    unfold C
    simp [show (2239488 * k + 2176475) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6529426) = 3359232 * k + 3264713 := by
    unfold C
    simp [show (6718464 * k + 6529426) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3264713) = 10077696 * k + 9794140 := by
    unfold C
    simp [show (3359232 * k + 3264713) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9794140) = 5038848 * k + 4897070 := by
    unfold C
    simp [show (10077696 * k + 9794140) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4897070) = 2519424 * k + 2448535 := by
    unfold C
    simp [show (5038848 * k + 4897070) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2448535) = 7558272 * k + 7345606 := by
    unfold C
    simp [show (2519424 * k + 2448535) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7345606) = 3779136 * k + 3672803 := by
    unfold C
    simp [show (7558272 * k + 7345606) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3672803) = 11337408 * k + 11018410 := by
    unfold C
    simp [show (3779136 * k + 3672803) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11018410) = 5668704 * k + 5509205 := by
    unfold C
    simp [show (11337408 * k + 11018410) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5509205) = 17006112 * k + 16527616 := by
    unfold C
    simp [show (5668704 * k + 5509205) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 16527616) = 8503056 * k + 8263808 := by
    unfold C
    simp [show (17006112 * k + 16527616) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8263808) = 4251528 * k + 4131904 := by
    unfold C
    simp [show (8503056 * k + 8263808) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4131904) = 2125764 * k + 2065952 := by
    unfold C
    simp [show (4251528 * k + 4131904) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2065952) = 1062882 * k + 1032976 := by
    unfold C
    simp [show (2125764 * k + 2065952) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1032976) = 531441 * k + 516488 := by
    unfold C
    simp [show (1062882 * k + 1032976) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1019071) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1019071)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1019391 : ∀ k : Nat,
    iterate (1048576 * k + 1019391) 32 = 531441 * k + 516650 ∧
      531441 * k + 516650 < 1048576 * k + 1019391 := by
  intro k
  have h1 : C (1048576 * k + 1019391) = 3145728 * k + 3058174 := by
    unfold C
    simp [show (1048576 * k + 1019391) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3058174) = 1572864 * k + 1529087 := by
    unfold C
    simp [show (3145728 * k + 3058174) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1529087) = 4718592 * k + 4587262 := by
    unfold C
    simp [show (1572864 * k + 1529087) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4587262) = 2359296 * k + 2293631 := by
    unfold C
    simp [show (4718592 * k + 4587262) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2293631) = 7077888 * k + 6880894 := by
    unfold C
    simp [show (2359296 * k + 2293631) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6880894) = 3538944 * k + 3440447 := by
    unfold C
    simp [show (7077888 * k + 6880894) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3440447) = 10616832 * k + 10321342 := by
    unfold C
    simp [show (3538944 * k + 3440447) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10321342) = 5308416 * k + 5160671 := by
    unfold C
    simp [show (10616832 * k + 10321342) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5160671) = 15925248 * k + 15482014 := by
    unfold C
    simp [show (5308416 * k + 5160671) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15482014) = 7962624 * k + 7741007 := by
    unfold C
    simp [show (15925248 * k + 15482014) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7741007) = 23887872 * k + 23223022 := by
    unfold C
    simp [show (7962624 * k + 7741007) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23223022) = 11943936 * k + 11611511 := by
    unfold C
    simp [show (23887872 * k + 23223022) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11611511) = 35831808 * k + 34834534 := by
    unfold C
    simp [show (11943936 * k + 11611511) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 34834534) = 17915904 * k + 17417267 := by
    unfold C
    simp [show (35831808 * k + 34834534) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 17417267) = 53747712 * k + 52251802 := by
    unfold C
    simp [show (17915904 * k + 17417267) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 52251802) = 26873856 * k + 26125901 := by
    unfold C
    simp [show (53747712 * k + 52251802) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 26125901) = 80621568 * k + 78377704 := by
    unfold C
    simp [show (26873856 * k + 26125901) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 78377704) = 40310784 * k + 39188852 := by
    unfold C
    simp [show (80621568 * k + 78377704) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 39188852) = 20155392 * k + 19594426 := by
    unfold C
    simp [show (40310784 * k + 39188852) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19594426) = 10077696 * k + 9797213 := by
    unfold C
    simp [show (20155392 * k + 19594426) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9797213) = 30233088 * k + 29391640 := by
    unfold C
    simp [show (10077696 * k + 9797213) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 29391640) = 15116544 * k + 14695820 := by
    unfold C
    simp [show (30233088 * k + 29391640) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14695820) = 7558272 * k + 7347910 := by
    unfold C
    simp [show (15116544 * k + 14695820) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7347910) = 3779136 * k + 3673955 := by
    unfold C
    simp [show (7558272 * k + 7347910) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3673955) = 11337408 * k + 11021866 := by
    unfold C
    simp [show (3779136 * k + 3673955) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11021866) = 5668704 * k + 5510933 := by
    unfold C
    simp [show (11337408 * k + 11021866) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5510933) = 17006112 * k + 16532800 := by
    unfold C
    simp [show (5668704 * k + 5510933) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 16532800) = 8503056 * k + 8266400 := by
    unfold C
    simp [show (17006112 * k + 16532800) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8266400) = 4251528 * k + 4133200 := by
    unfold C
    simp [show (8503056 * k + 8266400) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4133200) = 2125764 * k + 2066600 := by
    unfold C
    simp [show (4251528 * k + 4133200) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2066600) = 1062882 * k + 1033300 := by
    unfold C
    simp [show (2125764 * k + 2066600) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1033300) = 531441 * k + 516650 := by
    unfold C
    simp [show (1062882 * k + 1033300) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1019391) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1019391)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1019935 : ∀ k : Nat,
    iterate (1048576 * k + 1019935) 32 = 531441 * k + 516926 ∧
      531441 * k + 516926 < 1048576 * k + 1019935 := by
  intro k
  have h1 : C (1048576 * k + 1019935) = 3145728 * k + 3059806 := by
    unfold C
    simp [show (1048576 * k + 1019935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3059806) = 1572864 * k + 1529903 := by
    unfold C
    simp [show (3145728 * k + 3059806) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1529903) = 4718592 * k + 4589710 := by
    unfold C
    simp [show (1572864 * k + 1529903) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4589710) = 2359296 * k + 2294855 := by
    unfold C
    simp [show (4718592 * k + 4589710) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2294855) = 7077888 * k + 6884566 := by
    unfold C
    simp [show (2359296 * k + 2294855) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6884566) = 3538944 * k + 3442283 := by
    unfold C
    simp [show (7077888 * k + 6884566) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3442283) = 10616832 * k + 10326850 := by
    unfold C
    simp [show (3538944 * k + 3442283) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10326850) = 5308416 * k + 5163425 := by
    unfold C
    simp [show (10616832 * k + 10326850) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5163425) = 15925248 * k + 15490276 := by
    unfold C
    simp [show (5308416 * k + 5163425) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15490276) = 7962624 * k + 7745138 := by
    unfold C
    simp [show (15925248 * k + 15490276) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7745138) = 3981312 * k + 3872569 := by
    unfold C
    simp [show (7962624 * k + 7745138) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3872569) = 11943936 * k + 11617708 := by
    unfold C
    simp [show (3981312 * k + 3872569) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11617708) = 5971968 * k + 5808854 := by
    unfold C
    simp [show (11943936 * k + 11617708) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5808854) = 2985984 * k + 2904427 := by
    unfold C
    simp [show (5971968 * k + 5808854) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2904427) = 8957952 * k + 8713282 := by
    unfold C
    simp [show (2985984 * k + 2904427) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8713282) = 4478976 * k + 4356641 := by
    unfold C
    simp [show (8957952 * k + 8713282) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4356641) = 13436928 * k + 13069924 := by
    unfold C
    simp [show (4478976 * k + 4356641) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 13069924) = 6718464 * k + 6534962 := by
    unfold C
    simp [show (13436928 * k + 13069924) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6534962) = 3359232 * k + 3267481 := by
    unfold C
    simp [show (6718464 * k + 6534962) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3267481) = 10077696 * k + 9802444 := by
    unfold C
    simp [show (3359232 * k + 3267481) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9802444) = 5038848 * k + 4901222 := by
    unfold C
    simp [show (10077696 * k + 9802444) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4901222) = 2519424 * k + 2450611 := by
    unfold C
    simp [show (5038848 * k + 4901222) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2450611) = 7558272 * k + 7351834 := by
    unfold C
    simp [show (2519424 * k + 2450611) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7351834) = 3779136 * k + 3675917 := by
    unfold C
    simp [show (7558272 * k + 7351834) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3675917) = 11337408 * k + 11027752 := by
    unfold C
    simp [show (3779136 * k + 3675917) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11027752) = 5668704 * k + 5513876 := by
    unfold C
    simp [show (11337408 * k + 11027752) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5513876) = 2834352 * k + 2756938 := by
    unfold C
    simp [show (5668704 * k + 5513876) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2756938) = 1417176 * k + 1378469 := by
    unfold C
    simp [show (2834352 * k + 2756938) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1378469) = 4251528 * k + 4135408 := by
    unfold C
    simp [show (1417176 * k + 1378469) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4135408) = 2125764 * k + 2067704 := by
    unfold C
    simp [show (4251528 * k + 4135408) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2067704) = 1062882 * k + 1033852 := by
    unfold C
    simp [show (2125764 * k + 2067704) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1033852) = 531441 * k + 516926 := by
    unfold C
    simp [show (1062882 * k + 1033852) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1019935) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1019935)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1021095 : ∀ k : Nat,
    iterate (1048576 * k + 1021095) 32 = 531441 * k + 517514 ∧
      531441 * k + 517514 < 1048576 * k + 1021095 := by
  intro k
  have h1 : C (1048576 * k + 1021095) = 3145728 * k + 3063286 := by
    unfold C
    simp [show (1048576 * k + 1021095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3063286) = 1572864 * k + 1531643 := by
    unfold C
    simp [show (3145728 * k + 3063286) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1531643) = 4718592 * k + 4594930 := by
    unfold C
    simp [show (1572864 * k + 1531643) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4594930) = 2359296 * k + 2297465 := by
    unfold C
    simp [show (4718592 * k + 4594930) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2297465) = 7077888 * k + 6892396 := by
    unfold C
    simp [show (2359296 * k + 2297465) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6892396) = 3538944 * k + 3446198 := by
    unfold C
    simp [show (7077888 * k + 6892396) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3446198) = 1769472 * k + 1723099 := by
    unfold C
    simp [show (3538944 * k + 3446198) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1723099) = 5308416 * k + 5169298 := by
    unfold C
    simp [show (1769472 * k + 1723099) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5169298) = 2654208 * k + 2584649 := by
    unfold C
    simp [show (5308416 * k + 5169298) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2584649) = 7962624 * k + 7753948 := by
    unfold C
    simp [show (2654208 * k + 2584649) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7753948) = 3981312 * k + 3876974 := by
    unfold C
    simp [show (7962624 * k + 7753948) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3876974) = 1990656 * k + 1938487 := by
    unfold C
    simp [show (3981312 * k + 3876974) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1938487) = 5971968 * k + 5815462 := by
    unfold C
    simp [show (1990656 * k + 1938487) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5815462) = 2985984 * k + 2907731 := by
    unfold C
    simp [show (5971968 * k + 5815462) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2907731) = 8957952 * k + 8723194 := by
    unfold C
    simp [show (2985984 * k + 2907731) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8723194) = 4478976 * k + 4361597 := by
    unfold C
    simp [show (8957952 * k + 8723194) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4361597) = 13436928 * k + 13084792 := by
    unfold C
    simp [show (4478976 * k + 4361597) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 13084792) = 6718464 * k + 6542396 := by
    unfold C
    simp [show (13436928 * k + 13084792) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6542396) = 3359232 * k + 3271198 := by
    unfold C
    simp [show (6718464 * k + 6542396) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3271198) = 1679616 * k + 1635599 := by
    unfold C
    simp [show (3359232 * k + 3271198) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1635599) = 5038848 * k + 4906798 := by
    unfold C
    simp [show (1679616 * k + 1635599) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4906798) = 2519424 * k + 2453399 := by
    unfold C
    simp [show (5038848 * k + 4906798) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2453399) = 7558272 * k + 7360198 := by
    unfold C
    simp [show (2519424 * k + 2453399) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7360198) = 3779136 * k + 3680099 := by
    unfold C
    simp [show (7558272 * k + 7360198) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3680099) = 11337408 * k + 11040298 := by
    unfold C
    simp [show (3779136 * k + 3680099) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11040298) = 5668704 * k + 5520149 := by
    unfold C
    simp [show (11337408 * k + 11040298) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5520149) = 17006112 * k + 16560448 := by
    unfold C
    simp [show (5668704 * k + 5520149) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 16560448) = 8503056 * k + 8280224 := by
    unfold C
    simp [show (17006112 * k + 16560448) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8280224) = 4251528 * k + 4140112 := by
    unfold C
    simp [show (8503056 * k + 8280224) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4140112) = 2125764 * k + 2070056 := by
    unfold C
    simp [show (4251528 * k + 4140112) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2070056) = 1062882 * k + 1035028 := by
    unfold C
    simp [show (2125764 * k + 2070056) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1035028) = 531441 * k + 517514 := by
    unfold C
    simp [show (1062882 * k + 1035028) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1021095) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1021095)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1021543 : ∀ k : Nat,
    iterate (1048576 * k + 1021543) 32 = 531441 * k + 517741 ∧
      531441 * k + 517741 < 1048576 * k + 1021543 := by
  intro k
  have h1 : C (1048576 * k + 1021543) = 3145728 * k + 3064630 := by
    unfold C
    simp [show (1048576 * k + 1021543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3064630) = 1572864 * k + 1532315 := by
    unfold C
    simp [show (3145728 * k + 3064630) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1532315) = 4718592 * k + 4596946 := by
    unfold C
    simp [show (1572864 * k + 1532315) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4596946) = 2359296 * k + 2298473 := by
    unfold C
    simp [show (4718592 * k + 4596946) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2298473) = 7077888 * k + 6895420 := by
    unfold C
    simp [show (2359296 * k + 2298473) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6895420) = 3538944 * k + 3447710 := by
    unfold C
    simp [show (7077888 * k + 6895420) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3447710) = 1769472 * k + 1723855 := by
    unfold C
    simp [show (3538944 * k + 3447710) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1723855) = 5308416 * k + 5171566 := by
    unfold C
    simp [show (1769472 * k + 1723855) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5171566) = 2654208 * k + 2585783 := by
    unfold C
    simp [show (5308416 * k + 5171566) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2585783) = 7962624 * k + 7757350 := by
    unfold C
    simp [show (2654208 * k + 2585783) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7757350) = 3981312 * k + 3878675 := by
    unfold C
    simp [show (7962624 * k + 7757350) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3878675) = 11943936 * k + 11636026 := by
    unfold C
    simp [show (3981312 * k + 3878675) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11636026) = 5971968 * k + 5818013 := by
    unfold C
    simp [show (11943936 * k + 11636026) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5818013) = 17915904 * k + 17454040 := by
    unfold C
    simp [show (5971968 * k + 5818013) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17454040) = 8957952 * k + 8727020 := by
    unfold C
    simp [show (17915904 * k + 17454040) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8727020) = 4478976 * k + 4363510 := by
    unfold C
    simp [show (8957952 * k + 8727020) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4363510) = 2239488 * k + 2181755 := by
    unfold C
    simp [show (4478976 * k + 4363510) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2181755) = 6718464 * k + 6545266 := by
    unfold C
    simp [show (2239488 * k + 2181755) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6545266) = 3359232 * k + 3272633 := by
    unfold C
    simp [show (6718464 * k + 6545266) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3272633) = 10077696 * k + 9817900 := by
    unfold C
    simp [show (3359232 * k + 3272633) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9817900) = 5038848 * k + 4908950 := by
    unfold C
    simp [show (10077696 * k + 9817900) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4908950) = 2519424 * k + 2454475 := by
    unfold C
    simp [show (5038848 * k + 4908950) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2454475) = 7558272 * k + 7363426 := by
    unfold C
    simp [show (2519424 * k + 2454475) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7363426) = 3779136 * k + 3681713 := by
    unfold C
    simp [show (7558272 * k + 7363426) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3681713) = 11337408 * k + 11045140 := by
    unfold C
    simp [show (3779136 * k + 3681713) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11045140) = 5668704 * k + 5522570 := by
    unfold C
    simp [show (11337408 * k + 11045140) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5522570) = 2834352 * k + 2761285 := by
    unfold C
    simp [show (5668704 * k + 5522570) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2761285) = 8503056 * k + 8283856 := by
    unfold C
    simp [show (2834352 * k + 2761285) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8283856) = 4251528 * k + 4141928 := by
    unfold C
    simp [show (8503056 * k + 8283856) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4141928) = 2125764 * k + 2070964 := by
    unfold C
    simp [show (4251528 * k + 4141928) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2070964) = 1062882 * k + 1035482 := by
    unfold C
    simp [show (2125764 * k + 2070964) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1035482) = 531441 * k + 517741 := by
    unfold C
    simp [show (1062882 * k + 1035482) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1021543) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1021543)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard129
