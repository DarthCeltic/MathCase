import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard108

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_843291 : ∀ k : Nat,
    iterate (1048576 * k + 843291) 32 = 531441 * k + 427399 ∧
      531441 * k + 427399 < 1048576 * k + 843291 := by
  intro k
  have h1 : C (1048576 * k + 843291) = 3145728 * k + 2529874 := by
    unfold C
    simp [show (1048576 * k + 843291) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2529874) = 1572864 * k + 1264937 := by
    unfold C
    simp [show (3145728 * k + 2529874) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1264937) = 4718592 * k + 3794812 := by
    unfold C
    simp [show (1572864 * k + 1264937) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3794812) = 2359296 * k + 1897406 := by
    unfold C
    simp [show (4718592 * k + 3794812) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1897406) = 1179648 * k + 948703 := by
    unfold C
    simp [show (2359296 * k + 1897406) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 948703) = 3538944 * k + 2846110 := by
    unfold C
    simp [show (1179648 * k + 948703) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2846110) = 1769472 * k + 1423055 := by
    unfold C
    simp [show (3538944 * k + 2846110) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1423055) = 5308416 * k + 4269166 := by
    unfold C
    simp [show (1769472 * k + 1423055) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4269166) = 2654208 * k + 2134583 := by
    unfold C
    simp [show (5308416 * k + 4269166) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2134583) = 7962624 * k + 6403750 := by
    unfold C
    simp [show (2654208 * k + 2134583) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6403750) = 3981312 * k + 3201875 := by
    unfold C
    simp [show (7962624 * k + 6403750) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3201875) = 11943936 * k + 9605626 := by
    unfold C
    simp [show (3981312 * k + 3201875) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9605626) = 5971968 * k + 4802813 := by
    unfold C
    simp [show (11943936 * k + 9605626) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4802813) = 17915904 * k + 14408440 := by
    unfold C
    simp [show (5971968 * k + 4802813) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14408440) = 8957952 * k + 7204220 := by
    unfold C
    simp [show (17915904 * k + 14408440) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7204220) = 4478976 * k + 3602110 := by
    unfold C
    simp [show (8957952 * k + 7204220) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3602110) = 2239488 * k + 1801055 := by
    unfold C
    simp [show (4478976 * k + 3602110) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1801055) = 6718464 * k + 5403166 := by
    unfold C
    simp [show (2239488 * k + 1801055) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5403166) = 3359232 * k + 2701583 := by
    unfold C
    simp [show (6718464 * k + 5403166) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2701583) = 10077696 * k + 8104750 := by
    unfold C
    simp [show (3359232 * k + 2701583) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8104750) = 5038848 * k + 4052375 := by
    unfold C
    simp [show (10077696 * k + 8104750) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4052375) = 15116544 * k + 12157126 := by
    unfold C
    simp [show (5038848 * k + 4052375) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12157126) = 7558272 * k + 6078563 := by
    unfold C
    simp [show (15116544 * k + 12157126) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6078563) = 22674816 * k + 18235690 := by
    unfold C
    simp [show (7558272 * k + 6078563) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 18235690) = 11337408 * k + 9117845 := by
    unfold C
    simp [show (22674816 * k + 18235690) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9117845) = 34012224 * k + 27353536 := by
    unfold C
    simp [show (11337408 * k + 9117845) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 27353536) = 17006112 * k + 13676768 := by
    unfold C
    simp [show (34012224 * k + 27353536) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 13676768) = 8503056 * k + 6838384 := by
    unfold C
    simp [show (17006112 * k + 13676768) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6838384) = 4251528 * k + 3419192 := by
    unfold C
    simp [show (8503056 * k + 6838384) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3419192) = 2125764 * k + 1709596 := by
    unfold C
    simp [show (4251528 * k + 3419192) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1709596) = 1062882 * k + 854798 := by
    unfold C
    simp [show (2125764 * k + 1709596) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 854798) = 531441 * k + 427399 := by
    unfold C
    simp [show (1062882 * k + 854798) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 843291) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 843291)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_844015 : ∀ k : Nat,
    iterate (1048576 * k + 844015) 32 = 531441 * k + 427766 ∧
      531441 * k + 427766 < 1048576 * k + 844015 := by
  intro k
  have h1 : C (1048576 * k + 844015) = 3145728 * k + 2532046 := by
    unfold C
    simp [show (1048576 * k + 844015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2532046) = 1572864 * k + 1266023 := by
    unfold C
    simp [show (3145728 * k + 2532046) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1266023) = 4718592 * k + 3798070 := by
    unfold C
    simp [show (1572864 * k + 1266023) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3798070) = 2359296 * k + 1899035 := by
    unfold C
    simp [show (4718592 * k + 3798070) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1899035) = 7077888 * k + 5697106 := by
    unfold C
    simp [show (2359296 * k + 1899035) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5697106) = 3538944 * k + 2848553 := by
    unfold C
    simp [show (7077888 * k + 5697106) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2848553) = 10616832 * k + 8545660 := by
    unfold C
    simp [show (3538944 * k + 2848553) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8545660) = 5308416 * k + 4272830 := by
    unfold C
    simp [show (10616832 * k + 8545660) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4272830) = 2654208 * k + 2136415 := by
    unfold C
    simp [show (5308416 * k + 4272830) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2136415) = 7962624 * k + 6409246 := by
    unfold C
    simp [show (2654208 * k + 2136415) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6409246) = 3981312 * k + 3204623 := by
    unfold C
    simp [show (7962624 * k + 6409246) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3204623) = 11943936 * k + 9613870 := by
    unfold C
    simp [show (3981312 * k + 3204623) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9613870) = 5971968 * k + 4806935 := by
    unfold C
    simp [show (11943936 * k + 9613870) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4806935) = 17915904 * k + 14420806 := by
    unfold C
    simp [show (5971968 * k + 4806935) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14420806) = 8957952 * k + 7210403 := by
    unfold C
    simp [show (17915904 * k + 14420806) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7210403) = 26873856 * k + 21631210 := by
    unfold C
    simp [show (8957952 * k + 7210403) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21631210) = 13436928 * k + 10815605 := by
    unfold C
    simp [show (26873856 * k + 21631210) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10815605) = 40310784 * k + 32446816 := by
    unfold C
    simp [show (13436928 * k + 10815605) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 32446816) = 20155392 * k + 16223408 := by
    unfold C
    simp [show (40310784 * k + 32446816) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 16223408) = 10077696 * k + 8111704 := by
    unfold C
    simp [show (20155392 * k + 16223408) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8111704) = 5038848 * k + 4055852 := by
    unfold C
    simp [show (10077696 * k + 8111704) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4055852) = 2519424 * k + 2027926 := by
    unfold C
    simp [show (5038848 * k + 4055852) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2027926) = 1259712 * k + 1013963 := by
    unfold C
    simp [show (2519424 * k + 2027926) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1013963) = 3779136 * k + 3041890 := by
    unfold C
    simp [show (1259712 * k + 1013963) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3041890) = 1889568 * k + 1520945 := by
    unfold C
    simp [show (3779136 * k + 3041890) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1520945) = 5668704 * k + 4562836 := by
    unfold C
    simp [show (1889568 * k + 1520945) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4562836) = 2834352 * k + 2281418 := by
    unfold C
    simp [show (5668704 * k + 4562836) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2281418) = 1417176 * k + 1140709 := by
    unfold C
    simp [show (2834352 * k + 2281418) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1140709) = 4251528 * k + 3422128 := by
    unfold C
    simp [show (1417176 * k + 1140709) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3422128) = 2125764 * k + 1711064 := by
    unfold C
    simp [show (4251528 * k + 3422128) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1711064) = 1062882 * k + 855532 := by
    unfold C
    simp [show (2125764 * k + 1711064) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 855532) = 531441 * k + 427766 := by
    unfold C
    simp [show (1062882 * k + 855532) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 844015) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 844015)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_844767 : ∀ k : Nat,
    iterate (1048576 * k + 844767) 32 = 531441 * k + 428147 ∧
      531441 * k + 428147 < 1048576 * k + 844767 := by
  intro k
  have h1 : C (1048576 * k + 844767) = 3145728 * k + 2534302 := by
    unfold C
    simp [show (1048576 * k + 844767) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2534302) = 1572864 * k + 1267151 := by
    unfold C
    simp [show (3145728 * k + 2534302) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1267151) = 4718592 * k + 3801454 := by
    unfold C
    simp [show (1572864 * k + 1267151) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3801454) = 2359296 * k + 1900727 := by
    unfold C
    simp [show (4718592 * k + 3801454) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1900727) = 7077888 * k + 5702182 := by
    unfold C
    simp [show (2359296 * k + 1900727) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5702182) = 3538944 * k + 2851091 := by
    unfold C
    simp [show (7077888 * k + 5702182) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2851091) = 10616832 * k + 8553274 := by
    unfold C
    simp [show (3538944 * k + 2851091) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8553274) = 5308416 * k + 4276637 := by
    unfold C
    simp [show (10616832 * k + 8553274) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4276637) = 15925248 * k + 12829912 := by
    unfold C
    simp [show (5308416 * k + 4276637) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12829912) = 7962624 * k + 6414956 := by
    unfold C
    simp [show (15925248 * k + 12829912) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6414956) = 3981312 * k + 3207478 := by
    unfold C
    simp [show (7962624 * k + 6414956) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3207478) = 1990656 * k + 1603739 := by
    unfold C
    simp [show (3981312 * k + 3207478) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1603739) = 5971968 * k + 4811218 := by
    unfold C
    simp [show (1990656 * k + 1603739) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4811218) = 2985984 * k + 2405609 := by
    unfold C
    simp [show (5971968 * k + 4811218) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2405609) = 8957952 * k + 7216828 := by
    unfold C
    simp [show (2985984 * k + 2405609) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7216828) = 4478976 * k + 3608414 := by
    unfold C
    simp [show (8957952 * k + 7216828) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3608414) = 2239488 * k + 1804207 := by
    unfold C
    simp [show (4478976 * k + 3608414) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1804207) = 6718464 * k + 5412622 := by
    unfold C
    simp [show (2239488 * k + 1804207) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5412622) = 3359232 * k + 2706311 := by
    unfold C
    simp [show (6718464 * k + 5412622) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2706311) = 10077696 * k + 8118934 := by
    unfold C
    simp [show (3359232 * k + 2706311) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8118934) = 5038848 * k + 4059467 := by
    unfold C
    simp [show (10077696 * k + 8118934) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4059467) = 15116544 * k + 12178402 := by
    unfold C
    simp [show (5038848 * k + 4059467) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12178402) = 7558272 * k + 6089201 := by
    unfold C
    simp [show (15116544 * k + 12178402) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6089201) = 22674816 * k + 18267604 := by
    unfold C
    simp [show (7558272 * k + 6089201) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 18267604) = 11337408 * k + 9133802 := by
    unfold C
    simp [show (22674816 * k + 18267604) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9133802) = 5668704 * k + 4566901 := by
    unfold C
    simp [show (11337408 * k + 9133802) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4566901) = 17006112 * k + 13700704 := by
    unfold C
    simp [show (5668704 * k + 4566901) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13700704) = 8503056 * k + 6850352 := by
    unfold C
    simp [show (17006112 * k + 13700704) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6850352) = 4251528 * k + 3425176 := by
    unfold C
    simp [show (8503056 * k + 6850352) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3425176) = 2125764 * k + 1712588 := by
    unfold C
    simp [show (4251528 * k + 3425176) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1712588) = 1062882 * k + 856294 := by
    unfold C
    simp [show (2125764 * k + 1712588) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 856294) = 531441 * k + 428147 := by
    unfold C
    simp [show (1062882 * k + 856294) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 844767) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 844767)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_845215 : ∀ k : Nat,
    iterate (1048576 * k + 845215) 32 = 531441 * k + 428374 ∧
      531441 * k + 428374 < 1048576 * k + 845215 := by
  intro k
  have h1 : C (1048576 * k + 845215) = 3145728 * k + 2535646 := by
    unfold C
    simp [show (1048576 * k + 845215) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2535646) = 1572864 * k + 1267823 := by
    unfold C
    simp [show (3145728 * k + 2535646) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1267823) = 4718592 * k + 3803470 := by
    unfold C
    simp [show (1572864 * k + 1267823) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3803470) = 2359296 * k + 1901735 := by
    unfold C
    simp [show (4718592 * k + 3803470) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1901735) = 7077888 * k + 5705206 := by
    unfold C
    simp [show (2359296 * k + 1901735) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5705206) = 3538944 * k + 2852603 := by
    unfold C
    simp [show (7077888 * k + 5705206) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2852603) = 10616832 * k + 8557810 := by
    unfold C
    simp [show (3538944 * k + 2852603) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8557810) = 5308416 * k + 4278905 := by
    unfold C
    simp [show (10616832 * k + 8557810) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4278905) = 15925248 * k + 12836716 := by
    unfold C
    simp [show (5308416 * k + 4278905) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12836716) = 7962624 * k + 6418358 := by
    unfold C
    simp [show (15925248 * k + 12836716) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6418358) = 3981312 * k + 3209179 := by
    unfold C
    simp [show (7962624 * k + 6418358) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3209179) = 11943936 * k + 9627538 := by
    unfold C
    simp [show (3981312 * k + 3209179) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9627538) = 5971968 * k + 4813769 := by
    unfold C
    simp [show (11943936 * k + 9627538) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4813769) = 17915904 * k + 14441308 := by
    unfold C
    simp [show (5971968 * k + 4813769) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14441308) = 8957952 * k + 7220654 := by
    unfold C
    simp [show (17915904 * k + 14441308) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7220654) = 4478976 * k + 3610327 := by
    unfold C
    simp [show (8957952 * k + 7220654) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3610327) = 13436928 * k + 10830982 := by
    unfold C
    simp [show (4478976 * k + 3610327) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10830982) = 6718464 * k + 5415491 := by
    unfold C
    simp [show (13436928 * k + 10830982) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5415491) = 20155392 * k + 16246474 := by
    unfold C
    simp [show (6718464 * k + 5415491) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16246474) = 10077696 * k + 8123237 := by
    unfold C
    simp [show (20155392 * k + 16246474) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8123237) = 30233088 * k + 24369712 := by
    unfold C
    simp [show (10077696 * k + 8123237) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 24369712) = 15116544 * k + 12184856 := by
    unfold C
    simp [show (30233088 * k + 24369712) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12184856) = 7558272 * k + 6092428 := by
    unfold C
    simp [show (15116544 * k + 12184856) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6092428) = 3779136 * k + 3046214 := by
    unfold C
    simp [show (7558272 * k + 6092428) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3046214) = 1889568 * k + 1523107 := by
    unfold C
    simp [show (3779136 * k + 3046214) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1523107) = 5668704 * k + 4569322 := by
    unfold C
    simp [show (1889568 * k + 1523107) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4569322) = 2834352 * k + 2284661 := by
    unfold C
    simp [show (5668704 * k + 4569322) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2284661) = 8503056 * k + 6853984 := by
    unfold C
    simp [show (2834352 * k + 2284661) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6853984) = 4251528 * k + 3426992 := by
    unfold C
    simp [show (8503056 * k + 6853984) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3426992) = 2125764 * k + 1713496 := by
    unfold C
    simp [show (4251528 * k + 3426992) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1713496) = 1062882 * k + 856748 := by
    unfold C
    simp [show (2125764 * k + 1713496) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 856748) = 531441 * k + 428374 := by
    unfold C
    simp [show (1062882 * k + 856748) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 845215) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 845215)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_845915 : ∀ k : Nat,
    iterate (1048576 * k + 845915) 32 = 531441 * k + 428729 ∧
      531441 * k + 428729 < 1048576 * k + 845915 := by
  intro k
  have h1 : C (1048576 * k + 845915) = 3145728 * k + 2537746 := by
    unfold C
    simp [show (1048576 * k + 845915) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2537746) = 1572864 * k + 1268873 := by
    unfold C
    simp [show (3145728 * k + 2537746) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1268873) = 4718592 * k + 3806620 := by
    unfold C
    simp [show (1572864 * k + 1268873) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3806620) = 2359296 * k + 1903310 := by
    unfold C
    simp [show (4718592 * k + 3806620) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1903310) = 1179648 * k + 951655 := by
    unfold C
    simp [show (2359296 * k + 1903310) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 951655) = 3538944 * k + 2854966 := by
    unfold C
    simp [show (1179648 * k + 951655) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2854966) = 1769472 * k + 1427483 := by
    unfold C
    simp [show (3538944 * k + 2854966) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1427483) = 5308416 * k + 4282450 := by
    unfold C
    simp [show (1769472 * k + 1427483) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4282450) = 2654208 * k + 2141225 := by
    unfold C
    simp [show (5308416 * k + 4282450) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2141225) = 7962624 * k + 6423676 := by
    unfold C
    simp [show (2654208 * k + 2141225) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6423676) = 3981312 * k + 3211838 := by
    unfold C
    simp [show (7962624 * k + 6423676) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3211838) = 1990656 * k + 1605919 := by
    unfold C
    simp [show (3981312 * k + 3211838) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1605919) = 5971968 * k + 4817758 := by
    unfold C
    simp [show (1990656 * k + 1605919) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4817758) = 2985984 * k + 2408879 := by
    unfold C
    simp [show (5971968 * k + 4817758) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2408879) = 8957952 * k + 7226638 := by
    unfold C
    simp [show (2985984 * k + 2408879) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7226638) = 4478976 * k + 3613319 := by
    unfold C
    simp [show (8957952 * k + 7226638) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3613319) = 13436928 * k + 10839958 := by
    unfold C
    simp [show (4478976 * k + 3613319) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10839958) = 6718464 * k + 5419979 := by
    unfold C
    simp [show (13436928 * k + 10839958) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5419979) = 20155392 * k + 16259938 := by
    unfold C
    simp [show (6718464 * k + 5419979) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16259938) = 10077696 * k + 8129969 := by
    unfold C
    simp [show (20155392 * k + 16259938) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8129969) = 30233088 * k + 24389908 := by
    unfold C
    simp [show (10077696 * k + 8129969) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 24389908) = 15116544 * k + 12194954 := by
    unfold C
    simp [show (30233088 * k + 24389908) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12194954) = 7558272 * k + 6097477 := by
    unfold C
    simp [show (15116544 * k + 12194954) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6097477) = 22674816 * k + 18292432 := by
    unfold C
    simp [show (7558272 * k + 6097477) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 18292432) = 11337408 * k + 9146216 := by
    unfold C
    simp [show (22674816 * k + 18292432) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9146216) = 5668704 * k + 4573108 := by
    unfold C
    simp [show (11337408 * k + 9146216) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4573108) = 2834352 * k + 2286554 := by
    unfold C
    simp [show (5668704 * k + 4573108) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2286554) = 1417176 * k + 1143277 := by
    unfold C
    simp [show (2834352 * k + 2286554) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1143277) = 4251528 * k + 3429832 := by
    unfold C
    simp [show (1417176 * k + 1143277) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3429832) = 2125764 * k + 1714916 := by
    unfold C
    simp [show (4251528 * k + 3429832) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1714916) = 1062882 * k + 857458 := by
    unfold C
    simp [show (2125764 * k + 1714916) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 857458) = 531441 * k + 428729 := by
    unfold C
    simp [show (1062882 * k + 857458) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 845915) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 845915)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_845927 : ∀ k : Nat,
    iterate (1048576 * k + 845927) 32 = 531441 * k + 428735 ∧
      531441 * k + 428735 < 1048576 * k + 845927 := by
  intro k
  have h1 : C (1048576 * k + 845927) = 3145728 * k + 2537782 := by
    unfold C
    simp [show (1048576 * k + 845927) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2537782) = 1572864 * k + 1268891 := by
    unfold C
    simp [show (3145728 * k + 2537782) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1268891) = 4718592 * k + 3806674 := by
    unfold C
    simp [show (1572864 * k + 1268891) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3806674) = 2359296 * k + 1903337 := by
    unfold C
    simp [show (4718592 * k + 3806674) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1903337) = 7077888 * k + 5710012 := by
    unfold C
    simp [show (2359296 * k + 1903337) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5710012) = 3538944 * k + 2855006 := by
    unfold C
    simp [show (7077888 * k + 5710012) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2855006) = 1769472 * k + 1427503 := by
    unfold C
    simp [show (3538944 * k + 2855006) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1427503) = 5308416 * k + 4282510 := by
    unfold C
    simp [show (1769472 * k + 1427503) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4282510) = 2654208 * k + 2141255 := by
    unfold C
    simp [show (5308416 * k + 4282510) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2141255) = 7962624 * k + 6423766 := by
    unfold C
    simp [show (2654208 * k + 2141255) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6423766) = 3981312 * k + 3211883 := by
    unfold C
    simp [show (7962624 * k + 6423766) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3211883) = 11943936 * k + 9635650 := by
    unfold C
    simp [show (3981312 * k + 3211883) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9635650) = 5971968 * k + 4817825 := by
    unfold C
    simp [show (11943936 * k + 9635650) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4817825) = 17915904 * k + 14453476 := by
    unfold C
    simp [show (5971968 * k + 4817825) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14453476) = 8957952 * k + 7226738 := by
    unfold C
    simp [show (17915904 * k + 14453476) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7226738) = 4478976 * k + 3613369 := by
    unfold C
    simp [show (8957952 * k + 7226738) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3613369) = 13436928 * k + 10840108 := by
    unfold C
    simp [show (4478976 * k + 3613369) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10840108) = 6718464 * k + 5420054 := by
    unfold C
    simp [show (13436928 * k + 10840108) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5420054) = 3359232 * k + 2710027 := by
    unfold C
    simp [show (6718464 * k + 5420054) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2710027) = 10077696 * k + 8130082 := by
    unfold C
    simp [show (3359232 * k + 2710027) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8130082) = 5038848 * k + 4065041 := by
    unfold C
    simp [show (10077696 * k + 8130082) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4065041) = 15116544 * k + 12195124 := by
    unfold C
    simp [show (5038848 * k + 4065041) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12195124) = 7558272 * k + 6097562 := by
    unfold C
    simp [show (15116544 * k + 12195124) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6097562) = 3779136 * k + 3048781 := by
    unfold C
    simp [show (7558272 * k + 6097562) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3048781) = 11337408 * k + 9146344 := by
    unfold C
    simp [show (3779136 * k + 3048781) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9146344) = 5668704 * k + 4573172 := by
    unfold C
    simp [show (11337408 * k + 9146344) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4573172) = 2834352 * k + 2286586 := by
    unfold C
    simp [show (5668704 * k + 4573172) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2286586) = 1417176 * k + 1143293 := by
    unfold C
    simp [show (2834352 * k + 2286586) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1143293) = 4251528 * k + 3429880 := by
    unfold C
    simp [show (1417176 * k + 1143293) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3429880) = 2125764 * k + 1714940 := by
    unfold C
    simp [show (4251528 * k + 3429880) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1714940) = 1062882 * k + 857470 := by
    unfold C
    simp [show (2125764 * k + 1714940) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 857470) = 531441 * k + 428735 := by
    unfold C
    simp [show (1062882 * k + 857470) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 845927) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 845927)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_845951 : ∀ k : Nat,
    iterate (1048576 * k + 845951) 32 = 531441 * k + 428747 ∧
      531441 * k + 428747 < 1048576 * k + 845951 := by
  intro k
  have h1 : C (1048576 * k + 845951) = 3145728 * k + 2537854 := by
    unfold C
    simp [show (1048576 * k + 845951) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2537854) = 1572864 * k + 1268927 := by
    unfold C
    simp [show (3145728 * k + 2537854) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1268927) = 4718592 * k + 3806782 := by
    unfold C
    simp [show (1572864 * k + 1268927) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3806782) = 2359296 * k + 1903391 := by
    unfold C
    simp [show (4718592 * k + 3806782) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1903391) = 7077888 * k + 5710174 := by
    unfold C
    simp [show (2359296 * k + 1903391) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5710174) = 3538944 * k + 2855087 := by
    unfold C
    simp [show (7077888 * k + 5710174) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2855087) = 10616832 * k + 8565262 := by
    unfold C
    simp [show (3538944 * k + 2855087) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8565262) = 5308416 * k + 4282631 := by
    unfold C
    simp [show (10616832 * k + 8565262) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4282631) = 15925248 * k + 12847894 := by
    unfold C
    simp [show (5308416 * k + 4282631) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12847894) = 7962624 * k + 6423947 := by
    unfold C
    simp [show (15925248 * k + 12847894) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6423947) = 23887872 * k + 19271842 := by
    unfold C
    simp [show (7962624 * k + 6423947) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 19271842) = 11943936 * k + 9635921 := by
    unfold C
    simp [show (23887872 * k + 19271842) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9635921) = 35831808 * k + 28907764 := by
    unfold C
    simp [show (11943936 * k + 9635921) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 28907764) = 17915904 * k + 14453882 := by
    unfold C
    simp [show (35831808 * k + 28907764) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 14453882) = 8957952 * k + 7226941 := by
    unfold C
    simp [show (17915904 * k + 14453882) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7226941) = 26873856 * k + 21680824 := by
    unfold C
    simp [show (8957952 * k + 7226941) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21680824) = 13436928 * k + 10840412 := by
    unfold C
    simp [show (26873856 * k + 21680824) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10840412) = 6718464 * k + 5420206 := by
    unfold C
    simp [show (13436928 * k + 10840412) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5420206) = 3359232 * k + 2710103 := by
    unfold C
    simp [show (6718464 * k + 5420206) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2710103) = 10077696 * k + 8130310 := by
    unfold C
    simp [show (3359232 * k + 2710103) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8130310) = 5038848 * k + 4065155 := by
    unfold C
    simp [show (10077696 * k + 8130310) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4065155) = 15116544 * k + 12195466 := by
    unfold C
    simp [show (5038848 * k + 4065155) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12195466) = 7558272 * k + 6097733 := by
    unfold C
    simp [show (15116544 * k + 12195466) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6097733) = 22674816 * k + 18293200 := by
    unfold C
    simp [show (7558272 * k + 6097733) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 18293200) = 11337408 * k + 9146600 := by
    unfold C
    simp [show (22674816 * k + 18293200) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9146600) = 5668704 * k + 4573300 := by
    unfold C
    simp [show (11337408 * k + 9146600) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4573300) = 2834352 * k + 2286650 := by
    unfold C
    simp [show (5668704 * k + 4573300) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2286650) = 1417176 * k + 1143325 := by
    unfold C
    simp [show (2834352 * k + 2286650) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1143325) = 4251528 * k + 3429976 := by
    unfold C
    simp [show (1417176 * k + 1143325) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3429976) = 2125764 * k + 1714988 := by
    unfold C
    simp [show (4251528 * k + 3429976) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1714988) = 1062882 * k + 857494 := by
    unfold C
    simp [show (2125764 * k + 1714988) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 857494) = 531441 * k + 428747 := by
    unfold C
    simp [show (1062882 * k + 857494) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 845951) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 845951)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_846759 : ∀ k : Nat,
    iterate (1048576 * k + 846759) 32 = 531441 * k + 429157 ∧
      531441 * k + 429157 < 1048576 * k + 846759 := by
  intro k
  have h1 : C (1048576 * k + 846759) = 3145728 * k + 2540278 := by
    unfold C
    simp [show (1048576 * k + 846759) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2540278) = 1572864 * k + 1270139 := by
    unfold C
    simp [show (3145728 * k + 2540278) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1270139) = 4718592 * k + 3810418 := by
    unfold C
    simp [show (1572864 * k + 1270139) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3810418) = 2359296 * k + 1905209 := by
    unfold C
    simp [show (4718592 * k + 3810418) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1905209) = 7077888 * k + 5715628 := by
    unfold C
    simp [show (2359296 * k + 1905209) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5715628) = 3538944 * k + 2857814 := by
    unfold C
    simp [show (7077888 * k + 5715628) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2857814) = 1769472 * k + 1428907 := by
    unfold C
    simp [show (3538944 * k + 2857814) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1428907) = 5308416 * k + 4286722 := by
    unfold C
    simp [show (1769472 * k + 1428907) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4286722) = 2654208 * k + 2143361 := by
    unfold C
    simp [show (5308416 * k + 4286722) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2143361) = 7962624 * k + 6430084 := by
    unfold C
    simp [show (2654208 * k + 2143361) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6430084) = 3981312 * k + 3215042 := by
    unfold C
    simp [show (7962624 * k + 6430084) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3215042) = 1990656 * k + 1607521 := by
    unfold C
    simp [show (3981312 * k + 3215042) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1607521) = 5971968 * k + 4822564 := by
    unfold C
    simp [show (1990656 * k + 1607521) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4822564) = 2985984 * k + 2411282 := by
    unfold C
    simp [show (5971968 * k + 4822564) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2411282) = 1492992 * k + 1205641 := by
    unfold C
    simp [show (2985984 * k + 2411282) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1205641) = 4478976 * k + 3616924 := by
    unfold C
    simp [show (1492992 * k + 1205641) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3616924) = 2239488 * k + 1808462 := by
    unfold C
    simp [show (4478976 * k + 3616924) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1808462) = 1119744 * k + 904231 := by
    unfold C
    simp [show (2239488 * k + 1808462) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 904231) = 3359232 * k + 2712694 := by
    unfold C
    simp [show (1119744 * k + 904231) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2712694) = 1679616 * k + 1356347 := by
    unfold C
    simp [show (3359232 * k + 2712694) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1356347) = 5038848 * k + 4069042 := by
    unfold C
    simp [show (1679616 * k + 1356347) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4069042) = 2519424 * k + 2034521 := by
    unfold C
    simp [show (5038848 * k + 4069042) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2034521) = 7558272 * k + 6103564 := by
    unfold C
    simp [show (2519424 * k + 2034521) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6103564) = 3779136 * k + 3051782 := by
    unfold C
    simp [show (7558272 * k + 6103564) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3051782) = 1889568 * k + 1525891 := by
    unfold C
    simp [show (3779136 * k + 3051782) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1525891) = 5668704 * k + 4577674 := by
    unfold C
    simp [show (1889568 * k + 1525891) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4577674) = 2834352 * k + 2288837 := by
    unfold C
    simp [show (5668704 * k + 4577674) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2288837) = 8503056 * k + 6866512 := by
    unfold C
    simp [show (2834352 * k + 2288837) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6866512) = 4251528 * k + 3433256 := by
    unfold C
    simp [show (8503056 * k + 6866512) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3433256) = 2125764 * k + 1716628 := by
    unfold C
    simp [show (4251528 * k + 3433256) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1716628) = 1062882 * k + 858314 := by
    unfold C
    simp [show (2125764 * k + 1716628) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 858314) = 531441 * k + 429157 := by
    unfold C
    simp [show (1062882 * k + 858314) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 846759) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 846759)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_847079 : ∀ k : Nat,
    iterate (1048576 * k + 847079) 32 = 531441 * k + 429319 ∧
      531441 * k + 429319 < 1048576 * k + 847079 := by
  intro k
  have h1 : C (1048576 * k + 847079) = 3145728 * k + 2541238 := by
    unfold C
    simp [show (1048576 * k + 847079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2541238) = 1572864 * k + 1270619 := by
    unfold C
    simp [show (3145728 * k + 2541238) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1270619) = 4718592 * k + 3811858 := by
    unfold C
    simp [show (1572864 * k + 1270619) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3811858) = 2359296 * k + 1905929 := by
    unfold C
    simp [show (4718592 * k + 3811858) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1905929) = 7077888 * k + 5717788 := by
    unfold C
    simp [show (2359296 * k + 1905929) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5717788) = 3538944 * k + 2858894 := by
    unfold C
    simp [show (7077888 * k + 5717788) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2858894) = 1769472 * k + 1429447 := by
    unfold C
    simp [show (3538944 * k + 2858894) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1429447) = 5308416 * k + 4288342 := by
    unfold C
    simp [show (1769472 * k + 1429447) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4288342) = 2654208 * k + 2144171 := by
    unfold C
    simp [show (5308416 * k + 4288342) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2144171) = 7962624 * k + 6432514 := by
    unfold C
    simp [show (2654208 * k + 2144171) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6432514) = 3981312 * k + 3216257 := by
    unfold C
    simp [show (7962624 * k + 6432514) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3216257) = 11943936 * k + 9648772 := by
    unfold C
    simp [show (3981312 * k + 3216257) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9648772) = 5971968 * k + 4824386 := by
    unfold C
    simp [show (11943936 * k + 9648772) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4824386) = 2985984 * k + 2412193 := by
    unfold C
    simp [show (5971968 * k + 4824386) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2412193) = 8957952 * k + 7236580 := by
    unfold C
    simp [show (2985984 * k + 2412193) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7236580) = 4478976 * k + 3618290 := by
    unfold C
    simp [show (8957952 * k + 7236580) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3618290) = 2239488 * k + 1809145 := by
    unfold C
    simp [show (4478976 * k + 3618290) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1809145) = 6718464 * k + 5427436 := by
    unfold C
    simp [show (2239488 * k + 1809145) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5427436) = 3359232 * k + 2713718 := by
    unfold C
    simp [show (6718464 * k + 5427436) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2713718) = 1679616 * k + 1356859 := by
    unfold C
    simp [show (3359232 * k + 2713718) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1356859) = 5038848 * k + 4070578 := by
    unfold C
    simp [show (1679616 * k + 1356859) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4070578) = 2519424 * k + 2035289 := by
    unfold C
    simp [show (5038848 * k + 4070578) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2035289) = 7558272 * k + 6105868 := by
    unfold C
    simp [show (2519424 * k + 2035289) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6105868) = 3779136 * k + 3052934 := by
    unfold C
    simp [show (7558272 * k + 6105868) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3052934) = 1889568 * k + 1526467 := by
    unfold C
    simp [show (3779136 * k + 3052934) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1526467) = 5668704 * k + 4579402 := by
    unfold C
    simp [show (1889568 * k + 1526467) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4579402) = 2834352 * k + 2289701 := by
    unfold C
    simp [show (5668704 * k + 4579402) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2289701) = 8503056 * k + 6869104 := by
    unfold C
    simp [show (2834352 * k + 2289701) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6869104) = 4251528 * k + 3434552 := by
    unfold C
    simp [show (8503056 * k + 6869104) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3434552) = 2125764 * k + 1717276 := by
    unfold C
    simp [show (4251528 * k + 3434552) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1717276) = 1062882 * k + 858638 := by
    unfold C
    simp [show (2125764 * k + 1717276) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 858638) = 531441 * k + 429319 := by
    unfold C
    simp [show (1062882 * k + 858638) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 847079) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 847079)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_847407 : ∀ k : Nat,
    iterate (1048576 * k + 847407) 32 = 531441 * k + 429485 ∧
      531441 * k + 429485 < 1048576 * k + 847407 := by
  intro k
  have h1 : C (1048576 * k + 847407) = 3145728 * k + 2542222 := by
    unfold C
    simp [show (1048576 * k + 847407) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2542222) = 1572864 * k + 1271111 := by
    unfold C
    simp [show (3145728 * k + 2542222) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1271111) = 4718592 * k + 3813334 := by
    unfold C
    simp [show (1572864 * k + 1271111) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3813334) = 2359296 * k + 1906667 := by
    unfold C
    simp [show (4718592 * k + 3813334) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1906667) = 7077888 * k + 5720002 := by
    unfold C
    simp [show (2359296 * k + 1906667) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5720002) = 3538944 * k + 2860001 := by
    unfold C
    simp [show (7077888 * k + 5720002) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2860001) = 10616832 * k + 8580004 := by
    unfold C
    simp [show (3538944 * k + 2860001) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8580004) = 5308416 * k + 4290002 := by
    unfold C
    simp [show (10616832 * k + 8580004) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4290002) = 2654208 * k + 2145001 := by
    unfold C
    simp [show (5308416 * k + 4290002) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2145001) = 7962624 * k + 6435004 := by
    unfold C
    simp [show (2654208 * k + 2145001) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6435004) = 3981312 * k + 3217502 := by
    unfold C
    simp [show (7962624 * k + 6435004) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3217502) = 1990656 * k + 1608751 := by
    unfold C
    simp [show (3981312 * k + 3217502) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1608751) = 5971968 * k + 4826254 := by
    unfold C
    simp [show (1990656 * k + 1608751) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4826254) = 2985984 * k + 2413127 := by
    unfold C
    simp [show (5971968 * k + 4826254) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2413127) = 8957952 * k + 7239382 := by
    unfold C
    simp [show (2985984 * k + 2413127) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7239382) = 4478976 * k + 3619691 := by
    unfold C
    simp [show (8957952 * k + 7239382) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3619691) = 13436928 * k + 10859074 := by
    unfold C
    simp [show (4478976 * k + 3619691) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10859074) = 6718464 * k + 5429537 := by
    unfold C
    simp [show (13436928 * k + 10859074) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5429537) = 20155392 * k + 16288612 := by
    unfold C
    simp [show (6718464 * k + 5429537) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16288612) = 10077696 * k + 8144306 := by
    unfold C
    simp [show (20155392 * k + 16288612) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8144306) = 5038848 * k + 4072153 := by
    unfold C
    simp [show (10077696 * k + 8144306) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4072153) = 15116544 * k + 12216460 := by
    unfold C
    simp [show (5038848 * k + 4072153) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12216460) = 7558272 * k + 6108230 := by
    unfold C
    simp [show (15116544 * k + 12216460) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6108230) = 3779136 * k + 3054115 := by
    unfold C
    simp [show (7558272 * k + 6108230) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3054115) = 11337408 * k + 9162346 := by
    unfold C
    simp [show (3779136 * k + 3054115) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9162346) = 5668704 * k + 4581173 := by
    unfold C
    simp [show (11337408 * k + 9162346) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4581173) = 17006112 * k + 13743520 := by
    unfold C
    simp [show (5668704 * k + 4581173) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13743520) = 8503056 * k + 6871760 := by
    unfold C
    simp [show (17006112 * k + 13743520) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6871760) = 4251528 * k + 3435880 := by
    unfold C
    simp [show (8503056 * k + 6871760) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3435880) = 2125764 * k + 1717940 := by
    unfold C
    simp [show (4251528 * k + 3435880) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1717940) = 1062882 * k + 858970 := by
    unfold C
    simp [show (2125764 * k + 1717940) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 858970) = 531441 * k + 429485 := by
    unfold C
    simp [show (1062882 * k + 858970) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 847407) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 847407)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_847647 : ∀ k : Nat,
    iterate (1048576 * k + 847647) 32 = 531441 * k + 429607 ∧
      531441 * k + 429607 < 1048576 * k + 847647 := by
  intro k
  have h1 : C (1048576 * k + 847647) = 3145728 * k + 2542942 := by
    unfold C
    simp [show (1048576 * k + 847647) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2542942) = 1572864 * k + 1271471 := by
    unfold C
    simp [show (3145728 * k + 2542942) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1271471) = 4718592 * k + 3814414 := by
    unfold C
    simp [show (1572864 * k + 1271471) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3814414) = 2359296 * k + 1907207 := by
    unfold C
    simp [show (4718592 * k + 3814414) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1907207) = 7077888 * k + 5721622 := by
    unfold C
    simp [show (2359296 * k + 1907207) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5721622) = 3538944 * k + 2860811 := by
    unfold C
    simp [show (7077888 * k + 5721622) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2860811) = 10616832 * k + 8582434 := by
    unfold C
    simp [show (3538944 * k + 2860811) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8582434) = 5308416 * k + 4291217 := by
    unfold C
    simp [show (10616832 * k + 8582434) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4291217) = 15925248 * k + 12873652 := by
    unfold C
    simp [show (5308416 * k + 4291217) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12873652) = 7962624 * k + 6436826 := by
    unfold C
    simp [show (15925248 * k + 12873652) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6436826) = 3981312 * k + 3218413 := by
    unfold C
    simp [show (7962624 * k + 6436826) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3218413) = 11943936 * k + 9655240 := by
    unfold C
    simp [show (3981312 * k + 3218413) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9655240) = 5971968 * k + 4827620 := by
    unfold C
    simp [show (11943936 * k + 9655240) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4827620) = 2985984 * k + 2413810 := by
    unfold C
    simp [show (5971968 * k + 4827620) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2413810) = 1492992 * k + 1206905 := by
    unfold C
    simp [show (2985984 * k + 2413810) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1206905) = 4478976 * k + 3620716 := by
    unfold C
    simp [show (1492992 * k + 1206905) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3620716) = 2239488 * k + 1810358 := by
    unfold C
    simp [show (4478976 * k + 3620716) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1810358) = 1119744 * k + 905179 := by
    unfold C
    simp [show (2239488 * k + 1810358) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 905179) = 3359232 * k + 2715538 := by
    unfold C
    simp [show (1119744 * k + 905179) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2715538) = 1679616 * k + 1357769 := by
    unfold C
    simp [show (3359232 * k + 2715538) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1357769) = 5038848 * k + 4073308 := by
    unfold C
    simp [show (1679616 * k + 1357769) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4073308) = 2519424 * k + 2036654 := by
    unfold C
    simp [show (5038848 * k + 4073308) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2036654) = 1259712 * k + 1018327 := by
    unfold C
    simp [show (2519424 * k + 2036654) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1018327) = 3779136 * k + 3054982 := by
    unfold C
    simp [show (1259712 * k + 1018327) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3054982) = 1889568 * k + 1527491 := by
    unfold C
    simp [show (3779136 * k + 3054982) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1527491) = 5668704 * k + 4582474 := by
    unfold C
    simp [show (1889568 * k + 1527491) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4582474) = 2834352 * k + 2291237 := by
    unfold C
    simp [show (5668704 * k + 4582474) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2291237) = 8503056 * k + 6873712 := by
    unfold C
    simp [show (2834352 * k + 2291237) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6873712) = 4251528 * k + 3436856 := by
    unfold C
    simp [show (8503056 * k + 6873712) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3436856) = 2125764 * k + 1718428 := by
    unfold C
    simp [show (4251528 * k + 3436856) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1718428) = 1062882 * k + 859214 := by
    unfold C
    simp [show (2125764 * k + 1718428) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 859214) = 531441 * k + 429607 := by
    unfold C
    simp [show (1062882 * k + 859214) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 847647) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 847647)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_848123 : ∀ k : Nat,
    iterate (1048576 * k + 848123) 32 = 531441 * k + 429848 ∧
      531441 * k + 429848 < 1048576 * k + 848123 := by
  intro k
  have h1 : C (1048576 * k + 848123) = 3145728 * k + 2544370 := by
    unfold C
    simp [show (1048576 * k + 848123) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2544370) = 1572864 * k + 1272185 := by
    unfold C
    simp [show (3145728 * k + 2544370) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1272185) = 4718592 * k + 3816556 := by
    unfold C
    simp [show (1572864 * k + 1272185) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3816556) = 2359296 * k + 1908278 := by
    unfold C
    simp [show (4718592 * k + 3816556) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1908278) = 1179648 * k + 954139 := by
    unfold C
    simp [show (2359296 * k + 1908278) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 954139) = 3538944 * k + 2862418 := by
    unfold C
    simp [show (1179648 * k + 954139) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2862418) = 1769472 * k + 1431209 := by
    unfold C
    simp [show (3538944 * k + 2862418) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1431209) = 5308416 * k + 4293628 := by
    unfold C
    simp [show (1769472 * k + 1431209) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4293628) = 2654208 * k + 2146814 := by
    unfold C
    simp [show (5308416 * k + 4293628) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2146814) = 1327104 * k + 1073407 := by
    unfold C
    simp [show (2654208 * k + 2146814) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1073407) = 3981312 * k + 3220222 := by
    unfold C
    simp [show (1327104 * k + 1073407) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3220222) = 1990656 * k + 1610111 := by
    unfold C
    simp [show (3981312 * k + 3220222) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1610111) = 5971968 * k + 4830334 := by
    unfold C
    simp [show (1990656 * k + 1610111) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4830334) = 2985984 * k + 2415167 := by
    unfold C
    simp [show (5971968 * k + 4830334) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2415167) = 8957952 * k + 7245502 := by
    unfold C
    simp [show (2985984 * k + 2415167) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7245502) = 4478976 * k + 3622751 := by
    unfold C
    simp [show (8957952 * k + 7245502) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3622751) = 13436928 * k + 10868254 := by
    unfold C
    simp [show (4478976 * k + 3622751) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10868254) = 6718464 * k + 5434127 := by
    unfold C
    simp [show (13436928 * k + 10868254) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5434127) = 20155392 * k + 16302382 := by
    unfold C
    simp [show (6718464 * k + 5434127) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16302382) = 10077696 * k + 8151191 := by
    unfold C
    simp [show (20155392 * k + 16302382) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8151191) = 30233088 * k + 24453574 := by
    unfold C
    simp [show (10077696 * k + 8151191) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 24453574) = 15116544 * k + 12226787 := by
    unfold C
    simp [show (30233088 * k + 24453574) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12226787) = 45349632 * k + 36680362 := by
    unfold C
    simp [show (15116544 * k + 12226787) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 36680362) = 22674816 * k + 18340181 := by
    unfold C
    simp [show (45349632 * k + 36680362) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 18340181) = 68024448 * k + 55020544 := by
    unfold C
    simp [show (22674816 * k + 18340181) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 55020544) = 34012224 * k + 27510272 := by
    unfold C
    simp [show (68024448 * k + 55020544) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 27510272) = 17006112 * k + 13755136 := by
    unfold C
    simp [show (34012224 * k + 27510272) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 13755136) = 8503056 * k + 6877568 := by
    unfold C
    simp [show (17006112 * k + 13755136) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6877568) = 4251528 * k + 3438784 := by
    unfold C
    simp [show (8503056 * k + 6877568) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3438784) = 2125764 * k + 1719392 := by
    unfold C
    simp [show (4251528 * k + 3438784) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1719392) = 1062882 * k + 859696 := by
    unfold C
    simp [show (2125764 * k + 1719392) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 859696) = 531441 * k + 429848 := by
    unfold C
    simp [show (1062882 * k + 859696) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 848123) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 848123)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_848127 : ∀ k : Nat,
    iterate (1048576 * k + 848127) 32 = 531441 * k + 429850 ∧
      531441 * k + 429850 < 1048576 * k + 848127 := by
  intro k
  have h1 : C (1048576 * k + 848127) = 3145728 * k + 2544382 := by
    unfold C
    simp [show (1048576 * k + 848127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2544382) = 1572864 * k + 1272191 := by
    unfold C
    simp [show (3145728 * k + 2544382) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1272191) = 4718592 * k + 3816574 := by
    unfold C
    simp [show (1572864 * k + 1272191) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3816574) = 2359296 * k + 1908287 := by
    unfold C
    simp [show (4718592 * k + 3816574) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1908287) = 7077888 * k + 5724862 := by
    unfold C
    simp [show (2359296 * k + 1908287) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5724862) = 3538944 * k + 2862431 := by
    unfold C
    simp [show (7077888 * k + 5724862) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2862431) = 10616832 * k + 8587294 := by
    unfold C
    simp [show (3538944 * k + 2862431) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8587294) = 5308416 * k + 4293647 := by
    unfold C
    simp [show (10616832 * k + 8587294) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4293647) = 15925248 * k + 12880942 := by
    unfold C
    simp [show (5308416 * k + 4293647) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12880942) = 7962624 * k + 6440471 := by
    unfold C
    simp [show (15925248 * k + 12880942) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6440471) = 23887872 * k + 19321414 := by
    unfold C
    simp [show (7962624 * k + 6440471) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 19321414) = 11943936 * k + 9660707 := by
    unfold C
    simp [show (23887872 * k + 19321414) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9660707) = 35831808 * k + 28982122 := by
    unfold C
    simp [show (11943936 * k + 9660707) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 28982122) = 17915904 * k + 14491061 := by
    unfold C
    simp [show (35831808 * k + 28982122) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 14491061) = 53747712 * k + 43473184 := by
    unfold C
    simp [show (17915904 * k + 14491061) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 43473184) = 26873856 * k + 21736592 := by
    unfold C
    simp [show (53747712 * k + 43473184) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 21736592) = 13436928 * k + 10868296 := by
    unfold C
    simp [show (26873856 * k + 21736592) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10868296) = 6718464 * k + 5434148 := by
    unfold C
    simp [show (13436928 * k + 10868296) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5434148) = 3359232 * k + 2717074 := by
    unfold C
    simp [show (6718464 * k + 5434148) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2717074) = 1679616 * k + 1358537 := by
    unfold C
    simp [show (3359232 * k + 2717074) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1358537) = 5038848 * k + 4075612 := by
    unfold C
    simp [show (1679616 * k + 1358537) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4075612) = 2519424 * k + 2037806 := by
    unfold C
    simp [show (5038848 * k + 4075612) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2037806) = 1259712 * k + 1018903 := by
    unfold C
    simp [show (2519424 * k + 2037806) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1018903) = 3779136 * k + 3056710 := by
    unfold C
    simp [show (1259712 * k + 1018903) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3056710) = 1889568 * k + 1528355 := by
    unfold C
    simp [show (3779136 * k + 3056710) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1528355) = 5668704 * k + 4585066 := by
    unfold C
    simp [show (1889568 * k + 1528355) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4585066) = 2834352 * k + 2292533 := by
    unfold C
    simp [show (5668704 * k + 4585066) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2292533) = 8503056 * k + 6877600 := by
    unfold C
    simp [show (2834352 * k + 2292533) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6877600) = 4251528 * k + 3438800 := by
    unfold C
    simp [show (8503056 * k + 6877600) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3438800) = 2125764 * k + 1719400 := by
    unfold C
    simp [show (4251528 * k + 3438800) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1719400) = 1062882 * k + 859700 := by
    unfold C
    simp [show (2125764 * k + 1719400) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 859700) = 531441 * k + 429850 := by
    unfold C
    simp [show (1062882 * k + 859700) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 848127) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 848127)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_848287 : ∀ k : Nat,
    iterate (1048576 * k + 848287) 32 = 531441 * k + 429931 ∧
      531441 * k + 429931 < 1048576 * k + 848287 := by
  intro k
  have h1 : C (1048576 * k + 848287) = 3145728 * k + 2544862 := by
    unfold C
    simp [show (1048576 * k + 848287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2544862) = 1572864 * k + 1272431 := by
    unfold C
    simp [show (3145728 * k + 2544862) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1272431) = 4718592 * k + 3817294 := by
    unfold C
    simp [show (1572864 * k + 1272431) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3817294) = 2359296 * k + 1908647 := by
    unfold C
    simp [show (4718592 * k + 3817294) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1908647) = 7077888 * k + 5725942 := by
    unfold C
    simp [show (2359296 * k + 1908647) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5725942) = 3538944 * k + 2862971 := by
    unfold C
    simp [show (7077888 * k + 5725942) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2862971) = 10616832 * k + 8588914 := by
    unfold C
    simp [show (3538944 * k + 2862971) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8588914) = 5308416 * k + 4294457 := by
    unfold C
    simp [show (10616832 * k + 8588914) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4294457) = 15925248 * k + 12883372 := by
    unfold C
    simp [show (5308416 * k + 4294457) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12883372) = 7962624 * k + 6441686 := by
    unfold C
    simp [show (15925248 * k + 12883372) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6441686) = 3981312 * k + 3220843 := by
    unfold C
    simp [show (7962624 * k + 6441686) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3220843) = 11943936 * k + 9662530 := by
    unfold C
    simp [show (3981312 * k + 3220843) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9662530) = 5971968 * k + 4831265 := by
    unfold C
    simp [show (11943936 * k + 9662530) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4831265) = 17915904 * k + 14493796 := by
    unfold C
    simp [show (5971968 * k + 4831265) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14493796) = 8957952 * k + 7246898 := by
    unfold C
    simp [show (17915904 * k + 14493796) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7246898) = 4478976 * k + 3623449 := by
    unfold C
    simp [show (8957952 * k + 7246898) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3623449) = 13436928 * k + 10870348 := by
    unfold C
    simp [show (4478976 * k + 3623449) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10870348) = 6718464 * k + 5435174 := by
    unfold C
    simp [show (13436928 * k + 10870348) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5435174) = 3359232 * k + 2717587 := by
    unfold C
    simp [show (6718464 * k + 5435174) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2717587) = 10077696 * k + 8152762 := by
    unfold C
    simp [show (3359232 * k + 2717587) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8152762) = 5038848 * k + 4076381 := by
    unfold C
    simp [show (10077696 * k + 8152762) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4076381) = 15116544 * k + 12229144 := by
    unfold C
    simp [show (5038848 * k + 4076381) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12229144) = 7558272 * k + 6114572 := by
    unfold C
    simp [show (15116544 * k + 12229144) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6114572) = 3779136 * k + 3057286 := by
    unfold C
    simp [show (7558272 * k + 6114572) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3057286) = 1889568 * k + 1528643 := by
    unfold C
    simp [show (3779136 * k + 3057286) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1528643) = 5668704 * k + 4585930 := by
    unfold C
    simp [show (1889568 * k + 1528643) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4585930) = 2834352 * k + 2292965 := by
    unfold C
    simp [show (5668704 * k + 4585930) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2292965) = 8503056 * k + 6878896 := by
    unfold C
    simp [show (2834352 * k + 2292965) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6878896) = 4251528 * k + 3439448 := by
    unfold C
    simp [show (8503056 * k + 6878896) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3439448) = 2125764 * k + 1719724 := by
    unfold C
    simp [show (4251528 * k + 3439448) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1719724) = 1062882 * k + 859862 := by
    unfold C
    simp [show (2125764 * k + 1719724) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 859862) = 531441 * k + 429931 := by
    unfold C
    simp [show (1062882 * k + 859862) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 848287) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 848287)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_848743 : ∀ k : Nat,
    iterate (1048576 * k + 848743) 32 = 531441 * k + 430162 ∧
      531441 * k + 430162 < 1048576 * k + 848743 := by
  intro k
  have h1 : C (1048576 * k + 848743) = 3145728 * k + 2546230 := by
    unfold C
    simp [show (1048576 * k + 848743) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2546230) = 1572864 * k + 1273115 := by
    unfold C
    simp [show (3145728 * k + 2546230) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1273115) = 4718592 * k + 3819346 := by
    unfold C
    simp [show (1572864 * k + 1273115) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3819346) = 2359296 * k + 1909673 := by
    unfold C
    simp [show (4718592 * k + 3819346) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1909673) = 7077888 * k + 5729020 := by
    unfold C
    simp [show (2359296 * k + 1909673) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5729020) = 3538944 * k + 2864510 := by
    unfold C
    simp [show (7077888 * k + 5729020) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2864510) = 1769472 * k + 1432255 := by
    unfold C
    simp [show (3538944 * k + 2864510) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1432255) = 5308416 * k + 4296766 := by
    unfold C
    simp [show (1769472 * k + 1432255) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4296766) = 2654208 * k + 2148383 := by
    unfold C
    simp [show (5308416 * k + 4296766) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2148383) = 7962624 * k + 6445150 := by
    unfold C
    simp [show (2654208 * k + 2148383) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6445150) = 3981312 * k + 3222575 := by
    unfold C
    simp [show (7962624 * k + 6445150) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3222575) = 11943936 * k + 9667726 := by
    unfold C
    simp [show (3981312 * k + 3222575) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9667726) = 5971968 * k + 4833863 := by
    unfold C
    simp [show (11943936 * k + 9667726) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4833863) = 17915904 * k + 14501590 := by
    unfold C
    simp [show (5971968 * k + 4833863) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14501590) = 8957952 * k + 7250795 := by
    unfold C
    simp [show (17915904 * k + 14501590) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7250795) = 26873856 * k + 21752386 := by
    unfold C
    simp [show (8957952 * k + 7250795) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21752386) = 13436928 * k + 10876193 := by
    unfold C
    simp [show (26873856 * k + 21752386) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10876193) = 40310784 * k + 32628580 := by
    unfold C
    simp [show (13436928 * k + 10876193) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 32628580) = 20155392 * k + 16314290 := by
    unfold C
    simp [show (40310784 * k + 32628580) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 16314290) = 10077696 * k + 8157145 := by
    unfold C
    simp [show (20155392 * k + 16314290) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8157145) = 30233088 * k + 24471436 := by
    unfold C
    simp [show (10077696 * k + 8157145) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 24471436) = 15116544 * k + 12235718 := by
    unfold C
    simp [show (30233088 * k + 24471436) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12235718) = 7558272 * k + 6117859 := by
    unfold C
    simp [show (15116544 * k + 12235718) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6117859) = 22674816 * k + 18353578 := by
    unfold C
    simp [show (7558272 * k + 6117859) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 18353578) = 11337408 * k + 9176789 := by
    unfold C
    simp [show (22674816 * k + 18353578) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9176789) = 34012224 * k + 27530368 := by
    unfold C
    simp [show (11337408 * k + 9176789) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 27530368) = 17006112 * k + 13765184 := by
    unfold C
    simp [show (34012224 * k + 27530368) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 13765184) = 8503056 * k + 6882592 := by
    unfold C
    simp [show (17006112 * k + 13765184) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6882592) = 4251528 * k + 3441296 := by
    unfold C
    simp [show (8503056 * k + 6882592) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3441296) = 2125764 * k + 1720648 := by
    unfold C
    simp [show (4251528 * k + 3441296) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1720648) = 1062882 * k + 860324 := by
    unfold C
    simp [show (2125764 * k + 1720648) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 860324) = 531441 * k + 430162 := by
    unfold C
    simp [show (1062882 * k + 860324) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 848743) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 848743)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_848863 : ∀ k : Nat,
    iterate (1048576 * k + 848863) 32 = 531441 * k + 430223 ∧
      531441 * k + 430223 < 1048576 * k + 848863 := by
  intro k
  have h1 : C (1048576 * k + 848863) = 3145728 * k + 2546590 := by
    unfold C
    simp [show (1048576 * k + 848863) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2546590) = 1572864 * k + 1273295 := by
    unfold C
    simp [show (3145728 * k + 2546590) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1273295) = 4718592 * k + 3819886 := by
    unfold C
    simp [show (1572864 * k + 1273295) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3819886) = 2359296 * k + 1909943 := by
    unfold C
    simp [show (4718592 * k + 3819886) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1909943) = 7077888 * k + 5729830 := by
    unfold C
    simp [show (2359296 * k + 1909943) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5729830) = 3538944 * k + 2864915 := by
    unfold C
    simp [show (7077888 * k + 5729830) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2864915) = 10616832 * k + 8594746 := by
    unfold C
    simp [show (3538944 * k + 2864915) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8594746) = 5308416 * k + 4297373 := by
    unfold C
    simp [show (10616832 * k + 8594746) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4297373) = 15925248 * k + 12892120 := by
    unfold C
    simp [show (5308416 * k + 4297373) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12892120) = 7962624 * k + 6446060 := by
    unfold C
    simp [show (15925248 * k + 12892120) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6446060) = 3981312 * k + 3223030 := by
    unfold C
    simp [show (7962624 * k + 6446060) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3223030) = 1990656 * k + 1611515 := by
    unfold C
    simp [show (3981312 * k + 3223030) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1611515) = 5971968 * k + 4834546 := by
    unfold C
    simp [show (1990656 * k + 1611515) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4834546) = 2985984 * k + 2417273 := by
    unfold C
    simp [show (5971968 * k + 4834546) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2417273) = 8957952 * k + 7251820 := by
    unfold C
    simp [show (2985984 * k + 2417273) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7251820) = 4478976 * k + 3625910 := by
    unfold C
    simp [show (8957952 * k + 7251820) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3625910) = 2239488 * k + 1812955 := by
    unfold C
    simp [show (4478976 * k + 3625910) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1812955) = 6718464 * k + 5438866 := by
    unfold C
    simp [show (2239488 * k + 1812955) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5438866) = 3359232 * k + 2719433 := by
    unfold C
    simp [show (6718464 * k + 5438866) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2719433) = 10077696 * k + 8158300 := by
    unfold C
    simp [show (3359232 * k + 2719433) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8158300) = 5038848 * k + 4079150 := by
    unfold C
    simp [show (10077696 * k + 8158300) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4079150) = 2519424 * k + 2039575 := by
    unfold C
    simp [show (5038848 * k + 4079150) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2039575) = 7558272 * k + 6118726 := by
    unfold C
    simp [show (2519424 * k + 2039575) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6118726) = 3779136 * k + 3059363 := by
    unfold C
    simp [show (7558272 * k + 6118726) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3059363) = 11337408 * k + 9178090 := by
    unfold C
    simp [show (3779136 * k + 3059363) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9178090) = 5668704 * k + 4589045 := by
    unfold C
    simp [show (11337408 * k + 9178090) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4589045) = 17006112 * k + 13767136 := by
    unfold C
    simp [show (5668704 * k + 4589045) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13767136) = 8503056 * k + 6883568 := by
    unfold C
    simp [show (17006112 * k + 13767136) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6883568) = 4251528 * k + 3441784 := by
    unfold C
    simp [show (8503056 * k + 6883568) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3441784) = 2125764 * k + 1720892 := by
    unfold C
    simp [show (4251528 * k + 3441784) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1720892) = 1062882 * k + 860446 := by
    unfold C
    simp [show (2125764 * k + 1720892) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 860446) = 531441 * k + 430223 := by
    unfold C
    simp [show (1062882 * k + 860446) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 848863) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 848863)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_848987 : ∀ k : Nat,
    iterate (1048576 * k + 848987) 32 = 531441 * k + 430286 ∧
      531441 * k + 430286 < 1048576 * k + 848987 := by
  intro k
  have h1 : C (1048576 * k + 848987) = 3145728 * k + 2546962 := by
    unfold C
    simp [show (1048576 * k + 848987) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2546962) = 1572864 * k + 1273481 := by
    unfold C
    simp [show (3145728 * k + 2546962) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1273481) = 4718592 * k + 3820444 := by
    unfold C
    simp [show (1572864 * k + 1273481) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3820444) = 2359296 * k + 1910222 := by
    unfold C
    simp [show (4718592 * k + 3820444) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1910222) = 1179648 * k + 955111 := by
    unfold C
    simp [show (2359296 * k + 1910222) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 955111) = 3538944 * k + 2865334 := by
    unfold C
    simp [show (1179648 * k + 955111) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2865334) = 1769472 * k + 1432667 := by
    unfold C
    simp [show (3538944 * k + 2865334) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1432667) = 5308416 * k + 4298002 := by
    unfold C
    simp [show (1769472 * k + 1432667) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4298002) = 2654208 * k + 2149001 := by
    unfold C
    simp [show (5308416 * k + 4298002) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2149001) = 7962624 * k + 6447004 := by
    unfold C
    simp [show (2654208 * k + 2149001) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6447004) = 3981312 * k + 3223502 := by
    unfold C
    simp [show (7962624 * k + 6447004) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3223502) = 1990656 * k + 1611751 := by
    unfold C
    simp [show (3981312 * k + 3223502) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1611751) = 5971968 * k + 4835254 := by
    unfold C
    simp [show (1990656 * k + 1611751) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4835254) = 2985984 * k + 2417627 := by
    unfold C
    simp [show (5971968 * k + 4835254) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2417627) = 8957952 * k + 7252882 := by
    unfold C
    simp [show (2985984 * k + 2417627) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7252882) = 4478976 * k + 3626441 := by
    unfold C
    simp [show (8957952 * k + 7252882) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3626441) = 13436928 * k + 10879324 := by
    unfold C
    simp [show (4478976 * k + 3626441) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10879324) = 6718464 * k + 5439662 := by
    unfold C
    simp [show (13436928 * k + 10879324) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5439662) = 3359232 * k + 2719831 := by
    unfold C
    simp [show (6718464 * k + 5439662) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2719831) = 10077696 * k + 8159494 := by
    unfold C
    simp [show (3359232 * k + 2719831) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8159494) = 5038848 * k + 4079747 := by
    unfold C
    simp [show (10077696 * k + 8159494) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4079747) = 15116544 * k + 12239242 := by
    unfold C
    simp [show (5038848 * k + 4079747) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12239242) = 7558272 * k + 6119621 := by
    unfold C
    simp [show (15116544 * k + 12239242) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6119621) = 22674816 * k + 18358864 := by
    unfold C
    simp [show (7558272 * k + 6119621) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 18358864) = 11337408 * k + 9179432 := by
    unfold C
    simp [show (22674816 * k + 18358864) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9179432) = 5668704 * k + 4589716 := by
    unfold C
    simp [show (11337408 * k + 9179432) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4589716) = 2834352 * k + 2294858 := by
    unfold C
    simp [show (5668704 * k + 4589716) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2294858) = 1417176 * k + 1147429 := by
    unfold C
    simp [show (2834352 * k + 2294858) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1147429) = 4251528 * k + 3442288 := by
    unfold C
    simp [show (1417176 * k + 1147429) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3442288) = 2125764 * k + 1721144 := by
    unfold C
    simp [show (4251528 * k + 3442288) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1721144) = 1062882 * k + 860572 := by
    unfold C
    simp [show (2125764 * k + 1721144) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 860572) = 531441 * k + 430286 := by
    unfold C
    simp [show (1062882 * k + 860572) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 848987) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 848987)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_849023 : ∀ k : Nat,
    iterate (1048576 * k + 849023) 32 = 531441 * k + 430304 ∧
      531441 * k + 430304 < 1048576 * k + 849023 := by
  intro k
  have h1 : C (1048576 * k + 849023) = 3145728 * k + 2547070 := by
    unfold C
    simp [show (1048576 * k + 849023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2547070) = 1572864 * k + 1273535 := by
    unfold C
    simp [show (3145728 * k + 2547070) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1273535) = 4718592 * k + 3820606 := by
    unfold C
    simp [show (1572864 * k + 1273535) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3820606) = 2359296 * k + 1910303 := by
    unfold C
    simp [show (4718592 * k + 3820606) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1910303) = 7077888 * k + 5730910 := by
    unfold C
    simp [show (2359296 * k + 1910303) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5730910) = 3538944 * k + 2865455 := by
    unfold C
    simp [show (7077888 * k + 5730910) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2865455) = 10616832 * k + 8596366 := by
    unfold C
    simp [show (3538944 * k + 2865455) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8596366) = 5308416 * k + 4298183 := by
    unfold C
    simp [show (10616832 * k + 8596366) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4298183) = 15925248 * k + 12894550 := by
    unfold C
    simp [show (5308416 * k + 4298183) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12894550) = 7962624 * k + 6447275 := by
    unfold C
    simp [show (15925248 * k + 12894550) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6447275) = 23887872 * k + 19341826 := by
    unfold C
    simp [show (7962624 * k + 6447275) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 19341826) = 11943936 * k + 9670913 := by
    unfold C
    simp [show (23887872 * k + 19341826) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9670913) = 35831808 * k + 29012740 := by
    unfold C
    simp [show (11943936 * k + 9670913) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 29012740) = 17915904 * k + 14506370 := by
    unfold C
    simp [show (35831808 * k + 29012740) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 14506370) = 8957952 * k + 7253185 := by
    unfold C
    simp [show (17915904 * k + 14506370) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7253185) = 26873856 * k + 21759556 := by
    unfold C
    simp [show (8957952 * k + 7253185) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21759556) = 13436928 * k + 10879778 := by
    unfold C
    simp [show (26873856 * k + 21759556) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10879778) = 6718464 * k + 5439889 := by
    unfold C
    simp [show (13436928 * k + 10879778) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5439889) = 20155392 * k + 16319668 := by
    unfold C
    simp [show (6718464 * k + 5439889) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16319668) = 10077696 * k + 8159834 := by
    unfold C
    simp [show (20155392 * k + 16319668) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8159834) = 5038848 * k + 4079917 := by
    unfold C
    simp [show (10077696 * k + 8159834) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4079917) = 15116544 * k + 12239752 := by
    unfold C
    simp [show (5038848 * k + 4079917) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12239752) = 7558272 * k + 6119876 := by
    unfold C
    simp [show (15116544 * k + 12239752) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6119876) = 3779136 * k + 3059938 := by
    unfold C
    simp [show (7558272 * k + 6119876) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3059938) = 1889568 * k + 1529969 := by
    unfold C
    simp [show (3779136 * k + 3059938) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1529969) = 5668704 * k + 4589908 := by
    unfold C
    simp [show (1889568 * k + 1529969) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4589908) = 2834352 * k + 2294954 := by
    unfold C
    simp [show (5668704 * k + 4589908) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2294954) = 1417176 * k + 1147477 := by
    unfold C
    simp [show (2834352 * k + 2294954) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1147477) = 4251528 * k + 3442432 := by
    unfold C
    simp [show (1417176 * k + 1147477) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3442432) = 2125764 * k + 1721216 := by
    unfold C
    simp [show (4251528 * k + 3442432) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1721216) = 1062882 * k + 860608 := by
    unfold C
    simp [show (2125764 * k + 1721216) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 860608) = 531441 * k + 430304 := by
    unfold C
    simp [show (1062882 * k + 860608) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 849023) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 849023)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_850047 : ∀ k : Nat,
    iterate (1048576 * k + 850047) 32 = 531441 * k + 430823 ∧
      531441 * k + 430823 < 1048576 * k + 850047 := by
  intro k
  have h1 : C (1048576 * k + 850047) = 3145728 * k + 2550142 := by
    unfold C
    simp [show (1048576 * k + 850047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2550142) = 1572864 * k + 1275071 := by
    unfold C
    simp [show (3145728 * k + 2550142) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1275071) = 4718592 * k + 3825214 := by
    unfold C
    simp [show (1572864 * k + 1275071) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3825214) = 2359296 * k + 1912607 := by
    unfold C
    simp [show (4718592 * k + 3825214) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1912607) = 7077888 * k + 5737822 := by
    unfold C
    simp [show (2359296 * k + 1912607) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5737822) = 3538944 * k + 2868911 := by
    unfold C
    simp [show (7077888 * k + 5737822) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2868911) = 10616832 * k + 8606734 := by
    unfold C
    simp [show (3538944 * k + 2868911) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8606734) = 5308416 * k + 4303367 := by
    unfold C
    simp [show (10616832 * k + 8606734) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4303367) = 15925248 * k + 12910102 := by
    unfold C
    simp [show (5308416 * k + 4303367) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12910102) = 7962624 * k + 6455051 := by
    unfold C
    simp [show (15925248 * k + 12910102) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6455051) = 23887872 * k + 19365154 := by
    unfold C
    simp [show (7962624 * k + 6455051) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 19365154) = 11943936 * k + 9682577 := by
    unfold C
    simp [show (23887872 * k + 19365154) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9682577) = 35831808 * k + 29047732 := by
    unfold C
    simp [show (11943936 * k + 9682577) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 29047732) = 17915904 * k + 14523866 := by
    unfold C
    simp [show (35831808 * k + 29047732) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 14523866) = 8957952 * k + 7261933 := by
    unfold C
    simp [show (17915904 * k + 14523866) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7261933) = 26873856 * k + 21785800 := by
    unfold C
    simp [show (8957952 * k + 7261933) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21785800) = 13436928 * k + 10892900 := by
    unfold C
    simp [show (26873856 * k + 21785800) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10892900) = 6718464 * k + 5446450 := by
    unfold C
    simp [show (13436928 * k + 10892900) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5446450) = 3359232 * k + 2723225 := by
    unfold C
    simp [show (6718464 * k + 5446450) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2723225) = 10077696 * k + 8169676 := by
    unfold C
    simp [show (3359232 * k + 2723225) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8169676) = 5038848 * k + 4084838 := by
    unfold C
    simp [show (10077696 * k + 8169676) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4084838) = 2519424 * k + 2042419 := by
    unfold C
    simp [show (5038848 * k + 4084838) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2042419) = 7558272 * k + 6127258 := by
    unfold C
    simp [show (2519424 * k + 2042419) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6127258) = 3779136 * k + 3063629 := by
    unfold C
    simp [show (7558272 * k + 6127258) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3063629) = 11337408 * k + 9190888 := by
    unfold C
    simp [show (3779136 * k + 3063629) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9190888) = 5668704 * k + 4595444 := by
    unfold C
    simp [show (11337408 * k + 9190888) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4595444) = 2834352 * k + 2297722 := by
    unfold C
    simp [show (5668704 * k + 4595444) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2297722) = 1417176 * k + 1148861 := by
    unfold C
    simp [show (2834352 * k + 2297722) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1148861) = 4251528 * k + 3446584 := by
    unfold C
    simp [show (1417176 * k + 1148861) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3446584) = 2125764 * k + 1723292 := by
    unfold C
    simp [show (4251528 * k + 3446584) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1723292) = 1062882 * k + 861646 := by
    unfold C
    simp [show (2125764 * k + 1723292) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 861646) = 531441 * k + 430823 := by
    unfold C
    simp [show (1062882 * k + 861646) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 850047) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 850047)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_851483 : ∀ k : Nat,
    iterate (1048576 * k + 851483) 32 = 531441 * k + 431551 ∧
      531441 * k + 431551 < 1048576 * k + 851483 := by
  intro k
  have h1 : C (1048576 * k + 851483) = 3145728 * k + 2554450 := by
    unfold C
    simp [show (1048576 * k + 851483) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2554450) = 1572864 * k + 1277225 := by
    unfold C
    simp [show (3145728 * k + 2554450) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1277225) = 4718592 * k + 3831676 := by
    unfold C
    simp [show (1572864 * k + 1277225) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3831676) = 2359296 * k + 1915838 := by
    unfold C
    simp [show (4718592 * k + 3831676) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1915838) = 1179648 * k + 957919 := by
    unfold C
    simp [show (2359296 * k + 1915838) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 957919) = 3538944 * k + 2873758 := by
    unfold C
    simp [show (1179648 * k + 957919) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2873758) = 1769472 * k + 1436879 := by
    unfold C
    simp [show (3538944 * k + 2873758) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1436879) = 5308416 * k + 4310638 := by
    unfold C
    simp [show (1769472 * k + 1436879) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4310638) = 2654208 * k + 2155319 := by
    unfold C
    simp [show (5308416 * k + 4310638) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2155319) = 7962624 * k + 6465958 := by
    unfold C
    simp [show (2654208 * k + 2155319) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6465958) = 3981312 * k + 3232979 := by
    unfold C
    simp [show (7962624 * k + 6465958) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3232979) = 11943936 * k + 9698938 := by
    unfold C
    simp [show (3981312 * k + 3232979) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9698938) = 5971968 * k + 4849469 := by
    unfold C
    simp [show (11943936 * k + 9698938) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4849469) = 17915904 * k + 14548408 := by
    unfold C
    simp [show (5971968 * k + 4849469) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14548408) = 8957952 * k + 7274204 := by
    unfold C
    simp [show (17915904 * k + 14548408) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7274204) = 4478976 * k + 3637102 := by
    unfold C
    simp [show (8957952 * k + 7274204) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3637102) = 2239488 * k + 1818551 := by
    unfold C
    simp [show (4478976 * k + 3637102) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1818551) = 6718464 * k + 5455654 := by
    unfold C
    simp [show (2239488 * k + 1818551) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5455654) = 3359232 * k + 2727827 := by
    unfold C
    simp [show (6718464 * k + 5455654) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2727827) = 10077696 * k + 8183482 := by
    unfold C
    simp [show (3359232 * k + 2727827) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8183482) = 5038848 * k + 4091741 := by
    unfold C
    simp [show (10077696 * k + 8183482) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4091741) = 15116544 * k + 12275224 := by
    unfold C
    simp [show (5038848 * k + 4091741) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12275224) = 7558272 * k + 6137612 := by
    unfold C
    simp [show (15116544 * k + 12275224) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6137612) = 3779136 * k + 3068806 := by
    unfold C
    simp [show (7558272 * k + 6137612) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3068806) = 1889568 * k + 1534403 := by
    unfold C
    simp [show (3779136 * k + 3068806) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1534403) = 5668704 * k + 4603210 := by
    unfold C
    simp [show (1889568 * k + 1534403) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4603210) = 2834352 * k + 2301605 := by
    unfold C
    simp [show (5668704 * k + 4603210) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2301605) = 8503056 * k + 6904816 := by
    unfold C
    simp [show (2834352 * k + 2301605) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6904816) = 4251528 * k + 3452408 := by
    unfold C
    simp [show (8503056 * k + 6904816) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3452408) = 2125764 * k + 1726204 := by
    unfold C
    simp [show (4251528 * k + 3452408) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1726204) = 1062882 * k + 863102 := by
    unfold C
    simp [show (2125764 * k + 1726204) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 863102) = 531441 * k + 431551 := by
    unfold C
    simp [show (1062882 * k + 863102) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 851483) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 851483)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard108
