import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard059

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_462319 : ∀ k : Nat,
    iterate (1048576 * k + 462319) 32 = 531441 * k + 234314 ∧
      531441 * k + 234314 < 1048576 * k + 462319 := by
  intro k
  have h1 : C (1048576 * k + 462319) = 3145728 * k + 1386958 := by
    unfold C
    simp [show (1048576 * k + 462319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1386958) = 1572864 * k + 693479 := by
    unfold C
    simp [show (3145728 * k + 1386958) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 693479) = 4718592 * k + 2080438 := by
    unfold C
    simp [show (1572864 * k + 693479) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2080438) = 2359296 * k + 1040219 := by
    unfold C
    simp [show (4718592 * k + 2080438) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1040219) = 7077888 * k + 3120658 := by
    unfold C
    simp [show (2359296 * k + 1040219) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3120658) = 3538944 * k + 1560329 := by
    unfold C
    simp [show (7077888 * k + 3120658) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1560329) = 10616832 * k + 4680988 := by
    unfold C
    simp [show (3538944 * k + 1560329) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4680988) = 5308416 * k + 2340494 := by
    unfold C
    simp [show (10616832 * k + 4680988) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2340494) = 2654208 * k + 1170247 := by
    unfold C
    simp [show (5308416 * k + 2340494) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1170247) = 7962624 * k + 3510742 := by
    unfold C
    simp [show (2654208 * k + 1170247) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3510742) = 3981312 * k + 1755371 := by
    unfold C
    simp [show (7962624 * k + 3510742) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1755371) = 11943936 * k + 5266114 := by
    unfold C
    simp [show (3981312 * k + 1755371) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5266114) = 5971968 * k + 2633057 := by
    unfold C
    simp [show (11943936 * k + 5266114) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2633057) = 17915904 * k + 7899172 := by
    unfold C
    simp [show (5971968 * k + 2633057) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7899172) = 8957952 * k + 3949586 := by
    unfold C
    simp [show (17915904 * k + 7899172) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3949586) = 4478976 * k + 1974793 := by
    unfold C
    simp [show (8957952 * k + 3949586) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1974793) = 13436928 * k + 5924380 := by
    unfold C
    simp [show (4478976 * k + 1974793) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5924380) = 6718464 * k + 2962190 := by
    unfold C
    simp [show (13436928 * k + 5924380) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2962190) = 3359232 * k + 1481095 := by
    unfold C
    simp [show (6718464 * k + 2962190) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1481095) = 10077696 * k + 4443286 := by
    unfold C
    simp [show (3359232 * k + 1481095) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4443286) = 5038848 * k + 2221643 := by
    unfold C
    simp [show (10077696 * k + 4443286) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2221643) = 15116544 * k + 6664930 := by
    unfold C
    simp [show (5038848 * k + 2221643) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6664930) = 7558272 * k + 3332465 := by
    unfold C
    simp [show (15116544 * k + 6664930) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3332465) = 22674816 * k + 9997396 := by
    unfold C
    simp [show (7558272 * k + 3332465) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 9997396) = 11337408 * k + 4998698 := by
    unfold C
    simp [show (22674816 * k + 9997396) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4998698) = 5668704 * k + 2499349 := by
    unfold C
    simp [show (11337408 * k + 4998698) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2499349) = 17006112 * k + 7498048 := by
    unfold C
    simp [show (5668704 * k + 2499349) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7498048) = 8503056 * k + 3749024 := by
    unfold C
    simp [show (17006112 * k + 7498048) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3749024) = 4251528 * k + 1874512 := by
    unfold C
    simp [show (8503056 * k + 3749024) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1874512) = 2125764 * k + 937256 := by
    unfold C
    simp [show (4251528 * k + 1874512) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 937256) = 1062882 * k + 468628 := by
    unfold C
    simp [show (2125764 * k + 937256) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 468628) = 531441 * k + 234314 := by
    unfold C
    simp [show (1062882 * k + 468628) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 462319) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 462319)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_462335 : ∀ k : Nat,
    iterate (1048576 * k + 462335) 32 = 531441 * k + 234322 ∧
      531441 * k + 234322 < 1048576 * k + 462335 := by
  intro k
  have h1 : C (1048576 * k + 462335) = 3145728 * k + 1387006 := by
    unfold C
    simp [show (1048576 * k + 462335) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1387006) = 1572864 * k + 693503 := by
    unfold C
    simp [show (3145728 * k + 1387006) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 693503) = 4718592 * k + 2080510 := by
    unfold C
    simp [show (1572864 * k + 693503) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2080510) = 2359296 * k + 1040255 := by
    unfold C
    simp [show (4718592 * k + 2080510) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1040255) = 7077888 * k + 3120766 := by
    unfold C
    simp [show (2359296 * k + 1040255) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3120766) = 3538944 * k + 1560383 := by
    unfold C
    simp [show (7077888 * k + 3120766) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1560383) = 10616832 * k + 4681150 := by
    unfold C
    simp [show (3538944 * k + 1560383) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4681150) = 5308416 * k + 2340575 := by
    unfold C
    simp [show (10616832 * k + 4681150) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2340575) = 15925248 * k + 7021726 := by
    unfold C
    simp [show (5308416 * k + 2340575) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7021726) = 7962624 * k + 3510863 := by
    unfold C
    simp [show (15925248 * k + 7021726) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3510863) = 23887872 * k + 10532590 := by
    unfold C
    simp [show (7962624 * k + 3510863) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 10532590) = 11943936 * k + 5266295 := by
    unfold C
    simp [show (23887872 * k + 10532590) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5266295) = 35831808 * k + 15798886 := by
    unfold C
    simp [show (11943936 * k + 5266295) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 15798886) = 17915904 * k + 7899443 := by
    unfold C
    simp [show (35831808 * k + 15798886) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 7899443) = 53747712 * k + 23698330 := by
    unfold C
    simp [show (17915904 * k + 7899443) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 23698330) = 26873856 * k + 11849165 := by
    unfold C
    simp [show (53747712 * k + 23698330) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 11849165) = 80621568 * k + 35547496 := by
    unfold C
    simp [show (26873856 * k + 11849165) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 35547496) = 40310784 * k + 17773748 := by
    unfold C
    simp [show (80621568 * k + 35547496) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 17773748) = 20155392 * k + 8886874 := by
    unfold C
    simp [show (40310784 * k + 17773748) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 8886874) = 10077696 * k + 4443437 := by
    unfold C
    simp [show (20155392 * k + 8886874) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4443437) = 30233088 * k + 13330312 := by
    unfold C
    simp [show (10077696 * k + 4443437) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 13330312) = 15116544 * k + 6665156 := by
    unfold C
    simp [show (30233088 * k + 13330312) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6665156) = 7558272 * k + 3332578 := by
    unfold C
    simp [show (15116544 * k + 6665156) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3332578) = 3779136 * k + 1666289 := by
    unfold C
    simp [show (7558272 * k + 3332578) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1666289) = 11337408 * k + 4998868 := by
    unfold C
    simp [show (3779136 * k + 1666289) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4998868) = 5668704 * k + 2499434 := by
    unfold C
    simp [show (11337408 * k + 4998868) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2499434) = 2834352 * k + 1249717 := by
    unfold C
    simp [show (5668704 * k + 2499434) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1249717) = 8503056 * k + 3749152 := by
    unfold C
    simp [show (2834352 * k + 1249717) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3749152) = 4251528 * k + 1874576 := by
    unfold C
    simp [show (8503056 * k + 3749152) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1874576) = 2125764 * k + 937288 := by
    unfold C
    simp [show (4251528 * k + 1874576) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 937288) = 1062882 * k + 468644 := by
    unfold C
    simp [show (2125764 * k + 937288) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 468644) = 531441 * k + 234322 := by
    unfold C
    simp [show (1062882 * k + 468644) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 462335) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 462335)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_462703 : ∀ k : Nat,
    iterate (1048576 * k + 462703) 32 = 531441 * k + 234509 ∧
      531441 * k + 234509 < 1048576 * k + 462703 := by
  intro k
  have h1 : C (1048576 * k + 462703) = 3145728 * k + 1388110 := by
    unfold C
    simp [show (1048576 * k + 462703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1388110) = 1572864 * k + 694055 := by
    unfold C
    simp [show (3145728 * k + 1388110) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 694055) = 4718592 * k + 2082166 := by
    unfold C
    simp [show (1572864 * k + 694055) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2082166) = 2359296 * k + 1041083 := by
    unfold C
    simp [show (4718592 * k + 2082166) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1041083) = 7077888 * k + 3123250 := by
    unfold C
    simp [show (2359296 * k + 1041083) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3123250) = 3538944 * k + 1561625 := by
    unfold C
    simp [show (7077888 * k + 3123250) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1561625) = 10616832 * k + 4684876 := by
    unfold C
    simp [show (3538944 * k + 1561625) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4684876) = 5308416 * k + 2342438 := by
    unfold C
    simp [show (10616832 * k + 4684876) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2342438) = 2654208 * k + 1171219 := by
    unfold C
    simp [show (5308416 * k + 2342438) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1171219) = 7962624 * k + 3513658 := by
    unfold C
    simp [show (2654208 * k + 1171219) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3513658) = 3981312 * k + 1756829 := by
    unfold C
    simp [show (7962624 * k + 3513658) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1756829) = 11943936 * k + 5270488 := by
    unfold C
    simp [show (3981312 * k + 1756829) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5270488) = 5971968 * k + 2635244 := by
    unfold C
    simp [show (11943936 * k + 5270488) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2635244) = 2985984 * k + 1317622 := by
    unfold C
    simp [show (5971968 * k + 2635244) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1317622) = 1492992 * k + 658811 := by
    unfold C
    simp [show (2985984 * k + 1317622) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 658811) = 4478976 * k + 1976434 := by
    unfold C
    simp [show (1492992 * k + 658811) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1976434) = 2239488 * k + 988217 := by
    unfold C
    simp [show (4478976 * k + 1976434) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 988217) = 6718464 * k + 2964652 := by
    unfold C
    simp [show (2239488 * k + 988217) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2964652) = 3359232 * k + 1482326 := by
    unfold C
    simp [show (6718464 * k + 2964652) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1482326) = 1679616 * k + 741163 := by
    unfold C
    simp [show (3359232 * k + 1482326) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 741163) = 5038848 * k + 2223490 := by
    unfold C
    simp [show (1679616 * k + 741163) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2223490) = 2519424 * k + 1111745 := by
    unfold C
    simp [show (5038848 * k + 2223490) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1111745) = 7558272 * k + 3335236 := by
    unfold C
    simp [show (2519424 * k + 1111745) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3335236) = 3779136 * k + 1667618 := by
    unfold C
    simp [show (7558272 * k + 3335236) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1667618) = 1889568 * k + 833809 := by
    unfold C
    simp [show (3779136 * k + 1667618) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 833809) = 5668704 * k + 2501428 := by
    unfold C
    simp [show (1889568 * k + 833809) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2501428) = 2834352 * k + 1250714 := by
    unfold C
    simp [show (5668704 * k + 2501428) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1250714) = 1417176 * k + 625357 := by
    unfold C
    simp [show (2834352 * k + 1250714) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 625357) = 4251528 * k + 1876072 := by
    unfold C
    simp [show (1417176 * k + 625357) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1876072) = 2125764 * k + 938036 := by
    unfold C
    simp [show (4251528 * k + 1876072) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 938036) = 1062882 * k + 469018 := by
    unfold C
    simp [show (2125764 * k + 938036) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 469018) = 531441 * k + 234509 := by
    unfold C
    simp [show (1062882 * k + 469018) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 462703) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 462703)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_463591 : ∀ k : Nat,
    iterate (1048576 * k + 463591) 32 = 531441 * k + 234959 ∧
      531441 * k + 234959 < 1048576 * k + 463591 := by
  intro k
  have h1 : C (1048576 * k + 463591) = 3145728 * k + 1390774 := by
    unfold C
    simp [show (1048576 * k + 463591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1390774) = 1572864 * k + 695387 := by
    unfold C
    simp [show (3145728 * k + 1390774) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 695387) = 4718592 * k + 2086162 := by
    unfold C
    simp [show (1572864 * k + 695387) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2086162) = 2359296 * k + 1043081 := by
    unfold C
    simp [show (4718592 * k + 2086162) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1043081) = 7077888 * k + 3129244 := by
    unfold C
    simp [show (2359296 * k + 1043081) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3129244) = 3538944 * k + 1564622 := by
    unfold C
    simp [show (7077888 * k + 3129244) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1564622) = 1769472 * k + 782311 := by
    unfold C
    simp [show (3538944 * k + 1564622) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 782311) = 5308416 * k + 2346934 := by
    unfold C
    simp [show (1769472 * k + 782311) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2346934) = 2654208 * k + 1173467 := by
    unfold C
    simp [show (5308416 * k + 2346934) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1173467) = 7962624 * k + 3520402 := by
    unfold C
    simp [show (2654208 * k + 1173467) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3520402) = 3981312 * k + 1760201 := by
    unfold C
    simp [show (7962624 * k + 3520402) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1760201) = 11943936 * k + 5280604 := by
    unfold C
    simp [show (3981312 * k + 1760201) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5280604) = 5971968 * k + 2640302 := by
    unfold C
    simp [show (11943936 * k + 5280604) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2640302) = 2985984 * k + 1320151 := by
    unfold C
    simp [show (5971968 * k + 2640302) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1320151) = 8957952 * k + 3960454 := by
    unfold C
    simp [show (2985984 * k + 1320151) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3960454) = 4478976 * k + 1980227 := by
    unfold C
    simp [show (8957952 * k + 3960454) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1980227) = 13436928 * k + 5940682 := by
    unfold C
    simp [show (4478976 * k + 1980227) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5940682) = 6718464 * k + 2970341 := by
    unfold C
    simp [show (13436928 * k + 5940682) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2970341) = 20155392 * k + 8911024 := by
    unfold C
    simp [show (6718464 * k + 2970341) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8911024) = 10077696 * k + 4455512 := by
    unfold C
    simp [show (20155392 * k + 8911024) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4455512) = 5038848 * k + 2227756 := by
    unfold C
    simp [show (10077696 * k + 4455512) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2227756) = 2519424 * k + 1113878 := by
    unfold C
    simp [show (5038848 * k + 2227756) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1113878) = 1259712 * k + 556939 := by
    unfold C
    simp [show (2519424 * k + 1113878) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 556939) = 3779136 * k + 1670818 := by
    unfold C
    simp [show (1259712 * k + 556939) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1670818) = 1889568 * k + 835409 := by
    unfold C
    simp [show (3779136 * k + 1670818) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 835409) = 5668704 * k + 2506228 := by
    unfold C
    simp [show (1889568 * k + 835409) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2506228) = 2834352 * k + 1253114 := by
    unfold C
    simp [show (5668704 * k + 2506228) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1253114) = 1417176 * k + 626557 := by
    unfold C
    simp [show (2834352 * k + 1253114) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 626557) = 4251528 * k + 1879672 := by
    unfold C
    simp [show (1417176 * k + 626557) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1879672) = 2125764 * k + 939836 := by
    unfold C
    simp [show (4251528 * k + 1879672) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 939836) = 1062882 * k + 469918 := by
    unfold C
    simp [show (2125764 * k + 939836) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 469918) = 531441 * k + 234959 := by
    unfold C
    simp [show (1062882 * k + 469918) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 463591) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 463591)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_464039 : ∀ k : Nat,
    iterate (1048576 * k + 464039) 32 = 531441 * k + 235186 ∧
      531441 * k + 235186 < 1048576 * k + 464039 := by
  intro k
  have h1 : C (1048576 * k + 464039) = 3145728 * k + 1392118 := by
    unfold C
    simp [show (1048576 * k + 464039) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1392118) = 1572864 * k + 696059 := by
    unfold C
    simp [show (3145728 * k + 1392118) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 696059) = 4718592 * k + 2088178 := by
    unfold C
    simp [show (1572864 * k + 696059) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2088178) = 2359296 * k + 1044089 := by
    unfold C
    simp [show (4718592 * k + 2088178) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1044089) = 7077888 * k + 3132268 := by
    unfold C
    simp [show (2359296 * k + 1044089) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3132268) = 3538944 * k + 1566134 := by
    unfold C
    simp [show (7077888 * k + 3132268) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1566134) = 1769472 * k + 783067 := by
    unfold C
    simp [show (3538944 * k + 1566134) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 783067) = 5308416 * k + 2349202 := by
    unfold C
    simp [show (1769472 * k + 783067) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2349202) = 2654208 * k + 1174601 := by
    unfold C
    simp [show (5308416 * k + 2349202) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1174601) = 7962624 * k + 3523804 := by
    unfold C
    simp [show (2654208 * k + 1174601) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3523804) = 3981312 * k + 1761902 := by
    unfold C
    simp [show (7962624 * k + 3523804) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1761902) = 1990656 * k + 880951 := by
    unfold C
    simp [show (3981312 * k + 1761902) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 880951) = 5971968 * k + 2642854 := by
    unfold C
    simp [show (1990656 * k + 880951) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2642854) = 2985984 * k + 1321427 := by
    unfold C
    simp [show (5971968 * k + 2642854) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1321427) = 8957952 * k + 3964282 := by
    unfold C
    simp [show (2985984 * k + 1321427) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3964282) = 4478976 * k + 1982141 := by
    unfold C
    simp [show (8957952 * k + 3964282) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1982141) = 13436928 * k + 5946424 := by
    unfold C
    simp [show (4478976 * k + 1982141) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5946424) = 6718464 * k + 2973212 := by
    unfold C
    simp [show (13436928 * k + 5946424) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2973212) = 3359232 * k + 1486606 := by
    unfold C
    simp [show (6718464 * k + 2973212) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1486606) = 1679616 * k + 743303 := by
    unfold C
    simp [show (3359232 * k + 1486606) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 743303) = 5038848 * k + 2229910 := by
    unfold C
    simp [show (1679616 * k + 743303) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2229910) = 2519424 * k + 1114955 := by
    unfold C
    simp [show (5038848 * k + 2229910) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1114955) = 7558272 * k + 3344866 := by
    unfold C
    simp [show (2519424 * k + 1114955) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3344866) = 3779136 * k + 1672433 := by
    unfold C
    simp [show (7558272 * k + 3344866) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1672433) = 11337408 * k + 5017300 := by
    unfold C
    simp [show (3779136 * k + 1672433) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5017300) = 5668704 * k + 2508650 := by
    unfold C
    simp [show (11337408 * k + 5017300) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2508650) = 2834352 * k + 1254325 := by
    unfold C
    simp [show (5668704 * k + 2508650) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1254325) = 8503056 * k + 3762976 := by
    unfold C
    simp [show (2834352 * k + 1254325) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3762976) = 4251528 * k + 1881488 := by
    unfold C
    simp [show (8503056 * k + 3762976) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1881488) = 2125764 * k + 940744 := by
    unfold C
    simp [show (4251528 * k + 1881488) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 940744) = 1062882 * k + 470372 := by
    unfold C
    simp [show (2125764 * k + 940744) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 470372) = 531441 * k + 235186 := by
    unfold C
    simp [show (1062882 * k + 470372) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 464039) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 464039)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_464199 : ∀ k : Nat,
    iterate (1048576 * k + 464199) 32 = 531441 * k + 235267 ∧
      531441 * k + 235267 < 1048576 * k + 464199 := by
  intro k
  have h1 : C (1048576 * k + 464199) = 3145728 * k + 1392598 := by
    unfold C
    simp [show (1048576 * k + 464199) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1392598) = 1572864 * k + 696299 := by
    unfold C
    simp [show (3145728 * k + 1392598) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 696299) = 4718592 * k + 2088898 := by
    unfold C
    simp [show (1572864 * k + 696299) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2088898) = 2359296 * k + 1044449 := by
    unfold C
    simp [show (4718592 * k + 2088898) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1044449) = 7077888 * k + 3133348 := by
    unfold C
    simp [show (2359296 * k + 1044449) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3133348) = 3538944 * k + 1566674 := by
    unfold C
    simp [show (7077888 * k + 3133348) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1566674) = 1769472 * k + 783337 := by
    unfold C
    simp [show (3538944 * k + 1566674) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 783337) = 5308416 * k + 2350012 := by
    unfold C
    simp [show (1769472 * k + 783337) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2350012) = 2654208 * k + 1175006 := by
    unfold C
    simp [show (5308416 * k + 2350012) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1175006) = 1327104 * k + 587503 := by
    unfold C
    simp [show (2654208 * k + 1175006) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 587503) = 3981312 * k + 1762510 := by
    unfold C
    simp [show (1327104 * k + 587503) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1762510) = 1990656 * k + 881255 := by
    unfold C
    simp [show (3981312 * k + 1762510) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 881255) = 5971968 * k + 2643766 := by
    unfold C
    simp [show (1990656 * k + 881255) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2643766) = 2985984 * k + 1321883 := by
    unfold C
    simp [show (5971968 * k + 2643766) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1321883) = 8957952 * k + 3965650 := by
    unfold C
    simp [show (2985984 * k + 1321883) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3965650) = 4478976 * k + 1982825 := by
    unfold C
    simp [show (8957952 * k + 3965650) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1982825) = 13436928 * k + 5948476 := by
    unfold C
    simp [show (4478976 * k + 1982825) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5948476) = 6718464 * k + 2974238 := by
    unfold C
    simp [show (13436928 * k + 5948476) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2974238) = 3359232 * k + 1487119 := by
    unfold C
    simp [show (6718464 * k + 2974238) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1487119) = 10077696 * k + 4461358 := by
    unfold C
    simp [show (3359232 * k + 1487119) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4461358) = 5038848 * k + 2230679 := by
    unfold C
    simp [show (10077696 * k + 4461358) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2230679) = 15116544 * k + 6692038 := by
    unfold C
    simp [show (5038848 * k + 2230679) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6692038) = 7558272 * k + 3346019 := by
    unfold C
    simp [show (15116544 * k + 6692038) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3346019) = 22674816 * k + 10038058 := by
    unfold C
    simp [show (7558272 * k + 3346019) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 10038058) = 11337408 * k + 5019029 := by
    unfold C
    simp [show (22674816 * k + 10038058) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5019029) = 34012224 * k + 15057088 := by
    unfold C
    simp [show (11337408 * k + 5019029) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 15057088) = 17006112 * k + 7528544 := by
    unfold C
    simp [show (34012224 * k + 15057088) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 7528544) = 8503056 * k + 3764272 := by
    unfold C
    simp [show (17006112 * k + 7528544) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3764272) = 4251528 * k + 1882136 := by
    unfold C
    simp [show (8503056 * k + 3764272) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1882136) = 2125764 * k + 941068 := by
    unfold C
    simp [show (4251528 * k + 1882136) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 941068) = 1062882 * k + 470534 := by
    unfold C
    simp [show (2125764 * k + 941068) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 470534) = 531441 * k + 235267 := by
    unfold C
    simp [show (1062882 * k + 470534) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 464199) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 464199)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_464891 : ∀ k : Nat,
    iterate (1048576 * k + 464891) 32 = 531441 * k + 235618 ∧
      531441 * k + 235618 < 1048576 * k + 464891 := by
  intro k
  have h1 : C (1048576 * k + 464891) = 3145728 * k + 1394674 := by
    unfold C
    simp [show (1048576 * k + 464891) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1394674) = 1572864 * k + 697337 := by
    unfold C
    simp [show (3145728 * k + 1394674) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 697337) = 4718592 * k + 2092012 := by
    unfold C
    simp [show (1572864 * k + 697337) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2092012) = 2359296 * k + 1046006 := by
    unfold C
    simp [show (4718592 * k + 2092012) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1046006) = 1179648 * k + 523003 := by
    unfold C
    simp [show (2359296 * k + 1046006) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 523003) = 3538944 * k + 1569010 := by
    unfold C
    simp [show (1179648 * k + 523003) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1569010) = 1769472 * k + 784505 := by
    unfold C
    simp [show (3538944 * k + 1569010) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 784505) = 5308416 * k + 2353516 := by
    unfold C
    simp [show (1769472 * k + 784505) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2353516) = 2654208 * k + 1176758 := by
    unfold C
    simp [show (5308416 * k + 2353516) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1176758) = 1327104 * k + 588379 := by
    unfold C
    simp [show (2654208 * k + 1176758) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 588379) = 3981312 * k + 1765138 := by
    unfold C
    simp [show (1327104 * k + 588379) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1765138) = 1990656 * k + 882569 := by
    unfold C
    simp [show (3981312 * k + 1765138) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 882569) = 5971968 * k + 2647708 := by
    unfold C
    simp [show (1990656 * k + 882569) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2647708) = 2985984 * k + 1323854 := by
    unfold C
    simp [show (5971968 * k + 2647708) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1323854) = 1492992 * k + 661927 := by
    unfold C
    simp [show (2985984 * k + 1323854) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 661927) = 4478976 * k + 1985782 := by
    unfold C
    simp [show (1492992 * k + 661927) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1985782) = 2239488 * k + 992891 := by
    unfold C
    simp [show (4478976 * k + 1985782) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 992891) = 6718464 * k + 2978674 := by
    unfold C
    simp [show (2239488 * k + 992891) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2978674) = 3359232 * k + 1489337 := by
    unfold C
    simp [show (6718464 * k + 2978674) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1489337) = 10077696 * k + 4468012 := by
    unfold C
    simp [show (3359232 * k + 1489337) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4468012) = 5038848 * k + 2234006 := by
    unfold C
    simp [show (10077696 * k + 4468012) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2234006) = 2519424 * k + 1117003 := by
    unfold C
    simp [show (5038848 * k + 2234006) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1117003) = 7558272 * k + 3351010 := by
    unfold C
    simp [show (2519424 * k + 1117003) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3351010) = 3779136 * k + 1675505 := by
    unfold C
    simp [show (7558272 * k + 3351010) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1675505) = 11337408 * k + 5026516 := by
    unfold C
    simp [show (3779136 * k + 1675505) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5026516) = 5668704 * k + 2513258 := by
    unfold C
    simp [show (11337408 * k + 5026516) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2513258) = 2834352 * k + 1256629 := by
    unfold C
    simp [show (5668704 * k + 2513258) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1256629) = 8503056 * k + 3769888 := by
    unfold C
    simp [show (2834352 * k + 1256629) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3769888) = 4251528 * k + 1884944 := by
    unfold C
    simp [show (8503056 * k + 3769888) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1884944) = 2125764 * k + 942472 := by
    unfold C
    simp [show (4251528 * k + 1884944) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 942472) = 1062882 * k + 471236 := by
    unfold C
    simp [show (2125764 * k + 942472) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 471236) = 531441 * k + 235618 := by
    unfold C
    simp [show (1062882 * k + 471236) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 464891) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 464891)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_464923 : ∀ k : Nat,
    iterate (1048576 * k + 464923) 32 = 531441 * k + 235634 ∧
      531441 * k + 235634 < 1048576 * k + 464923 := by
  intro k
  have h1 : C (1048576 * k + 464923) = 3145728 * k + 1394770 := by
    unfold C
    simp [show (1048576 * k + 464923) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1394770) = 1572864 * k + 697385 := by
    unfold C
    simp [show (3145728 * k + 1394770) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 697385) = 4718592 * k + 2092156 := by
    unfold C
    simp [show (1572864 * k + 697385) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2092156) = 2359296 * k + 1046078 := by
    unfold C
    simp [show (4718592 * k + 2092156) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1046078) = 1179648 * k + 523039 := by
    unfold C
    simp [show (2359296 * k + 1046078) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 523039) = 3538944 * k + 1569118 := by
    unfold C
    simp [show (1179648 * k + 523039) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1569118) = 1769472 * k + 784559 := by
    unfold C
    simp [show (3538944 * k + 1569118) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 784559) = 5308416 * k + 2353678 := by
    unfold C
    simp [show (1769472 * k + 784559) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2353678) = 2654208 * k + 1176839 := by
    unfold C
    simp [show (5308416 * k + 2353678) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1176839) = 7962624 * k + 3530518 := by
    unfold C
    simp [show (2654208 * k + 1176839) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3530518) = 3981312 * k + 1765259 := by
    unfold C
    simp [show (7962624 * k + 3530518) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1765259) = 11943936 * k + 5295778 := by
    unfold C
    simp [show (3981312 * k + 1765259) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5295778) = 5971968 * k + 2647889 := by
    unfold C
    simp [show (11943936 * k + 5295778) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2647889) = 17915904 * k + 7943668 := by
    unfold C
    simp [show (5971968 * k + 2647889) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7943668) = 8957952 * k + 3971834 := by
    unfold C
    simp [show (17915904 * k + 7943668) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3971834) = 4478976 * k + 1985917 := by
    unfold C
    simp [show (8957952 * k + 3971834) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1985917) = 13436928 * k + 5957752 := by
    unfold C
    simp [show (4478976 * k + 1985917) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5957752) = 6718464 * k + 2978876 := by
    unfold C
    simp [show (13436928 * k + 5957752) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2978876) = 3359232 * k + 1489438 := by
    unfold C
    simp [show (6718464 * k + 2978876) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1489438) = 1679616 * k + 744719 := by
    unfold C
    simp [show (3359232 * k + 1489438) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 744719) = 5038848 * k + 2234158 := by
    unfold C
    simp [show (1679616 * k + 744719) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2234158) = 2519424 * k + 1117079 := by
    unfold C
    simp [show (5038848 * k + 2234158) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1117079) = 7558272 * k + 3351238 := by
    unfold C
    simp [show (2519424 * k + 1117079) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3351238) = 3779136 * k + 1675619 := by
    unfold C
    simp [show (7558272 * k + 3351238) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1675619) = 11337408 * k + 5026858 := by
    unfold C
    simp [show (3779136 * k + 1675619) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5026858) = 5668704 * k + 2513429 := by
    unfold C
    simp [show (11337408 * k + 5026858) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2513429) = 17006112 * k + 7540288 := by
    unfold C
    simp [show (5668704 * k + 2513429) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7540288) = 8503056 * k + 3770144 := by
    unfold C
    simp [show (17006112 * k + 7540288) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3770144) = 4251528 * k + 1885072 := by
    unfold C
    simp [show (8503056 * k + 3770144) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1885072) = 2125764 * k + 942536 := by
    unfold C
    simp [show (4251528 * k + 1885072) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 942536) = 1062882 * k + 471268 := by
    unfold C
    simp [show (2125764 * k + 942536) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 471268) = 531441 * k + 235634 := by
    unfold C
    simp [show (1062882 * k + 471268) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 464923) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 464923)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_465519 : ∀ k : Nat,
    iterate (1048576 * k + 465519) 32 = 531441 * k + 235936 ∧
      531441 * k + 235936 < 1048576 * k + 465519 := by
  intro k
  have h1 : C (1048576 * k + 465519) = 3145728 * k + 1396558 := by
    unfold C
    simp [show (1048576 * k + 465519) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1396558) = 1572864 * k + 698279 := by
    unfold C
    simp [show (3145728 * k + 1396558) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 698279) = 4718592 * k + 2094838 := by
    unfold C
    simp [show (1572864 * k + 698279) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2094838) = 2359296 * k + 1047419 := by
    unfold C
    simp [show (4718592 * k + 2094838) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1047419) = 7077888 * k + 3142258 := by
    unfold C
    simp [show (2359296 * k + 1047419) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3142258) = 3538944 * k + 1571129 := by
    unfold C
    simp [show (7077888 * k + 3142258) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1571129) = 10616832 * k + 4713388 := by
    unfold C
    simp [show (3538944 * k + 1571129) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4713388) = 5308416 * k + 2356694 := by
    unfold C
    simp [show (10616832 * k + 4713388) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2356694) = 2654208 * k + 1178347 := by
    unfold C
    simp [show (5308416 * k + 2356694) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1178347) = 7962624 * k + 3535042 := by
    unfold C
    simp [show (2654208 * k + 1178347) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3535042) = 3981312 * k + 1767521 := by
    unfold C
    simp [show (7962624 * k + 3535042) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1767521) = 11943936 * k + 5302564 := by
    unfold C
    simp [show (3981312 * k + 1767521) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5302564) = 5971968 * k + 2651282 := by
    unfold C
    simp [show (11943936 * k + 5302564) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2651282) = 2985984 * k + 1325641 := by
    unfold C
    simp [show (5971968 * k + 2651282) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1325641) = 8957952 * k + 3976924 := by
    unfold C
    simp [show (2985984 * k + 1325641) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3976924) = 4478976 * k + 1988462 := by
    unfold C
    simp [show (8957952 * k + 3976924) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1988462) = 2239488 * k + 994231 := by
    unfold C
    simp [show (4478976 * k + 1988462) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 994231) = 6718464 * k + 2982694 := by
    unfold C
    simp [show (2239488 * k + 994231) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2982694) = 3359232 * k + 1491347 := by
    unfold C
    simp [show (6718464 * k + 2982694) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1491347) = 10077696 * k + 4474042 := by
    unfold C
    simp [show (3359232 * k + 1491347) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4474042) = 5038848 * k + 2237021 := by
    unfold C
    simp [show (10077696 * k + 4474042) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2237021) = 15116544 * k + 6711064 := by
    unfold C
    simp [show (5038848 * k + 2237021) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6711064) = 7558272 * k + 3355532 := by
    unfold C
    simp [show (15116544 * k + 6711064) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3355532) = 3779136 * k + 1677766 := by
    unfold C
    simp [show (7558272 * k + 3355532) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1677766) = 1889568 * k + 838883 := by
    unfold C
    simp [show (3779136 * k + 1677766) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 838883) = 5668704 * k + 2516650 := by
    unfold C
    simp [show (1889568 * k + 838883) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2516650) = 2834352 * k + 1258325 := by
    unfold C
    simp [show (5668704 * k + 2516650) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1258325) = 8503056 * k + 3774976 := by
    unfold C
    simp [show (2834352 * k + 1258325) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3774976) = 4251528 * k + 1887488 := by
    unfold C
    simp [show (8503056 * k + 3774976) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1887488) = 2125764 * k + 943744 := by
    unfold C
    simp [show (4251528 * k + 1887488) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 943744) = 1062882 * k + 471872 := by
    unfold C
    simp [show (2125764 * k + 943744) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 471872) = 531441 * k + 235936 := by
    unfold C
    simp [show (1062882 * k + 471872) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 465519) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 465519)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_465947 : ∀ k : Nat,
    iterate (1048576 * k + 465947) 32 = 531441 * k + 236153 ∧
      531441 * k + 236153 < 1048576 * k + 465947 := by
  intro k
  have h1 : C (1048576 * k + 465947) = 3145728 * k + 1397842 := by
    unfold C
    simp [show (1048576 * k + 465947) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1397842) = 1572864 * k + 698921 := by
    unfold C
    simp [show (3145728 * k + 1397842) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 698921) = 4718592 * k + 2096764 := by
    unfold C
    simp [show (1572864 * k + 698921) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2096764) = 2359296 * k + 1048382 := by
    unfold C
    simp [show (4718592 * k + 2096764) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1048382) = 1179648 * k + 524191 := by
    unfold C
    simp [show (2359296 * k + 1048382) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 524191) = 3538944 * k + 1572574 := by
    unfold C
    simp [show (1179648 * k + 524191) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1572574) = 1769472 * k + 786287 := by
    unfold C
    simp [show (3538944 * k + 1572574) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 786287) = 5308416 * k + 2358862 := by
    unfold C
    simp [show (1769472 * k + 786287) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2358862) = 2654208 * k + 1179431 := by
    unfold C
    simp [show (5308416 * k + 2358862) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1179431) = 7962624 * k + 3538294 := by
    unfold C
    simp [show (2654208 * k + 1179431) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3538294) = 3981312 * k + 1769147 := by
    unfold C
    simp [show (7962624 * k + 3538294) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1769147) = 11943936 * k + 5307442 := by
    unfold C
    simp [show (3981312 * k + 1769147) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5307442) = 5971968 * k + 2653721 := by
    unfold C
    simp [show (11943936 * k + 5307442) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2653721) = 17915904 * k + 7961164 := by
    unfold C
    simp [show (5971968 * k + 2653721) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7961164) = 8957952 * k + 3980582 := by
    unfold C
    simp [show (17915904 * k + 7961164) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3980582) = 4478976 * k + 1990291 := by
    unfold C
    simp [show (8957952 * k + 3980582) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1990291) = 13436928 * k + 5970874 := by
    unfold C
    simp [show (4478976 * k + 1990291) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5970874) = 6718464 * k + 2985437 := by
    unfold C
    simp [show (13436928 * k + 5970874) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2985437) = 20155392 * k + 8956312 := by
    unfold C
    simp [show (6718464 * k + 2985437) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8956312) = 10077696 * k + 4478156 := by
    unfold C
    simp [show (20155392 * k + 8956312) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4478156) = 5038848 * k + 2239078 := by
    unfold C
    simp [show (10077696 * k + 4478156) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2239078) = 2519424 * k + 1119539 := by
    unfold C
    simp [show (5038848 * k + 2239078) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1119539) = 7558272 * k + 3358618 := by
    unfold C
    simp [show (2519424 * k + 1119539) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3358618) = 3779136 * k + 1679309 := by
    unfold C
    simp [show (7558272 * k + 3358618) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1679309) = 11337408 * k + 5037928 := by
    unfold C
    simp [show (3779136 * k + 1679309) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5037928) = 5668704 * k + 2518964 := by
    unfold C
    simp [show (11337408 * k + 5037928) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2518964) = 2834352 * k + 1259482 := by
    unfold C
    simp [show (5668704 * k + 2518964) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1259482) = 1417176 * k + 629741 := by
    unfold C
    simp [show (2834352 * k + 1259482) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 629741) = 4251528 * k + 1889224 := by
    unfold C
    simp [show (1417176 * k + 629741) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1889224) = 2125764 * k + 944612 := by
    unfold C
    simp [show (4251528 * k + 1889224) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 944612) = 1062882 * k + 472306 := by
    unfold C
    simp [show (2125764 * k + 944612) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 472306) = 531441 * k + 236153 := by
    unfold C
    simp [show (1062882 * k + 472306) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 465947) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 465947)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_466279 : ∀ k : Nat,
    iterate (1048576 * k + 466279) 32 = 531441 * k + 236321 ∧
      531441 * k + 236321 < 1048576 * k + 466279 := by
  intro k
  have h1 : C (1048576 * k + 466279) = 3145728 * k + 1398838 := by
    unfold C
    simp [show (1048576 * k + 466279) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1398838) = 1572864 * k + 699419 := by
    unfold C
    simp [show (3145728 * k + 1398838) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 699419) = 4718592 * k + 2098258 := by
    unfold C
    simp [show (1572864 * k + 699419) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2098258) = 2359296 * k + 1049129 := by
    unfold C
    simp [show (4718592 * k + 2098258) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1049129) = 7077888 * k + 3147388 := by
    unfold C
    simp [show (2359296 * k + 1049129) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3147388) = 3538944 * k + 1573694 := by
    unfold C
    simp [show (7077888 * k + 3147388) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1573694) = 1769472 * k + 786847 := by
    unfold C
    simp [show (3538944 * k + 1573694) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 786847) = 5308416 * k + 2360542 := by
    unfold C
    simp [show (1769472 * k + 786847) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2360542) = 2654208 * k + 1180271 := by
    unfold C
    simp [show (5308416 * k + 2360542) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1180271) = 7962624 * k + 3540814 := by
    unfold C
    simp [show (2654208 * k + 1180271) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3540814) = 3981312 * k + 1770407 := by
    unfold C
    simp [show (7962624 * k + 3540814) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1770407) = 11943936 * k + 5311222 := by
    unfold C
    simp [show (3981312 * k + 1770407) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5311222) = 5971968 * k + 2655611 := by
    unfold C
    simp [show (11943936 * k + 5311222) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2655611) = 17915904 * k + 7966834 := by
    unfold C
    simp [show (5971968 * k + 2655611) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7966834) = 8957952 * k + 3983417 := by
    unfold C
    simp [show (17915904 * k + 7966834) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3983417) = 26873856 * k + 11950252 := by
    unfold C
    simp [show (8957952 * k + 3983417) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 11950252) = 13436928 * k + 5975126 := by
    unfold C
    simp [show (26873856 * k + 11950252) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5975126) = 6718464 * k + 2987563 := by
    unfold C
    simp [show (13436928 * k + 5975126) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2987563) = 20155392 * k + 8962690 := by
    unfold C
    simp [show (6718464 * k + 2987563) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8962690) = 10077696 * k + 4481345 := by
    unfold C
    simp [show (20155392 * k + 8962690) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4481345) = 30233088 * k + 13444036 := by
    unfold C
    simp [show (10077696 * k + 4481345) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 13444036) = 15116544 * k + 6722018 := by
    unfold C
    simp [show (30233088 * k + 13444036) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6722018) = 7558272 * k + 3361009 := by
    unfold C
    simp [show (15116544 * k + 6722018) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3361009) = 22674816 * k + 10083028 := by
    unfold C
    simp [show (7558272 * k + 3361009) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 10083028) = 11337408 * k + 5041514 := by
    unfold C
    simp [show (22674816 * k + 10083028) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5041514) = 5668704 * k + 2520757 := by
    unfold C
    simp [show (11337408 * k + 5041514) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2520757) = 17006112 * k + 7562272 := by
    unfold C
    simp [show (5668704 * k + 2520757) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7562272) = 8503056 * k + 3781136 := by
    unfold C
    simp [show (17006112 * k + 7562272) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3781136) = 4251528 * k + 1890568 := by
    unfold C
    simp [show (8503056 * k + 3781136) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1890568) = 2125764 * k + 945284 := by
    unfold C
    simp [show (4251528 * k + 1890568) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 945284) = 1062882 * k + 472642 := by
    unfold C
    simp [show (2125764 * k + 945284) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 472642) = 531441 * k + 236321 := by
    unfold C
    simp [show (1062882 * k + 472642) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 466279) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 466279)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_466415 : ∀ k : Nat,
    iterate (1048576 * k + 466415) 32 = 531441 * k + 236390 ∧
      531441 * k + 236390 < 1048576 * k + 466415 := by
  intro k
  have h1 : C (1048576 * k + 466415) = 3145728 * k + 1399246 := by
    unfold C
    simp [show (1048576 * k + 466415) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1399246) = 1572864 * k + 699623 := by
    unfold C
    simp [show (3145728 * k + 1399246) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 699623) = 4718592 * k + 2098870 := by
    unfold C
    simp [show (1572864 * k + 699623) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2098870) = 2359296 * k + 1049435 := by
    unfold C
    simp [show (4718592 * k + 2098870) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1049435) = 7077888 * k + 3148306 := by
    unfold C
    simp [show (2359296 * k + 1049435) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3148306) = 3538944 * k + 1574153 := by
    unfold C
    simp [show (7077888 * k + 3148306) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1574153) = 10616832 * k + 4722460 := by
    unfold C
    simp [show (3538944 * k + 1574153) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4722460) = 5308416 * k + 2361230 := by
    unfold C
    simp [show (10616832 * k + 4722460) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2361230) = 2654208 * k + 1180615 := by
    unfold C
    simp [show (5308416 * k + 2361230) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1180615) = 7962624 * k + 3541846 := by
    unfold C
    simp [show (2654208 * k + 1180615) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3541846) = 3981312 * k + 1770923 := by
    unfold C
    simp [show (7962624 * k + 3541846) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1770923) = 11943936 * k + 5312770 := by
    unfold C
    simp [show (3981312 * k + 1770923) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5312770) = 5971968 * k + 2656385 := by
    unfold C
    simp [show (11943936 * k + 5312770) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2656385) = 17915904 * k + 7969156 := by
    unfold C
    simp [show (5971968 * k + 2656385) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7969156) = 8957952 * k + 3984578 := by
    unfold C
    simp [show (17915904 * k + 7969156) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3984578) = 4478976 * k + 1992289 := by
    unfold C
    simp [show (8957952 * k + 3984578) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1992289) = 13436928 * k + 5976868 := by
    unfold C
    simp [show (4478976 * k + 1992289) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5976868) = 6718464 * k + 2988434 := by
    unfold C
    simp [show (13436928 * k + 5976868) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2988434) = 3359232 * k + 1494217 := by
    unfold C
    simp [show (6718464 * k + 2988434) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1494217) = 10077696 * k + 4482652 := by
    unfold C
    simp [show (3359232 * k + 1494217) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4482652) = 5038848 * k + 2241326 := by
    unfold C
    simp [show (10077696 * k + 4482652) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2241326) = 2519424 * k + 1120663 := by
    unfold C
    simp [show (5038848 * k + 2241326) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1120663) = 7558272 * k + 3361990 := by
    unfold C
    simp [show (2519424 * k + 1120663) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3361990) = 3779136 * k + 1680995 := by
    unfold C
    simp [show (7558272 * k + 3361990) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1680995) = 11337408 * k + 5042986 := by
    unfold C
    simp [show (3779136 * k + 1680995) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5042986) = 5668704 * k + 2521493 := by
    unfold C
    simp [show (11337408 * k + 5042986) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2521493) = 17006112 * k + 7564480 := by
    unfold C
    simp [show (5668704 * k + 2521493) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7564480) = 8503056 * k + 3782240 := by
    unfold C
    simp [show (17006112 * k + 7564480) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3782240) = 4251528 * k + 1891120 := by
    unfold C
    simp [show (8503056 * k + 3782240) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1891120) = 2125764 * k + 945560 := by
    unfold C
    simp [show (4251528 * k + 1891120) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 945560) = 1062882 * k + 472780 := by
    unfold C
    simp [show (2125764 * k + 945560) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 472780) = 531441 * k + 236390 := by
    unfold C
    simp [show (1062882 * k + 472780) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 466415) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 466415)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_466715 : ∀ k : Nat,
    iterate (1048576 * k + 466715) 32 = 531441 * k + 236542 ∧
      531441 * k + 236542 < 1048576 * k + 466715 := by
  intro k
  have h1 : C (1048576 * k + 466715) = 3145728 * k + 1400146 := by
    unfold C
    simp [show (1048576 * k + 466715) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1400146) = 1572864 * k + 700073 := by
    unfold C
    simp [show (3145728 * k + 1400146) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 700073) = 4718592 * k + 2100220 := by
    unfold C
    simp [show (1572864 * k + 700073) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2100220) = 2359296 * k + 1050110 := by
    unfold C
    simp [show (4718592 * k + 2100220) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1050110) = 1179648 * k + 525055 := by
    unfold C
    simp [show (2359296 * k + 1050110) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 525055) = 3538944 * k + 1575166 := by
    unfold C
    simp [show (1179648 * k + 525055) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1575166) = 1769472 * k + 787583 := by
    unfold C
    simp [show (3538944 * k + 1575166) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 787583) = 5308416 * k + 2362750 := by
    unfold C
    simp [show (1769472 * k + 787583) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2362750) = 2654208 * k + 1181375 := by
    unfold C
    simp [show (5308416 * k + 2362750) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1181375) = 7962624 * k + 3544126 := by
    unfold C
    simp [show (2654208 * k + 1181375) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3544126) = 3981312 * k + 1772063 := by
    unfold C
    simp [show (7962624 * k + 3544126) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1772063) = 11943936 * k + 5316190 := by
    unfold C
    simp [show (3981312 * k + 1772063) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5316190) = 5971968 * k + 2658095 := by
    unfold C
    simp [show (11943936 * k + 5316190) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2658095) = 17915904 * k + 7974286 := by
    unfold C
    simp [show (5971968 * k + 2658095) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7974286) = 8957952 * k + 3987143 := by
    unfold C
    simp [show (17915904 * k + 7974286) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3987143) = 26873856 * k + 11961430 := by
    unfold C
    simp [show (8957952 * k + 3987143) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 11961430) = 13436928 * k + 5980715 := by
    unfold C
    simp [show (26873856 * k + 11961430) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5980715) = 40310784 * k + 17942146 := by
    unfold C
    simp [show (13436928 * k + 5980715) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 17942146) = 20155392 * k + 8971073 := by
    unfold C
    simp [show (40310784 * k + 17942146) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 8971073) = 60466176 * k + 26913220 := by
    unfold C
    simp [show (20155392 * k + 8971073) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 26913220) = 30233088 * k + 13456610 := by
    unfold C
    simp [show (60466176 * k + 26913220) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 13456610) = 15116544 * k + 6728305 := by
    unfold C
    simp [show (30233088 * k + 13456610) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6728305) = 45349632 * k + 20184916 := by
    unfold C
    simp [show (15116544 * k + 6728305) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 20184916) = 22674816 * k + 10092458 := by
    unfold C
    simp [show (45349632 * k + 20184916) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 10092458) = 11337408 * k + 5046229 := by
    unfold C
    simp [show (22674816 * k + 10092458) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5046229) = 34012224 * k + 15138688 := by
    unfold C
    simp [show (11337408 * k + 5046229) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 15138688) = 17006112 * k + 7569344 := by
    unfold C
    simp [show (34012224 * k + 15138688) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 7569344) = 8503056 * k + 3784672 := by
    unfold C
    simp [show (17006112 * k + 7569344) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3784672) = 4251528 * k + 1892336 := by
    unfold C
    simp [show (8503056 * k + 3784672) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1892336) = 2125764 * k + 946168 := by
    unfold C
    simp [show (4251528 * k + 1892336) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 946168) = 1062882 * k + 473084 := by
    unfold C
    simp [show (2125764 * k + 946168) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 473084) = 531441 * k + 236542 := by
    unfold C
    simp [show (1062882 * k + 473084) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 466715) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 466715)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_467271 : ∀ k : Nat,
    iterate (1048576 * k + 467271) 32 = 531441 * k + 236824 ∧
      531441 * k + 236824 < 1048576 * k + 467271 := by
  intro k
  have h1 : C (1048576 * k + 467271) = 3145728 * k + 1401814 := by
    unfold C
    simp [show (1048576 * k + 467271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1401814) = 1572864 * k + 700907 := by
    unfold C
    simp [show (3145728 * k + 1401814) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 700907) = 4718592 * k + 2102722 := by
    unfold C
    simp [show (1572864 * k + 700907) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2102722) = 2359296 * k + 1051361 := by
    unfold C
    simp [show (4718592 * k + 2102722) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1051361) = 7077888 * k + 3154084 := by
    unfold C
    simp [show (2359296 * k + 1051361) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3154084) = 3538944 * k + 1577042 := by
    unfold C
    simp [show (7077888 * k + 3154084) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1577042) = 1769472 * k + 788521 := by
    unfold C
    simp [show (3538944 * k + 1577042) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 788521) = 5308416 * k + 2365564 := by
    unfold C
    simp [show (1769472 * k + 788521) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2365564) = 2654208 * k + 1182782 := by
    unfold C
    simp [show (5308416 * k + 2365564) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1182782) = 1327104 * k + 591391 := by
    unfold C
    simp [show (2654208 * k + 1182782) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 591391) = 3981312 * k + 1774174 := by
    unfold C
    simp [show (1327104 * k + 591391) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1774174) = 1990656 * k + 887087 := by
    unfold C
    simp [show (3981312 * k + 1774174) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 887087) = 5971968 * k + 2661262 := by
    unfold C
    simp [show (1990656 * k + 887087) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2661262) = 2985984 * k + 1330631 := by
    unfold C
    simp [show (5971968 * k + 2661262) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1330631) = 8957952 * k + 3991894 := by
    unfold C
    simp [show (2985984 * k + 1330631) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3991894) = 4478976 * k + 1995947 := by
    unfold C
    simp [show (8957952 * k + 3991894) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1995947) = 13436928 * k + 5987842 := by
    unfold C
    simp [show (4478976 * k + 1995947) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5987842) = 6718464 * k + 2993921 := by
    unfold C
    simp [show (13436928 * k + 5987842) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2993921) = 20155392 * k + 8981764 := by
    unfold C
    simp [show (6718464 * k + 2993921) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8981764) = 10077696 * k + 4490882 := by
    unfold C
    simp [show (20155392 * k + 8981764) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4490882) = 5038848 * k + 2245441 := by
    unfold C
    simp [show (10077696 * k + 4490882) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2245441) = 15116544 * k + 6736324 := by
    unfold C
    simp [show (5038848 * k + 2245441) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6736324) = 7558272 * k + 3368162 := by
    unfold C
    simp [show (15116544 * k + 6736324) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3368162) = 3779136 * k + 1684081 := by
    unfold C
    simp [show (7558272 * k + 3368162) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1684081) = 11337408 * k + 5052244 := by
    unfold C
    simp [show (3779136 * k + 1684081) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5052244) = 5668704 * k + 2526122 := by
    unfold C
    simp [show (11337408 * k + 5052244) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2526122) = 2834352 * k + 1263061 := by
    unfold C
    simp [show (5668704 * k + 2526122) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1263061) = 8503056 * k + 3789184 := by
    unfold C
    simp [show (2834352 * k + 1263061) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3789184) = 4251528 * k + 1894592 := by
    unfold C
    simp [show (8503056 * k + 3789184) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1894592) = 2125764 * k + 947296 := by
    unfold C
    simp [show (4251528 * k + 1894592) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 947296) = 1062882 * k + 473648 := by
    unfold C
    simp [show (2125764 * k + 947296) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 473648) = 531441 * k + 236824 := by
    unfold C
    simp [show (1062882 * k + 473648) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 467271) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 467271)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_467439 : ∀ k : Nat,
    iterate (1048576 * k + 467439) 32 = 531441 * k + 236909 ∧
      531441 * k + 236909 < 1048576 * k + 467439 := by
  intro k
  have h1 : C (1048576 * k + 467439) = 3145728 * k + 1402318 := by
    unfold C
    simp [show (1048576 * k + 467439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1402318) = 1572864 * k + 701159 := by
    unfold C
    simp [show (3145728 * k + 1402318) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 701159) = 4718592 * k + 2103478 := by
    unfold C
    simp [show (1572864 * k + 701159) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2103478) = 2359296 * k + 1051739 := by
    unfold C
    simp [show (4718592 * k + 2103478) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1051739) = 7077888 * k + 3155218 := by
    unfold C
    simp [show (2359296 * k + 1051739) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3155218) = 3538944 * k + 1577609 := by
    unfold C
    simp [show (7077888 * k + 3155218) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1577609) = 10616832 * k + 4732828 := by
    unfold C
    simp [show (3538944 * k + 1577609) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4732828) = 5308416 * k + 2366414 := by
    unfold C
    simp [show (10616832 * k + 4732828) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2366414) = 2654208 * k + 1183207 := by
    unfold C
    simp [show (5308416 * k + 2366414) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1183207) = 7962624 * k + 3549622 := by
    unfold C
    simp [show (2654208 * k + 1183207) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3549622) = 3981312 * k + 1774811 := by
    unfold C
    simp [show (7962624 * k + 3549622) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1774811) = 11943936 * k + 5324434 := by
    unfold C
    simp [show (3981312 * k + 1774811) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5324434) = 5971968 * k + 2662217 := by
    unfold C
    simp [show (11943936 * k + 5324434) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2662217) = 17915904 * k + 7986652 := by
    unfold C
    simp [show (5971968 * k + 2662217) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7986652) = 8957952 * k + 3993326 := by
    unfold C
    simp [show (17915904 * k + 7986652) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3993326) = 4478976 * k + 1996663 := by
    unfold C
    simp [show (8957952 * k + 3993326) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1996663) = 13436928 * k + 5989990 := by
    unfold C
    simp [show (4478976 * k + 1996663) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5989990) = 6718464 * k + 2994995 := by
    unfold C
    simp [show (13436928 * k + 5989990) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2994995) = 20155392 * k + 8984986 := by
    unfold C
    simp [show (6718464 * k + 2994995) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8984986) = 10077696 * k + 4492493 := by
    unfold C
    simp [show (20155392 * k + 8984986) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4492493) = 30233088 * k + 13477480 := by
    unfold C
    simp [show (10077696 * k + 4492493) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 13477480) = 15116544 * k + 6738740 := by
    unfold C
    simp [show (30233088 * k + 13477480) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6738740) = 7558272 * k + 3369370 := by
    unfold C
    simp [show (15116544 * k + 6738740) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3369370) = 3779136 * k + 1684685 := by
    unfold C
    simp [show (7558272 * k + 3369370) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1684685) = 11337408 * k + 5054056 := by
    unfold C
    simp [show (3779136 * k + 1684685) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5054056) = 5668704 * k + 2527028 := by
    unfold C
    simp [show (11337408 * k + 5054056) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2527028) = 2834352 * k + 1263514 := by
    unfold C
    simp [show (5668704 * k + 2527028) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1263514) = 1417176 * k + 631757 := by
    unfold C
    simp [show (2834352 * k + 1263514) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 631757) = 4251528 * k + 1895272 := by
    unfold C
    simp [show (1417176 * k + 631757) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1895272) = 2125764 * k + 947636 := by
    unfold C
    simp [show (4251528 * k + 1895272) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 947636) = 1062882 * k + 473818 := by
    unfold C
    simp [show (2125764 * k + 947636) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 473818) = 531441 * k + 236909 := by
    unfold C
    simp [show (1062882 * k + 473818) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 467439) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 467439)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_468639 : ∀ k : Nat,
    iterate (1048576 * k + 468639) 32 = 531441 * k + 237517 ∧
      531441 * k + 237517 < 1048576 * k + 468639 := by
  intro k
  have h1 : C (1048576 * k + 468639) = 3145728 * k + 1405918 := by
    unfold C
    simp [show (1048576 * k + 468639) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1405918) = 1572864 * k + 702959 := by
    unfold C
    simp [show (3145728 * k + 1405918) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 702959) = 4718592 * k + 2108878 := by
    unfold C
    simp [show (1572864 * k + 702959) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2108878) = 2359296 * k + 1054439 := by
    unfold C
    simp [show (4718592 * k + 2108878) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1054439) = 7077888 * k + 3163318 := by
    unfold C
    simp [show (2359296 * k + 1054439) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3163318) = 3538944 * k + 1581659 := by
    unfold C
    simp [show (7077888 * k + 3163318) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1581659) = 10616832 * k + 4744978 := by
    unfold C
    simp [show (3538944 * k + 1581659) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4744978) = 5308416 * k + 2372489 := by
    unfold C
    simp [show (10616832 * k + 4744978) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2372489) = 15925248 * k + 7117468 := by
    unfold C
    simp [show (5308416 * k + 2372489) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7117468) = 7962624 * k + 3558734 := by
    unfold C
    simp [show (15925248 * k + 7117468) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3558734) = 3981312 * k + 1779367 := by
    unfold C
    simp [show (7962624 * k + 3558734) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1779367) = 11943936 * k + 5338102 := by
    unfold C
    simp [show (3981312 * k + 1779367) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5338102) = 5971968 * k + 2669051 := by
    unfold C
    simp [show (11943936 * k + 5338102) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2669051) = 17915904 * k + 8007154 := by
    unfold C
    simp [show (5971968 * k + 2669051) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8007154) = 8957952 * k + 4003577 := by
    unfold C
    simp [show (17915904 * k + 8007154) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4003577) = 26873856 * k + 12010732 := by
    unfold C
    simp [show (8957952 * k + 4003577) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 12010732) = 13436928 * k + 6005366 := by
    unfold C
    simp [show (26873856 * k + 12010732) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6005366) = 6718464 * k + 3002683 := by
    unfold C
    simp [show (13436928 * k + 6005366) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3002683) = 20155392 * k + 9008050 := by
    unfold C
    simp [show (6718464 * k + 3002683) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9008050) = 10077696 * k + 4504025 := by
    unfold C
    simp [show (20155392 * k + 9008050) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4504025) = 30233088 * k + 13512076 := by
    unfold C
    simp [show (10077696 * k + 4504025) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 13512076) = 15116544 * k + 6756038 := by
    unfold C
    simp [show (30233088 * k + 13512076) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6756038) = 7558272 * k + 3378019 := by
    unfold C
    simp [show (15116544 * k + 6756038) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3378019) = 22674816 * k + 10134058 := by
    unfold C
    simp [show (7558272 * k + 3378019) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 10134058) = 11337408 * k + 5067029 := by
    unfold C
    simp [show (22674816 * k + 10134058) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5067029) = 34012224 * k + 15201088 := by
    unfold C
    simp [show (11337408 * k + 5067029) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 15201088) = 17006112 * k + 7600544 := by
    unfold C
    simp [show (34012224 * k + 15201088) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 7600544) = 8503056 * k + 3800272 := by
    unfold C
    simp [show (17006112 * k + 7600544) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3800272) = 4251528 * k + 1900136 := by
    unfold C
    simp [show (8503056 * k + 3800272) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1900136) = 2125764 * k + 950068 := by
    unfold C
    simp [show (4251528 * k + 1900136) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 950068) = 1062882 * k + 475034 := by
    unfold C
    simp [show (2125764 * k + 950068) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 475034) = 531441 * k + 237517 := by
    unfold C
    simp [show (1062882 * k + 475034) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 468639) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 468639)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_469319 : ∀ k : Nat,
    iterate (1048576 * k + 469319) 32 = 531441 * k + 237862 ∧
      531441 * k + 237862 < 1048576 * k + 469319 := by
  intro k
  have h1 : C (1048576 * k + 469319) = 3145728 * k + 1407958 := by
    unfold C
    simp [show (1048576 * k + 469319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1407958) = 1572864 * k + 703979 := by
    unfold C
    simp [show (3145728 * k + 1407958) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 703979) = 4718592 * k + 2111938 := by
    unfold C
    simp [show (1572864 * k + 703979) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2111938) = 2359296 * k + 1055969 := by
    unfold C
    simp [show (4718592 * k + 2111938) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1055969) = 7077888 * k + 3167908 := by
    unfold C
    simp [show (2359296 * k + 1055969) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3167908) = 3538944 * k + 1583954 := by
    unfold C
    simp [show (7077888 * k + 3167908) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1583954) = 1769472 * k + 791977 := by
    unfold C
    simp [show (3538944 * k + 1583954) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 791977) = 5308416 * k + 2375932 := by
    unfold C
    simp [show (1769472 * k + 791977) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2375932) = 2654208 * k + 1187966 := by
    unfold C
    simp [show (5308416 * k + 2375932) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1187966) = 1327104 * k + 593983 := by
    unfold C
    simp [show (2654208 * k + 1187966) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 593983) = 3981312 * k + 1781950 := by
    unfold C
    simp [show (1327104 * k + 593983) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1781950) = 1990656 * k + 890975 := by
    unfold C
    simp [show (3981312 * k + 1781950) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 890975) = 5971968 * k + 2672926 := by
    unfold C
    simp [show (1990656 * k + 890975) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2672926) = 2985984 * k + 1336463 := by
    unfold C
    simp [show (5971968 * k + 2672926) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1336463) = 8957952 * k + 4009390 := by
    unfold C
    simp [show (2985984 * k + 1336463) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4009390) = 4478976 * k + 2004695 := by
    unfold C
    simp [show (8957952 * k + 4009390) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2004695) = 13436928 * k + 6014086 := by
    unfold C
    simp [show (4478976 * k + 2004695) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6014086) = 6718464 * k + 3007043 := by
    unfold C
    simp [show (13436928 * k + 6014086) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3007043) = 20155392 * k + 9021130 := by
    unfold C
    simp [show (6718464 * k + 3007043) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9021130) = 10077696 * k + 4510565 := by
    unfold C
    simp [show (20155392 * k + 9021130) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4510565) = 30233088 * k + 13531696 := by
    unfold C
    simp [show (10077696 * k + 4510565) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 13531696) = 15116544 * k + 6765848 := by
    unfold C
    simp [show (30233088 * k + 13531696) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6765848) = 7558272 * k + 3382924 := by
    unfold C
    simp [show (15116544 * k + 6765848) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3382924) = 3779136 * k + 1691462 := by
    unfold C
    simp [show (7558272 * k + 3382924) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1691462) = 1889568 * k + 845731 := by
    unfold C
    simp [show (3779136 * k + 1691462) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 845731) = 5668704 * k + 2537194 := by
    unfold C
    simp [show (1889568 * k + 845731) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2537194) = 2834352 * k + 1268597 := by
    unfold C
    simp [show (5668704 * k + 2537194) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1268597) = 8503056 * k + 3805792 := by
    unfold C
    simp [show (2834352 * k + 1268597) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3805792) = 4251528 * k + 1902896 := by
    unfold C
    simp [show (8503056 * k + 3805792) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1902896) = 2125764 * k + 951448 := by
    unfold C
    simp [show (4251528 * k + 1902896) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 951448) = 1062882 * k + 475724 := by
    unfold C
    simp [show (2125764 * k + 951448) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 475724) = 531441 * k + 237862 := by
    unfold C
    simp [show (1062882 * k + 475724) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 469319) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 469319)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_469351 : ∀ k : Nat,
    iterate (1048576 * k + 469351) 32 = 531441 * k + 237878 ∧
      531441 * k + 237878 < 1048576 * k + 469351 := by
  intro k
  have h1 : C (1048576 * k + 469351) = 3145728 * k + 1408054 := by
    unfold C
    simp [show (1048576 * k + 469351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1408054) = 1572864 * k + 704027 := by
    unfold C
    simp [show (3145728 * k + 1408054) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 704027) = 4718592 * k + 2112082 := by
    unfold C
    simp [show (1572864 * k + 704027) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2112082) = 2359296 * k + 1056041 := by
    unfold C
    simp [show (4718592 * k + 2112082) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1056041) = 7077888 * k + 3168124 := by
    unfold C
    simp [show (2359296 * k + 1056041) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3168124) = 3538944 * k + 1584062 := by
    unfold C
    simp [show (7077888 * k + 3168124) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1584062) = 1769472 * k + 792031 := by
    unfold C
    simp [show (3538944 * k + 1584062) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 792031) = 5308416 * k + 2376094 := by
    unfold C
    simp [show (1769472 * k + 792031) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2376094) = 2654208 * k + 1188047 := by
    unfold C
    simp [show (5308416 * k + 2376094) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1188047) = 7962624 * k + 3564142 := by
    unfold C
    simp [show (2654208 * k + 1188047) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3564142) = 3981312 * k + 1782071 := by
    unfold C
    simp [show (7962624 * k + 3564142) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1782071) = 11943936 * k + 5346214 := by
    unfold C
    simp [show (3981312 * k + 1782071) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5346214) = 5971968 * k + 2673107 := by
    unfold C
    simp [show (11943936 * k + 5346214) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2673107) = 17915904 * k + 8019322 := by
    unfold C
    simp [show (5971968 * k + 2673107) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8019322) = 8957952 * k + 4009661 := by
    unfold C
    simp [show (17915904 * k + 8019322) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4009661) = 26873856 * k + 12028984 := by
    unfold C
    simp [show (8957952 * k + 4009661) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 12028984) = 13436928 * k + 6014492 := by
    unfold C
    simp [show (26873856 * k + 12028984) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6014492) = 6718464 * k + 3007246 := by
    unfold C
    simp [show (13436928 * k + 6014492) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3007246) = 3359232 * k + 1503623 := by
    unfold C
    simp [show (6718464 * k + 3007246) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1503623) = 10077696 * k + 4510870 := by
    unfold C
    simp [show (3359232 * k + 1503623) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4510870) = 5038848 * k + 2255435 := by
    unfold C
    simp [show (10077696 * k + 4510870) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2255435) = 15116544 * k + 6766306 := by
    unfold C
    simp [show (5038848 * k + 2255435) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6766306) = 7558272 * k + 3383153 := by
    unfold C
    simp [show (15116544 * k + 6766306) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3383153) = 22674816 * k + 10149460 := by
    unfold C
    simp [show (7558272 * k + 3383153) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 10149460) = 11337408 * k + 5074730 := by
    unfold C
    simp [show (22674816 * k + 10149460) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5074730) = 5668704 * k + 2537365 := by
    unfold C
    simp [show (11337408 * k + 5074730) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2537365) = 17006112 * k + 7612096 := by
    unfold C
    simp [show (5668704 * k + 2537365) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7612096) = 8503056 * k + 3806048 := by
    unfold C
    simp [show (17006112 * k + 7612096) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3806048) = 4251528 * k + 1903024 := by
    unfold C
    simp [show (8503056 * k + 3806048) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1903024) = 2125764 * k + 951512 := by
    unfold C
    simp [show (4251528 * k + 1903024) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 951512) = 1062882 * k + 475756 := by
    unfold C
    simp [show (2125764 * k + 951512) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 475756) = 531441 * k + 237878 := by
    unfold C
    simp [show (1062882 * k + 475756) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 469351) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 469351)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_470207 : ∀ k : Nat,
    iterate (1048576 * k + 470207) 32 = 531441 * k + 238312 ∧
      531441 * k + 238312 < 1048576 * k + 470207 := by
  intro k
  have h1 : C (1048576 * k + 470207) = 3145728 * k + 1410622 := by
    unfold C
    simp [show (1048576 * k + 470207) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1410622) = 1572864 * k + 705311 := by
    unfold C
    simp [show (3145728 * k + 1410622) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 705311) = 4718592 * k + 2115934 := by
    unfold C
    simp [show (1572864 * k + 705311) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2115934) = 2359296 * k + 1057967 := by
    unfold C
    simp [show (4718592 * k + 2115934) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1057967) = 7077888 * k + 3173902 := by
    unfold C
    simp [show (2359296 * k + 1057967) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3173902) = 3538944 * k + 1586951 := by
    unfold C
    simp [show (7077888 * k + 3173902) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1586951) = 10616832 * k + 4760854 := by
    unfold C
    simp [show (3538944 * k + 1586951) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4760854) = 5308416 * k + 2380427 := by
    unfold C
    simp [show (10616832 * k + 4760854) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2380427) = 15925248 * k + 7141282 := by
    unfold C
    simp [show (5308416 * k + 2380427) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7141282) = 7962624 * k + 3570641 := by
    unfold C
    simp [show (15925248 * k + 7141282) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3570641) = 23887872 * k + 10711924 := by
    unfold C
    simp [show (7962624 * k + 3570641) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 10711924) = 11943936 * k + 5355962 := by
    unfold C
    simp [show (23887872 * k + 10711924) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5355962) = 5971968 * k + 2677981 := by
    unfold C
    simp [show (11943936 * k + 5355962) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2677981) = 17915904 * k + 8033944 := by
    unfold C
    simp [show (5971968 * k + 2677981) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8033944) = 8957952 * k + 4016972 := by
    unfold C
    simp [show (17915904 * k + 8033944) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4016972) = 4478976 * k + 2008486 := by
    unfold C
    simp [show (8957952 * k + 4016972) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2008486) = 2239488 * k + 1004243 := by
    unfold C
    simp [show (4478976 * k + 2008486) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1004243) = 6718464 * k + 3012730 := by
    unfold C
    simp [show (2239488 * k + 1004243) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3012730) = 3359232 * k + 1506365 := by
    unfold C
    simp [show (6718464 * k + 3012730) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1506365) = 10077696 * k + 4519096 := by
    unfold C
    simp [show (3359232 * k + 1506365) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4519096) = 5038848 * k + 2259548 := by
    unfold C
    simp [show (10077696 * k + 4519096) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2259548) = 2519424 * k + 1129774 := by
    unfold C
    simp [show (5038848 * k + 2259548) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1129774) = 1259712 * k + 564887 := by
    unfold C
    simp [show (2519424 * k + 1129774) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 564887) = 3779136 * k + 1694662 := by
    unfold C
    simp [show (1259712 * k + 564887) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1694662) = 1889568 * k + 847331 := by
    unfold C
    simp [show (3779136 * k + 1694662) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 847331) = 5668704 * k + 2541994 := by
    unfold C
    simp [show (1889568 * k + 847331) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2541994) = 2834352 * k + 1270997 := by
    unfold C
    simp [show (5668704 * k + 2541994) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1270997) = 8503056 * k + 3812992 := by
    unfold C
    simp [show (2834352 * k + 1270997) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3812992) = 4251528 * k + 1906496 := by
    unfold C
    simp [show (8503056 * k + 3812992) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1906496) = 2125764 * k + 953248 := by
    unfold C
    simp [show (4251528 * k + 1906496) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 953248) = 1062882 * k + 476624 := by
    unfold C
    simp [show (2125764 * k + 953248) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 476624) = 531441 * k + 238312 := by
    unfold C
    simp [show (1062882 * k + 476624) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 470207) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 470207)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_470511 : ∀ k : Nat,
    iterate (1048576 * k + 470511) 32 = 531441 * k + 238466 ∧
      531441 * k + 238466 < 1048576 * k + 470511 := by
  intro k
  have h1 : C (1048576 * k + 470511) = 3145728 * k + 1411534 := by
    unfold C
    simp [show (1048576 * k + 470511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1411534) = 1572864 * k + 705767 := by
    unfold C
    simp [show (3145728 * k + 1411534) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 705767) = 4718592 * k + 2117302 := by
    unfold C
    simp [show (1572864 * k + 705767) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2117302) = 2359296 * k + 1058651 := by
    unfold C
    simp [show (4718592 * k + 2117302) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1058651) = 7077888 * k + 3175954 := by
    unfold C
    simp [show (2359296 * k + 1058651) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3175954) = 3538944 * k + 1587977 := by
    unfold C
    simp [show (7077888 * k + 3175954) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1587977) = 10616832 * k + 4763932 := by
    unfold C
    simp [show (3538944 * k + 1587977) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4763932) = 5308416 * k + 2381966 := by
    unfold C
    simp [show (10616832 * k + 4763932) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2381966) = 2654208 * k + 1190983 := by
    unfold C
    simp [show (5308416 * k + 2381966) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1190983) = 7962624 * k + 3572950 := by
    unfold C
    simp [show (2654208 * k + 1190983) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3572950) = 3981312 * k + 1786475 := by
    unfold C
    simp [show (7962624 * k + 3572950) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1786475) = 11943936 * k + 5359426 := by
    unfold C
    simp [show (3981312 * k + 1786475) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5359426) = 5971968 * k + 2679713 := by
    unfold C
    simp [show (11943936 * k + 5359426) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2679713) = 17915904 * k + 8039140 := by
    unfold C
    simp [show (5971968 * k + 2679713) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8039140) = 8957952 * k + 4019570 := by
    unfold C
    simp [show (17915904 * k + 8039140) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4019570) = 4478976 * k + 2009785 := by
    unfold C
    simp [show (8957952 * k + 4019570) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2009785) = 13436928 * k + 6029356 := by
    unfold C
    simp [show (4478976 * k + 2009785) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6029356) = 6718464 * k + 3014678 := by
    unfold C
    simp [show (13436928 * k + 6029356) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3014678) = 3359232 * k + 1507339 := by
    unfold C
    simp [show (6718464 * k + 3014678) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1507339) = 10077696 * k + 4522018 := by
    unfold C
    simp [show (3359232 * k + 1507339) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4522018) = 5038848 * k + 2261009 := by
    unfold C
    simp [show (10077696 * k + 4522018) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2261009) = 15116544 * k + 6783028 := by
    unfold C
    simp [show (5038848 * k + 2261009) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6783028) = 7558272 * k + 3391514 := by
    unfold C
    simp [show (15116544 * k + 6783028) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3391514) = 3779136 * k + 1695757 := by
    unfold C
    simp [show (7558272 * k + 3391514) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1695757) = 11337408 * k + 5087272 := by
    unfold C
    simp [show (3779136 * k + 1695757) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5087272) = 5668704 * k + 2543636 := by
    unfold C
    simp [show (11337408 * k + 5087272) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2543636) = 2834352 * k + 1271818 := by
    unfold C
    simp [show (5668704 * k + 2543636) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1271818) = 1417176 * k + 635909 := by
    unfold C
    simp [show (2834352 * k + 1271818) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 635909) = 4251528 * k + 1907728 := by
    unfold C
    simp [show (1417176 * k + 635909) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1907728) = 2125764 * k + 953864 := by
    unfold C
    simp [show (4251528 * k + 1907728) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 953864) = 1062882 * k + 476932 := by
    unfold C
    simp [show (2125764 * k + 953864) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 476932) = 531441 * k + 238466 := by
    unfold C
    simp [show (1062882 * k + 476932) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 470511) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 470511)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard059
