import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard101

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_786715 : ∀ k : Nat,
    iterate (1048576 * k + 786715) 32 = 531441 * k + 398725 ∧
      531441 * k + 398725 < 1048576 * k + 786715 := by
  intro k
  have h1 : C (1048576 * k + 786715) = 3145728 * k + 2360146 := by
    unfold C
    simp [show (1048576 * k + 786715) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2360146) = 1572864 * k + 1180073 := by
    unfold C
    simp [show (3145728 * k + 2360146) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1180073) = 4718592 * k + 3540220 := by
    unfold C
    simp [show (1572864 * k + 1180073) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3540220) = 2359296 * k + 1770110 := by
    unfold C
    simp [show (4718592 * k + 3540220) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1770110) = 1179648 * k + 885055 := by
    unfold C
    simp [show (2359296 * k + 1770110) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 885055) = 3538944 * k + 2655166 := by
    unfold C
    simp [show (1179648 * k + 885055) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2655166) = 1769472 * k + 1327583 := by
    unfold C
    simp [show (3538944 * k + 2655166) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1327583) = 5308416 * k + 3982750 := by
    unfold C
    simp [show (1769472 * k + 1327583) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3982750) = 2654208 * k + 1991375 := by
    unfold C
    simp [show (5308416 * k + 3982750) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1991375) = 7962624 * k + 5974126 := by
    unfold C
    simp [show (2654208 * k + 1991375) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5974126) = 3981312 * k + 2987063 := by
    unfold C
    simp [show (7962624 * k + 5974126) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2987063) = 11943936 * k + 8961190 := by
    unfold C
    simp [show (3981312 * k + 2987063) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8961190) = 5971968 * k + 4480595 := by
    unfold C
    simp [show (11943936 * k + 8961190) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4480595) = 17915904 * k + 13441786 := by
    unfold C
    simp [show (5971968 * k + 4480595) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13441786) = 8957952 * k + 6720893 := by
    unfold C
    simp [show (17915904 * k + 13441786) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6720893) = 26873856 * k + 20162680 := by
    unfold C
    simp [show (8957952 * k + 6720893) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 20162680) = 13436928 * k + 10081340 := by
    unfold C
    simp [show (26873856 * k + 20162680) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10081340) = 6718464 * k + 5040670 := by
    unfold C
    simp [show (13436928 * k + 10081340) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5040670) = 3359232 * k + 2520335 := by
    unfold C
    simp [show (6718464 * k + 5040670) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2520335) = 10077696 * k + 7561006 := by
    unfold C
    simp [show (3359232 * k + 2520335) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7561006) = 5038848 * k + 3780503 := by
    unfold C
    simp [show (10077696 * k + 7561006) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3780503) = 15116544 * k + 11341510 := by
    unfold C
    simp [show (5038848 * k + 3780503) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11341510) = 7558272 * k + 5670755 := by
    unfold C
    simp [show (15116544 * k + 11341510) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5670755) = 22674816 * k + 17012266 := by
    unfold C
    simp [show (7558272 * k + 5670755) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 17012266) = 11337408 * k + 8506133 := by
    unfold C
    simp [show (22674816 * k + 17012266) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8506133) = 34012224 * k + 25518400 := by
    unfold C
    simp [show (11337408 * k + 8506133) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 25518400) = 17006112 * k + 12759200 := by
    unfold C
    simp [show (34012224 * k + 25518400) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 12759200) = 8503056 * k + 6379600 := by
    unfold C
    simp [show (17006112 * k + 12759200) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6379600) = 4251528 * k + 3189800 := by
    unfold C
    simp [show (8503056 * k + 6379600) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3189800) = 2125764 * k + 1594900 := by
    unfold C
    simp [show (4251528 * k + 3189800) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1594900) = 1062882 * k + 797450 := by
    unfold C
    simp [show (2125764 * k + 1594900) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 797450) = 531441 * k + 398725 := by
    unfold C
    simp [show (1062882 * k + 797450) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 786715) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 786715)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_787439 : ∀ k : Nat,
    iterate (1048576 * k + 787439) 32 = 531441 * k + 399092 ∧
      531441 * k + 399092 < 1048576 * k + 787439 := by
  intro k
  have h1 : C (1048576 * k + 787439) = 3145728 * k + 2362318 := by
    unfold C
    simp [show (1048576 * k + 787439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2362318) = 1572864 * k + 1181159 := by
    unfold C
    simp [show (3145728 * k + 2362318) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1181159) = 4718592 * k + 3543478 := by
    unfold C
    simp [show (1572864 * k + 1181159) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3543478) = 2359296 * k + 1771739 := by
    unfold C
    simp [show (4718592 * k + 3543478) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1771739) = 7077888 * k + 5315218 := by
    unfold C
    simp [show (2359296 * k + 1771739) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5315218) = 3538944 * k + 2657609 := by
    unfold C
    simp [show (7077888 * k + 5315218) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2657609) = 10616832 * k + 7972828 := by
    unfold C
    simp [show (3538944 * k + 2657609) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7972828) = 5308416 * k + 3986414 := by
    unfold C
    simp [show (10616832 * k + 7972828) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3986414) = 2654208 * k + 1993207 := by
    unfold C
    simp [show (5308416 * k + 3986414) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1993207) = 7962624 * k + 5979622 := by
    unfold C
    simp [show (2654208 * k + 1993207) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5979622) = 3981312 * k + 2989811 := by
    unfold C
    simp [show (7962624 * k + 5979622) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2989811) = 11943936 * k + 8969434 := by
    unfold C
    simp [show (3981312 * k + 2989811) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8969434) = 5971968 * k + 4484717 := by
    unfold C
    simp [show (11943936 * k + 8969434) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4484717) = 17915904 * k + 13454152 := by
    unfold C
    simp [show (5971968 * k + 4484717) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13454152) = 8957952 * k + 6727076 := by
    unfold C
    simp [show (17915904 * k + 13454152) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6727076) = 4478976 * k + 3363538 := by
    unfold C
    simp [show (8957952 * k + 6727076) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3363538) = 2239488 * k + 1681769 := by
    unfold C
    simp [show (4478976 * k + 3363538) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1681769) = 6718464 * k + 5045308 := by
    unfold C
    simp [show (2239488 * k + 1681769) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5045308) = 3359232 * k + 2522654 := by
    unfold C
    simp [show (6718464 * k + 5045308) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2522654) = 1679616 * k + 1261327 := by
    unfold C
    simp [show (3359232 * k + 2522654) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1261327) = 5038848 * k + 3783982 := by
    unfold C
    simp [show (1679616 * k + 1261327) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3783982) = 2519424 * k + 1891991 := by
    unfold C
    simp [show (5038848 * k + 3783982) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1891991) = 7558272 * k + 5675974 := by
    unfold C
    simp [show (2519424 * k + 1891991) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5675974) = 3779136 * k + 2837987 := by
    unfold C
    simp [show (7558272 * k + 5675974) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2837987) = 11337408 * k + 8513962 := by
    unfold C
    simp [show (3779136 * k + 2837987) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8513962) = 5668704 * k + 4256981 := by
    unfold C
    simp [show (11337408 * k + 8513962) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4256981) = 17006112 * k + 12770944 := by
    unfold C
    simp [show (5668704 * k + 4256981) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 12770944) = 8503056 * k + 6385472 := by
    unfold C
    simp [show (17006112 * k + 12770944) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6385472) = 4251528 * k + 3192736 := by
    unfold C
    simp [show (8503056 * k + 6385472) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3192736) = 2125764 * k + 1596368 := by
    unfold C
    simp [show (4251528 * k + 3192736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1596368) = 1062882 * k + 798184 := by
    unfold C
    simp [show (2125764 * k + 1596368) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 798184) = 531441 * k + 399092 := by
    unfold C
    simp [show (1062882 * k + 798184) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 787439) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 787439)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_788351 : ∀ k : Nat,
    iterate (1048576 * k + 788351) 32 = 531441 * k + 399554 ∧
      531441 * k + 399554 < 1048576 * k + 788351 := by
  intro k
  have h1 : C (1048576 * k + 788351) = 3145728 * k + 2365054 := by
    unfold C
    simp [show (1048576 * k + 788351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2365054) = 1572864 * k + 1182527 := by
    unfold C
    simp [show (3145728 * k + 2365054) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1182527) = 4718592 * k + 3547582 := by
    unfold C
    simp [show (1572864 * k + 1182527) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3547582) = 2359296 * k + 1773791 := by
    unfold C
    simp [show (4718592 * k + 3547582) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1773791) = 7077888 * k + 5321374 := by
    unfold C
    simp [show (2359296 * k + 1773791) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5321374) = 3538944 * k + 2660687 := by
    unfold C
    simp [show (7077888 * k + 5321374) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2660687) = 10616832 * k + 7982062 := by
    unfold C
    simp [show (3538944 * k + 2660687) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7982062) = 5308416 * k + 3991031 := by
    unfold C
    simp [show (10616832 * k + 7982062) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3991031) = 15925248 * k + 11973094 := by
    unfold C
    simp [show (5308416 * k + 3991031) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11973094) = 7962624 * k + 5986547 := by
    unfold C
    simp [show (15925248 * k + 11973094) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5986547) = 23887872 * k + 17959642 := by
    unfold C
    simp [show (7962624 * k + 5986547) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 17959642) = 11943936 * k + 8979821 := by
    unfold C
    simp [show (23887872 * k + 17959642) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8979821) = 35831808 * k + 26939464 := by
    unfold C
    simp [show (11943936 * k + 8979821) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 26939464) = 17915904 * k + 13469732 := by
    unfold C
    simp [show (35831808 * k + 26939464) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 13469732) = 8957952 * k + 6734866 := by
    unfold C
    simp [show (17915904 * k + 13469732) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6734866) = 4478976 * k + 3367433 := by
    unfold C
    simp [show (8957952 * k + 6734866) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3367433) = 13436928 * k + 10102300 := by
    unfold C
    simp [show (4478976 * k + 3367433) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10102300) = 6718464 * k + 5051150 := by
    unfold C
    simp [show (13436928 * k + 10102300) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5051150) = 3359232 * k + 2525575 := by
    unfold C
    simp [show (6718464 * k + 5051150) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2525575) = 10077696 * k + 7576726 := by
    unfold C
    simp [show (3359232 * k + 2525575) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7576726) = 5038848 * k + 3788363 := by
    unfold C
    simp [show (10077696 * k + 7576726) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3788363) = 15116544 * k + 11365090 := by
    unfold C
    simp [show (5038848 * k + 3788363) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11365090) = 7558272 * k + 5682545 := by
    unfold C
    simp [show (15116544 * k + 11365090) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5682545) = 22674816 * k + 17047636 := by
    unfold C
    simp [show (7558272 * k + 5682545) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 17047636) = 11337408 * k + 8523818 := by
    unfold C
    simp [show (22674816 * k + 17047636) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8523818) = 5668704 * k + 4261909 := by
    unfold C
    simp [show (11337408 * k + 8523818) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4261909) = 17006112 * k + 12785728 := by
    unfold C
    simp [show (5668704 * k + 4261909) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 12785728) = 8503056 * k + 6392864 := by
    unfold C
    simp [show (17006112 * k + 12785728) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6392864) = 4251528 * k + 3196432 := by
    unfold C
    simp [show (8503056 * k + 6392864) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3196432) = 2125764 * k + 1598216 := by
    unfold C
    simp [show (4251528 * k + 3196432) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1598216) = 1062882 * k + 799108 := by
    unfold C
    simp [show (2125764 * k + 1598216) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 799108) = 531441 * k + 399554 := by
    unfold C
    simp [show (1062882 * k + 799108) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 788351) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 788351)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_788895 : ∀ k : Nat,
    iterate (1048576 * k + 788895) 32 = 531441 * k + 399830 ∧
      531441 * k + 399830 < 1048576 * k + 788895 := by
  intro k
  have h1 : C (1048576 * k + 788895) = 3145728 * k + 2366686 := by
    unfold C
    simp [show (1048576 * k + 788895) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2366686) = 1572864 * k + 1183343 := by
    unfold C
    simp [show (3145728 * k + 2366686) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1183343) = 4718592 * k + 3550030 := by
    unfold C
    simp [show (1572864 * k + 1183343) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3550030) = 2359296 * k + 1775015 := by
    unfold C
    simp [show (4718592 * k + 3550030) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1775015) = 7077888 * k + 5325046 := by
    unfold C
    simp [show (2359296 * k + 1775015) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5325046) = 3538944 * k + 2662523 := by
    unfold C
    simp [show (7077888 * k + 5325046) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2662523) = 10616832 * k + 7987570 := by
    unfold C
    simp [show (3538944 * k + 2662523) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7987570) = 5308416 * k + 3993785 := by
    unfold C
    simp [show (10616832 * k + 7987570) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3993785) = 15925248 * k + 11981356 := by
    unfold C
    simp [show (5308416 * k + 3993785) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11981356) = 7962624 * k + 5990678 := by
    unfold C
    simp [show (15925248 * k + 11981356) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5990678) = 3981312 * k + 2995339 := by
    unfold C
    simp [show (7962624 * k + 5990678) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2995339) = 11943936 * k + 8986018 := by
    unfold C
    simp [show (3981312 * k + 2995339) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8986018) = 5971968 * k + 4493009 := by
    unfold C
    simp [show (11943936 * k + 8986018) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4493009) = 17915904 * k + 13479028 := by
    unfold C
    simp [show (5971968 * k + 4493009) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13479028) = 8957952 * k + 6739514 := by
    unfold C
    simp [show (17915904 * k + 13479028) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6739514) = 4478976 * k + 3369757 := by
    unfold C
    simp [show (8957952 * k + 6739514) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3369757) = 13436928 * k + 10109272 := by
    unfold C
    simp [show (4478976 * k + 3369757) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10109272) = 6718464 * k + 5054636 := by
    unfold C
    simp [show (13436928 * k + 10109272) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5054636) = 3359232 * k + 2527318 := by
    unfold C
    simp [show (6718464 * k + 5054636) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2527318) = 1679616 * k + 1263659 := by
    unfold C
    simp [show (3359232 * k + 2527318) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1263659) = 5038848 * k + 3790978 := by
    unfold C
    simp [show (1679616 * k + 1263659) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3790978) = 2519424 * k + 1895489 := by
    unfold C
    simp [show (5038848 * k + 3790978) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1895489) = 7558272 * k + 5686468 := by
    unfold C
    simp [show (2519424 * k + 1895489) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5686468) = 3779136 * k + 2843234 := by
    unfold C
    simp [show (7558272 * k + 5686468) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2843234) = 1889568 * k + 1421617 := by
    unfold C
    simp [show (3779136 * k + 2843234) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1421617) = 5668704 * k + 4264852 := by
    unfold C
    simp [show (1889568 * k + 1421617) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4264852) = 2834352 * k + 2132426 := by
    unfold C
    simp [show (5668704 * k + 4264852) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2132426) = 1417176 * k + 1066213 := by
    unfold C
    simp [show (2834352 * k + 2132426) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1066213) = 4251528 * k + 3198640 := by
    unfold C
    simp [show (1417176 * k + 1066213) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3198640) = 2125764 * k + 1599320 := by
    unfold C
    simp [show (4251528 * k + 3198640) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1599320) = 1062882 * k + 799660 := by
    unfold C
    simp [show (2125764 * k + 1599320) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 799660) = 531441 * k + 399830 := by
    unfold C
    simp [show (1062882 * k + 799660) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 788895) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 788895)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_789351 : ∀ k : Nat,
    iterate (1048576 * k + 789351) 32 = 531441 * k + 400061 ∧
      531441 * k + 400061 < 1048576 * k + 789351 := by
  intro k
  have h1 : C (1048576 * k + 789351) = 3145728 * k + 2368054 := by
    unfold C
    simp [show (1048576 * k + 789351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2368054) = 1572864 * k + 1184027 := by
    unfold C
    simp [show (3145728 * k + 2368054) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1184027) = 4718592 * k + 3552082 := by
    unfold C
    simp [show (1572864 * k + 1184027) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3552082) = 2359296 * k + 1776041 := by
    unfold C
    simp [show (4718592 * k + 3552082) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1776041) = 7077888 * k + 5328124 := by
    unfold C
    simp [show (2359296 * k + 1776041) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5328124) = 3538944 * k + 2664062 := by
    unfold C
    simp [show (7077888 * k + 5328124) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2664062) = 1769472 * k + 1332031 := by
    unfold C
    simp [show (3538944 * k + 2664062) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1332031) = 5308416 * k + 3996094 := by
    unfold C
    simp [show (1769472 * k + 1332031) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3996094) = 2654208 * k + 1998047 := by
    unfold C
    simp [show (5308416 * k + 3996094) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1998047) = 7962624 * k + 5994142 := by
    unfold C
    simp [show (2654208 * k + 1998047) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5994142) = 3981312 * k + 2997071 := by
    unfold C
    simp [show (7962624 * k + 5994142) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2997071) = 11943936 * k + 8991214 := by
    unfold C
    simp [show (3981312 * k + 2997071) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8991214) = 5971968 * k + 4495607 := by
    unfold C
    simp [show (11943936 * k + 8991214) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4495607) = 17915904 * k + 13486822 := by
    unfold C
    simp [show (5971968 * k + 4495607) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13486822) = 8957952 * k + 6743411 := by
    unfold C
    simp [show (17915904 * k + 13486822) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6743411) = 26873856 * k + 20230234 := by
    unfold C
    simp [show (8957952 * k + 6743411) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 20230234) = 13436928 * k + 10115117 := by
    unfold C
    simp [show (26873856 * k + 20230234) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10115117) = 40310784 * k + 30345352 := by
    unfold C
    simp [show (13436928 * k + 10115117) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 30345352) = 20155392 * k + 15172676 := by
    unfold C
    simp [show (40310784 * k + 30345352) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15172676) = 10077696 * k + 7586338 := by
    unfold C
    simp [show (20155392 * k + 15172676) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7586338) = 5038848 * k + 3793169 := by
    unfold C
    simp [show (10077696 * k + 7586338) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3793169) = 15116544 * k + 11379508 := by
    unfold C
    simp [show (5038848 * k + 3793169) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11379508) = 7558272 * k + 5689754 := by
    unfold C
    simp [show (15116544 * k + 11379508) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5689754) = 3779136 * k + 2844877 := by
    unfold C
    simp [show (7558272 * k + 5689754) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2844877) = 11337408 * k + 8534632 := by
    unfold C
    simp [show (3779136 * k + 2844877) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8534632) = 5668704 * k + 4267316 := by
    unfold C
    simp [show (11337408 * k + 8534632) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4267316) = 2834352 * k + 2133658 := by
    unfold C
    simp [show (5668704 * k + 4267316) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2133658) = 1417176 * k + 1066829 := by
    unfold C
    simp [show (2834352 * k + 2133658) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1066829) = 4251528 * k + 3200488 := by
    unfold C
    simp [show (1417176 * k + 1066829) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3200488) = 2125764 * k + 1600244 := by
    unfold C
    simp [show (4251528 * k + 3200488) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1600244) = 1062882 * k + 800122 := by
    unfold C
    simp [show (2125764 * k + 1600244) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 800122) = 531441 * k + 400061 := by
    unfold C
    simp [show (1062882 * k + 800122) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 789351) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 789351)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_789787 : ∀ k : Nat,
    iterate (1048576 * k + 789787) 32 = 531441 * k + 400282 ∧
      531441 * k + 400282 < 1048576 * k + 789787 := by
  intro k
  have h1 : C (1048576 * k + 789787) = 3145728 * k + 2369362 := by
    unfold C
    simp [show (1048576 * k + 789787) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2369362) = 1572864 * k + 1184681 := by
    unfold C
    simp [show (3145728 * k + 2369362) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1184681) = 4718592 * k + 3554044 := by
    unfold C
    simp [show (1572864 * k + 1184681) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3554044) = 2359296 * k + 1777022 := by
    unfold C
    simp [show (4718592 * k + 3554044) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1777022) = 1179648 * k + 888511 := by
    unfold C
    simp [show (2359296 * k + 1777022) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 888511) = 3538944 * k + 2665534 := by
    unfold C
    simp [show (1179648 * k + 888511) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2665534) = 1769472 * k + 1332767 := by
    unfold C
    simp [show (3538944 * k + 2665534) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1332767) = 5308416 * k + 3998302 := by
    unfold C
    simp [show (1769472 * k + 1332767) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3998302) = 2654208 * k + 1999151 := by
    unfold C
    simp [show (5308416 * k + 3998302) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1999151) = 7962624 * k + 5997454 := by
    unfold C
    simp [show (2654208 * k + 1999151) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5997454) = 3981312 * k + 2998727 := by
    unfold C
    simp [show (7962624 * k + 5997454) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2998727) = 11943936 * k + 8996182 := by
    unfold C
    simp [show (3981312 * k + 2998727) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8996182) = 5971968 * k + 4498091 := by
    unfold C
    simp [show (11943936 * k + 8996182) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4498091) = 17915904 * k + 13494274 := by
    unfold C
    simp [show (5971968 * k + 4498091) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13494274) = 8957952 * k + 6747137 := by
    unfold C
    simp [show (17915904 * k + 13494274) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6747137) = 26873856 * k + 20241412 := by
    unfold C
    simp [show (8957952 * k + 6747137) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 20241412) = 13436928 * k + 10120706 := by
    unfold C
    simp [show (26873856 * k + 20241412) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10120706) = 6718464 * k + 5060353 := by
    unfold C
    simp [show (13436928 * k + 10120706) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5060353) = 20155392 * k + 15181060 := by
    unfold C
    simp [show (6718464 * k + 5060353) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15181060) = 10077696 * k + 7590530 := by
    unfold C
    simp [show (20155392 * k + 15181060) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7590530) = 5038848 * k + 3795265 := by
    unfold C
    simp [show (10077696 * k + 7590530) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3795265) = 15116544 * k + 11385796 := by
    unfold C
    simp [show (5038848 * k + 3795265) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11385796) = 7558272 * k + 5692898 := by
    unfold C
    simp [show (15116544 * k + 11385796) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5692898) = 3779136 * k + 2846449 := by
    unfold C
    simp [show (7558272 * k + 5692898) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2846449) = 11337408 * k + 8539348 := by
    unfold C
    simp [show (3779136 * k + 2846449) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8539348) = 5668704 * k + 4269674 := by
    unfold C
    simp [show (11337408 * k + 8539348) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4269674) = 2834352 * k + 2134837 := by
    unfold C
    simp [show (5668704 * k + 4269674) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2134837) = 8503056 * k + 6404512 := by
    unfold C
    simp [show (2834352 * k + 2134837) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6404512) = 4251528 * k + 3202256 := by
    unfold C
    simp [show (8503056 * k + 6404512) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3202256) = 2125764 * k + 1601128 := by
    unfold C
    simp [show (4251528 * k + 3202256) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1601128) = 1062882 * k + 800564 := by
    unfold C
    simp [show (2125764 * k + 1601128) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 800564) = 531441 * k + 400282 := by
    unfold C
    simp [show (1062882 * k + 800564) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 789787) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 789787)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_790183 : ∀ k : Nat,
    iterate (1048576 * k + 790183) 32 = 531441 * k + 400483 ∧
      531441 * k + 400483 < 1048576 * k + 790183 := by
  intro k
  have h1 : C (1048576 * k + 790183) = 3145728 * k + 2370550 := by
    unfold C
    simp [show (1048576 * k + 790183) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2370550) = 1572864 * k + 1185275 := by
    unfold C
    simp [show (3145728 * k + 2370550) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1185275) = 4718592 * k + 3555826 := by
    unfold C
    simp [show (1572864 * k + 1185275) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3555826) = 2359296 * k + 1777913 := by
    unfold C
    simp [show (4718592 * k + 3555826) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1777913) = 7077888 * k + 5333740 := by
    unfold C
    simp [show (2359296 * k + 1777913) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5333740) = 3538944 * k + 2666870 := by
    unfold C
    simp [show (7077888 * k + 5333740) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2666870) = 1769472 * k + 1333435 := by
    unfold C
    simp [show (3538944 * k + 2666870) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1333435) = 5308416 * k + 4000306 := by
    unfold C
    simp [show (1769472 * k + 1333435) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4000306) = 2654208 * k + 2000153 := by
    unfold C
    simp [show (5308416 * k + 4000306) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2000153) = 7962624 * k + 6000460 := by
    unfold C
    simp [show (2654208 * k + 2000153) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6000460) = 3981312 * k + 3000230 := by
    unfold C
    simp [show (7962624 * k + 6000460) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3000230) = 1990656 * k + 1500115 := by
    unfold C
    simp [show (3981312 * k + 3000230) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1500115) = 5971968 * k + 4500346 := by
    unfold C
    simp [show (1990656 * k + 1500115) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4500346) = 2985984 * k + 2250173 := by
    unfold C
    simp [show (5971968 * k + 4500346) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2250173) = 8957952 * k + 6750520 := by
    unfold C
    simp [show (2985984 * k + 2250173) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6750520) = 4478976 * k + 3375260 := by
    unfold C
    simp [show (8957952 * k + 6750520) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3375260) = 2239488 * k + 1687630 := by
    unfold C
    simp [show (4478976 * k + 3375260) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1687630) = 1119744 * k + 843815 := by
    unfold C
    simp [show (2239488 * k + 1687630) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 843815) = 3359232 * k + 2531446 := by
    unfold C
    simp [show (1119744 * k + 843815) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2531446) = 1679616 * k + 1265723 := by
    unfold C
    simp [show (3359232 * k + 2531446) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1265723) = 5038848 * k + 3797170 := by
    unfold C
    simp [show (1679616 * k + 1265723) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3797170) = 2519424 * k + 1898585 := by
    unfold C
    simp [show (5038848 * k + 3797170) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1898585) = 7558272 * k + 5695756 := by
    unfold C
    simp [show (2519424 * k + 1898585) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5695756) = 3779136 * k + 2847878 := by
    unfold C
    simp [show (7558272 * k + 5695756) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2847878) = 1889568 * k + 1423939 := by
    unfold C
    simp [show (3779136 * k + 2847878) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1423939) = 5668704 * k + 4271818 := by
    unfold C
    simp [show (1889568 * k + 1423939) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4271818) = 2834352 * k + 2135909 := by
    unfold C
    simp [show (5668704 * k + 4271818) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2135909) = 8503056 * k + 6407728 := by
    unfold C
    simp [show (2834352 * k + 2135909) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6407728) = 4251528 * k + 3203864 := by
    unfold C
    simp [show (8503056 * k + 6407728) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3203864) = 2125764 * k + 1601932 := by
    unfold C
    simp [show (4251528 * k + 3203864) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1601932) = 1062882 * k + 800966 := by
    unfold C
    simp [show (2125764 * k + 1601932) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 800966) = 531441 * k + 400483 := by
    unfold C
    simp [show (1062882 * k + 800966) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 790183) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 790183)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_790847 : ∀ k : Nat,
    iterate (1048576 * k + 790847) 32 = 531441 * k + 400819 ∧
      531441 * k + 400819 < 1048576 * k + 790847 := by
  intro k
  have h1 : C (1048576 * k + 790847) = 3145728 * k + 2372542 := by
    unfold C
    simp [show (1048576 * k + 790847) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2372542) = 1572864 * k + 1186271 := by
    unfold C
    simp [show (3145728 * k + 2372542) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1186271) = 4718592 * k + 3558814 := by
    unfold C
    simp [show (1572864 * k + 1186271) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3558814) = 2359296 * k + 1779407 := by
    unfold C
    simp [show (4718592 * k + 3558814) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1779407) = 7077888 * k + 5338222 := by
    unfold C
    simp [show (2359296 * k + 1779407) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5338222) = 3538944 * k + 2669111 := by
    unfold C
    simp [show (7077888 * k + 5338222) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2669111) = 10616832 * k + 8007334 := by
    unfold C
    simp [show (3538944 * k + 2669111) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8007334) = 5308416 * k + 4003667 := by
    unfold C
    simp [show (10616832 * k + 8007334) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4003667) = 15925248 * k + 12011002 := by
    unfold C
    simp [show (5308416 * k + 4003667) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12011002) = 7962624 * k + 6005501 := by
    unfold C
    simp [show (15925248 * k + 12011002) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6005501) = 23887872 * k + 18016504 := by
    unfold C
    simp [show (7962624 * k + 6005501) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 18016504) = 11943936 * k + 9008252 := by
    unfold C
    simp [show (23887872 * k + 18016504) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9008252) = 5971968 * k + 4504126 := by
    unfold C
    simp [show (11943936 * k + 9008252) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4504126) = 2985984 * k + 2252063 := by
    unfold C
    simp [show (5971968 * k + 4504126) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2252063) = 8957952 * k + 6756190 := by
    unfold C
    simp [show (2985984 * k + 2252063) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6756190) = 4478976 * k + 3378095 := by
    unfold C
    simp [show (8957952 * k + 6756190) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3378095) = 13436928 * k + 10134286 := by
    unfold C
    simp [show (4478976 * k + 3378095) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10134286) = 6718464 * k + 5067143 := by
    unfold C
    simp [show (13436928 * k + 10134286) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5067143) = 20155392 * k + 15201430 := by
    unfold C
    simp [show (6718464 * k + 5067143) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15201430) = 10077696 * k + 7600715 := by
    unfold C
    simp [show (20155392 * k + 15201430) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7600715) = 30233088 * k + 22802146 := by
    unfold C
    simp [show (10077696 * k + 7600715) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 22802146) = 15116544 * k + 11401073 := by
    unfold C
    simp [show (30233088 * k + 22802146) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11401073) = 45349632 * k + 34203220 := by
    unfold C
    simp [show (15116544 * k + 11401073) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 34203220) = 22674816 * k + 17101610 := by
    unfold C
    simp [show (45349632 * k + 34203220) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 17101610) = 11337408 * k + 8550805 := by
    unfold C
    simp [show (22674816 * k + 17101610) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8550805) = 34012224 * k + 25652416 := by
    unfold C
    simp [show (11337408 * k + 8550805) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 25652416) = 17006112 * k + 12826208 := by
    unfold C
    simp [show (34012224 * k + 25652416) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 12826208) = 8503056 * k + 6413104 := by
    unfold C
    simp [show (17006112 * k + 12826208) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6413104) = 4251528 * k + 3206552 := by
    unfold C
    simp [show (8503056 * k + 6413104) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3206552) = 2125764 * k + 1603276 := by
    unfold C
    simp [show (4251528 * k + 3206552) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1603276) = 1062882 * k + 801638 := by
    unfold C
    simp [show (2125764 * k + 1603276) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 801638) = 531441 * k + 400819 := by
    unfold C
    simp [show (1062882 * k + 801638) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 790847) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 790847)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_791071 : ∀ k : Nat,
    iterate (1048576 * k + 791071) 32 = 531441 * k + 400933 ∧
      531441 * k + 400933 < 1048576 * k + 791071 := by
  intro k
  have h1 : C (1048576 * k + 791071) = 3145728 * k + 2373214 := by
    unfold C
    simp [show (1048576 * k + 791071) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2373214) = 1572864 * k + 1186607 := by
    unfold C
    simp [show (3145728 * k + 2373214) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1186607) = 4718592 * k + 3559822 := by
    unfold C
    simp [show (1572864 * k + 1186607) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3559822) = 2359296 * k + 1779911 := by
    unfold C
    simp [show (4718592 * k + 3559822) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1779911) = 7077888 * k + 5339734 := by
    unfold C
    simp [show (2359296 * k + 1779911) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5339734) = 3538944 * k + 2669867 := by
    unfold C
    simp [show (7077888 * k + 5339734) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2669867) = 10616832 * k + 8009602 := by
    unfold C
    simp [show (3538944 * k + 2669867) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8009602) = 5308416 * k + 4004801 := by
    unfold C
    simp [show (10616832 * k + 8009602) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4004801) = 15925248 * k + 12014404 := by
    unfold C
    simp [show (5308416 * k + 4004801) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12014404) = 7962624 * k + 6007202 := by
    unfold C
    simp [show (15925248 * k + 12014404) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6007202) = 3981312 * k + 3003601 := by
    unfold C
    simp [show (7962624 * k + 6007202) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3003601) = 11943936 * k + 9010804 := by
    unfold C
    simp [show (3981312 * k + 3003601) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9010804) = 5971968 * k + 4505402 := by
    unfold C
    simp [show (11943936 * k + 9010804) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4505402) = 2985984 * k + 2252701 := by
    unfold C
    simp [show (5971968 * k + 4505402) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2252701) = 8957952 * k + 6758104 := by
    unfold C
    simp [show (2985984 * k + 2252701) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6758104) = 4478976 * k + 3379052 := by
    unfold C
    simp [show (8957952 * k + 6758104) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3379052) = 2239488 * k + 1689526 := by
    unfold C
    simp [show (4478976 * k + 3379052) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1689526) = 1119744 * k + 844763 := by
    unfold C
    simp [show (2239488 * k + 1689526) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 844763) = 3359232 * k + 2534290 := by
    unfold C
    simp [show (1119744 * k + 844763) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2534290) = 1679616 * k + 1267145 := by
    unfold C
    simp [show (3359232 * k + 2534290) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1267145) = 5038848 * k + 3801436 := by
    unfold C
    simp [show (1679616 * k + 1267145) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3801436) = 2519424 * k + 1900718 := by
    unfold C
    simp [show (5038848 * k + 3801436) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1900718) = 1259712 * k + 950359 := by
    unfold C
    simp [show (2519424 * k + 1900718) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 950359) = 3779136 * k + 2851078 := by
    unfold C
    simp [show (1259712 * k + 950359) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2851078) = 1889568 * k + 1425539 := by
    unfold C
    simp [show (3779136 * k + 2851078) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1425539) = 5668704 * k + 4276618 := by
    unfold C
    simp [show (1889568 * k + 1425539) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4276618) = 2834352 * k + 2138309 := by
    unfold C
    simp [show (5668704 * k + 4276618) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2138309) = 8503056 * k + 6414928 := by
    unfold C
    simp [show (2834352 * k + 2138309) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6414928) = 4251528 * k + 3207464 := by
    unfold C
    simp [show (8503056 * k + 6414928) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3207464) = 2125764 * k + 1603732 := by
    unfold C
    simp [show (4251528 * k + 3207464) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1603732) = 1062882 * k + 801866 := by
    unfold C
    simp [show (2125764 * k + 1603732) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 801866) = 531441 * k + 400933 := by
    unfold C
    simp [show (1062882 * k + 801866) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 791071) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 791071)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_791279 : ∀ k : Nat,
    iterate (1048576 * k + 791279) 32 = 531441 * k + 401038 ∧
      531441 * k + 401038 < 1048576 * k + 791279 := by
  intro k
  have h1 : C (1048576 * k + 791279) = 3145728 * k + 2373838 := by
    unfold C
    simp [show (1048576 * k + 791279) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2373838) = 1572864 * k + 1186919 := by
    unfold C
    simp [show (3145728 * k + 2373838) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1186919) = 4718592 * k + 3560758 := by
    unfold C
    simp [show (1572864 * k + 1186919) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3560758) = 2359296 * k + 1780379 := by
    unfold C
    simp [show (4718592 * k + 3560758) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1780379) = 7077888 * k + 5341138 := by
    unfold C
    simp [show (2359296 * k + 1780379) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5341138) = 3538944 * k + 2670569 := by
    unfold C
    simp [show (7077888 * k + 5341138) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2670569) = 10616832 * k + 8011708 := by
    unfold C
    simp [show (3538944 * k + 2670569) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8011708) = 5308416 * k + 4005854 := by
    unfold C
    simp [show (10616832 * k + 8011708) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4005854) = 2654208 * k + 2002927 := by
    unfold C
    simp [show (5308416 * k + 4005854) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2002927) = 7962624 * k + 6008782 := by
    unfold C
    simp [show (2654208 * k + 2002927) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6008782) = 3981312 * k + 3004391 := by
    unfold C
    simp [show (7962624 * k + 6008782) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3004391) = 11943936 * k + 9013174 := by
    unfold C
    simp [show (3981312 * k + 3004391) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9013174) = 5971968 * k + 4506587 := by
    unfold C
    simp [show (11943936 * k + 9013174) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4506587) = 17915904 * k + 13519762 := by
    unfold C
    simp [show (5971968 * k + 4506587) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13519762) = 8957952 * k + 6759881 := by
    unfold C
    simp [show (17915904 * k + 13519762) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6759881) = 26873856 * k + 20279644 := by
    unfold C
    simp [show (8957952 * k + 6759881) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 20279644) = 13436928 * k + 10139822 := by
    unfold C
    simp [show (26873856 * k + 20279644) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10139822) = 6718464 * k + 5069911 := by
    unfold C
    simp [show (13436928 * k + 10139822) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5069911) = 20155392 * k + 15209734 := by
    unfold C
    simp [show (6718464 * k + 5069911) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15209734) = 10077696 * k + 7604867 := by
    unfold C
    simp [show (20155392 * k + 15209734) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7604867) = 30233088 * k + 22814602 := by
    unfold C
    simp [show (10077696 * k + 7604867) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 22814602) = 15116544 * k + 11407301 := by
    unfold C
    simp [show (30233088 * k + 22814602) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11407301) = 45349632 * k + 34221904 := by
    unfold C
    simp [show (15116544 * k + 11407301) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 34221904) = 22674816 * k + 17110952 := by
    unfold C
    simp [show (45349632 * k + 34221904) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 17110952) = 11337408 * k + 8555476 := by
    unfold C
    simp [show (22674816 * k + 17110952) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8555476) = 5668704 * k + 4277738 := by
    unfold C
    simp [show (11337408 * k + 8555476) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4277738) = 2834352 * k + 2138869 := by
    unfold C
    simp [show (5668704 * k + 4277738) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2138869) = 8503056 * k + 6416608 := by
    unfold C
    simp [show (2834352 * k + 2138869) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6416608) = 4251528 * k + 3208304 := by
    unfold C
    simp [show (8503056 * k + 6416608) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3208304) = 2125764 * k + 1604152 := by
    unfold C
    simp [show (4251528 * k + 3208304) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1604152) = 1062882 * k + 802076 := by
    unfold C
    simp [show (2125764 * k + 1604152) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 802076) = 531441 * k + 401038 := by
    unfold C
    simp [show (1062882 * k + 802076) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 791279) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 791279)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_791399 : ∀ k : Nat,
    iterate (1048576 * k + 791399) 32 = 531441 * k + 401099 ∧
      531441 * k + 401099 < 1048576 * k + 791399 := by
  intro k
  have h1 : C (1048576 * k + 791399) = 3145728 * k + 2374198 := by
    unfold C
    simp [show (1048576 * k + 791399) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2374198) = 1572864 * k + 1187099 := by
    unfold C
    simp [show (3145728 * k + 2374198) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1187099) = 4718592 * k + 3561298 := by
    unfold C
    simp [show (1572864 * k + 1187099) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3561298) = 2359296 * k + 1780649 := by
    unfold C
    simp [show (4718592 * k + 3561298) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1780649) = 7077888 * k + 5341948 := by
    unfold C
    simp [show (2359296 * k + 1780649) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5341948) = 3538944 * k + 2670974 := by
    unfold C
    simp [show (7077888 * k + 5341948) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2670974) = 1769472 * k + 1335487 := by
    unfold C
    simp [show (3538944 * k + 2670974) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1335487) = 5308416 * k + 4006462 := by
    unfold C
    simp [show (1769472 * k + 1335487) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4006462) = 2654208 * k + 2003231 := by
    unfold C
    simp [show (5308416 * k + 4006462) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2003231) = 7962624 * k + 6009694 := by
    unfold C
    simp [show (2654208 * k + 2003231) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6009694) = 3981312 * k + 3004847 := by
    unfold C
    simp [show (7962624 * k + 6009694) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3004847) = 11943936 * k + 9014542 := by
    unfold C
    simp [show (3981312 * k + 3004847) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9014542) = 5971968 * k + 4507271 := by
    unfold C
    simp [show (11943936 * k + 9014542) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4507271) = 17915904 * k + 13521814 := by
    unfold C
    simp [show (5971968 * k + 4507271) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13521814) = 8957952 * k + 6760907 := by
    unfold C
    simp [show (17915904 * k + 13521814) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6760907) = 26873856 * k + 20282722 := by
    unfold C
    simp [show (8957952 * k + 6760907) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 20282722) = 13436928 * k + 10141361 := by
    unfold C
    simp [show (26873856 * k + 20282722) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10141361) = 40310784 * k + 30424084 := by
    unfold C
    simp [show (13436928 * k + 10141361) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 30424084) = 20155392 * k + 15212042 := by
    unfold C
    simp [show (40310784 * k + 30424084) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15212042) = 10077696 * k + 7606021 := by
    unfold C
    simp [show (20155392 * k + 15212042) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7606021) = 30233088 * k + 22818064 := by
    unfold C
    simp [show (10077696 * k + 7606021) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 22818064) = 15116544 * k + 11409032 := by
    unfold C
    simp [show (30233088 * k + 22818064) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11409032) = 7558272 * k + 5704516 := by
    unfold C
    simp [show (15116544 * k + 11409032) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5704516) = 3779136 * k + 2852258 := by
    unfold C
    simp [show (7558272 * k + 5704516) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2852258) = 1889568 * k + 1426129 := by
    unfold C
    simp [show (3779136 * k + 2852258) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1426129) = 5668704 * k + 4278388 := by
    unfold C
    simp [show (1889568 * k + 1426129) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4278388) = 2834352 * k + 2139194 := by
    unfold C
    simp [show (5668704 * k + 4278388) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2139194) = 1417176 * k + 1069597 := by
    unfold C
    simp [show (2834352 * k + 2139194) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1069597) = 4251528 * k + 3208792 := by
    unfold C
    simp [show (1417176 * k + 1069597) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3208792) = 2125764 * k + 1604396 := by
    unfold C
    simp [show (4251528 * k + 3208792) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1604396) = 1062882 * k + 802198 := by
    unfold C
    simp [show (2125764 * k + 1604396) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 802198) = 531441 * k + 401099 := by
    unfold C
    simp [show (1062882 * k + 802198) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 791399) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 791399)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_791711 : ∀ k : Nat,
    iterate (1048576 * k + 791711) 32 = 531441 * k + 401257 ∧
      531441 * k + 401257 < 1048576 * k + 791711 := by
  intro k
  have h1 : C (1048576 * k + 791711) = 3145728 * k + 2375134 := by
    unfold C
    simp [show (1048576 * k + 791711) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2375134) = 1572864 * k + 1187567 := by
    unfold C
    simp [show (3145728 * k + 2375134) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1187567) = 4718592 * k + 3562702 := by
    unfold C
    simp [show (1572864 * k + 1187567) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3562702) = 2359296 * k + 1781351 := by
    unfold C
    simp [show (4718592 * k + 3562702) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1781351) = 7077888 * k + 5344054 := by
    unfold C
    simp [show (2359296 * k + 1781351) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5344054) = 3538944 * k + 2672027 := by
    unfold C
    simp [show (7077888 * k + 5344054) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2672027) = 10616832 * k + 8016082 := by
    unfold C
    simp [show (3538944 * k + 2672027) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8016082) = 5308416 * k + 4008041 := by
    unfold C
    simp [show (10616832 * k + 8016082) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4008041) = 15925248 * k + 12024124 := by
    unfold C
    simp [show (5308416 * k + 4008041) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12024124) = 7962624 * k + 6012062 := by
    unfold C
    simp [show (15925248 * k + 12024124) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6012062) = 3981312 * k + 3006031 := by
    unfold C
    simp [show (7962624 * k + 6012062) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3006031) = 11943936 * k + 9018094 := by
    unfold C
    simp [show (3981312 * k + 3006031) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9018094) = 5971968 * k + 4509047 := by
    unfold C
    simp [show (11943936 * k + 9018094) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4509047) = 17915904 * k + 13527142 := by
    unfold C
    simp [show (5971968 * k + 4509047) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13527142) = 8957952 * k + 6763571 := by
    unfold C
    simp [show (17915904 * k + 13527142) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6763571) = 26873856 * k + 20290714 := by
    unfold C
    simp [show (8957952 * k + 6763571) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 20290714) = 13436928 * k + 10145357 := by
    unfold C
    simp [show (26873856 * k + 20290714) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10145357) = 40310784 * k + 30436072 := by
    unfold C
    simp [show (13436928 * k + 10145357) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 30436072) = 20155392 * k + 15218036 := by
    unfold C
    simp [show (40310784 * k + 30436072) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15218036) = 10077696 * k + 7609018 := by
    unfold C
    simp [show (20155392 * k + 15218036) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7609018) = 5038848 * k + 3804509 := by
    unfold C
    simp [show (10077696 * k + 7609018) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3804509) = 15116544 * k + 11413528 := by
    unfold C
    simp [show (5038848 * k + 3804509) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11413528) = 7558272 * k + 5706764 := by
    unfold C
    simp [show (15116544 * k + 11413528) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5706764) = 3779136 * k + 2853382 := by
    unfold C
    simp [show (7558272 * k + 5706764) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2853382) = 1889568 * k + 1426691 := by
    unfold C
    simp [show (3779136 * k + 2853382) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1426691) = 5668704 * k + 4280074 := by
    unfold C
    simp [show (1889568 * k + 1426691) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4280074) = 2834352 * k + 2140037 := by
    unfold C
    simp [show (5668704 * k + 4280074) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2140037) = 8503056 * k + 6420112 := by
    unfold C
    simp [show (2834352 * k + 2140037) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6420112) = 4251528 * k + 3210056 := by
    unfold C
    simp [show (8503056 * k + 6420112) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3210056) = 2125764 * k + 1605028 := by
    unfold C
    simp [show (4251528 * k + 3210056) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1605028) = 1062882 * k + 802514 := by
    unfold C
    simp [show (2125764 * k + 1605028) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 802514) = 531441 * k + 401257 := by
    unfold C
    simp [show (1062882 * k + 802514) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 791711) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 791711)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_791835 : ∀ k : Nat,
    iterate (1048576 * k + 791835) 32 = 531441 * k + 401320 ∧
      531441 * k + 401320 < 1048576 * k + 791835 := by
  intro k
  have h1 : C (1048576 * k + 791835) = 3145728 * k + 2375506 := by
    unfold C
    simp [show (1048576 * k + 791835) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2375506) = 1572864 * k + 1187753 := by
    unfold C
    simp [show (3145728 * k + 2375506) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1187753) = 4718592 * k + 3563260 := by
    unfold C
    simp [show (1572864 * k + 1187753) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3563260) = 2359296 * k + 1781630 := by
    unfold C
    simp [show (4718592 * k + 3563260) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1781630) = 1179648 * k + 890815 := by
    unfold C
    simp [show (2359296 * k + 1781630) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 890815) = 3538944 * k + 2672446 := by
    unfold C
    simp [show (1179648 * k + 890815) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2672446) = 1769472 * k + 1336223 := by
    unfold C
    simp [show (3538944 * k + 2672446) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1336223) = 5308416 * k + 4008670 := by
    unfold C
    simp [show (1769472 * k + 1336223) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4008670) = 2654208 * k + 2004335 := by
    unfold C
    simp [show (5308416 * k + 4008670) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2004335) = 7962624 * k + 6013006 := by
    unfold C
    simp [show (2654208 * k + 2004335) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6013006) = 3981312 * k + 3006503 := by
    unfold C
    simp [show (7962624 * k + 6013006) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3006503) = 11943936 * k + 9019510 := by
    unfold C
    simp [show (3981312 * k + 3006503) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9019510) = 5971968 * k + 4509755 := by
    unfold C
    simp [show (11943936 * k + 9019510) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4509755) = 17915904 * k + 13529266 := by
    unfold C
    simp [show (5971968 * k + 4509755) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13529266) = 8957952 * k + 6764633 := by
    unfold C
    simp [show (17915904 * k + 13529266) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6764633) = 26873856 * k + 20293900 := by
    unfold C
    simp [show (8957952 * k + 6764633) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 20293900) = 13436928 * k + 10146950 := by
    unfold C
    simp [show (26873856 * k + 20293900) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10146950) = 6718464 * k + 5073475 := by
    unfold C
    simp [show (13436928 * k + 10146950) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5073475) = 20155392 * k + 15220426 := by
    unfold C
    simp [show (6718464 * k + 5073475) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15220426) = 10077696 * k + 7610213 := by
    unfold C
    simp [show (20155392 * k + 15220426) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7610213) = 30233088 * k + 22830640 := by
    unfold C
    simp [show (10077696 * k + 7610213) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 22830640) = 15116544 * k + 11415320 := by
    unfold C
    simp [show (30233088 * k + 22830640) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11415320) = 7558272 * k + 5707660 := by
    unfold C
    simp [show (15116544 * k + 11415320) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5707660) = 3779136 * k + 2853830 := by
    unfold C
    simp [show (7558272 * k + 5707660) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2853830) = 1889568 * k + 1426915 := by
    unfold C
    simp [show (3779136 * k + 2853830) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1426915) = 5668704 * k + 4280746 := by
    unfold C
    simp [show (1889568 * k + 1426915) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4280746) = 2834352 * k + 2140373 := by
    unfold C
    simp [show (5668704 * k + 4280746) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2140373) = 8503056 * k + 6421120 := by
    unfold C
    simp [show (2834352 * k + 2140373) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6421120) = 4251528 * k + 3210560 := by
    unfold C
    simp [show (8503056 * k + 6421120) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3210560) = 2125764 * k + 1605280 := by
    unfold C
    simp [show (4251528 * k + 3210560) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1605280) = 1062882 * k + 802640 := by
    unfold C
    simp [show (2125764 * k + 1605280) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 802640) = 531441 * k + 401320 := by
    unfold C
    simp [show (1062882 * k + 802640) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 791835) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 791835)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_792091 : ∀ k : Nat,
    iterate (1048576 * k + 792091) 32 = 531441 * k + 401450 ∧
      531441 * k + 401450 < 1048576 * k + 792091 := by
  intro k
  have h1 : C (1048576 * k + 792091) = 3145728 * k + 2376274 := by
    unfold C
    simp [show (1048576 * k + 792091) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2376274) = 1572864 * k + 1188137 := by
    unfold C
    simp [show (3145728 * k + 2376274) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1188137) = 4718592 * k + 3564412 := by
    unfold C
    simp [show (1572864 * k + 1188137) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3564412) = 2359296 * k + 1782206 := by
    unfold C
    simp [show (4718592 * k + 3564412) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1782206) = 1179648 * k + 891103 := by
    unfold C
    simp [show (2359296 * k + 1782206) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 891103) = 3538944 * k + 2673310 := by
    unfold C
    simp [show (1179648 * k + 891103) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2673310) = 1769472 * k + 1336655 := by
    unfold C
    simp [show (3538944 * k + 2673310) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1336655) = 5308416 * k + 4009966 := by
    unfold C
    simp [show (1769472 * k + 1336655) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4009966) = 2654208 * k + 2004983 := by
    unfold C
    simp [show (5308416 * k + 4009966) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2004983) = 7962624 * k + 6014950 := by
    unfold C
    simp [show (2654208 * k + 2004983) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6014950) = 3981312 * k + 3007475 := by
    unfold C
    simp [show (7962624 * k + 6014950) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3007475) = 11943936 * k + 9022426 := by
    unfold C
    simp [show (3981312 * k + 3007475) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9022426) = 5971968 * k + 4511213 := by
    unfold C
    simp [show (11943936 * k + 9022426) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4511213) = 17915904 * k + 13533640 := by
    unfold C
    simp [show (5971968 * k + 4511213) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13533640) = 8957952 * k + 6766820 := by
    unfold C
    simp [show (17915904 * k + 13533640) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6766820) = 4478976 * k + 3383410 := by
    unfold C
    simp [show (8957952 * k + 6766820) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3383410) = 2239488 * k + 1691705 := by
    unfold C
    simp [show (4478976 * k + 3383410) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1691705) = 6718464 * k + 5075116 := by
    unfold C
    simp [show (2239488 * k + 1691705) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5075116) = 3359232 * k + 2537558 := by
    unfold C
    simp [show (6718464 * k + 5075116) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2537558) = 1679616 * k + 1268779 := by
    unfold C
    simp [show (3359232 * k + 2537558) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1268779) = 5038848 * k + 3806338 := by
    unfold C
    simp [show (1679616 * k + 1268779) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3806338) = 2519424 * k + 1903169 := by
    unfold C
    simp [show (5038848 * k + 3806338) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1903169) = 7558272 * k + 5709508 := by
    unfold C
    simp [show (2519424 * k + 1903169) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5709508) = 3779136 * k + 2854754 := by
    unfold C
    simp [show (7558272 * k + 5709508) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2854754) = 1889568 * k + 1427377 := by
    unfold C
    simp [show (3779136 * k + 2854754) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1427377) = 5668704 * k + 4282132 := by
    unfold C
    simp [show (1889568 * k + 1427377) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4282132) = 2834352 * k + 2141066 := by
    unfold C
    simp [show (5668704 * k + 4282132) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2141066) = 1417176 * k + 1070533 := by
    unfold C
    simp [show (2834352 * k + 2141066) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1070533) = 4251528 * k + 3211600 := by
    unfold C
    simp [show (1417176 * k + 1070533) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3211600) = 2125764 * k + 1605800 := by
    unfold C
    simp [show (4251528 * k + 3211600) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1605800) = 1062882 * k + 802900 := by
    unfold C
    simp [show (2125764 * k + 1605800) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 802900) = 531441 * k + 401450 := by
    unfold C
    simp [show (1062882 * k + 802900) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 792091) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 792091)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_792447 : ∀ k : Nat,
    iterate (1048576 * k + 792447) 32 = 531441 * k + 401630 ∧
      531441 * k + 401630 < 1048576 * k + 792447 := by
  intro k
  have h1 : C (1048576 * k + 792447) = 3145728 * k + 2377342 := by
    unfold C
    simp [show (1048576 * k + 792447) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2377342) = 1572864 * k + 1188671 := by
    unfold C
    simp [show (3145728 * k + 2377342) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1188671) = 4718592 * k + 3566014 := by
    unfold C
    simp [show (1572864 * k + 1188671) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3566014) = 2359296 * k + 1783007 := by
    unfold C
    simp [show (4718592 * k + 3566014) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1783007) = 7077888 * k + 5349022 := by
    unfold C
    simp [show (2359296 * k + 1783007) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5349022) = 3538944 * k + 2674511 := by
    unfold C
    simp [show (7077888 * k + 5349022) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2674511) = 10616832 * k + 8023534 := by
    unfold C
    simp [show (3538944 * k + 2674511) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8023534) = 5308416 * k + 4011767 := by
    unfold C
    simp [show (10616832 * k + 8023534) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4011767) = 15925248 * k + 12035302 := by
    unfold C
    simp [show (5308416 * k + 4011767) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12035302) = 7962624 * k + 6017651 := by
    unfold C
    simp [show (15925248 * k + 12035302) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6017651) = 23887872 * k + 18052954 := by
    unfold C
    simp [show (7962624 * k + 6017651) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 18052954) = 11943936 * k + 9026477 := by
    unfold C
    simp [show (23887872 * k + 18052954) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9026477) = 35831808 * k + 27079432 := by
    unfold C
    simp [show (11943936 * k + 9026477) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 27079432) = 17915904 * k + 13539716 := by
    unfold C
    simp [show (35831808 * k + 27079432) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 13539716) = 8957952 * k + 6769858 := by
    unfold C
    simp [show (17915904 * k + 13539716) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6769858) = 4478976 * k + 3384929 := by
    unfold C
    simp [show (8957952 * k + 6769858) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3384929) = 13436928 * k + 10154788 := by
    unfold C
    simp [show (4478976 * k + 3384929) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10154788) = 6718464 * k + 5077394 := by
    unfold C
    simp [show (13436928 * k + 10154788) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5077394) = 3359232 * k + 2538697 := by
    unfold C
    simp [show (6718464 * k + 5077394) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2538697) = 10077696 * k + 7616092 := by
    unfold C
    simp [show (3359232 * k + 2538697) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7616092) = 5038848 * k + 3808046 := by
    unfold C
    simp [show (10077696 * k + 7616092) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3808046) = 2519424 * k + 1904023 := by
    unfold C
    simp [show (5038848 * k + 3808046) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1904023) = 7558272 * k + 5712070 := by
    unfold C
    simp [show (2519424 * k + 1904023) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5712070) = 3779136 * k + 2856035 := by
    unfold C
    simp [show (7558272 * k + 5712070) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2856035) = 11337408 * k + 8568106 := by
    unfold C
    simp [show (3779136 * k + 2856035) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8568106) = 5668704 * k + 4284053 := by
    unfold C
    simp [show (11337408 * k + 8568106) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4284053) = 17006112 * k + 12852160 := by
    unfold C
    simp [show (5668704 * k + 4284053) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 12852160) = 8503056 * k + 6426080 := by
    unfold C
    simp [show (17006112 * k + 12852160) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6426080) = 4251528 * k + 3213040 := by
    unfold C
    simp [show (8503056 * k + 6426080) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3213040) = 2125764 * k + 1606520 := by
    unfold C
    simp [show (4251528 * k + 3213040) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1606520) = 1062882 * k + 803260 := by
    unfold C
    simp [show (2125764 * k + 1606520) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 803260) = 531441 * k + 401630 := by
    unfold C
    simp [show (1062882 * k + 803260) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 792447) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 792447)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_792895 : ∀ k : Nat,
    iterate (1048576 * k + 792895) 32 = 531441 * k + 401857 ∧
      531441 * k + 401857 < 1048576 * k + 792895 := by
  intro k
  have h1 : C (1048576 * k + 792895) = 3145728 * k + 2378686 := by
    unfold C
    simp [show (1048576 * k + 792895) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2378686) = 1572864 * k + 1189343 := by
    unfold C
    simp [show (3145728 * k + 2378686) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1189343) = 4718592 * k + 3568030 := by
    unfold C
    simp [show (1572864 * k + 1189343) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3568030) = 2359296 * k + 1784015 := by
    unfold C
    simp [show (4718592 * k + 3568030) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1784015) = 7077888 * k + 5352046 := by
    unfold C
    simp [show (2359296 * k + 1784015) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5352046) = 3538944 * k + 2676023 := by
    unfold C
    simp [show (7077888 * k + 5352046) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2676023) = 10616832 * k + 8028070 := by
    unfold C
    simp [show (3538944 * k + 2676023) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8028070) = 5308416 * k + 4014035 := by
    unfold C
    simp [show (10616832 * k + 8028070) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4014035) = 15925248 * k + 12042106 := by
    unfold C
    simp [show (5308416 * k + 4014035) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12042106) = 7962624 * k + 6021053 := by
    unfold C
    simp [show (15925248 * k + 12042106) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6021053) = 23887872 * k + 18063160 := by
    unfold C
    simp [show (7962624 * k + 6021053) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 18063160) = 11943936 * k + 9031580 := by
    unfold C
    simp [show (23887872 * k + 18063160) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9031580) = 5971968 * k + 4515790 := by
    unfold C
    simp [show (11943936 * k + 9031580) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4515790) = 2985984 * k + 2257895 := by
    unfold C
    simp [show (5971968 * k + 4515790) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2257895) = 8957952 * k + 6773686 := by
    unfold C
    simp [show (2985984 * k + 2257895) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6773686) = 4478976 * k + 3386843 := by
    unfold C
    simp [show (8957952 * k + 6773686) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3386843) = 13436928 * k + 10160530 := by
    unfold C
    simp [show (4478976 * k + 3386843) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10160530) = 6718464 * k + 5080265 := by
    unfold C
    simp [show (13436928 * k + 10160530) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5080265) = 20155392 * k + 15240796 := by
    unfold C
    simp [show (6718464 * k + 5080265) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15240796) = 10077696 * k + 7620398 := by
    unfold C
    simp [show (20155392 * k + 15240796) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7620398) = 5038848 * k + 3810199 := by
    unfold C
    simp [show (10077696 * k + 7620398) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3810199) = 15116544 * k + 11430598 := by
    unfold C
    simp [show (5038848 * k + 3810199) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11430598) = 7558272 * k + 5715299 := by
    unfold C
    simp [show (15116544 * k + 11430598) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5715299) = 22674816 * k + 17145898 := by
    unfold C
    simp [show (7558272 * k + 5715299) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 17145898) = 11337408 * k + 8572949 := by
    unfold C
    simp [show (22674816 * k + 17145898) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8572949) = 34012224 * k + 25718848 := by
    unfold C
    simp [show (11337408 * k + 8572949) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 25718848) = 17006112 * k + 12859424 := by
    unfold C
    simp [show (34012224 * k + 25718848) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 12859424) = 8503056 * k + 6429712 := by
    unfold C
    simp [show (17006112 * k + 12859424) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6429712) = 4251528 * k + 3214856 := by
    unfold C
    simp [show (8503056 * k + 6429712) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3214856) = 2125764 * k + 1607428 := by
    unfold C
    simp [show (4251528 * k + 3214856) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1607428) = 1062882 * k + 803714 := by
    unfold C
    simp [show (2125764 * k + 1607428) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 803714) = 531441 * k + 401857 := by
    unfold C
    simp [show (1062882 * k + 803714) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 792895) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 792895)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_793327 : ∀ k : Nat,
    iterate (1048576 * k + 793327) 32 = 531441 * k + 402076 ∧
      531441 * k + 402076 < 1048576 * k + 793327 := by
  intro k
  have h1 : C (1048576 * k + 793327) = 3145728 * k + 2379982 := by
    unfold C
    simp [show (1048576 * k + 793327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2379982) = 1572864 * k + 1189991 := by
    unfold C
    simp [show (3145728 * k + 2379982) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1189991) = 4718592 * k + 3569974 := by
    unfold C
    simp [show (1572864 * k + 1189991) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3569974) = 2359296 * k + 1784987 := by
    unfold C
    simp [show (4718592 * k + 3569974) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1784987) = 7077888 * k + 5354962 := by
    unfold C
    simp [show (2359296 * k + 1784987) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5354962) = 3538944 * k + 2677481 := by
    unfold C
    simp [show (7077888 * k + 5354962) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2677481) = 10616832 * k + 8032444 := by
    unfold C
    simp [show (3538944 * k + 2677481) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8032444) = 5308416 * k + 4016222 := by
    unfold C
    simp [show (10616832 * k + 8032444) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4016222) = 2654208 * k + 2008111 := by
    unfold C
    simp [show (5308416 * k + 4016222) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2008111) = 7962624 * k + 6024334 := by
    unfold C
    simp [show (2654208 * k + 2008111) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6024334) = 3981312 * k + 3012167 := by
    unfold C
    simp [show (7962624 * k + 6024334) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3012167) = 11943936 * k + 9036502 := by
    unfold C
    simp [show (3981312 * k + 3012167) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9036502) = 5971968 * k + 4518251 := by
    unfold C
    simp [show (11943936 * k + 9036502) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4518251) = 17915904 * k + 13554754 := by
    unfold C
    simp [show (5971968 * k + 4518251) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13554754) = 8957952 * k + 6777377 := by
    unfold C
    simp [show (17915904 * k + 13554754) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6777377) = 26873856 * k + 20332132 := by
    unfold C
    simp [show (8957952 * k + 6777377) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 20332132) = 13436928 * k + 10166066 := by
    unfold C
    simp [show (26873856 * k + 20332132) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10166066) = 6718464 * k + 5083033 := by
    unfold C
    simp [show (13436928 * k + 10166066) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5083033) = 20155392 * k + 15249100 := by
    unfold C
    simp [show (6718464 * k + 5083033) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15249100) = 10077696 * k + 7624550 := by
    unfold C
    simp [show (20155392 * k + 15249100) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7624550) = 5038848 * k + 3812275 := by
    unfold C
    simp [show (10077696 * k + 7624550) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3812275) = 15116544 * k + 11436826 := by
    unfold C
    simp [show (5038848 * k + 3812275) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11436826) = 7558272 * k + 5718413 := by
    unfold C
    simp [show (15116544 * k + 11436826) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5718413) = 22674816 * k + 17155240 := by
    unfold C
    simp [show (7558272 * k + 5718413) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 17155240) = 11337408 * k + 8577620 := by
    unfold C
    simp [show (22674816 * k + 17155240) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8577620) = 5668704 * k + 4288810 := by
    unfold C
    simp [show (11337408 * k + 8577620) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4288810) = 2834352 * k + 2144405 := by
    unfold C
    simp [show (5668704 * k + 4288810) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2144405) = 8503056 * k + 6433216 := by
    unfold C
    simp [show (2834352 * k + 2144405) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6433216) = 4251528 * k + 3216608 := by
    unfold C
    simp [show (8503056 * k + 6433216) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3216608) = 2125764 * k + 1608304 := by
    unfold C
    simp [show (4251528 * k + 3216608) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1608304) = 1062882 * k + 804152 := by
    unfold C
    simp [show (2125764 * k + 1608304) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 804152) = 531441 * k + 402076 := by
    unfold C
    simp [show (1062882 * k + 804152) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 793327) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 793327)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_793471 : ∀ k : Nat,
    iterate (1048576 * k + 793471) 32 = 531441 * k + 402149 ∧
      531441 * k + 402149 < 1048576 * k + 793471 := by
  intro k
  have h1 : C (1048576 * k + 793471) = 3145728 * k + 2380414 := by
    unfold C
    simp [show (1048576 * k + 793471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2380414) = 1572864 * k + 1190207 := by
    unfold C
    simp [show (3145728 * k + 2380414) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1190207) = 4718592 * k + 3570622 := by
    unfold C
    simp [show (1572864 * k + 1190207) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3570622) = 2359296 * k + 1785311 := by
    unfold C
    simp [show (4718592 * k + 3570622) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1785311) = 7077888 * k + 5355934 := by
    unfold C
    simp [show (2359296 * k + 1785311) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5355934) = 3538944 * k + 2677967 := by
    unfold C
    simp [show (7077888 * k + 5355934) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2677967) = 10616832 * k + 8033902 := by
    unfold C
    simp [show (3538944 * k + 2677967) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8033902) = 5308416 * k + 4016951 := by
    unfold C
    simp [show (10616832 * k + 8033902) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4016951) = 15925248 * k + 12050854 := by
    unfold C
    simp [show (5308416 * k + 4016951) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12050854) = 7962624 * k + 6025427 := by
    unfold C
    simp [show (15925248 * k + 12050854) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6025427) = 23887872 * k + 18076282 := by
    unfold C
    simp [show (7962624 * k + 6025427) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 18076282) = 11943936 * k + 9038141 := by
    unfold C
    simp [show (23887872 * k + 18076282) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9038141) = 35831808 * k + 27114424 := by
    unfold C
    simp [show (11943936 * k + 9038141) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 27114424) = 17915904 * k + 13557212 := by
    unfold C
    simp [show (35831808 * k + 27114424) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 13557212) = 8957952 * k + 6778606 := by
    unfold C
    simp [show (17915904 * k + 13557212) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6778606) = 4478976 * k + 3389303 := by
    unfold C
    simp [show (8957952 * k + 6778606) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3389303) = 13436928 * k + 10167910 := by
    unfold C
    simp [show (4478976 * k + 3389303) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10167910) = 6718464 * k + 5083955 := by
    unfold C
    simp [show (13436928 * k + 10167910) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5083955) = 20155392 * k + 15251866 := by
    unfold C
    simp [show (6718464 * k + 5083955) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15251866) = 10077696 * k + 7625933 := by
    unfold C
    simp [show (20155392 * k + 15251866) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7625933) = 30233088 * k + 22877800 := by
    unfold C
    simp [show (10077696 * k + 7625933) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 22877800) = 15116544 * k + 11438900 := by
    unfold C
    simp [show (30233088 * k + 22877800) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11438900) = 7558272 * k + 5719450 := by
    unfold C
    simp [show (15116544 * k + 11438900) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5719450) = 3779136 * k + 2859725 := by
    unfold C
    simp [show (7558272 * k + 5719450) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2859725) = 11337408 * k + 8579176 := by
    unfold C
    simp [show (3779136 * k + 2859725) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8579176) = 5668704 * k + 4289588 := by
    unfold C
    simp [show (11337408 * k + 8579176) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4289588) = 2834352 * k + 2144794 := by
    unfold C
    simp [show (5668704 * k + 4289588) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2144794) = 1417176 * k + 1072397 := by
    unfold C
    simp [show (2834352 * k + 2144794) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1072397) = 4251528 * k + 3217192 := by
    unfold C
    simp [show (1417176 * k + 1072397) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3217192) = 2125764 * k + 1608596 := by
    unfold C
    simp [show (4251528 * k + 3217192) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1608596) = 1062882 * k + 804298 := by
    unfold C
    simp [show (2125764 * k + 1608596) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 804298) = 531441 * k + 402149 := by
    unfold C
    simp [show (1062882 * k + 804298) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 793471) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 793471)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_793583 : ∀ k : Nat,
    iterate (1048576 * k + 793583) 32 = 531441 * k + 402206 ∧
      531441 * k + 402206 < 1048576 * k + 793583 := by
  intro k
  have h1 : C (1048576 * k + 793583) = 3145728 * k + 2380750 := by
    unfold C
    simp [show (1048576 * k + 793583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2380750) = 1572864 * k + 1190375 := by
    unfold C
    simp [show (3145728 * k + 2380750) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1190375) = 4718592 * k + 3571126 := by
    unfold C
    simp [show (1572864 * k + 1190375) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3571126) = 2359296 * k + 1785563 := by
    unfold C
    simp [show (4718592 * k + 3571126) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1785563) = 7077888 * k + 5356690 := by
    unfold C
    simp [show (2359296 * k + 1785563) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5356690) = 3538944 * k + 2678345 := by
    unfold C
    simp [show (7077888 * k + 5356690) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2678345) = 10616832 * k + 8035036 := by
    unfold C
    simp [show (3538944 * k + 2678345) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8035036) = 5308416 * k + 4017518 := by
    unfold C
    simp [show (10616832 * k + 8035036) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4017518) = 2654208 * k + 2008759 := by
    unfold C
    simp [show (5308416 * k + 4017518) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2008759) = 7962624 * k + 6026278 := by
    unfold C
    simp [show (2654208 * k + 2008759) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6026278) = 3981312 * k + 3013139 := by
    unfold C
    simp [show (7962624 * k + 6026278) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3013139) = 11943936 * k + 9039418 := by
    unfold C
    simp [show (3981312 * k + 3013139) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9039418) = 5971968 * k + 4519709 := by
    unfold C
    simp [show (11943936 * k + 9039418) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4519709) = 17915904 * k + 13559128 := by
    unfold C
    simp [show (5971968 * k + 4519709) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13559128) = 8957952 * k + 6779564 := by
    unfold C
    simp [show (17915904 * k + 13559128) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6779564) = 4478976 * k + 3389782 := by
    unfold C
    simp [show (8957952 * k + 6779564) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3389782) = 2239488 * k + 1694891 := by
    unfold C
    simp [show (4478976 * k + 3389782) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1694891) = 6718464 * k + 5084674 := by
    unfold C
    simp [show (2239488 * k + 1694891) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5084674) = 3359232 * k + 2542337 := by
    unfold C
    simp [show (6718464 * k + 5084674) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2542337) = 10077696 * k + 7627012 := by
    unfold C
    simp [show (3359232 * k + 2542337) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7627012) = 5038848 * k + 3813506 := by
    unfold C
    simp [show (10077696 * k + 7627012) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3813506) = 2519424 * k + 1906753 := by
    unfold C
    simp [show (5038848 * k + 3813506) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1906753) = 7558272 * k + 5720260 := by
    unfold C
    simp [show (2519424 * k + 1906753) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5720260) = 3779136 * k + 2860130 := by
    unfold C
    simp [show (7558272 * k + 5720260) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2860130) = 1889568 * k + 1430065 := by
    unfold C
    simp [show (3779136 * k + 2860130) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1430065) = 5668704 * k + 4290196 := by
    unfold C
    simp [show (1889568 * k + 1430065) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4290196) = 2834352 * k + 2145098 := by
    unfold C
    simp [show (5668704 * k + 4290196) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2145098) = 1417176 * k + 1072549 := by
    unfold C
    simp [show (2834352 * k + 2145098) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1072549) = 4251528 * k + 3217648 := by
    unfold C
    simp [show (1417176 * k + 1072549) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3217648) = 2125764 * k + 1608824 := by
    unfold C
    simp [show (4251528 * k + 3217648) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1608824) = 1062882 * k + 804412 := by
    unfold C
    simp [show (2125764 * k + 1608824) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 804412) = 531441 * k + 402206 := by
    unfold C
    simp [show (1062882 * k + 804412) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 793583) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 793583)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_794907 : ∀ k : Nat,
    iterate (1048576 * k + 794907) 32 = 531441 * k + 402877 ∧
      531441 * k + 402877 < 1048576 * k + 794907 := by
  intro k
  have h1 : C (1048576 * k + 794907) = 3145728 * k + 2384722 := by
    unfold C
    simp [show (1048576 * k + 794907) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2384722) = 1572864 * k + 1192361 := by
    unfold C
    simp [show (3145728 * k + 2384722) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1192361) = 4718592 * k + 3577084 := by
    unfold C
    simp [show (1572864 * k + 1192361) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3577084) = 2359296 * k + 1788542 := by
    unfold C
    simp [show (4718592 * k + 3577084) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1788542) = 1179648 * k + 894271 := by
    unfold C
    simp [show (2359296 * k + 1788542) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 894271) = 3538944 * k + 2682814 := by
    unfold C
    simp [show (1179648 * k + 894271) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2682814) = 1769472 * k + 1341407 := by
    unfold C
    simp [show (3538944 * k + 2682814) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1341407) = 5308416 * k + 4024222 := by
    unfold C
    simp [show (1769472 * k + 1341407) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4024222) = 2654208 * k + 2012111 := by
    unfold C
    simp [show (5308416 * k + 4024222) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2012111) = 7962624 * k + 6036334 := by
    unfold C
    simp [show (2654208 * k + 2012111) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6036334) = 3981312 * k + 3018167 := by
    unfold C
    simp [show (7962624 * k + 6036334) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3018167) = 11943936 * k + 9054502 := by
    unfold C
    simp [show (3981312 * k + 3018167) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9054502) = 5971968 * k + 4527251 := by
    unfold C
    simp [show (11943936 * k + 9054502) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4527251) = 17915904 * k + 13581754 := by
    unfold C
    simp [show (5971968 * k + 4527251) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13581754) = 8957952 * k + 6790877 := by
    unfold C
    simp [show (17915904 * k + 13581754) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6790877) = 26873856 * k + 20372632 := by
    unfold C
    simp [show (8957952 * k + 6790877) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 20372632) = 13436928 * k + 10186316 := by
    unfold C
    simp [show (26873856 * k + 20372632) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10186316) = 6718464 * k + 5093158 := by
    unfold C
    simp [show (13436928 * k + 10186316) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5093158) = 3359232 * k + 2546579 := by
    unfold C
    simp [show (6718464 * k + 5093158) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2546579) = 10077696 * k + 7639738 := by
    unfold C
    simp [show (3359232 * k + 2546579) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7639738) = 5038848 * k + 3819869 := by
    unfold C
    simp [show (10077696 * k + 7639738) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3819869) = 15116544 * k + 11459608 := by
    unfold C
    simp [show (5038848 * k + 3819869) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11459608) = 7558272 * k + 5729804 := by
    unfold C
    simp [show (15116544 * k + 11459608) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5729804) = 3779136 * k + 2864902 := by
    unfold C
    simp [show (7558272 * k + 5729804) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2864902) = 1889568 * k + 1432451 := by
    unfold C
    simp [show (3779136 * k + 2864902) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1432451) = 5668704 * k + 4297354 := by
    unfold C
    simp [show (1889568 * k + 1432451) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4297354) = 2834352 * k + 2148677 := by
    unfold C
    simp [show (5668704 * k + 4297354) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2148677) = 8503056 * k + 6446032 := by
    unfold C
    simp [show (2834352 * k + 2148677) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6446032) = 4251528 * k + 3223016 := by
    unfold C
    simp [show (8503056 * k + 6446032) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3223016) = 2125764 * k + 1611508 := by
    unfold C
    simp [show (4251528 * k + 3223016) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1611508) = 1062882 * k + 805754 := by
    unfold C
    simp [show (2125764 * k + 1611508) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 805754) = 531441 * k + 402877 := by
    unfold C
    simp [show (1062882 * k + 805754) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 794907) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 794907)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard101
