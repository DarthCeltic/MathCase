import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard122

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_954087 : ∀ k : Nat,
    iterate (1048576 * k + 954087) 32 = 531441 * k + 483553 ∧
      531441 * k + 483553 < 1048576 * k + 954087 := by
  intro k
  have h1 : C (1048576 * k + 954087) = 3145728 * k + 2862262 := by
    unfold C
    simp [show (1048576 * k + 954087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2862262) = 1572864 * k + 1431131 := by
    unfold C
    simp [show (3145728 * k + 2862262) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1431131) = 4718592 * k + 4293394 := by
    unfold C
    simp [show (1572864 * k + 1431131) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4293394) = 2359296 * k + 2146697 := by
    unfold C
    simp [show (4718592 * k + 4293394) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2146697) = 7077888 * k + 6440092 := by
    unfold C
    simp [show (2359296 * k + 2146697) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6440092) = 3538944 * k + 3220046 := by
    unfold C
    simp [show (7077888 * k + 6440092) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3220046) = 1769472 * k + 1610023 := by
    unfold C
    simp [show (3538944 * k + 3220046) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1610023) = 5308416 * k + 4830070 := by
    unfold C
    simp [show (1769472 * k + 1610023) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4830070) = 2654208 * k + 2415035 := by
    unfold C
    simp [show (5308416 * k + 4830070) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2415035) = 7962624 * k + 7245106 := by
    unfold C
    simp [show (2654208 * k + 2415035) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7245106) = 3981312 * k + 3622553 := by
    unfold C
    simp [show (7962624 * k + 7245106) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3622553) = 11943936 * k + 10867660 := by
    unfold C
    simp [show (3981312 * k + 3622553) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10867660) = 5971968 * k + 5433830 := by
    unfold C
    simp [show (11943936 * k + 10867660) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5433830) = 2985984 * k + 2716915 := by
    unfold C
    simp [show (5971968 * k + 5433830) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2716915) = 8957952 * k + 8150746 := by
    unfold C
    simp [show (2985984 * k + 2716915) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8150746) = 4478976 * k + 4075373 := by
    unfold C
    simp [show (8957952 * k + 8150746) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4075373) = 13436928 * k + 12226120 := by
    unfold C
    simp [show (4478976 * k + 4075373) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12226120) = 6718464 * k + 6113060 := by
    unfold C
    simp [show (13436928 * k + 12226120) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6113060) = 3359232 * k + 3056530 := by
    unfold C
    simp [show (6718464 * k + 6113060) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3056530) = 1679616 * k + 1528265 := by
    unfold C
    simp [show (3359232 * k + 3056530) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1528265) = 5038848 * k + 4584796 := by
    unfold C
    simp [show (1679616 * k + 1528265) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4584796) = 2519424 * k + 2292398 := by
    unfold C
    simp [show (5038848 * k + 4584796) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2292398) = 1259712 * k + 1146199 := by
    unfold C
    simp [show (2519424 * k + 2292398) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1146199) = 3779136 * k + 3438598 := by
    unfold C
    simp [show (1259712 * k + 1146199) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3438598) = 1889568 * k + 1719299 := by
    unfold C
    simp [show (3779136 * k + 3438598) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1719299) = 5668704 * k + 5157898 := by
    unfold C
    simp [show (1889568 * k + 1719299) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5157898) = 2834352 * k + 2578949 := by
    unfold C
    simp [show (5668704 * k + 5157898) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2578949) = 8503056 * k + 7736848 := by
    unfold C
    simp [show (2834352 * k + 2578949) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7736848) = 4251528 * k + 3868424 := by
    unfold C
    simp [show (8503056 * k + 7736848) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3868424) = 2125764 * k + 1934212 := by
    unfold C
    simp [show (4251528 * k + 3868424) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1934212) = 1062882 * k + 967106 := by
    unfold C
    simp [show (2125764 * k + 1934212) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 967106) = 531441 * k + 483553 := by
    unfold C
    simp [show (1062882 * k + 967106) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 954087) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 954087)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_955327 : ∀ k : Nat,
    iterate (1048576 * k + 955327) 32 = 531441 * k + 484181 ∧
      531441 * k + 484181 < 1048576 * k + 955327 := by
  intro k
  have h1 : C (1048576 * k + 955327) = 3145728 * k + 2865982 := by
    unfold C
    simp [show (1048576 * k + 955327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2865982) = 1572864 * k + 1432991 := by
    unfold C
    simp [show (3145728 * k + 2865982) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1432991) = 4718592 * k + 4298974 := by
    unfold C
    simp [show (1572864 * k + 1432991) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4298974) = 2359296 * k + 2149487 := by
    unfold C
    simp [show (4718592 * k + 4298974) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2149487) = 7077888 * k + 6448462 := by
    unfold C
    simp [show (2359296 * k + 2149487) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6448462) = 3538944 * k + 3224231 := by
    unfold C
    simp [show (7077888 * k + 6448462) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3224231) = 10616832 * k + 9672694 := by
    unfold C
    simp [show (3538944 * k + 3224231) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9672694) = 5308416 * k + 4836347 := by
    unfold C
    simp [show (10616832 * k + 9672694) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4836347) = 15925248 * k + 14509042 := by
    unfold C
    simp [show (5308416 * k + 4836347) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14509042) = 7962624 * k + 7254521 := by
    unfold C
    simp [show (15925248 * k + 14509042) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7254521) = 23887872 * k + 21763564 := by
    unfold C
    simp [show (7962624 * k + 7254521) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 21763564) = 11943936 * k + 10881782 := by
    unfold C
    simp [show (23887872 * k + 21763564) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10881782) = 5971968 * k + 5440891 := by
    unfold C
    simp [show (11943936 * k + 10881782) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5440891) = 17915904 * k + 16322674 := by
    unfold C
    simp [show (5971968 * k + 5440891) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16322674) = 8957952 * k + 8161337 := by
    unfold C
    simp [show (17915904 * k + 16322674) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8161337) = 26873856 * k + 24484012 := by
    unfold C
    simp [show (8957952 * k + 8161337) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 24484012) = 13436928 * k + 12242006 := by
    unfold C
    simp [show (26873856 * k + 24484012) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12242006) = 6718464 * k + 6121003 := by
    unfold C
    simp [show (13436928 * k + 12242006) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6121003) = 20155392 * k + 18363010 := by
    unfold C
    simp [show (6718464 * k + 6121003) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18363010) = 10077696 * k + 9181505 := by
    unfold C
    simp [show (20155392 * k + 18363010) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9181505) = 30233088 * k + 27544516 := by
    unfold C
    simp [show (10077696 * k + 9181505) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 27544516) = 15116544 * k + 13772258 := by
    unfold C
    simp [show (30233088 * k + 27544516) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13772258) = 7558272 * k + 6886129 := by
    unfold C
    simp [show (15116544 * k + 13772258) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6886129) = 22674816 * k + 20658388 := by
    unfold C
    simp [show (7558272 * k + 6886129) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 20658388) = 11337408 * k + 10329194 := by
    unfold C
    simp [show (22674816 * k + 20658388) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10329194) = 5668704 * k + 5164597 := by
    unfold C
    simp [show (11337408 * k + 10329194) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5164597) = 17006112 * k + 15493792 := by
    unfold C
    simp [show (5668704 * k + 5164597) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 15493792) = 8503056 * k + 7746896 := by
    unfold C
    simp [show (17006112 * k + 15493792) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7746896) = 4251528 * k + 3873448 := by
    unfold C
    simp [show (8503056 * k + 7746896) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3873448) = 2125764 * k + 1936724 := by
    unfold C
    simp [show (4251528 * k + 3873448) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1936724) = 1062882 * k + 968362 := by
    unfold C
    simp [show (2125764 * k + 1936724) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 968362) = 531441 * k + 484181 := by
    unfold C
    simp [show (1062882 * k + 968362) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 955327) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 955327)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_955751 : ∀ k : Nat,
    iterate (1048576 * k + 955751) 32 = 531441 * k + 484396 ∧
      531441 * k + 484396 < 1048576 * k + 955751 := by
  intro k
  have h1 : C (1048576 * k + 955751) = 3145728 * k + 2867254 := by
    unfold C
    simp [show (1048576 * k + 955751) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2867254) = 1572864 * k + 1433627 := by
    unfold C
    simp [show (3145728 * k + 2867254) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1433627) = 4718592 * k + 4300882 := by
    unfold C
    simp [show (1572864 * k + 1433627) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4300882) = 2359296 * k + 2150441 := by
    unfold C
    simp [show (4718592 * k + 4300882) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2150441) = 7077888 * k + 6451324 := by
    unfold C
    simp [show (2359296 * k + 2150441) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6451324) = 3538944 * k + 3225662 := by
    unfold C
    simp [show (7077888 * k + 6451324) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3225662) = 1769472 * k + 1612831 := by
    unfold C
    simp [show (3538944 * k + 3225662) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1612831) = 5308416 * k + 4838494 := by
    unfold C
    simp [show (1769472 * k + 1612831) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4838494) = 2654208 * k + 2419247 := by
    unfold C
    simp [show (5308416 * k + 4838494) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2419247) = 7962624 * k + 7257742 := by
    unfold C
    simp [show (2654208 * k + 2419247) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7257742) = 3981312 * k + 3628871 := by
    unfold C
    simp [show (7962624 * k + 7257742) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3628871) = 11943936 * k + 10886614 := by
    unfold C
    simp [show (3981312 * k + 3628871) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10886614) = 5971968 * k + 5443307 := by
    unfold C
    simp [show (11943936 * k + 10886614) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5443307) = 17915904 * k + 16329922 := by
    unfold C
    simp [show (5971968 * k + 5443307) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16329922) = 8957952 * k + 8164961 := by
    unfold C
    simp [show (17915904 * k + 16329922) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8164961) = 26873856 * k + 24494884 := by
    unfold C
    simp [show (8957952 * k + 8164961) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 24494884) = 13436928 * k + 12247442 := by
    unfold C
    simp [show (26873856 * k + 24494884) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12247442) = 6718464 * k + 6123721 := by
    unfold C
    simp [show (13436928 * k + 12247442) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6123721) = 20155392 * k + 18371164 := by
    unfold C
    simp [show (6718464 * k + 6123721) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18371164) = 10077696 * k + 9185582 := by
    unfold C
    simp [show (20155392 * k + 18371164) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9185582) = 5038848 * k + 4592791 := by
    unfold C
    simp [show (10077696 * k + 9185582) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4592791) = 15116544 * k + 13778374 := by
    unfold C
    simp [show (5038848 * k + 4592791) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13778374) = 7558272 * k + 6889187 := by
    unfold C
    simp [show (15116544 * k + 13778374) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6889187) = 22674816 * k + 20667562 := by
    unfold C
    simp [show (7558272 * k + 6889187) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 20667562) = 11337408 * k + 10333781 := by
    unfold C
    simp [show (22674816 * k + 20667562) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10333781) = 34012224 * k + 31001344 := by
    unfold C
    simp [show (11337408 * k + 10333781) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 31001344) = 17006112 * k + 15500672 := by
    unfold C
    simp [show (34012224 * k + 31001344) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 15500672) = 8503056 * k + 7750336 := by
    unfold C
    simp [show (17006112 * k + 15500672) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7750336) = 4251528 * k + 3875168 := by
    unfold C
    simp [show (8503056 * k + 7750336) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3875168) = 2125764 * k + 1937584 := by
    unfold C
    simp [show (4251528 * k + 3875168) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1937584) = 1062882 * k + 968792 := by
    unfold C
    simp [show (2125764 * k + 1937584) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 968792) = 531441 * k + 484396 := by
    unfold C
    simp [show (1062882 * k + 968792) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 955751) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 955751)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_956007 : ∀ k : Nat,
    iterate (1048576 * k + 956007) 32 = 531441 * k + 484526 ∧
      531441 * k + 484526 < 1048576 * k + 956007 := by
  intro k
  have h1 : C (1048576 * k + 956007) = 3145728 * k + 2868022 := by
    unfold C
    simp [show (1048576 * k + 956007) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2868022) = 1572864 * k + 1434011 := by
    unfold C
    simp [show (3145728 * k + 2868022) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1434011) = 4718592 * k + 4302034 := by
    unfold C
    simp [show (1572864 * k + 1434011) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4302034) = 2359296 * k + 2151017 := by
    unfold C
    simp [show (4718592 * k + 4302034) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2151017) = 7077888 * k + 6453052 := by
    unfold C
    simp [show (2359296 * k + 2151017) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6453052) = 3538944 * k + 3226526 := by
    unfold C
    simp [show (7077888 * k + 6453052) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3226526) = 1769472 * k + 1613263 := by
    unfold C
    simp [show (3538944 * k + 3226526) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1613263) = 5308416 * k + 4839790 := by
    unfold C
    simp [show (1769472 * k + 1613263) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4839790) = 2654208 * k + 2419895 := by
    unfold C
    simp [show (5308416 * k + 4839790) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2419895) = 7962624 * k + 7259686 := by
    unfold C
    simp [show (2654208 * k + 2419895) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7259686) = 3981312 * k + 3629843 := by
    unfold C
    simp [show (7962624 * k + 7259686) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3629843) = 11943936 * k + 10889530 := by
    unfold C
    simp [show (3981312 * k + 3629843) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10889530) = 5971968 * k + 5444765 := by
    unfold C
    simp [show (11943936 * k + 10889530) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5444765) = 17915904 * k + 16334296 := by
    unfold C
    simp [show (5971968 * k + 5444765) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16334296) = 8957952 * k + 8167148 := by
    unfold C
    simp [show (17915904 * k + 16334296) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8167148) = 4478976 * k + 4083574 := by
    unfold C
    simp [show (8957952 * k + 8167148) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4083574) = 2239488 * k + 2041787 := by
    unfold C
    simp [show (4478976 * k + 4083574) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2041787) = 6718464 * k + 6125362 := by
    unfold C
    simp [show (2239488 * k + 2041787) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6125362) = 3359232 * k + 3062681 := by
    unfold C
    simp [show (6718464 * k + 6125362) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3062681) = 10077696 * k + 9188044 := by
    unfold C
    simp [show (3359232 * k + 3062681) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9188044) = 5038848 * k + 4594022 := by
    unfold C
    simp [show (10077696 * k + 9188044) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4594022) = 2519424 * k + 2297011 := by
    unfold C
    simp [show (5038848 * k + 4594022) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2297011) = 7558272 * k + 6891034 := by
    unfold C
    simp [show (2519424 * k + 2297011) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6891034) = 3779136 * k + 3445517 := by
    unfold C
    simp [show (7558272 * k + 6891034) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3445517) = 11337408 * k + 10336552 := by
    unfold C
    simp [show (3779136 * k + 3445517) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10336552) = 5668704 * k + 5168276 := by
    unfold C
    simp [show (11337408 * k + 10336552) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5168276) = 2834352 * k + 2584138 := by
    unfold C
    simp [show (5668704 * k + 5168276) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2584138) = 1417176 * k + 1292069 := by
    unfold C
    simp [show (2834352 * k + 2584138) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1292069) = 4251528 * k + 3876208 := by
    unfold C
    simp [show (1417176 * k + 1292069) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3876208) = 2125764 * k + 1938104 := by
    unfold C
    simp [show (4251528 * k + 3876208) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1938104) = 1062882 * k + 969052 := by
    unfold C
    simp [show (2125764 * k + 1938104) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 969052) = 531441 * k + 484526 := by
    unfold C
    simp [show (1062882 * k + 969052) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 956007) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 956007)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_956443 : ∀ k : Nat,
    iterate (1048576 * k + 956443) 32 = 531441 * k + 484747 ∧
      531441 * k + 484747 < 1048576 * k + 956443 := by
  intro k
  have h1 : C (1048576 * k + 956443) = 3145728 * k + 2869330 := by
    unfold C
    simp [show (1048576 * k + 956443) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2869330) = 1572864 * k + 1434665 := by
    unfold C
    simp [show (3145728 * k + 2869330) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1434665) = 4718592 * k + 4303996 := by
    unfold C
    simp [show (1572864 * k + 1434665) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4303996) = 2359296 * k + 2151998 := by
    unfold C
    simp [show (4718592 * k + 4303996) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2151998) = 1179648 * k + 1075999 := by
    unfold C
    simp [show (2359296 * k + 2151998) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1075999) = 3538944 * k + 3227998 := by
    unfold C
    simp [show (1179648 * k + 1075999) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3227998) = 1769472 * k + 1613999 := by
    unfold C
    simp [show (3538944 * k + 3227998) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1613999) = 5308416 * k + 4841998 := by
    unfold C
    simp [show (1769472 * k + 1613999) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4841998) = 2654208 * k + 2420999 := by
    unfold C
    simp [show (5308416 * k + 4841998) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2420999) = 7962624 * k + 7262998 := by
    unfold C
    simp [show (2654208 * k + 2420999) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7262998) = 3981312 * k + 3631499 := by
    unfold C
    simp [show (7962624 * k + 7262998) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3631499) = 11943936 * k + 10894498 := by
    unfold C
    simp [show (3981312 * k + 3631499) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10894498) = 5971968 * k + 5447249 := by
    unfold C
    simp [show (11943936 * k + 10894498) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5447249) = 17915904 * k + 16341748 := by
    unfold C
    simp [show (5971968 * k + 5447249) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16341748) = 8957952 * k + 8170874 := by
    unfold C
    simp [show (17915904 * k + 16341748) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8170874) = 4478976 * k + 4085437 := by
    unfold C
    simp [show (8957952 * k + 8170874) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4085437) = 13436928 * k + 12256312 := by
    unfold C
    simp [show (4478976 * k + 4085437) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12256312) = 6718464 * k + 6128156 := by
    unfold C
    simp [show (13436928 * k + 12256312) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6128156) = 3359232 * k + 3064078 := by
    unfold C
    simp [show (6718464 * k + 6128156) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3064078) = 1679616 * k + 1532039 := by
    unfold C
    simp [show (3359232 * k + 3064078) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1532039) = 5038848 * k + 4596118 := by
    unfold C
    simp [show (1679616 * k + 1532039) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4596118) = 2519424 * k + 2298059 := by
    unfold C
    simp [show (5038848 * k + 4596118) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2298059) = 7558272 * k + 6894178 := by
    unfold C
    simp [show (2519424 * k + 2298059) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6894178) = 3779136 * k + 3447089 := by
    unfold C
    simp [show (7558272 * k + 6894178) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3447089) = 11337408 * k + 10341268 := by
    unfold C
    simp [show (3779136 * k + 3447089) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10341268) = 5668704 * k + 5170634 := by
    unfold C
    simp [show (11337408 * k + 10341268) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5170634) = 2834352 * k + 2585317 := by
    unfold C
    simp [show (5668704 * k + 5170634) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2585317) = 8503056 * k + 7755952 := by
    unfold C
    simp [show (2834352 * k + 2585317) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7755952) = 4251528 * k + 3877976 := by
    unfold C
    simp [show (8503056 * k + 7755952) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3877976) = 2125764 * k + 1938988 := by
    unfold C
    simp [show (4251528 * k + 3877976) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1938988) = 1062882 * k + 969494 := by
    unfold C
    simp [show (2125764 * k + 1938988) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 969494) = 531441 * k + 484747 := by
    unfold C
    simp [show (1062882 * k + 969494) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 956443) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 956443)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_956911 : ∀ k : Nat,
    iterate (1048576 * k + 956911) 32 = 531441 * k + 484984 ∧
      531441 * k + 484984 < 1048576 * k + 956911 := by
  intro k
  have h1 : C (1048576 * k + 956911) = 3145728 * k + 2870734 := by
    unfold C
    simp [show (1048576 * k + 956911) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2870734) = 1572864 * k + 1435367 := by
    unfold C
    simp [show (3145728 * k + 2870734) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1435367) = 4718592 * k + 4306102 := by
    unfold C
    simp [show (1572864 * k + 1435367) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4306102) = 2359296 * k + 2153051 := by
    unfold C
    simp [show (4718592 * k + 4306102) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2153051) = 7077888 * k + 6459154 := by
    unfold C
    simp [show (2359296 * k + 2153051) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6459154) = 3538944 * k + 3229577 := by
    unfold C
    simp [show (7077888 * k + 6459154) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3229577) = 10616832 * k + 9688732 := by
    unfold C
    simp [show (3538944 * k + 3229577) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9688732) = 5308416 * k + 4844366 := by
    unfold C
    simp [show (10616832 * k + 9688732) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4844366) = 2654208 * k + 2422183 := by
    unfold C
    simp [show (5308416 * k + 4844366) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2422183) = 7962624 * k + 7266550 := by
    unfold C
    simp [show (2654208 * k + 2422183) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7266550) = 3981312 * k + 3633275 := by
    unfold C
    simp [show (7962624 * k + 7266550) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3633275) = 11943936 * k + 10899826 := by
    unfold C
    simp [show (3981312 * k + 3633275) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10899826) = 5971968 * k + 5449913 := by
    unfold C
    simp [show (11943936 * k + 10899826) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5449913) = 17915904 * k + 16349740 := by
    unfold C
    simp [show (5971968 * k + 5449913) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16349740) = 8957952 * k + 8174870 := by
    unfold C
    simp [show (17915904 * k + 16349740) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8174870) = 4478976 * k + 4087435 := by
    unfold C
    simp [show (8957952 * k + 8174870) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4087435) = 13436928 * k + 12262306 := by
    unfold C
    simp [show (4478976 * k + 4087435) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12262306) = 6718464 * k + 6131153 := by
    unfold C
    simp [show (13436928 * k + 12262306) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6131153) = 20155392 * k + 18393460 := by
    unfold C
    simp [show (6718464 * k + 6131153) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18393460) = 10077696 * k + 9196730 := by
    unfold C
    simp [show (20155392 * k + 18393460) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9196730) = 5038848 * k + 4598365 := by
    unfold C
    simp [show (10077696 * k + 9196730) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4598365) = 15116544 * k + 13795096 := by
    unfold C
    simp [show (5038848 * k + 4598365) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13795096) = 7558272 * k + 6897548 := by
    unfold C
    simp [show (15116544 * k + 13795096) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6897548) = 3779136 * k + 3448774 := by
    unfold C
    simp [show (7558272 * k + 6897548) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3448774) = 1889568 * k + 1724387 := by
    unfold C
    simp [show (3779136 * k + 3448774) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1724387) = 5668704 * k + 5173162 := by
    unfold C
    simp [show (1889568 * k + 1724387) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5173162) = 2834352 * k + 2586581 := by
    unfold C
    simp [show (5668704 * k + 5173162) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2586581) = 8503056 * k + 7759744 := by
    unfold C
    simp [show (2834352 * k + 2586581) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7759744) = 4251528 * k + 3879872 := by
    unfold C
    simp [show (8503056 * k + 7759744) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3879872) = 2125764 * k + 1939936 := by
    unfold C
    simp [show (4251528 * k + 3879872) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1939936) = 1062882 * k + 969968 := by
    unfold C
    simp [show (2125764 * k + 1939936) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 969968) = 531441 * k + 484984 := by
    unfold C
    simp [show (1062882 * k + 969968) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 956911) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 956911)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_957799 : ∀ k : Nat,
    iterate (1048576 * k + 957799) 32 = 531441 * k + 485434 ∧
      531441 * k + 485434 < 1048576 * k + 957799 := by
  intro k
  have h1 : C (1048576 * k + 957799) = 3145728 * k + 2873398 := by
    unfold C
    simp [show (1048576 * k + 957799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2873398) = 1572864 * k + 1436699 := by
    unfold C
    simp [show (3145728 * k + 2873398) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1436699) = 4718592 * k + 4310098 := by
    unfold C
    simp [show (1572864 * k + 1436699) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4310098) = 2359296 * k + 2155049 := by
    unfold C
    simp [show (4718592 * k + 4310098) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2155049) = 7077888 * k + 6465148 := by
    unfold C
    simp [show (2359296 * k + 2155049) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6465148) = 3538944 * k + 3232574 := by
    unfold C
    simp [show (7077888 * k + 6465148) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3232574) = 1769472 * k + 1616287 := by
    unfold C
    simp [show (3538944 * k + 3232574) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1616287) = 5308416 * k + 4848862 := by
    unfold C
    simp [show (1769472 * k + 1616287) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4848862) = 2654208 * k + 2424431 := by
    unfold C
    simp [show (5308416 * k + 4848862) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2424431) = 7962624 * k + 7273294 := by
    unfold C
    simp [show (2654208 * k + 2424431) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7273294) = 3981312 * k + 3636647 := by
    unfold C
    simp [show (7962624 * k + 7273294) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3636647) = 11943936 * k + 10909942 := by
    unfold C
    simp [show (3981312 * k + 3636647) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10909942) = 5971968 * k + 5454971 := by
    unfold C
    simp [show (11943936 * k + 10909942) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5454971) = 17915904 * k + 16364914 := by
    unfold C
    simp [show (5971968 * k + 5454971) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16364914) = 8957952 * k + 8182457 := by
    unfold C
    simp [show (17915904 * k + 16364914) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8182457) = 26873856 * k + 24547372 := by
    unfold C
    simp [show (8957952 * k + 8182457) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 24547372) = 13436928 * k + 12273686 := by
    unfold C
    simp [show (26873856 * k + 24547372) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12273686) = 6718464 * k + 6136843 := by
    unfold C
    simp [show (13436928 * k + 12273686) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6136843) = 20155392 * k + 18410530 := by
    unfold C
    simp [show (6718464 * k + 6136843) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18410530) = 10077696 * k + 9205265 := by
    unfold C
    simp [show (20155392 * k + 18410530) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9205265) = 30233088 * k + 27615796 := by
    unfold C
    simp [show (10077696 * k + 9205265) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 27615796) = 15116544 * k + 13807898 := by
    unfold C
    simp [show (30233088 * k + 27615796) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13807898) = 7558272 * k + 6903949 := by
    unfold C
    simp [show (15116544 * k + 13807898) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6903949) = 22674816 * k + 20711848 := by
    unfold C
    simp [show (7558272 * k + 6903949) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 20711848) = 11337408 * k + 10355924 := by
    unfold C
    simp [show (22674816 * k + 20711848) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10355924) = 5668704 * k + 5177962 := by
    unfold C
    simp [show (11337408 * k + 10355924) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5177962) = 2834352 * k + 2588981 := by
    unfold C
    simp [show (5668704 * k + 5177962) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2588981) = 8503056 * k + 7766944 := by
    unfold C
    simp [show (2834352 * k + 2588981) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7766944) = 4251528 * k + 3883472 := by
    unfold C
    simp [show (8503056 * k + 7766944) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3883472) = 2125764 * k + 1941736 := by
    unfold C
    simp [show (4251528 * k + 3883472) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1941736) = 1062882 * k + 970868 := by
    unfold C
    simp [show (2125764 * k + 1941736) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 970868) = 531441 * k + 485434 := by
    unfold C
    simp [show (1062882 * k + 970868) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 957799) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 957799)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_957935 : ∀ k : Nat,
    iterate (1048576 * k + 957935) 32 = 531441 * k + 485503 ∧
      531441 * k + 485503 < 1048576 * k + 957935 := by
  intro k
  have h1 : C (1048576 * k + 957935) = 3145728 * k + 2873806 := by
    unfold C
    simp [show (1048576 * k + 957935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2873806) = 1572864 * k + 1436903 := by
    unfold C
    simp [show (3145728 * k + 2873806) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1436903) = 4718592 * k + 4310710 := by
    unfold C
    simp [show (1572864 * k + 1436903) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4310710) = 2359296 * k + 2155355 := by
    unfold C
    simp [show (4718592 * k + 4310710) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2155355) = 7077888 * k + 6466066 := by
    unfold C
    simp [show (2359296 * k + 2155355) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6466066) = 3538944 * k + 3233033 := by
    unfold C
    simp [show (7077888 * k + 6466066) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3233033) = 10616832 * k + 9699100 := by
    unfold C
    simp [show (3538944 * k + 3233033) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9699100) = 5308416 * k + 4849550 := by
    unfold C
    simp [show (10616832 * k + 9699100) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4849550) = 2654208 * k + 2424775 := by
    unfold C
    simp [show (5308416 * k + 4849550) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2424775) = 7962624 * k + 7274326 := by
    unfold C
    simp [show (2654208 * k + 2424775) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7274326) = 3981312 * k + 3637163 := by
    unfold C
    simp [show (7962624 * k + 7274326) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3637163) = 11943936 * k + 10911490 := by
    unfold C
    simp [show (3981312 * k + 3637163) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10911490) = 5971968 * k + 5455745 := by
    unfold C
    simp [show (11943936 * k + 10911490) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5455745) = 17915904 * k + 16367236 := by
    unfold C
    simp [show (5971968 * k + 5455745) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16367236) = 8957952 * k + 8183618 := by
    unfold C
    simp [show (17915904 * k + 16367236) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8183618) = 4478976 * k + 4091809 := by
    unfold C
    simp [show (8957952 * k + 8183618) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4091809) = 13436928 * k + 12275428 := by
    unfold C
    simp [show (4478976 * k + 4091809) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12275428) = 6718464 * k + 6137714 := by
    unfold C
    simp [show (13436928 * k + 12275428) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6137714) = 3359232 * k + 3068857 := by
    unfold C
    simp [show (6718464 * k + 6137714) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3068857) = 10077696 * k + 9206572 := by
    unfold C
    simp [show (3359232 * k + 3068857) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9206572) = 5038848 * k + 4603286 := by
    unfold C
    simp [show (10077696 * k + 9206572) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4603286) = 2519424 * k + 2301643 := by
    unfold C
    simp [show (5038848 * k + 4603286) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2301643) = 7558272 * k + 6904930 := by
    unfold C
    simp [show (2519424 * k + 2301643) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6904930) = 3779136 * k + 3452465 := by
    unfold C
    simp [show (7558272 * k + 6904930) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3452465) = 11337408 * k + 10357396 := by
    unfold C
    simp [show (3779136 * k + 3452465) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10357396) = 5668704 * k + 5178698 := by
    unfold C
    simp [show (11337408 * k + 10357396) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5178698) = 2834352 * k + 2589349 := by
    unfold C
    simp [show (5668704 * k + 5178698) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2589349) = 8503056 * k + 7768048 := by
    unfold C
    simp [show (2834352 * k + 2589349) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7768048) = 4251528 * k + 3884024 := by
    unfold C
    simp [show (8503056 * k + 7768048) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3884024) = 2125764 * k + 1942012 := by
    unfold C
    simp [show (4251528 * k + 3884024) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1942012) = 1062882 * k + 971006 := by
    unfold C
    simp [show (2125764 * k + 1942012) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 971006) = 531441 * k + 485503 := by
    unfold C
    simp [show (1062882 * k + 971006) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 957935) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 957935)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_958367 : ∀ k : Nat,
    iterate (1048576 * k + 958367) 32 = 531441 * k + 485722 ∧
      531441 * k + 485722 < 1048576 * k + 958367 := by
  intro k
  have h1 : C (1048576 * k + 958367) = 3145728 * k + 2875102 := by
    unfold C
    simp [show (1048576 * k + 958367) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2875102) = 1572864 * k + 1437551 := by
    unfold C
    simp [show (3145728 * k + 2875102) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1437551) = 4718592 * k + 4312654 := by
    unfold C
    simp [show (1572864 * k + 1437551) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4312654) = 2359296 * k + 2156327 := by
    unfold C
    simp [show (4718592 * k + 4312654) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2156327) = 7077888 * k + 6468982 := by
    unfold C
    simp [show (2359296 * k + 2156327) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6468982) = 3538944 * k + 3234491 := by
    unfold C
    simp [show (7077888 * k + 6468982) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3234491) = 10616832 * k + 9703474 := by
    unfold C
    simp [show (3538944 * k + 3234491) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9703474) = 5308416 * k + 4851737 := by
    unfold C
    simp [show (10616832 * k + 9703474) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4851737) = 15925248 * k + 14555212 := by
    unfold C
    simp [show (5308416 * k + 4851737) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14555212) = 7962624 * k + 7277606 := by
    unfold C
    simp [show (15925248 * k + 14555212) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7277606) = 3981312 * k + 3638803 := by
    unfold C
    simp [show (7962624 * k + 7277606) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3638803) = 11943936 * k + 10916410 := by
    unfold C
    simp [show (3981312 * k + 3638803) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10916410) = 5971968 * k + 5458205 := by
    unfold C
    simp [show (11943936 * k + 10916410) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5458205) = 17915904 * k + 16374616 := by
    unfold C
    simp [show (5971968 * k + 5458205) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16374616) = 8957952 * k + 8187308 := by
    unfold C
    simp [show (17915904 * k + 16374616) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8187308) = 4478976 * k + 4093654 := by
    unfold C
    simp [show (8957952 * k + 8187308) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4093654) = 2239488 * k + 2046827 := by
    unfold C
    simp [show (4478976 * k + 4093654) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2046827) = 6718464 * k + 6140482 := by
    unfold C
    simp [show (2239488 * k + 2046827) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6140482) = 3359232 * k + 3070241 := by
    unfold C
    simp [show (6718464 * k + 6140482) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3070241) = 10077696 * k + 9210724 := by
    unfold C
    simp [show (3359232 * k + 3070241) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9210724) = 5038848 * k + 4605362 := by
    unfold C
    simp [show (10077696 * k + 9210724) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4605362) = 2519424 * k + 2302681 := by
    unfold C
    simp [show (5038848 * k + 4605362) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2302681) = 7558272 * k + 6908044 := by
    unfold C
    simp [show (2519424 * k + 2302681) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6908044) = 3779136 * k + 3454022 := by
    unfold C
    simp [show (7558272 * k + 6908044) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3454022) = 1889568 * k + 1727011 := by
    unfold C
    simp [show (3779136 * k + 3454022) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1727011) = 5668704 * k + 5181034 := by
    unfold C
    simp [show (1889568 * k + 1727011) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5181034) = 2834352 * k + 2590517 := by
    unfold C
    simp [show (5668704 * k + 5181034) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2590517) = 8503056 * k + 7771552 := by
    unfold C
    simp [show (2834352 * k + 2590517) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7771552) = 4251528 * k + 3885776 := by
    unfold C
    simp [show (8503056 * k + 7771552) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3885776) = 2125764 * k + 1942888 := by
    unfold C
    simp [show (4251528 * k + 3885776) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1942888) = 1062882 * k + 971444 := by
    unfold C
    simp [show (2125764 * k + 1942888) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 971444) = 531441 * k + 485722 := by
    unfold C
    simp [show (1062882 * k + 971444) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 958367) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 958367)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_958399 : ∀ k : Nat,
    iterate (1048576 * k + 958399) 32 = 531441 * k + 485738 ∧
      531441 * k + 485738 < 1048576 * k + 958399 := by
  intro k
  have h1 : C (1048576 * k + 958399) = 3145728 * k + 2875198 := by
    unfold C
    simp [show (1048576 * k + 958399) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2875198) = 1572864 * k + 1437599 := by
    unfold C
    simp [show (3145728 * k + 2875198) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1437599) = 4718592 * k + 4312798 := by
    unfold C
    simp [show (1572864 * k + 1437599) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4312798) = 2359296 * k + 2156399 := by
    unfold C
    simp [show (4718592 * k + 4312798) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2156399) = 7077888 * k + 6469198 := by
    unfold C
    simp [show (2359296 * k + 2156399) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6469198) = 3538944 * k + 3234599 := by
    unfold C
    simp [show (7077888 * k + 6469198) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3234599) = 10616832 * k + 9703798 := by
    unfold C
    simp [show (3538944 * k + 3234599) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9703798) = 5308416 * k + 4851899 := by
    unfold C
    simp [show (10616832 * k + 9703798) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4851899) = 15925248 * k + 14555698 := by
    unfold C
    simp [show (5308416 * k + 4851899) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14555698) = 7962624 * k + 7277849 := by
    unfold C
    simp [show (15925248 * k + 14555698) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7277849) = 23887872 * k + 21833548 := by
    unfold C
    simp [show (7962624 * k + 7277849) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 21833548) = 11943936 * k + 10916774 := by
    unfold C
    simp [show (23887872 * k + 21833548) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10916774) = 5971968 * k + 5458387 := by
    unfold C
    simp [show (11943936 * k + 10916774) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5458387) = 17915904 * k + 16375162 := by
    unfold C
    simp [show (5971968 * k + 5458387) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16375162) = 8957952 * k + 8187581 := by
    unfold C
    simp [show (17915904 * k + 16375162) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8187581) = 26873856 * k + 24562744 := by
    unfold C
    simp [show (8957952 * k + 8187581) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 24562744) = 13436928 * k + 12281372 := by
    unfold C
    simp [show (26873856 * k + 24562744) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12281372) = 6718464 * k + 6140686 := by
    unfold C
    simp [show (13436928 * k + 12281372) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6140686) = 3359232 * k + 3070343 := by
    unfold C
    simp [show (6718464 * k + 6140686) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3070343) = 10077696 * k + 9211030 := by
    unfold C
    simp [show (3359232 * k + 3070343) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9211030) = 5038848 * k + 4605515 := by
    unfold C
    simp [show (10077696 * k + 9211030) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4605515) = 15116544 * k + 13816546 := by
    unfold C
    simp [show (5038848 * k + 4605515) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13816546) = 7558272 * k + 6908273 := by
    unfold C
    simp [show (15116544 * k + 13816546) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6908273) = 22674816 * k + 20724820 := by
    unfold C
    simp [show (7558272 * k + 6908273) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 20724820) = 11337408 * k + 10362410 := by
    unfold C
    simp [show (22674816 * k + 20724820) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10362410) = 5668704 * k + 5181205 := by
    unfold C
    simp [show (11337408 * k + 10362410) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5181205) = 17006112 * k + 15543616 := by
    unfold C
    simp [show (5668704 * k + 5181205) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 15543616) = 8503056 * k + 7771808 := by
    unfold C
    simp [show (17006112 * k + 15543616) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7771808) = 4251528 * k + 3885904 := by
    unfold C
    simp [show (8503056 * k + 7771808) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3885904) = 2125764 * k + 1942952 := by
    unfold C
    simp [show (4251528 * k + 3885904) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1942952) = 1062882 * k + 971476 := by
    unfold C
    simp [show (2125764 * k + 1942952) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 971476) = 531441 * k + 485738 := by
    unfold C
    simp [show (1062882 * k + 971476) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 958399) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 958399)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_958943 : ∀ k : Nat,
    iterate (1048576 * k + 958943) 32 = 531441 * k + 486014 ∧
      531441 * k + 486014 < 1048576 * k + 958943 := by
  intro k
  have h1 : C (1048576 * k + 958943) = 3145728 * k + 2876830 := by
    unfold C
    simp [show (1048576 * k + 958943) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2876830) = 1572864 * k + 1438415 := by
    unfold C
    simp [show (3145728 * k + 2876830) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1438415) = 4718592 * k + 4315246 := by
    unfold C
    simp [show (1572864 * k + 1438415) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4315246) = 2359296 * k + 2157623 := by
    unfold C
    simp [show (4718592 * k + 4315246) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2157623) = 7077888 * k + 6472870 := by
    unfold C
    simp [show (2359296 * k + 2157623) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6472870) = 3538944 * k + 3236435 := by
    unfold C
    simp [show (7077888 * k + 6472870) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3236435) = 10616832 * k + 9709306 := by
    unfold C
    simp [show (3538944 * k + 3236435) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9709306) = 5308416 * k + 4854653 := by
    unfold C
    simp [show (10616832 * k + 9709306) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4854653) = 15925248 * k + 14563960 := by
    unfold C
    simp [show (5308416 * k + 4854653) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14563960) = 7962624 * k + 7281980 := by
    unfold C
    simp [show (15925248 * k + 14563960) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7281980) = 3981312 * k + 3640990 := by
    unfold C
    simp [show (7962624 * k + 7281980) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3640990) = 1990656 * k + 1820495 := by
    unfold C
    simp [show (3981312 * k + 3640990) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1820495) = 5971968 * k + 5461486 := by
    unfold C
    simp [show (1990656 * k + 1820495) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5461486) = 2985984 * k + 2730743 := by
    unfold C
    simp [show (5971968 * k + 5461486) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2730743) = 8957952 * k + 8192230 := by
    unfold C
    simp [show (2985984 * k + 2730743) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8192230) = 4478976 * k + 4096115 := by
    unfold C
    simp [show (8957952 * k + 8192230) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4096115) = 13436928 * k + 12288346 := by
    unfold C
    simp [show (4478976 * k + 4096115) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12288346) = 6718464 * k + 6144173 := by
    unfold C
    simp [show (13436928 * k + 12288346) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6144173) = 20155392 * k + 18432520 := by
    unfold C
    simp [show (6718464 * k + 6144173) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18432520) = 10077696 * k + 9216260 := by
    unfold C
    simp [show (20155392 * k + 18432520) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9216260) = 5038848 * k + 4608130 := by
    unfold C
    simp [show (10077696 * k + 9216260) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4608130) = 2519424 * k + 2304065 := by
    unfold C
    simp [show (5038848 * k + 4608130) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2304065) = 7558272 * k + 6912196 := by
    unfold C
    simp [show (2519424 * k + 2304065) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6912196) = 3779136 * k + 3456098 := by
    unfold C
    simp [show (7558272 * k + 6912196) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3456098) = 1889568 * k + 1728049 := by
    unfold C
    simp [show (3779136 * k + 3456098) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1728049) = 5668704 * k + 5184148 := by
    unfold C
    simp [show (1889568 * k + 1728049) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5184148) = 2834352 * k + 2592074 := by
    unfold C
    simp [show (5668704 * k + 5184148) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2592074) = 1417176 * k + 1296037 := by
    unfold C
    simp [show (2834352 * k + 2592074) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1296037) = 4251528 * k + 3888112 := by
    unfold C
    simp [show (1417176 * k + 1296037) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3888112) = 2125764 * k + 1944056 := by
    unfold C
    simp [show (4251528 * k + 3888112) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1944056) = 1062882 * k + 972028 := by
    unfold C
    simp [show (2125764 * k + 1944056) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 972028) = 531441 * k + 486014 := by
    unfold C
    simp [show (1062882 * k + 972028) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 958943) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 958943)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_960871 : ∀ k : Nat,
    iterate (1048576 * k + 960871) 32 = 531441 * k + 486991 ∧
      531441 * k + 486991 < 1048576 * k + 960871 := by
  intro k
  have h1 : C (1048576 * k + 960871) = 3145728 * k + 2882614 := by
    unfold C
    simp [show (1048576 * k + 960871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2882614) = 1572864 * k + 1441307 := by
    unfold C
    simp [show (3145728 * k + 2882614) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1441307) = 4718592 * k + 4323922 := by
    unfold C
    simp [show (1572864 * k + 1441307) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4323922) = 2359296 * k + 2161961 := by
    unfold C
    simp [show (4718592 * k + 4323922) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2161961) = 7077888 * k + 6485884 := by
    unfold C
    simp [show (2359296 * k + 2161961) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6485884) = 3538944 * k + 3242942 := by
    unfold C
    simp [show (7077888 * k + 6485884) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3242942) = 1769472 * k + 1621471 := by
    unfold C
    simp [show (3538944 * k + 3242942) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1621471) = 5308416 * k + 4864414 := by
    unfold C
    simp [show (1769472 * k + 1621471) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4864414) = 2654208 * k + 2432207 := by
    unfold C
    simp [show (5308416 * k + 4864414) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2432207) = 7962624 * k + 7296622 := by
    unfold C
    simp [show (2654208 * k + 2432207) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7296622) = 3981312 * k + 3648311 := by
    unfold C
    simp [show (7962624 * k + 7296622) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3648311) = 11943936 * k + 10944934 := by
    unfold C
    simp [show (3981312 * k + 3648311) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10944934) = 5971968 * k + 5472467 := by
    unfold C
    simp [show (11943936 * k + 10944934) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5472467) = 17915904 * k + 16417402 := by
    unfold C
    simp [show (5971968 * k + 5472467) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16417402) = 8957952 * k + 8208701 := by
    unfold C
    simp [show (17915904 * k + 16417402) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8208701) = 26873856 * k + 24626104 := by
    unfold C
    simp [show (8957952 * k + 8208701) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 24626104) = 13436928 * k + 12313052 := by
    unfold C
    simp [show (26873856 * k + 24626104) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12313052) = 6718464 * k + 6156526 := by
    unfold C
    simp [show (13436928 * k + 12313052) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6156526) = 3359232 * k + 3078263 := by
    unfold C
    simp [show (6718464 * k + 6156526) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3078263) = 10077696 * k + 9234790 := by
    unfold C
    simp [show (3359232 * k + 3078263) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9234790) = 5038848 * k + 4617395 := by
    unfold C
    simp [show (10077696 * k + 9234790) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4617395) = 15116544 * k + 13852186 := by
    unfold C
    simp [show (5038848 * k + 4617395) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13852186) = 7558272 * k + 6926093 := by
    unfold C
    simp [show (15116544 * k + 13852186) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6926093) = 22674816 * k + 20778280 := by
    unfold C
    simp [show (7558272 * k + 6926093) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 20778280) = 11337408 * k + 10389140 := by
    unfold C
    simp [show (22674816 * k + 20778280) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10389140) = 5668704 * k + 5194570 := by
    unfold C
    simp [show (11337408 * k + 10389140) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5194570) = 2834352 * k + 2597285 := by
    unfold C
    simp [show (5668704 * k + 5194570) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2597285) = 8503056 * k + 7791856 := by
    unfold C
    simp [show (2834352 * k + 2597285) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7791856) = 4251528 * k + 3895928 := by
    unfold C
    simp [show (8503056 * k + 7791856) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3895928) = 2125764 * k + 1947964 := by
    unfold C
    simp [show (4251528 * k + 3895928) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1947964) = 1062882 * k + 973982 := by
    unfold C
    simp [show (2125764 * k + 1947964) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 973982) = 531441 * k + 486991 := by
    unfold C
    simp [show (1062882 * k + 973982) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 960871) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 960871)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_961275 : ∀ k : Nat,
    iterate (1048576 * k + 961275) 32 = 531441 * k + 487196 ∧
      531441 * k + 487196 < 1048576 * k + 961275 := by
  intro k
  have h1 : C (1048576 * k + 961275) = 3145728 * k + 2883826 := by
    unfold C
    simp [show (1048576 * k + 961275) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2883826) = 1572864 * k + 1441913 := by
    unfold C
    simp [show (3145728 * k + 2883826) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1441913) = 4718592 * k + 4325740 := by
    unfold C
    simp [show (1572864 * k + 1441913) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4325740) = 2359296 * k + 2162870 := by
    unfold C
    simp [show (4718592 * k + 4325740) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2162870) = 1179648 * k + 1081435 := by
    unfold C
    simp [show (2359296 * k + 2162870) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1081435) = 3538944 * k + 3244306 := by
    unfold C
    simp [show (1179648 * k + 1081435) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3244306) = 1769472 * k + 1622153 := by
    unfold C
    simp [show (3538944 * k + 3244306) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1622153) = 5308416 * k + 4866460 := by
    unfold C
    simp [show (1769472 * k + 1622153) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4866460) = 2654208 * k + 2433230 := by
    unfold C
    simp [show (5308416 * k + 4866460) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2433230) = 1327104 * k + 1216615 := by
    unfold C
    simp [show (2654208 * k + 2433230) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1216615) = 3981312 * k + 3649846 := by
    unfold C
    simp [show (1327104 * k + 1216615) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3649846) = 1990656 * k + 1824923 := by
    unfold C
    simp [show (3981312 * k + 3649846) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1824923) = 5971968 * k + 5474770 := by
    unfold C
    simp [show (1990656 * k + 1824923) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5474770) = 2985984 * k + 2737385 := by
    unfold C
    simp [show (5971968 * k + 5474770) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2737385) = 8957952 * k + 8212156 := by
    unfold C
    simp [show (2985984 * k + 2737385) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8212156) = 4478976 * k + 4106078 := by
    unfold C
    simp [show (8957952 * k + 8212156) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4106078) = 2239488 * k + 2053039 := by
    unfold C
    simp [show (4478976 * k + 4106078) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2053039) = 6718464 * k + 6159118 := by
    unfold C
    simp [show (2239488 * k + 2053039) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6159118) = 3359232 * k + 3079559 := by
    unfold C
    simp [show (6718464 * k + 6159118) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3079559) = 10077696 * k + 9238678 := by
    unfold C
    simp [show (3359232 * k + 3079559) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9238678) = 5038848 * k + 4619339 := by
    unfold C
    simp [show (10077696 * k + 9238678) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4619339) = 15116544 * k + 13858018 := by
    unfold C
    simp [show (5038848 * k + 4619339) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13858018) = 7558272 * k + 6929009 := by
    unfold C
    simp [show (15116544 * k + 13858018) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6929009) = 22674816 * k + 20787028 := by
    unfold C
    simp [show (7558272 * k + 6929009) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 20787028) = 11337408 * k + 10393514 := by
    unfold C
    simp [show (22674816 * k + 20787028) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10393514) = 5668704 * k + 5196757 := by
    unfold C
    simp [show (11337408 * k + 10393514) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5196757) = 17006112 * k + 15590272 := by
    unfold C
    simp [show (5668704 * k + 5196757) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 15590272) = 8503056 * k + 7795136 := by
    unfold C
    simp [show (17006112 * k + 15590272) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7795136) = 4251528 * k + 3897568 := by
    unfold C
    simp [show (8503056 * k + 7795136) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3897568) = 2125764 * k + 1948784 := by
    unfold C
    simp [show (4251528 * k + 3897568) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1948784) = 1062882 * k + 974392 := by
    unfold C
    simp [show (2125764 * k + 1948784) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 974392) = 531441 * k + 487196 := by
    unfold C
    simp [show (1062882 * k + 974392) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 961275) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 961275)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_962495 : ∀ k : Nat,
    iterate (1048576 * k + 962495) 32 = 531441 * k + 487814 ∧
      531441 * k + 487814 < 1048576 * k + 962495 := by
  intro k
  have h1 : C (1048576 * k + 962495) = 3145728 * k + 2887486 := by
    unfold C
    simp [show (1048576 * k + 962495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2887486) = 1572864 * k + 1443743 := by
    unfold C
    simp [show (3145728 * k + 2887486) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1443743) = 4718592 * k + 4331230 := by
    unfold C
    simp [show (1572864 * k + 1443743) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4331230) = 2359296 * k + 2165615 := by
    unfold C
    simp [show (4718592 * k + 4331230) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2165615) = 7077888 * k + 6496846 := by
    unfold C
    simp [show (2359296 * k + 2165615) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6496846) = 3538944 * k + 3248423 := by
    unfold C
    simp [show (7077888 * k + 6496846) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3248423) = 10616832 * k + 9745270 := by
    unfold C
    simp [show (3538944 * k + 3248423) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9745270) = 5308416 * k + 4872635 := by
    unfold C
    simp [show (10616832 * k + 9745270) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4872635) = 15925248 * k + 14617906 := by
    unfold C
    simp [show (5308416 * k + 4872635) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14617906) = 7962624 * k + 7308953 := by
    unfold C
    simp [show (15925248 * k + 14617906) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7308953) = 23887872 * k + 21926860 := by
    unfold C
    simp [show (7962624 * k + 7308953) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 21926860) = 11943936 * k + 10963430 := by
    unfold C
    simp [show (23887872 * k + 21926860) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10963430) = 5971968 * k + 5481715 := by
    unfold C
    simp [show (11943936 * k + 10963430) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5481715) = 17915904 * k + 16445146 := by
    unfold C
    simp [show (5971968 * k + 5481715) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16445146) = 8957952 * k + 8222573 := by
    unfold C
    simp [show (17915904 * k + 16445146) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8222573) = 26873856 * k + 24667720 := by
    unfold C
    simp [show (8957952 * k + 8222573) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 24667720) = 13436928 * k + 12333860 := by
    unfold C
    simp [show (26873856 * k + 24667720) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12333860) = 6718464 * k + 6166930 := by
    unfold C
    simp [show (13436928 * k + 12333860) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6166930) = 3359232 * k + 3083465 := by
    unfold C
    simp [show (6718464 * k + 6166930) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3083465) = 10077696 * k + 9250396 := by
    unfold C
    simp [show (3359232 * k + 3083465) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9250396) = 5038848 * k + 4625198 := by
    unfold C
    simp [show (10077696 * k + 9250396) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4625198) = 2519424 * k + 2312599 := by
    unfold C
    simp [show (5038848 * k + 4625198) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2312599) = 7558272 * k + 6937798 := by
    unfold C
    simp [show (2519424 * k + 2312599) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6937798) = 3779136 * k + 3468899 := by
    unfold C
    simp [show (7558272 * k + 6937798) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3468899) = 11337408 * k + 10406698 := by
    unfold C
    simp [show (3779136 * k + 3468899) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10406698) = 5668704 * k + 5203349 := by
    unfold C
    simp [show (11337408 * k + 10406698) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5203349) = 17006112 * k + 15610048 := by
    unfold C
    simp [show (5668704 * k + 5203349) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 15610048) = 8503056 * k + 7805024 := by
    unfold C
    simp [show (17006112 * k + 15610048) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7805024) = 4251528 * k + 3902512 := by
    unfold C
    simp [show (8503056 * k + 7805024) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3902512) = 2125764 * k + 1951256 := by
    unfold C
    simp [show (4251528 * k + 3902512) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1951256) = 1062882 * k + 975628 := by
    unfold C
    simp [show (2125764 * k + 1951256) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 975628) = 531441 * k + 487814 := by
    unfold C
    simp [show (1062882 * k + 975628) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 962495) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 962495)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_963519 : ∀ k : Nat,
    iterate (1048576 * k + 963519) 32 = 531441 * k + 488333 ∧
      531441 * k + 488333 < 1048576 * k + 963519 := by
  intro k
  have h1 : C (1048576 * k + 963519) = 3145728 * k + 2890558 := by
    unfold C
    simp [show (1048576 * k + 963519) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2890558) = 1572864 * k + 1445279 := by
    unfold C
    simp [show (3145728 * k + 2890558) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1445279) = 4718592 * k + 4335838 := by
    unfold C
    simp [show (1572864 * k + 1445279) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4335838) = 2359296 * k + 2167919 := by
    unfold C
    simp [show (4718592 * k + 4335838) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2167919) = 7077888 * k + 6503758 := by
    unfold C
    simp [show (2359296 * k + 2167919) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6503758) = 3538944 * k + 3251879 := by
    unfold C
    simp [show (7077888 * k + 6503758) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3251879) = 10616832 * k + 9755638 := by
    unfold C
    simp [show (3538944 * k + 3251879) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9755638) = 5308416 * k + 4877819 := by
    unfold C
    simp [show (10616832 * k + 9755638) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4877819) = 15925248 * k + 14633458 := by
    unfold C
    simp [show (5308416 * k + 4877819) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14633458) = 7962624 * k + 7316729 := by
    unfold C
    simp [show (15925248 * k + 14633458) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7316729) = 23887872 * k + 21950188 := by
    unfold C
    simp [show (7962624 * k + 7316729) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 21950188) = 11943936 * k + 10975094 := by
    unfold C
    simp [show (23887872 * k + 21950188) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10975094) = 5971968 * k + 5487547 := by
    unfold C
    simp [show (11943936 * k + 10975094) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5487547) = 17915904 * k + 16462642 := by
    unfold C
    simp [show (5971968 * k + 5487547) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16462642) = 8957952 * k + 8231321 := by
    unfold C
    simp [show (17915904 * k + 16462642) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8231321) = 26873856 * k + 24693964 := by
    unfold C
    simp [show (8957952 * k + 8231321) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 24693964) = 13436928 * k + 12346982 := by
    unfold C
    simp [show (26873856 * k + 24693964) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12346982) = 6718464 * k + 6173491 := by
    unfold C
    simp [show (13436928 * k + 12346982) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6173491) = 20155392 * k + 18520474 := by
    unfold C
    simp [show (6718464 * k + 6173491) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18520474) = 10077696 * k + 9260237 := by
    unfold C
    simp [show (20155392 * k + 18520474) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9260237) = 30233088 * k + 27780712 := by
    unfold C
    simp [show (10077696 * k + 9260237) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 27780712) = 15116544 * k + 13890356 := by
    unfold C
    simp [show (30233088 * k + 27780712) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13890356) = 7558272 * k + 6945178 := by
    unfold C
    simp [show (15116544 * k + 13890356) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6945178) = 3779136 * k + 3472589 := by
    unfold C
    simp [show (7558272 * k + 6945178) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3472589) = 11337408 * k + 10417768 := by
    unfold C
    simp [show (3779136 * k + 3472589) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10417768) = 5668704 * k + 5208884 := by
    unfold C
    simp [show (11337408 * k + 10417768) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5208884) = 2834352 * k + 2604442 := by
    unfold C
    simp [show (5668704 * k + 5208884) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2604442) = 1417176 * k + 1302221 := by
    unfold C
    simp [show (2834352 * k + 2604442) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1302221) = 4251528 * k + 3906664 := by
    unfold C
    simp [show (1417176 * k + 1302221) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3906664) = 2125764 * k + 1953332 := by
    unfold C
    simp [show (4251528 * k + 3906664) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1953332) = 1062882 * k + 976666 := by
    unfold C
    simp [show (2125764 * k + 1953332) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 976666) = 531441 * k + 488333 := by
    unfold C
    simp [show (1062882 * k + 976666) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 963519) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 963519)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_963943 : ∀ k : Nat,
    iterate (1048576 * k + 963943) 32 = 531441 * k + 488548 ∧
      531441 * k + 488548 < 1048576 * k + 963943 := by
  intro k
  have h1 : C (1048576 * k + 963943) = 3145728 * k + 2891830 := by
    unfold C
    simp [show (1048576 * k + 963943) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2891830) = 1572864 * k + 1445915 := by
    unfold C
    simp [show (3145728 * k + 2891830) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1445915) = 4718592 * k + 4337746 := by
    unfold C
    simp [show (1572864 * k + 1445915) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4337746) = 2359296 * k + 2168873 := by
    unfold C
    simp [show (4718592 * k + 4337746) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2168873) = 7077888 * k + 6506620 := by
    unfold C
    simp [show (2359296 * k + 2168873) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6506620) = 3538944 * k + 3253310 := by
    unfold C
    simp [show (7077888 * k + 6506620) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3253310) = 1769472 * k + 1626655 := by
    unfold C
    simp [show (3538944 * k + 3253310) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1626655) = 5308416 * k + 4879966 := by
    unfold C
    simp [show (1769472 * k + 1626655) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4879966) = 2654208 * k + 2439983 := by
    unfold C
    simp [show (5308416 * k + 4879966) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2439983) = 7962624 * k + 7319950 := by
    unfold C
    simp [show (2654208 * k + 2439983) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7319950) = 3981312 * k + 3659975 := by
    unfold C
    simp [show (7962624 * k + 7319950) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3659975) = 11943936 * k + 10979926 := by
    unfold C
    simp [show (3981312 * k + 3659975) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10979926) = 5971968 * k + 5489963 := by
    unfold C
    simp [show (11943936 * k + 10979926) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5489963) = 17915904 * k + 16469890 := by
    unfold C
    simp [show (5971968 * k + 5489963) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16469890) = 8957952 * k + 8234945 := by
    unfold C
    simp [show (17915904 * k + 16469890) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8234945) = 26873856 * k + 24704836 := by
    unfold C
    simp [show (8957952 * k + 8234945) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 24704836) = 13436928 * k + 12352418 := by
    unfold C
    simp [show (26873856 * k + 24704836) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12352418) = 6718464 * k + 6176209 := by
    unfold C
    simp [show (13436928 * k + 12352418) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6176209) = 20155392 * k + 18528628 := by
    unfold C
    simp [show (6718464 * k + 6176209) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18528628) = 10077696 * k + 9264314 := by
    unfold C
    simp [show (20155392 * k + 18528628) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9264314) = 5038848 * k + 4632157 := by
    unfold C
    simp [show (10077696 * k + 9264314) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4632157) = 15116544 * k + 13896472 := by
    unfold C
    simp [show (5038848 * k + 4632157) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13896472) = 7558272 * k + 6948236 := by
    unfold C
    simp [show (15116544 * k + 13896472) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6948236) = 3779136 * k + 3474118 := by
    unfold C
    simp [show (7558272 * k + 6948236) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3474118) = 1889568 * k + 1737059 := by
    unfold C
    simp [show (3779136 * k + 3474118) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1737059) = 5668704 * k + 5211178 := by
    unfold C
    simp [show (1889568 * k + 1737059) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5211178) = 2834352 * k + 2605589 := by
    unfold C
    simp [show (5668704 * k + 5211178) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2605589) = 8503056 * k + 7816768 := by
    unfold C
    simp [show (2834352 * k + 2605589) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7816768) = 4251528 * k + 3908384 := by
    unfold C
    simp [show (8503056 * k + 7816768) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3908384) = 2125764 * k + 1954192 := by
    unfold C
    simp [show (4251528 * k + 3908384) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1954192) = 1062882 * k + 977096 := by
    unfold C
    simp [show (2125764 * k + 1954192) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 977096) = 531441 * k + 488548 := by
    unfold C
    simp [show (1062882 * k + 977096) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 963943) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 963943)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_964199 : ∀ k : Nat,
    iterate (1048576 * k + 964199) 32 = 531441 * k + 488678 ∧
      531441 * k + 488678 < 1048576 * k + 964199 := by
  intro k
  have h1 : C (1048576 * k + 964199) = 3145728 * k + 2892598 := by
    unfold C
    simp [show (1048576 * k + 964199) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2892598) = 1572864 * k + 1446299 := by
    unfold C
    simp [show (3145728 * k + 2892598) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1446299) = 4718592 * k + 4338898 := by
    unfold C
    simp [show (1572864 * k + 1446299) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4338898) = 2359296 * k + 2169449 := by
    unfold C
    simp [show (4718592 * k + 4338898) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2169449) = 7077888 * k + 6508348 := by
    unfold C
    simp [show (2359296 * k + 2169449) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6508348) = 3538944 * k + 3254174 := by
    unfold C
    simp [show (7077888 * k + 6508348) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3254174) = 1769472 * k + 1627087 := by
    unfold C
    simp [show (3538944 * k + 3254174) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1627087) = 5308416 * k + 4881262 := by
    unfold C
    simp [show (1769472 * k + 1627087) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4881262) = 2654208 * k + 2440631 := by
    unfold C
    simp [show (5308416 * k + 4881262) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2440631) = 7962624 * k + 7321894 := by
    unfold C
    simp [show (2654208 * k + 2440631) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7321894) = 3981312 * k + 3660947 := by
    unfold C
    simp [show (7962624 * k + 7321894) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3660947) = 11943936 * k + 10982842 := by
    unfold C
    simp [show (3981312 * k + 3660947) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10982842) = 5971968 * k + 5491421 := by
    unfold C
    simp [show (11943936 * k + 10982842) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5491421) = 17915904 * k + 16474264 := by
    unfold C
    simp [show (5971968 * k + 5491421) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16474264) = 8957952 * k + 8237132 := by
    unfold C
    simp [show (17915904 * k + 16474264) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8237132) = 4478976 * k + 4118566 := by
    unfold C
    simp [show (8957952 * k + 8237132) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4118566) = 2239488 * k + 2059283 := by
    unfold C
    simp [show (4478976 * k + 4118566) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2059283) = 6718464 * k + 6177850 := by
    unfold C
    simp [show (2239488 * k + 2059283) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6177850) = 3359232 * k + 3088925 := by
    unfold C
    simp [show (6718464 * k + 6177850) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3088925) = 10077696 * k + 9266776 := by
    unfold C
    simp [show (3359232 * k + 3088925) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9266776) = 5038848 * k + 4633388 := by
    unfold C
    simp [show (10077696 * k + 9266776) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4633388) = 2519424 * k + 2316694 := by
    unfold C
    simp [show (5038848 * k + 4633388) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2316694) = 1259712 * k + 1158347 := by
    unfold C
    simp [show (2519424 * k + 2316694) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1158347) = 3779136 * k + 3475042 := by
    unfold C
    simp [show (1259712 * k + 1158347) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3475042) = 1889568 * k + 1737521 := by
    unfold C
    simp [show (3779136 * k + 3475042) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1737521) = 5668704 * k + 5212564 := by
    unfold C
    simp [show (1889568 * k + 1737521) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5212564) = 2834352 * k + 2606282 := by
    unfold C
    simp [show (5668704 * k + 5212564) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2606282) = 1417176 * k + 1303141 := by
    unfold C
    simp [show (2834352 * k + 2606282) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1303141) = 4251528 * k + 3909424 := by
    unfold C
    simp [show (1417176 * k + 1303141) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3909424) = 2125764 * k + 1954712 := by
    unfold C
    simp [show (4251528 * k + 3909424) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1954712) = 1062882 * k + 977356 := by
    unfold C
    simp [show (2125764 * k + 1954712) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 977356) = 531441 * k + 488678 := by
    unfold C
    simp [show (1062882 * k + 977356) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 964199) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 964199)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_964635 : ∀ k : Nat,
    iterate (1048576 * k + 964635) 32 = 531441 * k + 488899 ∧
      531441 * k + 488899 < 1048576 * k + 964635 := by
  intro k
  have h1 : C (1048576 * k + 964635) = 3145728 * k + 2893906 := by
    unfold C
    simp [show (1048576 * k + 964635) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2893906) = 1572864 * k + 1446953 := by
    unfold C
    simp [show (3145728 * k + 2893906) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1446953) = 4718592 * k + 4340860 := by
    unfold C
    simp [show (1572864 * k + 1446953) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4340860) = 2359296 * k + 2170430 := by
    unfold C
    simp [show (4718592 * k + 4340860) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2170430) = 1179648 * k + 1085215 := by
    unfold C
    simp [show (2359296 * k + 2170430) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1085215) = 3538944 * k + 3255646 := by
    unfold C
    simp [show (1179648 * k + 1085215) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3255646) = 1769472 * k + 1627823 := by
    unfold C
    simp [show (3538944 * k + 3255646) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1627823) = 5308416 * k + 4883470 := by
    unfold C
    simp [show (1769472 * k + 1627823) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4883470) = 2654208 * k + 2441735 := by
    unfold C
    simp [show (5308416 * k + 4883470) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2441735) = 7962624 * k + 7325206 := by
    unfold C
    simp [show (2654208 * k + 2441735) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7325206) = 3981312 * k + 3662603 := by
    unfold C
    simp [show (7962624 * k + 7325206) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3662603) = 11943936 * k + 10987810 := by
    unfold C
    simp [show (3981312 * k + 3662603) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10987810) = 5971968 * k + 5493905 := by
    unfold C
    simp [show (11943936 * k + 10987810) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5493905) = 17915904 * k + 16481716 := by
    unfold C
    simp [show (5971968 * k + 5493905) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16481716) = 8957952 * k + 8240858 := by
    unfold C
    simp [show (17915904 * k + 16481716) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8240858) = 4478976 * k + 4120429 := by
    unfold C
    simp [show (8957952 * k + 8240858) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4120429) = 13436928 * k + 12361288 := by
    unfold C
    simp [show (4478976 * k + 4120429) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12361288) = 6718464 * k + 6180644 := by
    unfold C
    simp [show (13436928 * k + 12361288) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6180644) = 3359232 * k + 3090322 := by
    unfold C
    simp [show (6718464 * k + 6180644) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3090322) = 1679616 * k + 1545161 := by
    unfold C
    simp [show (3359232 * k + 3090322) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1545161) = 5038848 * k + 4635484 := by
    unfold C
    simp [show (1679616 * k + 1545161) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4635484) = 2519424 * k + 2317742 := by
    unfold C
    simp [show (5038848 * k + 4635484) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2317742) = 1259712 * k + 1158871 := by
    unfold C
    simp [show (2519424 * k + 2317742) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1158871) = 3779136 * k + 3476614 := by
    unfold C
    simp [show (1259712 * k + 1158871) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3476614) = 1889568 * k + 1738307 := by
    unfold C
    simp [show (3779136 * k + 3476614) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1738307) = 5668704 * k + 5214922 := by
    unfold C
    simp [show (1889568 * k + 1738307) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5214922) = 2834352 * k + 2607461 := by
    unfold C
    simp [show (5668704 * k + 5214922) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2607461) = 8503056 * k + 7822384 := by
    unfold C
    simp [show (2834352 * k + 2607461) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7822384) = 4251528 * k + 3911192 := by
    unfold C
    simp [show (8503056 * k + 7822384) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3911192) = 2125764 * k + 1955596 := by
    unfold C
    simp [show (4251528 * k + 3911192) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1955596) = 1062882 * k + 977798 := by
    unfold C
    simp [show (2125764 * k + 1955596) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 977798) = 531441 * k + 488899 := by
    unfold C
    simp [show (1062882 * k + 977798) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 964635) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 964635)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_964967 : ∀ k : Nat,
    iterate (1048576 * k + 964967) 32 = 531441 * k + 489067 ∧
      531441 * k + 489067 < 1048576 * k + 964967 := by
  intro k
  have h1 : C (1048576 * k + 964967) = 3145728 * k + 2894902 := by
    unfold C
    simp [show (1048576 * k + 964967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2894902) = 1572864 * k + 1447451 := by
    unfold C
    simp [show (3145728 * k + 2894902) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1447451) = 4718592 * k + 4342354 := by
    unfold C
    simp [show (1572864 * k + 1447451) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4342354) = 2359296 * k + 2171177 := by
    unfold C
    simp [show (4718592 * k + 4342354) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2171177) = 7077888 * k + 6513532 := by
    unfold C
    simp [show (2359296 * k + 2171177) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6513532) = 3538944 * k + 3256766 := by
    unfold C
    simp [show (7077888 * k + 6513532) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3256766) = 1769472 * k + 1628383 := by
    unfold C
    simp [show (3538944 * k + 3256766) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1628383) = 5308416 * k + 4885150 := by
    unfold C
    simp [show (1769472 * k + 1628383) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4885150) = 2654208 * k + 2442575 := by
    unfold C
    simp [show (5308416 * k + 4885150) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2442575) = 7962624 * k + 7327726 := by
    unfold C
    simp [show (2654208 * k + 2442575) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7327726) = 3981312 * k + 3663863 := by
    unfold C
    simp [show (7962624 * k + 7327726) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3663863) = 11943936 * k + 10991590 := by
    unfold C
    simp [show (3981312 * k + 3663863) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10991590) = 5971968 * k + 5495795 := by
    unfold C
    simp [show (11943936 * k + 10991590) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5495795) = 17915904 * k + 16487386 := by
    unfold C
    simp [show (5971968 * k + 5495795) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16487386) = 8957952 * k + 8243693 := by
    unfold C
    simp [show (17915904 * k + 16487386) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8243693) = 26873856 * k + 24731080 := by
    unfold C
    simp [show (8957952 * k + 8243693) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 24731080) = 13436928 * k + 12365540 := by
    unfold C
    simp [show (26873856 * k + 24731080) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12365540) = 6718464 * k + 6182770 := by
    unfold C
    simp [show (13436928 * k + 12365540) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6182770) = 3359232 * k + 3091385 := by
    unfold C
    simp [show (6718464 * k + 6182770) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3091385) = 10077696 * k + 9274156 := by
    unfold C
    simp [show (3359232 * k + 3091385) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9274156) = 5038848 * k + 4637078 := by
    unfold C
    simp [show (10077696 * k + 9274156) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4637078) = 2519424 * k + 2318539 := by
    unfold C
    simp [show (5038848 * k + 4637078) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2318539) = 7558272 * k + 6955618 := by
    unfold C
    simp [show (2519424 * k + 2318539) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6955618) = 3779136 * k + 3477809 := by
    unfold C
    simp [show (7558272 * k + 6955618) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3477809) = 11337408 * k + 10433428 := by
    unfold C
    simp [show (3779136 * k + 3477809) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10433428) = 5668704 * k + 5216714 := by
    unfold C
    simp [show (11337408 * k + 10433428) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5216714) = 2834352 * k + 2608357 := by
    unfold C
    simp [show (5668704 * k + 5216714) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2608357) = 8503056 * k + 7825072 := by
    unfold C
    simp [show (2834352 * k + 2608357) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7825072) = 4251528 * k + 3912536 := by
    unfold C
    simp [show (8503056 * k + 7825072) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3912536) = 2125764 * k + 1956268 := by
    unfold C
    simp [show (4251528 * k + 3912536) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1956268) = 1062882 * k + 978134 := by
    unfold C
    simp [show (2125764 * k + 1956268) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 978134) = 531441 * k + 489067 := by
    unfold C
    simp [show (1062882 * k + 978134) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 964967) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 964967)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_965223 : ∀ k : Nat,
    iterate (1048576 * k + 965223) 32 = 531441 * k + 489197 ∧
      531441 * k + 489197 < 1048576 * k + 965223 := by
  intro k
  have h1 : C (1048576 * k + 965223) = 3145728 * k + 2895670 := by
    unfold C
    simp [show (1048576 * k + 965223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2895670) = 1572864 * k + 1447835 := by
    unfold C
    simp [show (3145728 * k + 2895670) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1447835) = 4718592 * k + 4343506 := by
    unfold C
    simp [show (1572864 * k + 1447835) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4343506) = 2359296 * k + 2171753 := by
    unfold C
    simp [show (4718592 * k + 4343506) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2171753) = 7077888 * k + 6515260 := by
    unfold C
    simp [show (2359296 * k + 2171753) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6515260) = 3538944 * k + 3257630 := by
    unfold C
    simp [show (7077888 * k + 6515260) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3257630) = 1769472 * k + 1628815 := by
    unfold C
    simp [show (3538944 * k + 3257630) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1628815) = 5308416 * k + 4886446 := by
    unfold C
    simp [show (1769472 * k + 1628815) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4886446) = 2654208 * k + 2443223 := by
    unfold C
    simp [show (5308416 * k + 4886446) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2443223) = 7962624 * k + 7329670 := by
    unfold C
    simp [show (2654208 * k + 2443223) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7329670) = 3981312 * k + 3664835 := by
    unfold C
    simp [show (7962624 * k + 7329670) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3664835) = 11943936 * k + 10994506 := by
    unfold C
    simp [show (3981312 * k + 3664835) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10994506) = 5971968 * k + 5497253 := by
    unfold C
    simp [show (11943936 * k + 10994506) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5497253) = 17915904 * k + 16491760 := by
    unfold C
    simp [show (5971968 * k + 5497253) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16491760) = 8957952 * k + 8245880 := by
    unfold C
    simp [show (17915904 * k + 16491760) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8245880) = 4478976 * k + 4122940 := by
    unfold C
    simp [show (8957952 * k + 8245880) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4122940) = 2239488 * k + 2061470 := by
    unfold C
    simp [show (4478976 * k + 4122940) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2061470) = 1119744 * k + 1030735 := by
    unfold C
    simp [show (2239488 * k + 2061470) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 1030735) = 3359232 * k + 3092206 := by
    unfold C
    simp [show (1119744 * k + 1030735) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 3092206) = 1679616 * k + 1546103 := by
    unfold C
    simp [show (3359232 * k + 3092206) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1546103) = 5038848 * k + 4638310 := by
    unfold C
    simp [show (1679616 * k + 1546103) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4638310) = 2519424 * k + 2319155 := by
    unfold C
    simp [show (5038848 * k + 4638310) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2319155) = 7558272 * k + 6957466 := by
    unfold C
    simp [show (2519424 * k + 2319155) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6957466) = 3779136 * k + 3478733 := by
    unfold C
    simp [show (7558272 * k + 6957466) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3478733) = 11337408 * k + 10436200 := by
    unfold C
    simp [show (3779136 * k + 3478733) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10436200) = 5668704 * k + 5218100 := by
    unfold C
    simp [show (11337408 * k + 10436200) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5218100) = 2834352 * k + 2609050 := by
    unfold C
    simp [show (5668704 * k + 5218100) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2609050) = 1417176 * k + 1304525 := by
    unfold C
    simp [show (2834352 * k + 2609050) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1304525) = 4251528 * k + 3913576 := by
    unfold C
    simp [show (1417176 * k + 1304525) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3913576) = 2125764 * k + 1956788 := by
    unfold C
    simp [show (4251528 * k + 3913576) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1956788) = 1062882 * k + 978394 := by
    unfold C
    simp [show (2125764 * k + 1956788) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 978394) = 531441 * k + 489197 := by
    unfold C
    simp [show (1062882 * k + 978394) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 965223) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 965223)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard122
