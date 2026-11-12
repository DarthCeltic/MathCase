import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard030

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_216935 : ∀ k : Nat,
    iterate (1048576 * k + 216935) 32 = 531441 * k + 109948 ∧
      531441 * k + 109948 < 1048576 * k + 216935 := by
  intro k
  have h1 : C (1048576 * k + 216935) = 3145728 * k + 650806 := by
    unfold C
    simp [show (1048576 * k + 216935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 650806) = 1572864 * k + 325403 := by
    unfold C
    simp [show (3145728 * k + 650806) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 325403) = 4718592 * k + 976210 := by
    unfold C
    simp [show (1572864 * k + 325403) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 976210) = 2359296 * k + 488105 := by
    unfold C
    simp [show (4718592 * k + 976210) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 488105) = 7077888 * k + 1464316 := by
    unfold C
    simp [show (2359296 * k + 488105) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1464316) = 3538944 * k + 732158 := by
    unfold C
    simp [show (7077888 * k + 1464316) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 732158) = 1769472 * k + 366079 := by
    unfold C
    simp [show (3538944 * k + 732158) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 366079) = 5308416 * k + 1098238 := by
    unfold C
    simp [show (1769472 * k + 366079) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1098238) = 2654208 * k + 549119 := by
    unfold C
    simp [show (5308416 * k + 1098238) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 549119) = 7962624 * k + 1647358 := by
    unfold C
    simp [show (2654208 * k + 549119) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1647358) = 3981312 * k + 823679 := by
    unfold C
    simp [show (7962624 * k + 1647358) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 823679) = 11943936 * k + 2471038 := by
    unfold C
    simp [show (3981312 * k + 823679) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2471038) = 5971968 * k + 1235519 := by
    unfold C
    simp [show (11943936 * k + 2471038) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1235519) = 17915904 * k + 3706558 := by
    unfold C
    simp [show (5971968 * k + 1235519) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3706558) = 8957952 * k + 1853279 := by
    unfold C
    simp [show (17915904 * k + 3706558) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1853279) = 26873856 * k + 5559838 := by
    unfold C
    simp [show (8957952 * k + 1853279) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5559838) = 13436928 * k + 2779919 := by
    unfold C
    simp [show (26873856 * k + 5559838) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2779919) = 40310784 * k + 8339758 := by
    unfold C
    simp [show (13436928 * k + 2779919) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 8339758) = 20155392 * k + 4169879 := by
    unfold C
    simp [show (40310784 * k + 8339758) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 4169879) = 60466176 * k + 12509638 := by
    unfold C
    simp [show (20155392 * k + 4169879) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 12509638) = 30233088 * k + 6254819 := by
    unfold C
    simp [show (60466176 * k + 12509638) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 6254819) = 90699264 * k + 18764458 := by
    unfold C
    simp [show (30233088 * k + 6254819) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 18764458) = 45349632 * k + 9382229 := by
    unfold C
    simp [show (90699264 * k + 18764458) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 9382229) = 136048896 * k + 28146688 := by
    unfold C
    simp [show (45349632 * k + 9382229) % 2 ≠ 0 by omega]
    omega
  have h25 : C (136048896 * k + 28146688) = 68024448 * k + 14073344 := by
    unfold C
    simp [show (136048896 * k + 28146688) % 2 = 0 by omega]
    omega
  have h26 : C (68024448 * k + 14073344) = 34012224 * k + 7036672 := by
    unfold C
    simp [show (68024448 * k + 14073344) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 7036672) = 17006112 * k + 3518336 := by
    unfold C
    simp [show (34012224 * k + 7036672) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 3518336) = 8503056 * k + 1759168 := by
    unfold C
    simp [show (17006112 * k + 3518336) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1759168) = 4251528 * k + 879584 := by
    unfold C
    simp [show (8503056 * k + 1759168) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 879584) = 2125764 * k + 439792 := by
    unfold C
    simp [show (4251528 * k + 879584) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 439792) = 1062882 * k + 219896 := by
    unfold C
    simp [show (2125764 * k + 439792) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 219896) = 531441 * k + 109948 := by
    unfold C
    simp [show (1062882 * k + 219896) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 216935) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 216935)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_216999 : ∀ k : Nat,
    iterate (1048576 * k + 216999) 32 = 531441 * k + 109981 ∧
      531441 * k + 109981 < 1048576 * k + 216999 := by
  intro k
  have h1 : C (1048576 * k + 216999) = 3145728 * k + 650998 := by
    unfold C
    simp [show (1048576 * k + 216999) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 650998) = 1572864 * k + 325499 := by
    unfold C
    simp [show (3145728 * k + 650998) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 325499) = 4718592 * k + 976498 := by
    unfold C
    simp [show (1572864 * k + 325499) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 976498) = 2359296 * k + 488249 := by
    unfold C
    simp [show (4718592 * k + 976498) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 488249) = 7077888 * k + 1464748 := by
    unfold C
    simp [show (2359296 * k + 488249) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1464748) = 3538944 * k + 732374 := by
    unfold C
    simp [show (7077888 * k + 1464748) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 732374) = 1769472 * k + 366187 := by
    unfold C
    simp [show (3538944 * k + 732374) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 366187) = 5308416 * k + 1098562 := by
    unfold C
    simp [show (1769472 * k + 366187) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1098562) = 2654208 * k + 549281 := by
    unfold C
    simp [show (5308416 * k + 1098562) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 549281) = 7962624 * k + 1647844 := by
    unfold C
    simp [show (2654208 * k + 549281) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1647844) = 3981312 * k + 823922 := by
    unfold C
    simp [show (7962624 * k + 1647844) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 823922) = 1990656 * k + 411961 := by
    unfold C
    simp [show (3981312 * k + 823922) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 411961) = 5971968 * k + 1235884 := by
    unfold C
    simp [show (1990656 * k + 411961) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1235884) = 2985984 * k + 617942 := by
    unfold C
    simp [show (5971968 * k + 1235884) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 617942) = 1492992 * k + 308971 := by
    unfold C
    simp [show (2985984 * k + 617942) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 308971) = 4478976 * k + 926914 := by
    unfold C
    simp [show (1492992 * k + 308971) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 926914) = 2239488 * k + 463457 := by
    unfold C
    simp [show (4478976 * k + 926914) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 463457) = 6718464 * k + 1390372 := by
    unfold C
    simp [show (2239488 * k + 463457) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1390372) = 3359232 * k + 695186 := by
    unfold C
    simp [show (6718464 * k + 1390372) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 695186) = 1679616 * k + 347593 := by
    unfold C
    simp [show (3359232 * k + 695186) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 347593) = 5038848 * k + 1042780 := by
    unfold C
    simp [show (1679616 * k + 347593) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1042780) = 2519424 * k + 521390 := by
    unfold C
    simp [show (5038848 * k + 1042780) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 521390) = 1259712 * k + 260695 := by
    unfold C
    simp [show (2519424 * k + 521390) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 260695) = 3779136 * k + 782086 := by
    unfold C
    simp [show (1259712 * k + 260695) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 782086) = 1889568 * k + 391043 := by
    unfold C
    simp [show (3779136 * k + 782086) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 391043) = 5668704 * k + 1173130 := by
    unfold C
    simp [show (1889568 * k + 391043) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1173130) = 2834352 * k + 586565 := by
    unfold C
    simp [show (5668704 * k + 1173130) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 586565) = 8503056 * k + 1759696 := by
    unfold C
    simp [show (2834352 * k + 586565) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1759696) = 4251528 * k + 879848 := by
    unfold C
    simp [show (8503056 * k + 1759696) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 879848) = 2125764 * k + 439924 := by
    unfold C
    simp [show (4251528 * k + 879848) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 439924) = 1062882 * k + 219962 := by
    unfold C
    simp [show (2125764 * k + 439924) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 219962) = 531441 * k + 109981 := by
    unfold C
    simp [show (1062882 * k + 219962) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 216999) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 216999)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_217159 : ∀ k : Nat,
    iterate (1048576 * k + 217159) 32 = 531441 * k + 110062 ∧
      531441 * k + 110062 < 1048576 * k + 217159 := by
  intro k
  have h1 : C (1048576 * k + 217159) = 3145728 * k + 651478 := by
    unfold C
    simp [show (1048576 * k + 217159) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 651478) = 1572864 * k + 325739 := by
    unfold C
    simp [show (3145728 * k + 651478) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 325739) = 4718592 * k + 977218 := by
    unfold C
    simp [show (1572864 * k + 325739) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 977218) = 2359296 * k + 488609 := by
    unfold C
    simp [show (4718592 * k + 977218) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 488609) = 7077888 * k + 1465828 := by
    unfold C
    simp [show (2359296 * k + 488609) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1465828) = 3538944 * k + 732914 := by
    unfold C
    simp [show (7077888 * k + 1465828) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 732914) = 1769472 * k + 366457 := by
    unfold C
    simp [show (3538944 * k + 732914) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 366457) = 5308416 * k + 1099372 := by
    unfold C
    simp [show (1769472 * k + 366457) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1099372) = 2654208 * k + 549686 := by
    unfold C
    simp [show (5308416 * k + 1099372) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 549686) = 1327104 * k + 274843 := by
    unfold C
    simp [show (2654208 * k + 549686) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 274843) = 3981312 * k + 824530 := by
    unfold C
    simp [show (1327104 * k + 274843) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 824530) = 1990656 * k + 412265 := by
    unfold C
    simp [show (3981312 * k + 824530) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 412265) = 5971968 * k + 1236796 := by
    unfold C
    simp [show (1990656 * k + 412265) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1236796) = 2985984 * k + 618398 := by
    unfold C
    simp [show (5971968 * k + 1236796) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 618398) = 1492992 * k + 309199 := by
    unfold C
    simp [show (2985984 * k + 618398) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 309199) = 4478976 * k + 927598 := by
    unfold C
    simp [show (1492992 * k + 309199) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 927598) = 2239488 * k + 463799 := by
    unfold C
    simp [show (4478976 * k + 927598) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 463799) = 6718464 * k + 1391398 := by
    unfold C
    simp [show (2239488 * k + 463799) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1391398) = 3359232 * k + 695699 := by
    unfold C
    simp [show (6718464 * k + 1391398) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 695699) = 10077696 * k + 2087098 := by
    unfold C
    simp [show (3359232 * k + 695699) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2087098) = 5038848 * k + 1043549 := by
    unfold C
    simp [show (10077696 * k + 2087098) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1043549) = 15116544 * k + 3130648 := by
    unfold C
    simp [show (5038848 * k + 1043549) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3130648) = 7558272 * k + 1565324 := by
    unfold C
    simp [show (15116544 * k + 3130648) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1565324) = 3779136 * k + 782662 := by
    unfold C
    simp [show (7558272 * k + 1565324) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 782662) = 1889568 * k + 391331 := by
    unfold C
    simp [show (3779136 * k + 782662) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 391331) = 5668704 * k + 1173994 := by
    unfold C
    simp [show (1889568 * k + 391331) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1173994) = 2834352 * k + 586997 := by
    unfold C
    simp [show (5668704 * k + 1173994) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 586997) = 8503056 * k + 1760992 := by
    unfold C
    simp [show (2834352 * k + 586997) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1760992) = 4251528 * k + 880496 := by
    unfold C
    simp [show (8503056 * k + 1760992) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 880496) = 2125764 * k + 440248 := by
    unfold C
    simp [show (4251528 * k + 880496) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 440248) = 1062882 * k + 220124 := by
    unfold C
    simp [show (2125764 * k + 440248) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 220124) = 531441 * k + 110062 := by
    unfold C
    simp [show (1062882 * k + 220124) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 217159) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 217159)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_218215 : ∀ k : Nat,
    iterate (1048576 * k + 218215) 32 = 531441 * k + 110597 ∧
      531441 * k + 110597 < 1048576 * k + 218215 := by
  intro k
  have h1 : C (1048576 * k + 218215) = 3145728 * k + 654646 := by
    unfold C
    simp [show (1048576 * k + 218215) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 654646) = 1572864 * k + 327323 := by
    unfold C
    simp [show (3145728 * k + 654646) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 327323) = 4718592 * k + 981970 := by
    unfold C
    simp [show (1572864 * k + 327323) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 981970) = 2359296 * k + 490985 := by
    unfold C
    simp [show (4718592 * k + 981970) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 490985) = 7077888 * k + 1472956 := by
    unfold C
    simp [show (2359296 * k + 490985) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1472956) = 3538944 * k + 736478 := by
    unfold C
    simp [show (7077888 * k + 1472956) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 736478) = 1769472 * k + 368239 := by
    unfold C
    simp [show (3538944 * k + 736478) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 368239) = 5308416 * k + 1104718 := by
    unfold C
    simp [show (1769472 * k + 368239) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1104718) = 2654208 * k + 552359 := by
    unfold C
    simp [show (5308416 * k + 1104718) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 552359) = 7962624 * k + 1657078 := by
    unfold C
    simp [show (2654208 * k + 552359) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1657078) = 3981312 * k + 828539 := by
    unfold C
    simp [show (7962624 * k + 1657078) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 828539) = 11943936 * k + 2485618 := by
    unfold C
    simp [show (3981312 * k + 828539) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2485618) = 5971968 * k + 1242809 := by
    unfold C
    simp [show (11943936 * k + 2485618) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1242809) = 17915904 * k + 3728428 := by
    unfold C
    simp [show (5971968 * k + 1242809) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3728428) = 8957952 * k + 1864214 := by
    unfold C
    simp [show (17915904 * k + 3728428) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1864214) = 4478976 * k + 932107 := by
    unfold C
    simp [show (8957952 * k + 1864214) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 932107) = 13436928 * k + 2796322 := by
    unfold C
    simp [show (4478976 * k + 932107) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2796322) = 6718464 * k + 1398161 := by
    unfold C
    simp [show (13436928 * k + 2796322) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1398161) = 20155392 * k + 4194484 := by
    unfold C
    simp [show (6718464 * k + 1398161) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4194484) = 10077696 * k + 2097242 := by
    unfold C
    simp [show (20155392 * k + 4194484) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2097242) = 5038848 * k + 1048621 := by
    unfold C
    simp [show (10077696 * k + 2097242) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1048621) = 15116544 * k + 3145864 := by
    unfold C
    simp [show (5038848 * k + 1048621) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3145864) = 7558272 * k + 1572932 := by
    unfold C
    simp [show (15116544 * k + 3145864) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1572932) = 3779136 * k + 786466 := by
    unfold C
    simp [show (7558272 * k + 1572932) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 786466) = 1889568 * k + 393233 := by
    unfold C
    simp [show (3779136 * k + 786466) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 393233) = 5668704 * k + 1179700 := by
    unfold C
    simp [show (1889568 * k + 393233) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1179700) = 2834352 * k + 589850 := by
    unfold C
    simp [show (5668704 * k + 1179700) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 589850) = 1417176 * k + 294925 := by
    unfold C
    simp [show (2834352 * k + 589850) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 294925) = 4251528 * k + 884776 := by
    unfold C
    simp [show (1417176 * k + 294925) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 884776) = 2125764 * k + 442388 := by
    unfold C
    simp [show (4251528 * k + 884776) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 442388) = 1062882 * k + 221194 := by
    unfold C
    simp [show (2125764 * k + 442388) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 221194) = 531441 * k + 110597 := by
    unfold C
    simp [show (1062882 * k + 221194) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 218215) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 218215)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_218559 : ∀ k : Nat,
    iterate (1048576 * k + 218559) 32 = 531441 * k + 110771 ∧
      531441 * k + 110771 < 1048576 * k + 218559 := by
  intro k
  have h1 : C (1048576 * k + 218559) = 3145728 * k + 655678 := by
    unfold C
    simp [show (1048576 * k + 218559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 655678) = 1572864 * k + 327839 := by
    unfold C
    simp [show (3145728 * k + 655678) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 327839) = 4718592 * k + 983518 := by
    unfold C
    simp [show (1572864 * k + 327839) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 983518) = 2359296 * k + 491759 := by
    unfold C
    simp [show (4718592 * k + 983518) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 491759) = 7077888 * k + 1475278 := by
    unfold C
    simp [show (2359296 * k + 491759) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1475278) = 3538944 * k + 737639 := by
    unfold C
    simp [show (7077888 * k + 1475278) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 737639) = 10616832 * k + 2212918 := by
    unfold C
    simp [show (3538944 * k + 737639) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2212918) = 5308416 * k + 1106459 := by
    unfold C
    simp [show (10616832 * k + 2212918) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1106459) = 15925248 * k + 3319378 := by
    unfold C
    simp [show (5308416 * k + 1106459) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3319378) = 7962624 * k + 1659689 := by
    unfold C
    simp [show (15925248 * k + 3319378) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1659689) = 23887872 * k + 4979068 := by
    unfold C
    simp [show (7962624 * k + 1659689) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 4979068) = 11943936 * k + 2489534 := by
    unfold C
    simp [show (23887872 * k + 4979068) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2489534) = 5971968 * k + 1244767 := by
    unfold C
    simp [show (11943936 * k + 2489534) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1244767) = 17915904 * k + 3734302 := by
    unfold C
    simp [show (5971968 * k + 1244767) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3734302) = 8957952 * k + 1867151 := by
    unfold C
    simp [show (17915904 * k + 3734302) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1867151) = 26873856 * k + 5601454 := by
    unfold C
    simp [show (8957952 * k + 1867151) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5601454) = 13436928 * k + 2800727 := by
    unfold C
    simp [show (26873856 * k + 5601454) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2800727) = 40310784 * k + 8402182 := by
    unfold C
    simp [show (13436928 * k + 2800727) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 8402182) = 20155392 * k + 4201091 := by
    unfold C
    simp [show (40310784 * k + 8402182) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 4201091) = 60466176 * k + 12603274 := by
    unfold C
    simp [show (20155392 * k + 4201091) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 12603274) = 30233088 * k + 6301637 := by
    unfold C
    simp [show (60466176 * k + 12603274) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 6301637) = 90699264 * k + 18904912 := by
    unfold C
    simp [show (30233088 * k + 6301637) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 18904912) = 45349632 * k + 9452456 := by
    unfold C
    simp [show (90699264 * k + 18904912) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 9452456) = 22674816 * k + 4726228 := by
    unfold C
    simp [show (45349632 * k + 9452456) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 4726228) = 11337408 * k + 2363114 := by
    unfold C
    simp [show (22674816 * k + 4726228) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2363114) = 5668704 * k + 1181557 := by
    unfold C
    simp [show (11337408 * k + 2363114) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1181557) = 17006112 * k + 3544672 := by
    unfold C
    simp [show (5668704 * k + 1181557) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3544672) = 8503056 * k + 1772336 := by
    unfold C
    simp [show (17006112 * k + 3544672) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1772336) = 4251528 * k + 886168 := by
    unfold C
    simp [show (8503056 * k + 1772336) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 886168) = 2125764 * k + 443084 := by
    unfold C
    simp [show (4251528 * k + 886168) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 443084) = 1062882 * k + 221542 := by
    unfold C
    simp [show (2125764 * k + 443084) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 221542) = 531441 * k + 110771 := by
    unfold C
    simp [show (1062882 * k + 221542) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 218559) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 218559)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_218983 : ∀ k : Nat,
    iterate (1048576 * k + 218983) 32 = 531441 * k + 110986 ∧
      531441 * k + 110986 < 1048576 * k + 218983 := by
  intro k
  have h1 : C (1048576 * k + 218983) = 3145728 * k + 656950 := by
    unfold C
    simp [show (1048576 * k + 218983) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 656950) = 1572864 * k + 328475 := by
    unfold C
    simp [show (3145728 * k + 656950) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 328475) = 4718592 * k + 985426 := by
    unfold C
    simp [show (1572864 * k + 328475) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 985426) = 2359296 * k + 492713 := by
    unfold C
    simp [show (4718592 * k + 985426) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 492713) = 7077888 * k + 1478140 := by
    unfold C
    simp [show (2359296 * k + 492713) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1478140) = 3538944 * k + 739070 := by
    unfold C
    simp [show (7077888 * k + 1478140) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 739070) = 1769472 * k + 369535 := by
    unfold C
    simp [show (3538944 * k + 739070) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 369535) = 5308416 * k + 1108606 := by
    unfold C
    simp [show (1769472 * k + 369535) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1108606) = 2654208 * k + 554303 := by
    unfold C
    simp [show (5308416 * k + 1108606) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 554303) = 7962624 * k + 1662910 := by
    unfold C
    simp [show (2654208 * k + 554303) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1662910) = 3981312 * k + 831455 := by
    unfold C
    simp [show (7962624 * k + 1662910) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 831455) = 11943936 * k + 2494366 := by
    unfold C
    simp [show (3981312 * k + 831455) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2494366) = 5971968 * k + 1247183 := by
    unfold C
    simp [show (11943936 * k + 2494366) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1247183) = 17915904 * k + 3741550 := by
    unfold C
    simp [show (5971968 * k + 1247183) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3741550) = 8957952 * k + 1870775 := by
    unfold C
    simp [show (17915904 * k + 3741550) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1870775) = 26873856 * k + 5612326 := by
    unfold C
    simp [show (8957952 * k + 1870775) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5612326) = 13436928 * k + 2806163 := by
    unfold C
    simp [show (26873856 * k + 5612326) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2806163) = 40310784 * k + 8418490 := by
    unfold C
    simp [show (13436928 * k + 2806163) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 8418490) = 20155392 * k + 4209245 := by
    unfold C
    simp [show (40310784 * k + 8418490) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 4209245) = 60466176 * k + 12627736 := by
    unfold C
    simp [show (20155392 * k + 4209245) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 12627736) = 30233088 * k + 6313868 := by
    unfold C
    simp [show (60466176 * k + 12627736) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 6313868) = 15116544 * k + 3156934 := by
    unfold C
    simp [show (30233088 * k + 6313868) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3156934) = 7558272 * k + 1578467 := by
    unfold C
    simp [show (15116544 * k + 3156934) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1578467) = 22674816 * k + 4735402 := by
    unfold C
    simp [show (7558272 * k + 1578467) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 4735402) = 11337408 * k + 2367701 := by
    unfold C
    simp [show (22674816 * k + 4735402) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2367701) = 34012224 * k + 7103104 := by
    unfold C
    simp [show (11337408 * k + 2367701) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 7103104) = 17006112 * k + 3551552 := by
    unfold C
    simp [show (34012224 * k + 7103104) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 3551552) = 8503056 * k + 1775776 := by
    unfold C
    simp [show (17006112 * k + 3551552) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1775776) = 4251528 * k + 887888 := by
    unfold C
    simp [show (8503056 * k + 1775776) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 887888) = 2125764 * k + 443944 := by
    unfold C
    simp [show (4251528 * k + 887888) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 443944) = 1062882 * k + 221972 := by
    unfold C
    simp [show (2125764 * k + 443944) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 221972) = 531441 * k + 110986 := by
    unfold C
    simp [show (1062882 * k + 221972) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 218983) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 218983)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_219239 : ∀ k : Nat,
    iterate (1048576 * k + 219239) 32 = 531441 * k + 111116 ∧
      531441 * k + 111116 < 1048576 * k + 219239 := by
  intro k
  have h1 : C (1048576 * k + 219239) = 3145728 * k + 657718 := by
    unfold C
    simp [show (1048576 * k + 219239) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 657718) = 1572864 * k + 328859 := by
    unfold C
    simp [show (3145728 * k + 657718) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 328859) = 4718592 * k + 986578 := by
    unfold C
    simp [show (1572864 * k + 328859) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 986578) = 2359296 * k + 493289 := by
    unfold C
    simp [show (4718592 * k + 986578) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 493289) = 7077888 * k + 1479868 := by
    unfold C
    simp [show (2359296 * k + 493289) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1479868) = 3538944 * k + 739934 := by
    unfold C
    simp [show (7077888 * k + 1479868) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 739934) = 1769472 * k + 369967 := by
    unfold C
    simp [show (3538944 * k + 739934) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 369967) = 5308416 * k + 1109902 := by
    unfold C
    simp [show (1769472 * k + 369967) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1109902) = 2654208 * k + 554951 := by
    unfold C
    simp [show (5308416 * k + 1109902) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 554951) = 7962624 * k + 1664854 := by
    unfold C
    simp [show (2654208 * k + 554951) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1664854) = 3981312 * k + 832427 := by
    unfold C
    simp [show (7962624 * k + 1664854) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 832427) = 11943936 * k + 2497282 := by
    unfold C
    simp [show (3981312 * k + 832427) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2497282) = 5971968 * k + 1248641 := by
    unfold C
    simp [show (11943936 * k + 2497282) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1248641) = 17915904 * k + 3745924 := by
    unfold C
    simp [show (5971968 * k + 1248641) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3745924) = 8957952 * k + 1872962 := by
    unfold C
    simp [show (17915904 * k + 3745924) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1872962) = 4478976 * k + 936481 := by
    unfold C
    simp [show (8957952 * k + 1872962) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 936481) = 13436928 * k + 2809444 := by
    unfold C
    simp [show (4478976 * k + 936481) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2809444) = 6718464 * k + 1404722 := by
    unfold C
    simp [show (13436928 * k + 2809444) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1404722) = 3359232 * k + 702361 := by
    unfold C
    simp [show (6718464 * k + 1404722) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 702361) = 10077696 * k + 2107084 := by
    unfold C
    simp [show (3359232 * k + 702361) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2107084) = 5038848 * k + 1053542 := by
    unfold C
    simp [show (10077696 * k + 2107084) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1053542) = 2519424 * k + 526771 := by
    unfold C
    simp [show (5038848 * k + 1053542) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 526771) = 7558272 * k + 1580314 := by
    unfold C
    simp [show (2519424 * k + 526771) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1580314) = 3779136 * k + 790157 := by
    unfold C
    simp [show (7558272 * k + 1580314) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 790157) = 11337408 * k + 2370472 := by
    unfold C
    simp [show (3779136 * k + 790157) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2370472) = 5668704 * k + 1185236 := by
    unfold C
    simp [show (11337408 * k + 2370472) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1185236) = 2834352 * k + 592618 := by
    unfold C
    simp [show (5668704 * k + 1185236) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 592618) = 1417176 * k + 296309 := by
    unfold C
    simp [show (2834352 * k + 592618) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 296309) = 4251528 * k + 888928 := by
    unfold C
    simp [show (1417176 * k + 296309) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 888928) = 2125764 * k + 444464 := by
    unfold C
    simp [show (4251528 * k + 888928) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 444464) = 1062882 * k + 222232 := by
    unfold C
    simp [show (2125764 * k + 444464) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 222232) = 531441 * k + 111116 := by
    unfold C
    simp [show (1062882 * k + 222232) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 219239) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 219239)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_219583 : ∀ k : Nat,
    iterate (1048576 * k + 219583) 32 = 531441 * k + 111290 ∧
      531441 * k + 111290 < 1048576 * k + 219583 := by
  intro k
  have h1 : C (1048576 * k + 219583) = 3145728 * k + 658750 := by
    unfold C
    simp [show (1048576 * k + 219583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 658750) = 1572864 * k + 329375 := by
    unfold C
    simp [show (3145728 * k + 658750) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 329375) = 4718592 * k + 988126 := by
    unfold C
    simp [show (1572864 * k + 329375) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 988126) = 2359296 * k + 494063 := by
    unfold C
    simp [show (4718592 * k + 988126) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 494063) = 7077888 * k + 1482190 := by
    unfold C
    simp [show (2359296 * k + 494063) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1482190) = 3538944 * k + 741095 := by
    unfold C
    simp [show (7077888 * k + 1482190) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 741095) = 10616832 * k + 2223286 := by
    unfold C
    simp [show (3538944 * k + 741095) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2223286) = 5308416 * k + 1111643 := by
    unfold C
    simp [show (10616832 * k + 2223286) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1111643) = 15925248 * k + 3334930 := by
    unfold C
    simp [show (5308416 * k + 1111643) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3334930) = 7962624 * k + 1667465 := by
    unfold C
    simp [show (15925248 * k + 3334930) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1667465) = 23887872 * k + 5002396 := by
    unfold C
    simp [show (7962624 * k + 1667465) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 5002396) = 11943936 * k + 2501198 := by
    unfold C
    simp [show (23887872 * k + 5002396) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2501198) = 5971968 * k + 1250599 := by
    unfold C
    simp [show (11943936 * k + 2501198) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1250599) = 17915904 * k + 3751798 := by
    unfold C
    simp [show (5971968 * k + 1250599) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3751798) = 8957952 * k + 1875899 := by
    unfold C
    simp [show (17915904 * k + 3751798) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1875899) = 26873856 * k + 5627698 := by
    unfold C
    simp [show (8957952 * k + 1875899) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5627698) = 13436928 * k + 2813849 := by
    unfold C
    simp [show (26873856 * k + 5627698) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2813849) = 40310784 * k + 8441548 := by
    unfold C
    simp [show (13436928 * k + 2813849) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 8441548) = 20155392 * k + 4220774 := by
    unfold C
    simp [show (40310784 * k + 8441548) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 4220774) = 10077696 * k + 2110387 := by
    unfold C
    simp [show (20155392 * k + 4220774) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2110387) = 30233088 * k + 6331162 := by
    unfold C
    simp [show (10077696 * k + 2110387) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 6331162) = 15116544 * k + 3165581 := by
    unfold C
    simp [show (30233088 * k + 6331162) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3165581) = 45349632 * k + 9496744 := by
    unfold C
    simp [show (15116544 * k + 3165581) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 9496744) = 22674816 * k + 4748372 := by
    unfold C
    simp [show (45349632 * k + 9496744) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 4748372) = 11337408 * k + 2374186 := by
    unfold C
    simp [show (22674816 * k + 4748372) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2374186) = 5668704 * k + 1187093 := by
    unfold C
    simp [show (11337408 * k + 2374186) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1187093) = 17006112 * k + 3561280 := by
    unfold C
    simp [show (5668704 * k + 1187093) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3561280) = 8503056 * k + 1780640 := by
    unfold C
    simp [show (17006112 * k + 3561280) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1780640) = 4251528 * k + 890320 := by
    unfold C
    simp [show (8503056 * k + 1780640) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 890320) = 2125764 * k + 445160 := by
    unfold C
    simp [show (4251528 * k + 890320) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 445160) = 1062882 * k + 222580 := by
    unfold C
    simp [show (2125764 * k + 445160) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 222580) = 531441 * k + 111290 := by
    unfold C
    simp [show (1062882 * k + 222580) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 219583) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 219583)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_220719 : ∀ k : Nat,
    iterate (1048576 * k + 220719) 32 = 531441 * k + 111866 ∧
      531441 * k + 111866 < 1048576 * k + 220719 := by
  intro k
  have h1 : C (1048576 * k + 220719) = 3145728 * k + 662158 := by
    unfold C
    simp [show (1048576 * k + 220719) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 662158) = 1572864 * k + 331079 := by
    unfold C
    simp [show (3145728 * k + 662158) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 331079) = 4718592 * k + 993238 := by
    unfold C
    simp [show (1572864 * k + 331079) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 993238) = 2359296 * k + 496619 := by
    unfold C
    simp [show (4718592 * k + 993238) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 496619) = 7077888 * k + 1489858 := by
    unfold C
    simp [show (2359296 * k + 496619) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1489858) = 3538944 * k + 744929 := by
    unfold C
    simp [show (7077888 * k + 1489858) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 744929) = 10616832 * k + 2234788 := by
    unfold C
    simp [show (3538944 * k + 744929) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2234788) = 5308416 * k + 1117394 := by
    unfold C
    simp [show (10616832 * k + 2234788) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1117394) = 2654208 * k + 558697 := by
    unfold C
    simp [show (5308416 * k + 1117394) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 558697) = 7962624 * k + 1676092 := by
    unfold C
    simp [show (2654208 * k + 558697) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1676092) = 3981312 * k + 838046 := by
    unfold C
    simp [show (7962624 * k + 1676092) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 838046) = 1990656 * k + 419023 := by
    unfold C
    simp [show (3981312 * k + 838046) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 419023) = 5971968 * k + 1257070 := by
    unfold C
    simp [show (1990656 * k + 419023) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1257070) = 2985984 * k + 628535 := by
    unfold C
    simp [show (5971968 * k + 1257070) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 628535) = 8957952 * k + 1885606 := by
    unfold C
    simp [show (2985984 * k + 628535) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1885606) = 4478976 * k + 942803 := by
    unfold C
    simp [show (8957952 * k + 1885606) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 942803) = 13436928 * k + 2828410 := by
    unfold C
    simp [show (4478976 * k + 942803) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2828410) = 6718464 * k + 1414205 := by
    unfold C
    simp [show (13436928 * k + 2828410) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1414205) = 20155392 * k + 4242616 := by
    unfold C
    simp [show (6718464 * k + 1414205) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4242616) = 10077696 * k + 2121308 := by
    unfold C
    simp [show (20155392 * k + 4242616) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2121308) = 5038848 * k + 1060654 := by
    unfold C
    simp [show (10077696 * k + 2121308) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1060654) = 2519424 * k + 530327 := by
    unfold C
    simp [show (5038848 * k + 1060654) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 530327) = 7558272 * k + 1590982 := by
    unfold C
    simp [show (2519424 * k + 530327) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1590982) = 3779136 * k + 795491 := by
    unfold C
    simp [show (7558272 * k + 1590982) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 795491) = 11337408 * k + 2386474 := by
    unfold C
    simp [show (3779136 * k + 795491) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2386474) = 5668704 * k + 1193237 := by
    unfold C
    simp [show (11337408 * k + 2386474) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1193237) = 17006112 * k + 3579712 := by
    unfold C
    simp [show (5668704 * k + 1193237) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3579712) = 8503056 * k + 1789856 := by
    unfold C
    simp [show (17006112 * k + 3579712) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1789856) = 4251528 * k + 894928 := by
    unfold C
    simp [show (8503056 * k + 1789856) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 894928) = 2125764 * k + 447464 := by
    unfold C
    simp [show (4251528 * k + 894928) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 447464) = 1062882 * k + 223732 := by
    unfold C
    simp [show (2125764 * k + 447464) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 223732) = 531441 * k + 111866 := by
    unfold C
    simp [show (1062882 * k + 223732) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 220719) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 220719)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_221031 : ∀ k : Nat,
    iterate (1048576 * k + 221031) 32 = 531441 * k + 112024 ∧
      531441 * k + 112024 < 1048576 * k + 221031 := by
  intro k
  have h1 : C (1048576 * k + 221031) = 3145728 * k + 663094 := by
    unfold C
    simp [show (1048576 * k + 221031) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 663094) = 1572864 * k + 331547 := by
    unfold C
    simp [show (3145728 * k + 663094) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 331547) = 4718592 * k + 994642 := by
    unfold C
    simp [show (1572864 * k + 331547) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 994642) = 2359296 * k + 497321 := by
    unfold C
    simp [show (4718592 * k + 994642) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 497321) = 7077888 * k + 1491964 := by
    unfold C
    simp [show (2359296 * k + 497321) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1491964) = 3538944 * k + 745982 := by
    unfold C
    simp [show (7077888 * k + 1491964) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 745982) = 1769472 * k + 372991 := by
    unfold C
    simp [show (3538944 * k + 745982) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 372991) = 5308416 * k + 1118974 := by
    unfold C
    simp [show (1769472 * k + 372991) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1118974) = 2654208 * k + 559487 := by
    unfold C
    simp [show (5308416 * k + 1118974) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 559487) = 7962624 * k + 1678462 := by
    unfold C
    simp [show (2654208 * k + 559487) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1678462) = 3981312 * k + 839231 := by
    unfold C
    simp [show (7962624 * k + 1678462) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 839231) = 11943936 * k + 2517694 := by
    unfold C
    simp [show (3981312 * k + 839231) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2517694) = 5971968 * k + 1258847 := by
    unfold C
    simp [show (11943936 * k + 2517694) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1258847) = 17915904 * k + 3776542 := by
    unfold C
    simp [show (5971968 * k + 1258847) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3776542) = 8957952 * k + 1888271 := by
    unfold C
    simp [show (17915904 * k + 3776542) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1888271) = 26873856 * k + 5664814 := by
    unfold C
    simp [show (8957952 * k + 1888271) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5664814) = 13436928 * k + 2832407 := by
    unfold C
    simp [show (26873856 * k + 5664814) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2832407) = 40310784 * k + 8497222 := by
    unfold C
    simp [show (13436928 * k + 2832407) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 8497222) = 20155392 * k + 4248611 := by
    unfold C
    simp [show (40310784 * k + 8497222) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 4248611) = 60466176 * k + 12745834 := by
    unfold C
    simp [show (20155392 * k + 4248611) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 12745834) = 30233088 * k + 6372917 := by
    unfold C
    simp [show (60466176 * k + 12745834) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 6372917) = 90699264 * k + 19118752 := by
    unfold C
    simp [show (30233088 * k + 6372917) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 19118752) = 45349632 * k + 9559376 := by
    unfold C
    simp [show (90699264 * k + 19118752) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 9559376) = 22674816 * k + 4779688 := by
    unfold C
    simp [show (45349632 * k + 9559376) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 4779688) = 11337408 * k + 2389844 := by
    unfold C
    simp [show (22674816 * k + 4779688) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2389844) = 5668704 * k + 1194922 := by
    unfold C
    simp [show (11337408 * k + 2389844) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1194922) = 2834352 * k + 597461 := by
    unfold C
    simp [show (5668704 * k + 1194922) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 597461) = 8503056 * k + 1792384 := by
    unfold C
    simp [show (2834352 * k + 597461) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1792384) = 4251528 * k + 896192 := by
    unfold C
    simp [show (8503056 * k + 1792384) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 896192) = 2125764 * k + 448096 := by
    unfold C
    simp [show (4251528 * k + 896192) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 448096) = 1062882 * k + 224048 := by
    unfold C
    simp [show (2125764 * k + 448096) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 224048) = 531441 * k + 112024 := by
    unfold C
    simp [show (1062882 * k + 224048) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 221031) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 221031)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_221435 : ∀ k : Nat,
    iterate (1048576 * k + 221435) 32 = 531441 * k + 112229 ∧
      531441 * k + 112229 < 1048576 * k + 221435 := by
  intro k
  have h1 : C (1048576 * k + 221435) = 3145728 * k + 664306 := by
    unfold C
    simp [show (1048576 * k + 221435) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 664306) = 1572864 * k + 332153 := by
    unfold C
    simp [show (3145728 * k + 664306) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 332153) = 4718592 * k + 996460 := by
    unfold C
    simp [show (1572864 * k + 332153) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 996460) = 2359296 * k + 498230 := by
    unfold C
    simp [show (4718592 * k + 996460) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 498230) = 1179648 * k + 249115 := by
    unfold C
    simp [show (2359296 * k + 498230) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 249115) = 3538944 * k + 747346 := by
    unfold C
    simp [show (1179648 * k + 249115) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 747346) = 1769472 * k + 373673 := by
    unfold C
    simp [show (3538944 * k + 747346) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 373673) = 5308416 * k + 1121020 := by
    unfold C
    simp [show (1769472 * k + 373673) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1121020) = 2654208 * k + 560510 := by
    unfold C
    simp [show (5308416 * k + 1121020) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 560510) = 1327104 * k + 280255 := by
    unfold C
    simp [show (2654208 * k + 560510) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 280255) = 3981312 * k + 840766 := by
    unfold C
    simp [show (1327104 * k + 280255) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 840766) = 1990656 * k + 420383 := by
    unfold C
    simp [show (3981312 * k + 840766) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 420383) = 5971968 * k + 1261150 := by
    unfold C
    simp [show (1990656 * k + 420383) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1261150) = 2985984 * k + 630575 := by
    unfold C
    simp [show (5971968 * k + 1261150) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 630575) = 8957952 * k + 1891726 := by
    unfold C
    simp [show (2985984 * k + 630575) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1891726) = 4478976 * k + 945863 := by
    unfold C
    simp [show (8957952 * k + 1891726) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 945863) = 13436928 * k + 2837590 := by
    unfold C
    simp [show (4478976 * k + 945863) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2837590) = 6718464 * k + 1418795 := by
    unfold C
    simp [show (13436928 * k + 2837590) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1418795) = 20155392 * k + 4256386 := by
    unfold C
    simp [show (6718464 * k + 1418795) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4256386) = 10077696 * k + 2128193 := by
    unfold C
    simp [show (20155392 * k + 4256386) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2128193) = 30233088 * k + 6384580 := by
    unfold C
    simp [show (10077696 * k + 2128193) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 6384580) = 15116544 * k + 3192290 := by
    unfold C
    simp [show (30233088 * k + 6384580) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3192290) = 7558272 * k + 1596145 := by
    unfold C
    simp [show (15116544 * k + 3192290) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1596145) = 22674816 * k + 4788436 := by
    unfold C
    simp [show (7558272 * k + 1596145) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 4788436) = 11337408 * k + 2394218 := by
    unfold C
    simp [show (22674816 * k + 4788436) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2394218) = 5668704 * k + 1197109 := by
    unfold C
    simp [show (11337408 * k + 2394218) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1197109) = 17006112 * k + 3591328 := by
    unfold C
    simp [show (5668704 * k + 1197109) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3591328) = 8503056 * k + 1795664 := by
    unfold C
    simp [show (17006112 * k + 3591328) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1795664) = 4251528 * k + 897832 := by
    unfold C
    simp [show (8503056 * k + 1795664) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 897832) = 2125764 * k + 448916 := by
    unfold C
    simp [show (4251528 * k + 897832) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 448916) = 1062882 * k + 224458 := by
    unfold C
    simp [show (2125764 * k + 448916) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 224458) = 531441 * k + 112229 := by
    unfold C
    simp [show (1062882 * k + 224458) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 221435) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 221435)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_221599 : ∀ k : Nat,
    iterate (1048576 * k + 221599) 32 = 531441 * k + 112312 ∧
      531441 * k + 112312 < 1048576 * k + 221599 := by
  intro k
  have h1 : C (1048576 * k + 221599) = 3145728 * k + 664798 := by
    unfold C
    simp [show (1048576 * k + 221599) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 664798) = 1572864 * k + 332399 := by
    unfold C
    simp [show (3145728 * k + 664798) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 332399) = 4718592 * k + 997198 := by
    unfold C
    simp [show (1572864 * k + 332399) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 997198) = 2359296 * k + 498599 := by
    unfold C
    simp [show (4718592 * k + 997198) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 498599) = 7077888 * k + 1495798 := by
    unfold C
    simp [show (2359296 * k + 498599) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1495798) = 3538944 * k + 747899 := by
    unfold C
    simp [show (7077888 * k + 1495798) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 747899) = 10616832 * k + 2243698 := by
    unfold C
    simp [show (3538944 * k + 747899) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2243698) = 5308416 * k + 1121849 := by
    unfold C
    simp [show (10616832 * k + 2243698) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1121849) = 15925248 * k + 3365548 := by
    unfold C
    simp [show (5308416 * k + 1121849) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3365548) = 7962624 * k + 1682774 := by
    unfold C
    simp [show (15925248 * k + 3365548) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1682774) = 3981312 * k + 841387 := by
    unfold C
    simp [show (7962624 * k + 1682774) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 841387) = 11943936 * k + 2524162 := by
    unfold C
    simp [show (3981312 * k + 841387) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2524162) = 5971968 * k + 1262081 := by
    unfold C
    simp [show (11943936 * k + 2524162) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1262081) = 17915904 * k + 3786244 := by
    unfold C
    simp [show (5971968 * k + 1262081) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3786244) = 8957952 * k + 1893122 := by
    unfold C
    simp [show (17915904 * k + 3786244) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1893122) = 4478976 * k + 946561 := by
    unfold C
    simp [show (8957952 * k + 1893122) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 946561) = 13436928 * k + 2839684 := by
    unfold C
    simp [show (4478976 * k + 946561) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2839684) = 6718464 * k + 1419842 := by
    unfold C
    simp [show (13436928 * k + 2839684) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1419842) = 3359232 * k + 709921 := by
    unfold C
    simp [show (6718464 * k + 1419842) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 709921) = 10077696 * k + 2129764 := by
    unfold C
    simp [show (3359232 * k + 709921) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2129764) = 5038848 * k + 1064882 := by
    unfold C
    simp [show (10077696 * k + 2129764) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1064882) = 2519424 * k + 532441 := by
    unfold C
    simp [show (5038848 * k + 1064882) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 532441) = 7558272 * k + 1597324 := by
    unfold C
    simp [show (2519424 * k + 532441) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1597324) = 3779136 * k + 798662 := by
    unfold C
    simp [show (7558272 * k + 1597324) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 798662) = 1889568 * k + 399331 := by
    unfold C
    simp [show (3779136 * k + 798662) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 399331) = 5668704 * k + 1197994 := by
    unfold C
    simp [show (1889568 * k + 399331) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1197994) = 2834352 * k + 598997 := by
    unfold C
    simp [show (5668704 * k + 1197994) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 598997) = 8503056 * k + 1796992 := by
    unfold C
    simp [show (2834352 * k + 598997) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1796992) = 4251528 * k + 898496 := by
    unfold C
    simp [show (8503056 * k + 1796992) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 898496) = 2125764 * k + 449248 := by
    unfold C
    simp [show (4251528 * k + 898496) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 449248) = 1062882 * k + 224624 := by
    unfold C
    simp [show (2125764 * k + 449248) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 224624) = 531441 * k + 112312 := by
    unfold C
    simp [show (1062882 * k + 224624) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 221599) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 221599)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_221631 : ∀ k : Nat,
    iterate (1048576 * k + 221631) 32 = 531441 * k + 112328 ∧
      531441 * k + 112328 < 1048576 * k + 221631 := by
  intro k
  have h1 : C (1048576 * k + 221631) = 3145728 * k + 664894 := by
    unfold C
    simp [show (1048576 * k + 221631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 664894) = 1572864 * k + 332447 := by
    unfold C
    simp [show (3145728 * k + 664894) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 332447) = 4718592 * k + 997342 := by
    unfold C
    simp [show (1572864 * k + 332447) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 997342) = 2359296 * k + 498671 := by
    unfold C
    simp [show (4718592 * k + 997342) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 498671) = 7077888 * k + 1496014 := by
    unfold C
    simp [show (2359296 * k + 498671) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1496014) = 3538944 * k + 748007 := by
    unfold C
    simp [show (7077888 * k + 1496014) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 748007) = 10616832 * k + 2244022 := by
    unfold C
    simp [show (3538944 * k + 748007) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2244022) = 5308416 * k + 1122011 := by
    unfold C
    simp [show (10616832 * k + 2244022) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1122011) = 15925248 * k + 3366034 := by
    unfold C
    simp [show (5308416 * k + 1122011) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3366034) = 7962624 * k + 1683017 := by
    unfold C
    simp [show (15925248 * k + 3366034) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1683017) = 23887872 * k + 5049052 := by
    unfold C
    simp [show (7962624 * k + 1683017) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 5049052) = 11943936 * k + 2524526 := by
    unfold C
    simp [show (23887872 * k + 5049052) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2524526) = 5971968 * k + 1262263 := by
    unfold C
    simp [show (11943936 * k + 2524526) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1262263) = 17915904 * k + 3786790 := by
    unfold C
    simp [show (5971968 * k + 1262263) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3786790) = 8957952 * k + 1893395 := by
    unfold C
    simp [show (17915904 * k + 3786790) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1893395) = 26873856 * k + 5680186 := by
    unfold C
    simp [show (8957952 * k + 1893395) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5680186) = 13436928 * k + 2840093 := by
    unfold C
    simp [show (26873856 * k + 5680186) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2840093) = 40310784 * k + 8520280 := by
    unfold C
    simp [show (13436928 * k + 2840093) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 8520280) = 20155392 * k + 4260140 := by
    unfold C
    simp [show (40310784 * k + 8520280) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 4260140) = 10077696 * k + 2130070 := by
    unfold C
    simp [show (20155392 * k + 4260140) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2130070) = 5038848 * k + 1065035 := by
    unfold C
    simp [show (10077696 * k + 2130070) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1065035) = 15116544 * k + 3195106 := by
    unfold C
    simp [show (5038848 * k + 1065035) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3195106) = 7558272 * k + 1597553 := by
    unfold C
    simp [show (15116544 * k + 3195106) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1597553) = 22674816 * k + 4792660 := by
    unfold C
    simp [show (7558272 * k + 1597553) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 4792660) = 11337408 * k + 2396330 := by
    unfold C
    simp [show (22674816 * k + 4792660) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2396330) = 5668704 * k + 1198165 := by
    unfold C
    simp [show (11337408 * k + 2396330) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1198165) = 17006112 * k + 3594496 := by
    unfold C
    simp [show (5668704 * k + 1198165) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3594496) = 8503056 * k + 1797248 := by
    unfold C
    simp [show (17006112 * k + 3594496) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1797248) = 4251528 * k + 898624 := by
    unfold C
    simp [show (8503056 * k + 1797248) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 898624) = 2125764 * k + 449312 := by
    unfold C
    simp [show (4251528 * k + 898624) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 449312) = 1062882 * k + 224656 := by
    unfold C
    simp [show (2125764 * k + 449312) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 224656) = 531441 * k + 112328 := by
    unfold C
    simp [show (1062882 * k + 224656) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 221631) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 221631)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_222015 : ∀ k : Nat,
    iterate (1048576 * k + 222015) 32 = 531441 * k + 112523 ∧
      531441 * k + 112523 < 1048576 * k + 222015 := by
  intro k
  have h1 : C (1048576 * k + 222015) = 3145728 * k + 666046 := by
    unfold C
    simp [show (1048576 * k + 222015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 666046) = 1572864 * k + 333023 := by
    unfold C
    simp [show (3145728 * k + 666046) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 333023) = 4718592 * k + 999070 := by
    unfold C
    simp [show (1572864 * k + 333023) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 999070) = 2359296 * k + 499535 := by
    unfold C
    simp [show (4718592 * k + 999070) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 499535) = 7077888 * k + 1498606 := by
    unfold C
    simp [show (2359296 * k + 499535) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1498606) = 3538944 * k + 749303 := by
    unfold C
    simp [show (7077888 * k + 1498606) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 749303) = 10616832 * k + 2247910 := by
    unfold C
    simp [show (3538944 * k + 749303) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2247910) = 5308416 * k + 1123955 := by
    unfold C
    simp [show (10616832 * k + 2247910) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1123955) = 15925248 * k + 3371866 := by
    unfold C
    simp [show (5308416 * k + 1123955) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3371866) = 7962624 * k + 1685933 := by
    unfold C
    simp [show (15925248 * k + 3371866) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1685933) = 23887872 * k + 5057800 := by
    unfold C
    simp [show (7962624 * k + 1685933) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 5057800) = 11943936 * k + 2528900 := by
    unfold C
    simp [show (23887872 * k + 5057800) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2528900) = 5971968 * k + 1264450 := by
    unfold C
    simp [show (11943936 * k + 2528900) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1264450) = 2985984 * k + 632225 := by
    unfold C
    simp [show (5971968 * k + 1264450) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 632225) = 8957952 * k + 1896676 := by
    unfold C
    simp [show (2985984 * k + 632225) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1896676) = 4478976 * k + 948338 := by
    unfold C
    simp [show (8957952 * k + 1896676) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 948338) = 2239488 * k + 474169 := by
    unfold C
    simp [show (4478976 * k + 948338) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 474169) = 6718464 * k + 1422508 := by
    unfold C
    simp [show (2239488 * k + 474169) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1422508) = 3359232 * k + 711254 := by
    unfold C
    simp [show (6718464 * k + 1422508) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 711254) = 1679616 * k + 355627 := by
    unfold C
    simp [show (3359232 * k + 711254) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 355627) = 5038848 * k + 1066882 := by
    unfold C
    simp [show (1679616 * k + 355627) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1066882) = 2519424 * k + 533441 := by
    unfold C
    simp [show (5038848 * k + 1066882) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 533441) = 7558272 * k + 1600324 := by
    unfold C
    simp [show (2519424 * k + 533441) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1600324) = 3779136 * k + 800162 := by
    unfold C
    simp [show (7558272 * k + 1600324) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 800162) = 1889568 * k + 400081 := by
    unfold C
    simp [show (3779136 * k + 800162) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 400081) = 5668704 * k + 1200244 := by
    unfold C
    simp [show (1889568 * k + 400081) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1200244) = 2834352 * k + 600122 := by
    unfold C
    simp [show (5668704 * k + 1200244) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 600122) = 1417176 * k + 300061 := by
    unfold C
    simp [show (2834352 * k + 600122) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 300061) = 4251528 * k + 900184 := by
    unfold C
    simp [show (1417176 * k + 300061) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 900184) = 2125764 * k + 450092 := by
    unfold C
    simp [show (4251528 * k + 900184) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 450092) = 1062882 * k + 225046 := by
    unfold C
    simp [show (2125764 * k + 450092) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 225046) = 531441 * k + 112523 := by
    unfold C
    simp [show (1062882 * k + 225046) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 222015) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 222015)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_222055 : ∀ k : Nat,
    iterate (1048576 * k + 222055) 32 = 531441 * k + 112543 ∧
      531441 * k + 112543 < 1048576 * k + 222055 := by
  intro k
  have h1 : C (1048576 * k + 222055) = 3145728 * k + 666166 := by
    unfold C
    simp [show (1048576 * k + 222055) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 666166) = 1572864 * k + 333083 := by
    unfold C
    simp [show (3145728 * k + 666166) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 333083) = 4718592 * k + 999250 := by
    unfold C
    simp [show (1572864 * k + 333083) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 999250) = 2359296 * k + 499625 := by
    unfold C
    simp [show (4718592 * k + 999250) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 499625) = 7077888 * k + 1498876 := by
    unfold C
    simp [show (2359296 * k + 499625) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1498876) = 3538944 * k + 749438 := by
    unfold C
    simp [show (7077888 * k + 1498876) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 749438) = 1769472 * k + 374719 := by
    unfold C
    simp [show (3538944 * k + 749438) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 374719) = 5308416 * k + 1124158 := by
    unfold C
    simp [show (1769472 * k + 374719) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1124158) = 2654208 * k + 562079 := by
    unfold C
    simp [show (5308416 * k + 1124158) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 562079) = 7962624 * k + 1686238 := by
    unfold C
    simp [show (2654208 * k + 562079) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1686238) = 3981312 * k + 843119 := by
    unfold C
    simp [show (7962624 * k + 1686238) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 843119) = 11943936 * k + 2529358 := by
    unfold C
    simp [show (3981312 * k + 843119) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2529358) = 5971968 * k + 1264679 := by
    unfold C
    simp [show (11943936 * k + 2529358) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1264679) = 17915904 * k + 3794038 := by
    unfold C
    simp [show (5971968 * k + 1264679) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3794038) = 8957952 * k + 1897019 := by
    unfold C
    simp [show (17915904 * k + 3794038) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1897019) = 26873856 * k + 5691058 := by
    unfold C
    simp [show (8957952 * k + 1897019) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5691058) = 13436928 * k + 2845529 := by
    unfold C
    simp [show (26873856 * k + 5691058) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2845529) = 40310784 * k + 8536588 := by
    unfold C
    simp [show (13436928 * k + 2845529) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 8536588) = 20155392 * k + 4268294 := by
    unfold C
    simp [show (40310784 * k + 8536588) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 4268294) = 10077696 * k + 2134147 := by
    unfold C
    simp [show (20155392 * k + 4268294) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2134147) = 30233088 * k + 6402442 := by
    unfold C
    simp [show (10077696 * k + 2134147) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 6402442) = 15116544 * k + 3201221 := by
    unfold C
    simp [show (30233088 * k + 6402442) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3201221) = 45349632 * k + 9603664 := by
    unfold C
    simp [show (15116544 * k + 3201221) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 9603664) = 22674816 * k + 4801832 := by
    unfold C
    simp [show (45349632 * k + 9603664) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 4801832) = 11337408 * k + 2400916 := by
    unfold C
    simp [show (22674816 * k + 4801832) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2400916) = 5668704 * k + 1200458 := by
    unfold C
    simp [show (11337408 * k + 2400916) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1200458) = 2834352 * k + 600229 := by
    unfold C
    simp [show (5668704 * k + 1200458) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 600229) = 8503056 * k + 1800688 := by
    unfold C
    simp [show (2834352 * k + 600229) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1800688) = 4251528 * k + 900344 := by
    unfold C
    simp [show (8503056 * k + 1800688) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 900344) = 2125764 * k + 450172 := by
    unfold C
    simp [show (4251528 * k + 900344) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 450172) = 1062882 * k + 225086 := by
    unfold C
    simp [show (2125764 * k + 450172) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 225086) = 531441 * k + 112543 := by
    unfold C
    simp [show (1062882 * k + 225086) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 222055) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 222055)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_222175 : ∀ k : Nat,
    iterate (1048576 * k + 222175) 32 = 531441 * k + 112604 ∧
      531441 * k + 112604 < 1048576 * k + 222175 := by
  intro k
  have h1 : C (1048576 * k + 222175) = 3145728 * k + 666526 := by
    unfold C
    simp [show (1048576 * k + 222175) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 666526) = 1572864 * k + 333263 := by
    unfold C
    simp [show (3145728 * k + 666526) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 333263) = 4718592 * k + 999790 := by
    unfold C
    simp [show (1572864 * k + 333263) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 999790) = 2359296 * k + 499895 := by
    unfold C
    simp [show (4718592 * k + 999790) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 499895) = 7077888 * k + 1499686 := by
    unfold C
    simp [show (2359296 * k + 499895) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1499686) = 3538944 * k + 749843 := by
    unfold C
    simp [show (7077888 * k + 1499686) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 749843) = 10616832 * k + 2249530 := by
    unfold C
    simp [show (3538944 * k + 749843) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2249530) = 5308416 * k + 1124765 := by
    unfold C
    simp [show (10616832 * k + 2249530) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1124765) = 15925248 * k + 3374296 := by
    unfold C
    simp [show (5308416 * k + 1124765) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3374296) = 7962624 * k + 1687148 := by
    unfold C
    simp [show (15925248 * k + 3374296) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1687148) = 3981312 * k + 843574 := by
    unfold C
    simp [show (7962624 * k + 1687148) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 843574) = 1990656 * k + 421787 := by
    unfold C
    simp [show (3981312 * k + 843574) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 421787) = 5971968 * k + 1265362 := by
    unfold C
    simp [show (1990656 * k + 421787) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1265362) = 2985984 * k + 632681 := by
    unfold C
    simp [show (5971968 * k + 1265362) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 632681) = 8957952 * k + 1898044 := by
    unfold C
    simp [show (2985984 * k + 632681) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1898044) = 4478976 * k + 949022 := by
    unfold C
    simp [show (8957952 * k + 1898044) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 949022) = 2239488 * k + 474511 := by
    unfold C
    simp [show (4478976 * k + 949022) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 474511) = 6718464 * k + 1423534 := by
    unfold C
    simp [show (2239488 * k + 474511) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1423534) = 3359232 * k + 711767 := by
    unfold C
    simp [show (6718464 * k + 1423534) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 711767) = 10077696 * k + 2135302 := by
    unfold C
    simp [show (3359232 * k + 711767) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2135302) = 5038848 * k + 1067651 := by
    unfold C
    simp [show (10077696 * k + 2135302) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1067651) = 15116544 * k + 3202954 := by
    unfold C
    simp [show (5038848 * k + 1067651) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3202954) = 7558272 * k + 1601477 := by
    unfold C
    simp [show (15116544 * k + 3202954) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1601477) = 22674816 * k + 4804432 := by
    unfold C
    simp [show (7558272 * k + 1601477) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 4804432) = 11337408 * k + 2402216 := by
    unfold C
    simp [show (22674816 * k + 4804432) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2402216) = 5668704 * k + 1201108 := by
    unfold C
    simp [show (11337408 * k + 2402216) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1201108) = 2834352 * k + 600554 := by
    unfold C
    simp [show (5668704 * k + 1201108) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 600554) = 1417176 * k + 300277 := by
    unfold C
    simp [show (2834352 * k + 600554) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 300277) = 4251528 * k + 900832 := by
    unfold C
    simp [show (1417176 * k + 300277) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 900832) = 2125764 * k + 450416 := by
    unfold C
    simp [show (4251528 * k + 900832) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 450416) = 1062882 * k + 225208 := by
    unfold C
    simp [show (2125764 * k + 450416) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 225208) = 531441 * k + 112604 := by
    unfold C
    simp [show (1062882 * k + 225208) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 222175) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 222175)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_222335 : ∀ k : Nat,
    iterate (1048576 * k + 222335) 32 = 531441 * k + 112685 ∧
      531441 * k + 112685 < 1048576 * k + 222335 := by
  intro k
  have h1 : C (1048576 * k + 222335) = 3145728 * k + 667006 := by
    unfold C
    simp [show (1048576 * k + 222335) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 667006) = 1572864 * k + 333503 := by
    unfold C
    simp [show (3145728 * k + 667006) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 333503) = 4718592 * k + 1000510 := by
    unfold C
    simp [show (1572864 * k + 333503) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1000510) = 2359296 * k + 500255 := by
    unfold C
    simp [show (4718592 * k + 1000510) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 500255) = 7077888 * k + 1500766 := by
    unfold C
    simp [show (2359296 * k + 500255) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1500766) = 3538944 * k + 750383 := by
    unfold C
    simp [show (7077888 * k + 1500766) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 750383) = 10616832 * k + 2251150 := by
    unfold C
    simp [show (3538944 * k + 750383) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2251150) = 5308416 * k + 1125575 := by
    unfold C
    simp [show (10616832 * k + 2251150) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1125575) = 15925248 * k + 3376726 := by
    unfold C
    simp [show (5308416 * k + 1125575) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3376726) = 7962624 * k + 1688363 := by
    unfold C
    simp [show (15925248 * k + 3376726) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1688363) = 23887872 * k + 5065090 := by
    unfold C
    simp [show (7962624 * k + 1688363) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 5065090) = 11943936 * k + 2532545 := by
    unfold C
    simp [show (23887872 * k + 5065090) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2532545) = 35831808 * k + 7597636 := by
    unfold C
    simp [show (11943936 * k + 2532545) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 7597636) = 17915904 * k + 3798818 := by
    unfold C
    simp [show (35831808 * k + 7597636) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 3798818) = 8957952 * k + 1899409 := by
    unfold C
    simp [show (17915904 * k + 3798818) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1899409) = 26873856 * k + 5698228 := by
    unfold C
    simp [show (8957952 * k + 1899409) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5698228) = 13436928 * k + 2849114 := by
    unfold C
    simp [show (26873856 * k + 5698228) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2849114) = 6718464 * k + 1424557 := by
    unfold C
    simp [show (13436928 * k + 2849114) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1424557) = 20155392 * k + 4273672 := by
    unfold C
    simp [show (6718464 * k + 1424557) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4273672) = 10077696 * k + 2136836 := by
    unfold C
    simp [show (20155392 * k + 4273672) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2136836) = 5038848 * k + 1068418 := by
    unfold C
    simp [show (10077696 * k + 2136836) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1068418) = 2519424 * k + 534209 := by
    unfold C
    simp [show (5038848 * k + 1068418) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 534209) = 7558272 * k + 1602628 := by
    unfold C
    simp [show (2519424 * k + 534209) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1602628) = 3779136 * k + 801314 := by
    unfold C
    simp [show (7558272 * k + 1602628) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 801314) = 1889568 * k + 400657 := by
    unfold C
    simp [show (3779136 * k + 801314) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 400657) = 5668704 * k + 1201972 := by
    unfold C
    simp [show (1889568 * k + 400657) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1201972) = 2834352 * k + 600986 := by
    unfold C
    simp [show (5668704 * k + 1201972) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 600986) = 1417176 * k + 300493 := by
    unfold C
    simp [show (2834352 * k + 600986) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 300493) = 4251528 * k + 901480 := by
    unfold C
    simp [show (1417176 * k + 300493) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 901480) = 2125764 * k + 450740 := by
    unfold C
    simp [show (4251528 * k + 901480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 450740) = 1062882 * k + 225370 := by
    unfold C
    simp [show (2125764 * k + 450740) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 225370) = 531441 * k + 112685 := by
    unfold C
    simp [show (1062882 * k + 225370) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 222335) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 222335)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_223303 : ∀ k : Nat,
    iterate (1048576 * k + 223303) 32 = 531441 * k + 113176 ∧
      531441 * k + 113176 < 1048576 * k + 223303 := by
  intro k
  have h1 : C (1048576 * k + 223303) = 3145728 * k + 669910 := by
    unfold C
    simp [show (1048576 * k + 223303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 669910) = 1572864 * k + 334955 := by
    unfold C
    simp [show (3145728 * k + 669910) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 334955) = 4718592 * k + 1004866 := by
    unfold C
    simp [show (1572864 * k + 334955) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1004866) = 2359296 * k + 502433 := by
    unfold C
    simp [show (4718592 * k + 1004866) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 502433) = 7077888 * k + 1507300 := by
    unfold C
    simp [show (2359296 * k + 502433) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1507300) = 3538944 * k + 753650 := by
    unfold C
    simp [show (7077888 * k + 1507300) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 753650) = 1769472 * k + 376825 := by
    unfold C
    simp [show (3538944 * k + 753650) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 376825) = 5308416 * k + 1130476 := by
    unfold C
    simp [show (1769472 * k + 376825) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1130476) = 2654208 * k + 565238 := by
    unfold C
    simp [show (5308416 * k + 1130476) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 565238) = 1327104 * k + 282619 := by
    unfold C
    simp [show (2654208 * k + 565238) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 282619) = 3981312 * k + 847858 := by
    unfold C
    simp [show (1327104 * k + 282619) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 847858) = 1990656 * k + 423929 := by
    unfold C
    simp [show (3981312 * k + 847858) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 423929) = 5971968 * k + 1271788 := by
    unfold C
    simp [show (1990656 * k + 423929) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1271788) = 2985984 * k + 635894 := by
    unfold C
    simp [show (5971968 * k + 1271788) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 635894) = 1492992 * k + 317947 := by
    unfold C
    simp [show (2985984 * k + 635894) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 317947) = 4478976 * k + 953842 := by
    unfold C
    simp [show (1492992 * k + 317947) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 953842) = 2239488 * k + 476921 := by
    unfold C
    simp [show (4478976 * k + 953842) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 476921) = 6718464 * k + 1430764 := by
    unfold C
    simp [show (2239488 * k + 476921) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1430764) = 3359232 * k + 715382 := by
    unfold C
    simp [show (6718464 * k + 1430764) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 715382) = 1679616 * k + 357691 := by
    unfold C
    simp [show (3359232 * k + 715382) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 357691) = 5038848 * k + 1073074 := by
    unfold C
    simp [show (1679616 * k + 357691) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1073074) = 2519424 * k + 536537 := by
    unfold C
    simp [show (5038848 * k + 1073074) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 536537) = 7558272 * k + 1609612 := by
    unfold C
    simp [show (2519424 * k + 536537) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1609612) = 3779136 * k + 804806 := by
    unfold C
    simp [show (7558272 * k + 1609612) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 804806) = 1889568 * k + 402403 := by
    unfold C
    simp [show (3779136 * k + 804806) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 402403) = 5668704 * k + 1207210 := by
    unfold C
    simp [show (1889568 * k + 402403) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1207210) = 2834352 * k + 603605 := by
    unfold C
    simp [show (5668704 * k + 1207210) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 603605) = 8503056 * k + 1810816 := by
    unfold C
    simp [show (2834352 * k + 603605) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1810816) = 4251528 * k + 905408 := by
    unfold C
    simp [show (8503056 * k + 1810816) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 905408) = 2125764 * k + 452704 := by
    unfold C
    simp [show (4251528 * k + 905408) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 452704) = 1062882 * k + 226352 := by
    unfold C
    simp [show (2125764 * k + 452704) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 226352) = 531441 * k + 113176 := by
    unfold C
    simp [show (1062882 * k + 226352) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 223303) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 223303)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_223463 : ∀ k : Nat,
    iterate (1048576 * k + 223463) 32 = 531441 * k + 113257 ∧
      531441 * k + 113257 < 1048576 * k + 223463 := by
  intro k
  have h1 : C (1048576 * k + 223463) = 3145728 * k + 670390 := by
    unfold C
    simp [show (1048576 * k + 223463) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 670390) = 1572864 * k + 335195 := by
    unfold C
    simp [show (3145728 * k + 670390) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 335195) = 4718592 * k + 1005586 := by
    unfold C
    simp [show (1572864 * k + 335195) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1005586) = 2359296 * k + 502793 := by
    unfold C
    simp [show (4718592 * k + 1005586) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 502793) = 7077888 * k + 1508380 := by
    unfold C
    simp [show (2359296 * k + 502793) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1508380) = 3538944 * k + 754190 := by
    unfold C
    simp [show (7077888 * k + 1508380) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 754190) = 1769472 * k + 377095 := by
    unfold C
    simp [show (3538944 * k + 754190) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 377095) = 5308416 * k + 1131286 := by
    unfold C
    simp [show (1769472 * k + 377095) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1131286) = 2654208 * k + 565643 := by
    unfold C
    simp [show (5308416 * k + 1131286) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 565643) = 7962624 * k + 1696930 := by
    unfold C
    simp [show (2654208 * k + 565643) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1696930) = 3981312 * k + 848465 := by
    unfold C
    simp [show (7962624 * k + 1696930) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 848465) = 11943936 * k + 2545396 := by
    unfold C
    simp [show (3981312 * k + 848465) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2545396) = 5971968 * k + 1272698 := by
    unfold C
    simp [show (11943936 * k + 2545396) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1272698) = 2985984 * k + 636349 := by
    unfold C
    simp [show (5971968 * k + 1272698) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 636349) = 8957952 * k + 1909048 := by
    unfold C
    simp [show (2985984 * k + 636349) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1909048) = 4478976 * k + 954524 := by
    unfold C
    simp [show (8957952 * k + 1909048) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 954524) = 2239488 * k + 477262 := by
    unfold C
    simp [show (4478976 * k + 954524) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 477262) = 1119744 * k + 238631 := by
    unfold C
    simp [show (2239488 * k + 477262) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 238631) = 3359232 * k + 715894 := by
    unfold C
    simp [show (1119744 * k + 238631) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 715894) = 1679616 * k + 357947 := by
    unfold C
    simp [show (3359232 * k + 715894) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 357947) = 5038848 * k + 1073842 := by
    unfold C
    simp [show (1679616 * k + 357947) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1073842) = 2519424 * k + 536921 := by
    unfold C
    simp [show (5038848 * k + 1073842) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 536921) = 7558272 * k + 1610764 := by
    unfold C
    simp [show (2519424 * k + 536921) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1610764) = 3779136 * k + 805382 := by
    unfold C
    simp [show (7558272 * k + 1610764) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 805382) = 1889568 * k + 402691 := by
    unfold C
    simp [show (3779136 * k + 805382) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 402691) = 5668704 * k + 1208074 := by
    unfold C
    simp [show (1889568 * k + 402691) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1208074) = 2834352 * k + 604037 := by
    unfold C
    simp [show (5668704 * k + 1208074) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 604037) = 8503056 * k + 1812112 := by
    unfold C
    simp [show (2834352 * k + 604037) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1812112) = 4251528 * k + 906056 := by
    unfold C
    simp [show (8503056 * k + 1812112) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 906056) = 2125764 * k + 453028 := by
    unfold C
    simp [show (4251528 * k + 906056) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 453028) = 1062882 * k + 226514 := by
    unfold C
    simp [show (2125764 * k + 453028) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 226514) = 531441 * k + 113257 := by
    unfold C
    simp [show (1062882 * k + 226514) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 223463) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 223463)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_224103 : ∀ k : Nat,
    iterate (1048576 * k + 224103) 32 = 531441 * k + 113581 ∧
      531441 * k + 113581 < 1048576 * k + 224103 := by
  intro k
  have h1 : C (1048576 * k + 224103) = 3145728 * k + 672310 := by
    unfold C
    simp [show (1048576 * k + 224103) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 672310) = 1572864 * k + 336155 := by
    unfold C
    simp [show (3145728 * k + 672310) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 336155) = 4718592 * k + 1008466 := by
    unfold C
    simp [show (1572864 * k + 336155) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1008466) = 2359296 * k + 504233 := by
    unfold C
    simp [show (4718592 * k + 1008466) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 504233) = 7077888 * k + 1512700 := by
    unfold C
    simp [show (2359296 * k + 504233) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1512700) = 3538944 * k + 756350 := by
    unfold C
    simp [show (7077888 * k + 1512700) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 756350) = 1769472 * k + 378175 := by
    unfold C
    simp [show (3538944 * k + 756350) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 378175) = 5308416 * k + 1134526 := by
    unfold C
    simp [show (1769472 * k + 378175) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1134526) = 2654208 * k + 567263 := by
    unfold C
    simp [show (5308416 * k + 1134526) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 567263) = 7962624 * k + 1701790 := by
    unfold C
    simp [show (2654208 * k + 567263) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1701790) = 3981312 * k + 850895 := by
    unfold C
    simp [show (7962624 * k + 1701790) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 850895) = 11943936 * k + 2552686 := by
    unfold C
    simp [show (3981312 * k + 850895) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2552686) = 5971968 * k + 1276343 := by
    unfold C
    simp [show (11943936 * k + 2552686) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1276343) = 17915904 * k + 3829030 := by
    unfold C
    simp [show (5971968 * k + 1276343) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3829030) = 8957952 * k + 1914515 := by
    unfold C
    simp [show (17915904 * k + 3829030) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1914515) = 26873856 * k + 5743546 := by
    unfold C
    simp [show (8957952 * k + 1914515) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5743546) = 13436928 * k + 2871773 := by
    unfold C
    simp [show (26873856 * k + 5743546) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2871773) = 40310784 * k + 8615320 := by
    unfold C
    simp [show (13436928 * k + 2871773) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 8615320) = 20155392 * k + 4307660 := by
    unfold C
    simp [show (40310784 * k + 8615320) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 4307660) = 10077696 * k + 2153830 := by
    unfold C
    simp [show (20155392 * k + 4307660) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2153830) = 5038848 * k + 1076915 := by
    unfold C
    simp [show (10077696 * k + 2153830) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1076915) = 15116544 * k + 3230746 := by
    unfold C
    simp [show (5038848 * k + 1076915) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3230746) = 7558272 * k + 1615373 := by
    unfold C
    simp [show (15116544 * k + 3230746) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1615373) = 22674816 * k + 4846120 := by
    unfold C
    simp [show (7558272 * k + 1615373) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 4846120) = 11337408 * k + 2423060 := by
    unfold C
    simp [show (22674816 * k + 4846120) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2423060) = 5668704 * k + 1211530 := by
    unfold C
    simp [show (11337408 * k + 2423060) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1211530) = 2834352 * k + 605765 := by
    unfold C
    simp [show (5668704 * k + 1211530) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 605765) = 8503056 * k + 1817296 := by
    unfold C
    simp [show (2834352 * k + 605765) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1817296) = 4251528 * k + 908648 := by
    unfold C
    simp [show (8503056 * k + 1817296) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 908648) = 2125764 * k + 454324 := by
    unfold C
    simp [show (4251528 * k + 908648) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 454324) = 1062882 * k + 227162 := by
    unfold C
    simp [show (2125764 * k + 454324) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 227162) = 531441 * k + 113581 := by
    unfold C
    simp [show (1062882 * k + 227162) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 224103) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 224103)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard030
