import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard072

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_559771 : ∀ k : Nat,
    iterate (1048576 * k + 559771) 32 = 531441 * k + 283705 ∧
      531441 * k + 283705 < 1048576 * k + 559771 := by
  intro k
  have h1 : C (1048576 * k + 559771) = 3145728 * k + 1679314 := by
    unfold C
    simp [show (1048576 * k + 559771) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1679314) = 1572864 * k + 839657 := by
    unfold C
    simp [show (3145728 * k + 1679314) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 839657) = 4718592 * k + 2518972 := by
    unfold C
    simp [show (1572864 * k + 839657) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2518972) = 2359296 * k + 1259486 := by
    unfold C
    simp [show (4718592 * k + 2518972) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1259486) = 1179648 * k + 629743 := by
    unfold C
    simp [show (2359296 * k + 1259486) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 629743) = 3538944 * k + 1889230 := by
    unfold C
    simp [show (1179648 * k + 629743) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1889230) = 1769472 * k + 944615 := by
    unfold C
    simp [show (3538944 * k + 1889230) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 944615) = 5308416 * k + 2833846 := by
    unfold C
    simp [show (1769472 * k + 944615) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2833846) = 2654208 * k + 1416923 := by
    unfold C
    simp [show (5308416 * k + 2833846) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1416923) = 7962624 * k + 4250770 := by
    unfold C
    simp [show (2654208 * k + 1416923) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4250770) = 3981312 * k + 2125385 := by
    unfold C
    simp [show (7962624 * k + 4250770) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2125385) = 11943936 * k + 6376156 := by
    unfold C
    simp [show (3981312 * k + 2125385) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6376156) = 5971968 * k + 3188078 := by
    unfold C
    simp [show (11943936 * k + 6376156) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3188078) = 2985984 * k + 1594039 := by
    unfold C
    simp [show (5971968 * k + 3188078) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1594039) = 8957952 * k + 4782118 := by
    unfold C
    simp [show (2985984 * k + 1594039) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4782118) = 4478976 * k + 2391059 := by
    unfold C
    simp [show (8957952 * k + 4782118) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2391059) = 13436928 * k + 7173178 := by
    unfold C
    simp [show (4478976 * k + 2391059) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7173178) = 6718464 * k + 3586589 := by
    unfold C
    simp [show (13436928 * k + 7173178) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3586589) = 20155392 * k + 10759768 := by
    unfold C
    simp [show (6718464 * k + 3586589) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10759768) = 10077696 * k + 5379884 := by
    unfold C
    simp [show (20155392 * k + 10759768) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5379884) = 5038848 * k + 2689942 := by
    unfold C
    simp [show (10077696 * k + 5379884) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2689942) = 2519424 * k + 1344971 := by
    unfold C
    simp [show (5038848 * k + 2689942) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1344971) = 7558272 * k + 4034914 := by
    unfold C
    simp [show (2519424 * k + 1344971) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4034914) = 3779136 * k + 2017457 := by
    unfold C
    simp [show (7558272 * k + 4034914) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2017457) = 11337408 * k + 6052372 := by
    unfold C
    simp [show (3779136 * k + 2017457) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6052372) = 5668704 * k + 3026186 := by
    unfold C
    simp [show (11337408 * k + 6052372) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3026186) = 2834352 * k + 1513093 := by
    unfold C
    simp [show (5668704 * k + 3026186) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1513093) = 8503056 * k + 4539280 := by
    unfold C
    simp [show (2834352 * k + 1513093) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4539280) = 4251528 * k + 2269640 := by
    unfold C
    simp [show (8503056 * k + 4539280) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2269640) = 2125764 * k + 1134820 := by
    unfold C
    simp [show (4251528 * k + 2269640) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1134820) = 1062882 * k + 567410 := by
    unfold C
    simp [show (2125764 * k + 1134820) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 567410) = 531441 * k + 283705 := by
    unfold C
    simp [show (1062882 * k + 567410) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 559771) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 559771)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_559807 : ∀ k : Nat,
    iterate (1048576 * k + 559807) 32 = 531441 * k + 283723 ∧
      531441 * k + 283723 < 1048576 * k + 559807 := by
  intro k
  have h1 : C (1048576 * k + 559807) = 3145728 * k + 1679422 := by
    unfold C
    simp [show (1048576 * k + 559807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1679422) = 1572864 * k + 839711 := by
    unfold C
    simp [show (3145728 * k + 1679422) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 839711) = 4718592 * k + 2519134 := by
    unfold C
    simp [show (1572864 * k + 839711) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2519134) = 2359296 * k + 1259567 := by
    unfold C
    simp [show (4718592 * k + 2519134) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1259567) = 7077888 * k + 3778702 := by
    unfold C
    simp [show (2359296 * k + 1259567) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3778702) = 3538944 * k + 1889351 := by
    unfold C
    simp [show (7077888 * k + 3778702) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1889351) = 10616832 * k + 5668054 := by
    unfold C
    simp [show (3538944 * k + 1889351) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5668054) = 5308416 * k + 2834027 := by
    unfold C
    simp [show (10616832 * k + 5668054) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2834027) = 15925248 * k + 8502082 := by
    unfold C
    simp [show (5308416 * k + 2834027) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8502082) = 7962624 * k + 4251041 := by
    unfold C
    simp [show (15925248 * k + 8502082) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4251041) = 23887872 * k + 12753124 := by
    unfold C
    simp [show (7962624 * k + 4251041) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12753124) = 11943936 * k + 6376562 := by
    unfold C
    simp [show (23887872 * k + 12753124) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6376562) = 5971968 * k + 3188281 := by
    unfold C
    simp [show (11943936 * k + 6376562) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3188281) = 17915904 * k + 9564844 := by
    unfold C
    simp [show (5971968 * k + 3188281) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9564844) = 8957952 * k + 4782422 := by
    unfold C
    simp [show (17915904 * k + 9564844) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4782422) = 4478976 * k + 2391211 := by
    unfold C
    simp [show (8957952 * k + 4782422) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2391211) = 13436928 * k + 7173634 := by
    unfold C
    simp [show (4478976 * k + 2391211) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7173634) = 6718464 * k + 3586817 := by
    unfold C
    simp [show (13436928 * k + 7173634) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3586817) = 20155392 * k + 10760452 := by
    unfold C
    simp [show (6718464 * k + 3586817) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10760452) = 10077696 * k + 5380226 := by
    unfold C
    simp [show (20155392 * k + 10760452) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5380226) = 5038848 * k + 2690113 := by
    unfold C
    simp [show (10077696 * k + 5380226) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2690113) = 15116544 * k + 8070340 := by
    unfold C
    simp [show (5038848 * k + 2690113) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8070340) = 7558272 * k + 4035170 := by
    unfold C
    simp [show (15116544 * k + 8070340) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4035170) = 3779136 * k + 2017585 := by
    unfold C
    simp [show (7558272 * k + 4035170) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2017585) = 11337408 * k + 6052756 := by
    unfold C
    simp [show (3779136 * k + 2017585) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6052756) = 5668704 * k + 3026378 := by
    unfold C
    simp [show (11337408 * k + 6052756) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3026378) = 2834352 * k + 1513189 := by
    unfold C
    simp [show (5668704 * k + 3026378) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1513189) = 8503056 * k + 4539568 := by
    unfold C
    simp [show (2834352 * k + 1513189) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4539568) = 4251528 * k + 2269784 := by
    unfold C
    simp [show (8503056 * k + 4539568) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2269784) = 2125764 * k + 1134892 := by
    unfold C
    simp [show (4251528 * k + 2269784) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1134892) = 1062882 * k + 567446 := by
    unfold C
    simp [show (2125764 * k + 1134892) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 567446) = 531441 * k + 283723 := by
    unfold C
    simp [show (1062882 * k + 567446) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 559807) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 559807)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_560127 : ∀ k : Nat,
    iterate (1048576 * k + 560127) 32 = 531441 * k + 283885 ∧
      531441 * k + 283885 < 1048576 * k + 560127 := by
  intro k
  have h1 : C (1048576 * k + 560127) = 3145728 * k + 1680382 := by
    unfold C
    simp [show (1048576 * k + 560127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1680382) = 1572864 * k + 840191 := by
    unfold C
    simp [show (3145728 * k + 1680382) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 840191) = 4718592 * k + 2520574 := by
    unfold C
    simp [show (1572864 * k + 840191) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2520574) = 2359296 * k + 1260287 := by
    unfold C
    simp [show (4718592 * k + 2520574) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1260287) = 7077888 * k + 3780862 := by
    unfold C
    simp [show (2359296 * k + 1260287) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3780862) = 3538944 * k + 1890431 := by
    unfold C
    simp [show (7077888 * k + 3780862) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1890431) = 10616832 * k + 5671294 := by
    unfold C
    simp [show (3538944 * k + 1890431) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5671294) = 5308416 * k + 2835647 := by
    unfold C
    simp [show (10616832 * k + 5671294) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2835647) = 15925248 * k + 8506942 := by
    unfold C
    simp [show (5308416 * k + 2835647) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8506942) = 7962624 * k + 4253471 := by
    unfold C
    simp [show (15925248 * k + 8506942) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4253471) = 23887872 * k + 12760414 := by
    unfold C
    simp [show (7962624 * k + 4253471) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12760414) = 11943936 * k + 6380207 := by
    unfold C
    simp [show (23887872 * k + 12760414) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6380207) = 35831808 * k + 19140622 := by
    unfold C
    simp [show (11943936 * k + 6380207) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 19140622) = 17915904 * k + 9570311 := by
    unfold C
    simp [show (35831808 * k + 19140622) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 9570311) = 53747712 * k + 28710934 := by
    unfold C
    simp [show (17915904 * k + 9570311) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 28710934) = 26873856 * k + 14355467 := by
    unfold C
    simp [show (53747712 * k + 28710934) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 14355467) = 80621568 * k + 43066402 := by
    unfold C
    simp [show (26873856 * k + 14355467) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 43066402) = 40310784 * k + 21533201 := by
    unfold C
    simp [show (80621568 * k + 43066402) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 21533201) = 120932352 * k + 64599604 := by
    unfold C
    simp [show (40310784 * k + 21533201) % 2 ≠ 0 by omega]
    omega
  have h20 : C (120932352 * k + 64599604) = 60466176 * k + 32299802 := by
    unfold C
    simp [show (120932352 * k + 64599604) % 2 = 0 by omega]
    omega
  have h21 : C (60466176 * k + 32299802) = 30233088 * k + 16149901 := by
    unfold C
    simp [show (60466176 * k + 32299802) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 16149901) = 90699264 * k + 48449704 := by
    unfold C
    simp [show (30233088 * k + 16149901) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 48449704) = 45349632 * k + 24224852 := by
    unfold C
    simp [show (90699264 * k + 48449704) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 24224852) = 22674816 * k + 12112426 := by
    unfold C
    simp [show (45349632 * k + 24224852) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 12112426) = 11337408 * k + 6056213 := by
    unfold C
    simp [show (22674816 * k + 12112426) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6056213) = 34012224 * k + 18168640 := by
    unfold C
    simp [show (11337408 * k + 6056213) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 18168640) = 17006112 * k + 9084320 := by
    unfold C
    simp [show (34012224 * k + 18168640) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 9084320) = 8503056 * k + 4542160 := by
    unfold C
    simp [show (17006112 * k + 9084320) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4542160) = 4251528 * k + 2271080 := by
    unfold C
    simp [show (8503056 * k + 4542160) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2271080) = 2125764 * k + 1135540 := by
    unfold C
    simp [show (4251528 * k + 2271080) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1135540) = 1062882 * k + 567770 := by
    unfold C
    simp [show (2125764 * k + 1135540) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 567770) = 531441 * k + 283885 := by
    unfold C
    simp [show (1062882 * k + 567770) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 560127) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 560127)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_560335 : ∀ k : Nat,
    iterate (1048576 * k + 560335) 32 = 531441 * k + 283991 ∧
      531441 * k + 283991 < 1048576 * k + 560335 := by
  intro k
  have h1 : C (1048576 * k + 560335) = 3145728 * k + 1681006 := by
    unfold C
    simp [show (1048576 * k + 560335) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1681006) = 1572864 * k + 840503 := by
    unfold C
    simp [show (3145728 * k + 1681006) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 840503) = 4718592 * k + 2521510 := by
    unfold C
    simp [show (1572864 * k + 840503) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2521510) = 2359296 * k + 1260755 := by
    unfold C
    simp [show (4718592 * k + 2521510) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1260755) = 7077888 * k + 3782266 := by
    unfold C
    simp [show (2359296 * k + 1260755) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3782266) = 3538944 * k + 1891133 := by
    unfold C
    simp [show (7077888 * k + 3782266) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1891133) = 10616832 * k + 5673400 := by
    unfold C
    simp [show (3538944 * k + 1891133) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5673400) = 5308416 * k + 2836700 := by
    unfold C
    simp [show (10616832 * k + 5673400) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2836700) = 2654208 * k + 1418350 := by
    unfold C
    simp [show (5308416 * k + 2836700) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1418350) = 1327104 * k + 709175 := by
    unfold C
    simp [show (2654208 * k + 1418350) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 709175) = 3981312 * k + 2127526 := by
    unfold C
    simp [show (1327104 * k + 709175) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2127526) = 1990656 * k + 1063763 := by
    unfold C
    simp [show (3981312 * k + 2127526) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1063763) = 5971968 * k + 3191290 := by
    unfold C
    simp [show (1990656 * k + 1063763) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3191290) = 2985984 * k + 1595645 := by
    unfold C
    simp [show (5971968 * k + 3191290) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1595645) = 8957952 * k + 4786936 := by
    unfold C
    simp [show (2985984 * k + 1595645) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4786936) = 4478976 * k + 2393468 := by
    unfold C
    simp [show (8957952 * k + 4786936) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2393468) = 2239488 * k + 1196734 := by
    unfold C
    simp [show (4478976 * k + 2393468) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1196734) = 1119744 * k + 598367 := by
    unfold C
    simp [show (2239488 * k + 1196734) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 598367) = 3359232 * k + 1795102 := by
    unfold C
    simp [show (1119744 * k + 598367) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1795102) = 1679616 * k + 897551 := by
    unfold C
    simp [show (3359232 * k + 1795102) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 897551) = 5038848 * k + 2692654 := by
    unfold C
    simp [show (1679616 * k + 897551) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2692654) = 2519424 * k + 1346327 := by
    unfold C
    simp [show (5038848 * k + 2692654) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1346327) = 7558272 * k + 4038982 := by
    unfold C
    simp [show (2519424 * k + 1346327) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4038982) = 3779136 * k + 2019491 := by
    unfold C
    simp [show (7558272 * k + 4038982) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2019491) = 11337408 * k + 6058474 := by
    unfold C
    simp [show (3779136 * k + 2019491) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6058474) = 5668704 * k + 3029237 := by
    unfold C
    simp [show (11337408 * k + 6058474) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3029237) = 17006112 * k + 9087712 := by
    unfold C
    simp [show (5668704 * k + 3029237) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9087712) = 8503056 * k + 4543856 := by
    unfold C
    simp [show (17006112 * k + 9087712) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4543856) = 4251528 * k + 2271928 := by
    unfold C
    simp [show (8503056 * k + 4543856) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2271928) = 2125764 * k + 1135964 := by
    unfold C
    simp [show (4251528 * k + 2271928) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1135964) = 1062882 * k + 567982 := by
    unfold C
    simp [show (2125764 * k + 1135964) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 567982) = 531441 * k + 283991 := by
    unfold C
    simp [show (1062882 * k + 567982) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 560335) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 560335)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_561223 : ∀ k : Nat,
    iterate (1048576 * k + 561223) 32 = 531441 * k + 284441 ∧
      531441 * k + 284441 < 1048576 * k + 561223 := by
  intro k
  have h1 : C (1048576 * k + 561223) = 3145728 * k + 1683670 := by
    unfold C
    simp [show (1048576 * k + 561223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1683670) = 1572864 * k + 841835 := by
    unfold C
    simp [show (3145728 * k + 1683670) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 841835) = 4718592 * k + 2525506 := by
    unfold C
    simp [show (1572864 * k + 841835) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2525506) = 2359296 * k + 1262753 := by
    unfold C
    simp [show (4718592 * k + 2525506) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1262753) = 7077888 * k + 3788260 := by
    unfold C
    simp [show (2359296 * k + 1262753) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3788260) = 3538944 * k + 1894130 := by
    unfold C
    simp [show (7077888 * k + 3788260) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1894130) = 1769472 * k + 947065 := by
    unfold C
    simp [show (3538944 * k + 1894130) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 947065) = 5308416 * k + 2841196 := by
    unfold C
    simp [show (1769472 * k + 947065) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2841196) = 2654208 * k + 1420598 := by
    unfold C
    simp [show (5308416 * k + 2841196) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1420598) = 1327104 * k + 710299 := by
    unfold C
    simp [show (2654208 * k + 1420598) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 710299) = 3981312 * k + 2130898 := by
    unfold C
    simp [show (1327104 * k + 710299) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2130898) = 1990656 * k + 1065449 := by
    unfold C
    simp [show (3981312 * k + 2130898) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1065449) = 5971968 * k + 3196348 := by
    unfold C
    simp [show (1990656 * k + 1065449) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3196348) = 2985984 * k + 1598174 := by
    unfold C
    simp [show (5971968 * k + 3196348) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1598174) = 1492992 * k + 799087 := by
    unfold C
    simp [show (2985984 * k + 1598174) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 799087) = 4478976 * k + 2397262 := by
    unfold C
    simp [show (1492992 * k + 799087) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2397262) = 2239488 * k + 1198631 := by
    unfold C
    simp [show (4478976 * k + 2397262) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1198631) = 6718464 * k + 3595894 := by
    unfold C
    simp [show (2239488 * k + 1198631) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3595894) = 3359232 * k + 1797947 := by
    unfold C
    simp [show (6718464 * k + 3595894) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1797947) = 10077696 * k + 5393842 := by
    unfold C
    simp [show (3359232 * k + 1797947) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5393842) = 5038848 * k + 2696921 := by
    unfold C
    simp [show (10077696 * k + 5393842) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2696921) = 15116544 * k + 8090764 := by
    unfold C
    simp [show (5038848 * k + 2696921) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8090764) = 7558272 * k + 4045382 := by
    unfold C
    simp [show (15116544 * k + 8090764) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4045382) = 3779136 * k + 2022691 := by
    unfold C
    simp [show (7558272 * k + 4045382) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2022691) = 11337408 * k + 6068074 := by
    unfold C
    simp [show (3779136 * k + 2022691) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6068074) = 5668704 * k + 3034037 := by
    unfold C
    simp [show (11337408 * k + 6068074) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3034037) = 17006112 * k + 9102112 := by
    unfold C
    simp [show (5668704 * k + 3034037) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9102112) = 8503056 * k + 4551056 := by
    unfold C
    simp [show (17006112 * k + 9102112) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4551056) = 4251528 * k + 2275528 := by
    unfold C
    simp [show (8503056 * k + 4551056) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2275528) = 2125764 * k + 1137764 := by
    unfold C
    simp [show (4251528 * k + 2275528) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1137764) = 1062882 * k + 568882 := by
    unfold C
    simp [show (2125764 * k + 1137764) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 568882) = 531441 * k + 284441 := by
    unfold C
    simp [show (1062882 * k + 568882) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 561223) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 561223)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_561263 : ∀ k : Nat,
    iterate (1048576 * k + 561263) 32 = 531441 * k + 284461 ∧
      531441 * k + 284461 < 1048576 * k + 561263 := by
  intro k
  have h1 : C (1048576 * k + 561263) = 3145728 * k + 1683790 := by
    unfold C
    simp [show (1048576 * k + 561263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1683790) = 1572864 * k + 841895 := by
    unfold C
    simp [show (3145728 * k + 1683790) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 841895) = 4718592 * k + 2525686 := by
    unfold C
    simp [show (1572864 * k + 841895) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2525686) = 2359296 * k + 1262843 := by
    unfold C
    simp [show (4718592 * k + 2525686) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1262843) = 7077888 * k + 3788530 := by
    unfold C
    simp [show (2359296 * k + 1262843) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3788530) = 3538944 * k + 1894265 := by
    unfold C
    simp [show (7077888 * k + 3788530) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1894265) = 10616832 * k + 5682796 := by
    unfold C
    simp [show (3538944 * k + 1894265) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5682796) = 5308416 * k + 2841398 := by
    unfold C
    simp [show (10616832 * k + 5682796) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2841398) = 2654208 * k + 1420699 := by
    unfold C
    simp [show (5308416 * k + 2841398) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1420699) = 7962624 * k + 4262098 := by
    unfold C
    simp [show (2654208 * k + 1420699) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4262098) = 3981312 * k + 2131049 := by
    unfold C
    simp [show (7962624 * k + 4262098) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2131049) = 11943936 * k + 6393148 := by
    unfold C
    simp [show (3981312 * k + 2131049) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6393148) = 5971968 * k + 3196574 := by
    unfold C
    simp [show (11943936 * k + 6393148) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3196574) = 2985984 * k + 1598287 := by
    unfold C
    simp [show (5971968 * k + 3196574) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1598287) = 8957952 * k + 4794862 := by
    unfold C
    simp [show (2985984 * k + 1598287) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4794862) = 4478976 * k + 2397431 := by
    unfold C
    simp [show (8957952 * k + 4794862) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2397431) = 13436928 * k + 7192294 := by
    unfold C
    simp [show (4478976 * k + 2397431) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7192294) = 6718464 * k + 3596147 := by
    unfold C
    simp [show (13436928 * k + 7192294) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3596147) = 20155392 * k + 10788442 := by
    unfold C
    simp [show (6718464 * k + 3596147) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10788442) = 10077696 * k + 5394221 := by
    unfold C
    simp [show (20155392 * k + 10788442) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5394221) = 30233088 * k + 16182664 := by
    unfold C
    simp [show (10077696 * k + 5394221) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 16182664) = 15116544 * k + 8091332 := by
    unfold C
    simp [show (30233088 * k + 16182664) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8091332) = 7558272 * k + 4045666 := by
    unfold C
    simp [show (15116544 * k + 8091332) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4045666) = 3779136 * k + 2022833 := by
    unfold C
    simp [show (7558272 * k + 4045666) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2022833) = 11337408 * k + 6068500 := by
    unfold C
    simp [show (3779136 * k + 2022833) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6068500) = 5668704 * k + 3034250 := by
    unfold C
    simp [show (11337408 * k + 6068500) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3034250) = 2834352 * k + 1517125 := by
    unfold C
    simp [show (5668704 * k + 3034250) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1517125) = 8503056 * k + 4551376 := by
    unfold C
    simp [show (2834352 * k + 1517125) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4551376) = 4251528 * k + 2275688 := by
    unfold C
    simp [show (8503056 * k + 4551376) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2275688) = 2125764 * k + 1137844 := by
    unfold C
    simp [show (4251528 * k + 2275688) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1137844) = 1062882 * k + 568922 := by
    unfold C
    simp [show (2125764 * k + 1137844) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 568922) = 531441 * k + 284461 := by
    unfold C
    simp [show (1062882 * k + 568922) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 561263) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 561263)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_561359 : ∀ k : Nat,
    iterate (1048576 * k + 561359) 32 = 531441 * k + 284510 ∧
      531441 * k + 284510 < 1048576 * k + 561359 := by
  intro k
  have h1 : C (1048576 * k + 561359) = 3145728 * k + 1684078 := by
    unfold C
    simp [show (1048576 * k + 561359) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1684078) = 1572864 * k + 842039 := by
    unfold C
    simp [show (3145728 * k + 1684078) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 842039) = 4718592 * k + 2526118 := by
    unfold C
    simp [show (1572864 * k + 842039) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2526118) = 2359296 * k + 1263059 := by
    unfold C
    simp [show (4718592 * k + 2526118) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1263059) = 7077888 * k + 3789178 := by
    unfold C
    simp [show (2359296 * k + 1263059) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3789178) = 3538944 * k + 1894589 := by
    unfold C
    simp [show (7077888 * k + 3789178) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1894589) = 10616832 * k + 5683768 := by
    unfold C
    simp [show (3538944 * k + 1894589) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5683768) = 5308416 * k + 2841884 := by
    unfold C
    simp [show (10616832 * k + 5683768) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2841884) = 2654208 * k + 1420942 := by
    unfold C
    simp [show (5308416 * k + 2841884) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1420942) = 1327104 * k + 710471 := by
    unfold C
    simp [show (2654208 * k + 1420942) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 710471) = 3981312 * k + 2131414 := by
    unfold C
    simp [show (1327104 * k + 710471) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2131414) = 1990656 * k + 1065707 := by
    unfold C
    simp [show (3981312 * k + 2131414) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1065707) = 5971968 * k + 3197122 := by
    unfold C
    simp [show (1990656 * k + 1065707) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3197122) = 2985984 * k + 1598561 := by
    unfold C
    simp [show (5971968 * k + 3197122) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1598561) = 8957952 * k + 4795684 := by
    unfold C
    simp [show (2985984 * k + 1598561) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4795684) = 4478976 * k + 2397842 := by
    unfold C
    simp [show (8957952 * k + 4795684) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2397842) = 2239488 * k + 1198921 := by
    unfold C
    simp [show (4478976 * k + 2397842) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1198921) = 6718464 * k + 3596764 := by
    unfold C
    simp [show (2239488 * k + 1198921) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3596764) = 3359232 * k + 1798382 := by
    unfold C
    simp [show (6718464 * k + 3596764) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1798382) = 1679616 * k + 899191 := by
    unfold C
    simp [show (3359232 * k + 1798382) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 899191) = 5038848 * k + 2697574 := by
    unfold C
    simp [show (1679616 * k + 899191) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2697574) = 2519424 * k + 1348787 := by
    unfold C
    simp [show (5038848 * k + 2697574) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1348787) = 7558272 * k + 4046362 := by
    unfold C
    simp [show (2519424 * k + 1348787) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4046362) = 3779136 * k + 2023181 := by
    unfold C
    simp [show (7558272 * k + 4046362) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2023181) = 11337408 * k + 6069544 := by
    unfold C
    simp [show (3779136 * k + 2023181) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6069544) = 5668704 * k + 3034772 := by
    unfold C
    simp [show (11337408 * k + 6069544) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3034772) = 2834352 * k + 1517386 := by
    unfold C
    simp [show (5668704 * k + 3034772) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1517386) = 1417176 * k + 758693 := by
    unfold C
    simp [show (2834352 * k + 1517386) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 758693) = 4251528 * k + 2276080 := by
    unfold C
    simp [show (1417176 * k + 758693) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2276080) = 2125764 * k + 1138040 := by
    unfold C
    simp [show (4251528 * k + 2276080) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1138040) = 1062882 * k + 569020 := by
    unfold C
    simp [show (2125764 * k + 1138040) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 569020) = 531441 * k + 284510 := by
    unfold C
    simp [show (1062882 * k + 569020) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 561359) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 561359)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_561375 : ∀ k : Nat,
    iterate (1048576 * k + 561375) 32 = 531441 * k + 284518 ∧
      531441 * k + 284518 < 1048576 * k + 561375 := by
  intro k
  have h1 : C (1048576 * k + 561375) = 3145728 * k + 1684126 := by
    unfold C
    simp [show (1048576 * k + 561375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1684126) = 1572864 * k + 842063 := by
    unfold C
    simp [show (3145728 * k + 1684126) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 842063) = 4718592 * k + 2526190 := by
    unfold C
    simp [show (1572864 * k + 842063) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2526190) = 2359296 * k + 1263095 := by
    unfold C
    simp [show (4718592 * k + 2526190) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1263095) = 7077888 * k + 3789286 := by
    unfold C
    simp [show (2359296 * k + 1263095) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3789286) = 3538944 * k + 1894643 := by
    unfold C
    simp [show (7077888 * k + 3789286) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1894643) = 10616832 * k + 5683930 := by
    unfold C
    simp [show (3538944 * k + 1894643) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5683930) = 5308416 * k + 2841965 := by
    unfold C
    simp [show (10616832 * k + 5683930) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2841965) = 15925248 * k + 8525896 := by
    unfold C
    simp [show (5308416 * k + 2841965) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8525896) = 7962624 * k + 4262948 := by
    unfold C
    simp [show (15925248 * k + 8525896) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4262948) = 3981312 * k + 2131474 := by
    unfold C
    simp [show (7962624 * k + 4262948) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2131474) = 1990656 * k + 1065737 := by
    unfold C
    simp [show (3981312 * k + 2131474) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1065737) = 5971968 * k + 3197212 := by
    unfold C
    simp [show (1990656 * k + 1065737) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3197212) = 2985984 * k + 1598606 := by
    unfold C
    simp [show (5971968 * k + 3197212) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1598606) = 1492992 * k + 799303 := by
    unfold C
    simp [show (2985984 * k + 1598606) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 799303) = 4478976 * k + 2397910 := by
    unfold C
    simp [show (1492992 * k + 799303) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2397910) = 2239488 * k + 1198955 := by
    unfold C
    simp [show (4478976 * k + 2397910) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1198955) = 6718464 * k + 3596866 := by
    unfold C
    simp [show (2239488 * k + 1198955) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3596866) = 3359232 * k + 1798433 := by
    unfold C
    simp [show (6718464 * k + 3596866) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1798433) = 10077696 * k + 5395300 := by
    unfold C
    simp [show (3359232 * k + 1798433) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5395300) = 5038848 * k + 2697650 := by
    unfold C
    simp [show (10077696 * k + 5395300) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2697650) = 2519424 * k + 1348825 := by
    unfold C
    simp [show (5038848 * k + 2697650) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1348825) = 7558272 * k + 4046476 := by
    unfold C
    simp [show (2519424 * k + 1348825) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4046476) = 3779136 * k + 2023238 := by
    unfold C
    simp [show (7558272 * k + 4046476) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2023238) = 1889568 * k + 1011619 := by
    unfold C
    simp [show (3779136 * k + 2023238) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1011619) = 5668704 * k + 3034858 := by
    unfold C
    simp [show (1889568 * k + 1011619) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3034858) = 2834352 * k + 1517429 := by
    unfold C
    simp [show (5668704 * k + 3034858) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1517429) = 8503056 * k + 4552288 := by
    unfold C
    simp [show (2834352 * k + 1517429) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4552288) = 4251528 * k + 2276144 := by
    unfold C
    simp [show (8503056 * k + 4552288) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2276144) = 2125764 * k + 1138072 := by
    unfold C
    simp [show (4251528 * k + 2276144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1138072) = 1062882 * k + 569036 := by
    unfold C
    simp [show (2125764 * k + 1138072) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 569036) = 531441 * k + 284518 := by
    unfold C
    simp [show (1062882 * k + 569036) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 561375) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 561375)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_561567 : ∀ k : Nat,
    iterate (1048576 * k + 561567) 32 = 531441 * k + 284615 ∧
      531441 * k + 284615 < 1048576 * k + 561567 := by
  intro k
  have h1 : C (1048576 * k + 561567) = 3145728 * k + 1684702 := by
    unfold C
    simp [show (1048576 * k + 561567) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1684702) = 1572864 * k + 842351 := by
    unfold C
    simp [show (3145728 * k + 1684702) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 842351) = 4718592 * k + 2527054 := by
    unfold C
    simp [show (1572864 * k + 842351) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2527054) = 2359296 * k + 1263527 := by
    unfold C
    simp [show (4718592 * k + 2527054) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1263527) = 7077888 * k + 3790582 := by
    unfold C
    simp [show (2359296 * k + 1263527) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3790582) = 3538944 * k + 1895291 := by
    unfold C
    simp [show (7077888 * k + 3790582) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1895291) = 10616832 * k + 5685874 := by
    unfold C
    simp [show (3538944 * k + 1895291) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5685874) = 5308416 * k + 2842937 := by
    unfold C
    simp [show (10616832 * k + 5685874) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2842937) = 15925248 * k + 8528812 := by
    unfold C
    simp [show (5308416 * k + 2842937) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8528812) = 7962624 * k + 4264406 := by
    unfold C
    simp [show (15925248 * k + 8528812) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4264406) = 3981312 * k + 2132203 := by
    unfold C
    simp [show (7962624 * k + 4264406) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2132203) = 11943936 * k + 6396610 := by
    unfold C
    simp [show (3981312 * k + 2132203) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6396610) = 5971968 * k + 3198305 := by
    unfold C
    simp [show (11943936 * k + 6396610) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3198305) = 17915904 * k + 9594916 := by
    unfold C
    simp [show (5971968 * k + 3198305) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9594916) = 8957952 * k + 4797458 := by
    unfold C
    simp [show (17915904 * k + 9594916) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4797458) = 4478976 * k + 2398729 := by
    unfold C
    simp [show (8957952 * k + 4797458) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2398729) = 13436928 * k + 7196188 := by
    unfold C
    simp [show (4478976 * k + 2398729) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7196188) = 6718464 * k + 3598094 := by
    unfold C
    simp [show (13436928 * k + 7196188) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3598094) = 3359232 * k + 1799047 := by
    unfold C
    simp [show (6718464 * k + 3598094) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1799047) = 10077696 * k + 5397142 := by
    unfold C
    simp [show (3359232 * k + 1799047) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5397142) = 5038848 * k + 2698571 := by
    unfold C
    simp [show (10077696 * k + 5397142) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2698571) = 15116544 * k + 8095714 := by
    unfold C
    simp [show (5038848 * k + 2698571) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8095714) = 7558272 * k + 4047857 := by
    unfold C
    simp [show (15116544 * k + 8095714) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4047857) = 22674816 * k + 12143572 := by
    unfold C
    simp [show (7558272 * k + 4047857) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 12143572) = 11337408 * k + 6071786 := by
    unfold C
    simp [show (22674816 * k + 12143572) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6071786) = 5668704 * k + 3035893 := by
    unfold C
    simp [show (11337408 * k + 6071786) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3035893) = 17006112 * k + 9107680 := by
    unfold C
    simp [show (5668704 * k + 3035893) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9107680) = 8503056 * k + 4553840 := by
    unfold C
    simp [show (17006112 * k + 9107680) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4553840) = 4251528 * k + 2276920 := by
    unfold C
    simp [show (8503056 * k + 4553840) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2276920) = 2125764 * k + 1138460 := by
    unfold C
    simp [show (4251528 * k + 2276920) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1138460) = 1062882 * k + 569230 := by
    unfold C
    simp [show (2125764 * k + 1138460) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 569230) = 531441 * k + 284615 := by
    unfold C
    simp [show (1062882 * k + 569230) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 561567) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 561567)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_561855 : ∀ k : Nat,
    iterate (1048576 * k + 561855) 32 = 531441 * k + 284761 ∧
      531441 * k + 284761 < 1048576 * k + 561855 := by
  intro k
  have h1 : C (1048576 * k + 561855) = 3145728 * k + 1685566 := by
    unfold C
    simp [show (1048576 * k + 561855) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1685566) = 1572864 * k + 842783 := by
    unfold C
    simp [show (3145728 * k + 1685566) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 842783) = 4718592 * k + 2528350 := by
    unfold C
    simp [show (1572864 * k + 842783) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2528350) = 2359296 * k + 1264175 := by
    unfold C
    simp [show (4718592 * k + 2528350) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1264175) = 7077888 * k + 3792526 := by
    unfold C
    simp [show (2359296 * k + 1264175) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3792526) = 3538944 * k + 1896263 := by
    unfold C
    simp [show (7077888 * k + 3792526) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1896263) = 10616832 * k + 5688790 := by
    unfold C
    simp [show (3538944 * k + 1896263) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5688790) = 5308416 * k + 2844395 := by
    unfold C
    simp [show (10616832 * k + 5688790) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2844395) = 15925248 * k + 8533186 := by
    unfold C
    simp [show (5308416 * k + 2844395) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8533186) = 7962624 * k + 4266593 := by
    unfold C
    simp [show (15925248 * k + 8533186) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4266593) = 23887872 * k + 12799780 := by
    unfold C
    simp [show (7962624 * k + 4266593) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12799780) = 11943936 * k + 6399890 := by
    unfold C
    simp [show (23887872 * k + 12799780) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6399890) = 5971968 * k + 3199945 := by
    unfold C
    simp [show (11943936 * k + 6399890) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3199945) = 17915904 * k + 9599836 := by
    unfold C
    simp [show (5971968 * k + 3199945) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9599836) = 8957952 * k + 4799918 := by
    unfold C
    simp [show (17915904 * k + 9599836) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4799918) = 4478976 * k + 2399959 := by
    unfold C
    simp [show (8957952 * k + 4799918) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2399959) = 13436928 * k + 7199878 := by
    unfold C
    simp [show (4478976 * k + 2399959) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7199878) = 6718464 * k + 3599939 := by
    unfold C
    simp [show (13436928 * k + 7199878) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3599939) = 20155392 * k + 10799818 := by
    unfold C
    simp [show (6718464 * k + 3599939) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10799818) = 10077696 * k + 5399909 := by
    unfold C
    simp [show (20155392 * k + 10799818) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5399909) = 30233088 * k + 16199728 := by
    unfold C
    simp [show (10077696 * k + 5399909) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 16199728) = 15116544 * k + 8099864 := by
    unfold C
    simp [show (30233088 * k + 16199728) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8099864) = 7558272 * k + 4049932 := by
    unfold C
    simp [show (15116544 * k + 8099864) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4049932) = 3779136 * k + 2024966 := by
    unfold C
    simp [show (7558272 * k + 4049932) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2024966) = 1889568 * k + 1012483 := by
    unfold C
    simp [show (3779136 * k + 2024966) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1012483) = 5668704 * k + 3037450 := by
    unfold C
    simp [show (1889568 * k + 1012483) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3037450) = 2834352 * k + 1518725 := by
    unfold C
    simp [show (5668704 * k + 3037450) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1518725) = 8503056 * k + 4556176 := by
    unfold C
    simp [show (2834352 * k + 1518725) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4556176) = 4251528 * k + 2278088 := by
    unfold C
    simp [show (8503056 * k + 4556176) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2278088) = 2125764 * k + 1139044 := by
    unfold C
    simp [show (4251528 * k + 2278088) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1139044) = 1062882 * k + 569522 := by
    unfold C
    simp [show (2125764 * k + 1139044) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 569522) = 531441 * k + 284761 := by
    unfold C
    simp [show (1062882 * k + 569522) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 561855) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 561855)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_561951 : ∀ k : Nat,
    iterate (1048576 * k + 561951) 32 = 531441 * k + 284810 ∧
      531441 * k + 284810 < 1048576 * k + 561951 := by
  intro k
  have h1 : C (1048576 * k + 561951) = 3145728 * k + 1685854 := by
    unfold C
    simp [show (1048576 * k + 561951) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1685854) = 1572864 * k + 842927 := by
    unfold C
    simp [show (3145728 * k + 1685854) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 842927) = 4718592 * k + 2528782 := by
    unfold C
    simp [show (1572864 * k + 842927) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2528782) = 2359296 * k + 1264391 := by
    unfold C
    simp [show (4718592 * k + 2528782) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1264391) = 7077888 * k + 3793174 := by
    unfold C
    simp [show (2359296 * k + 1264391) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3793174) = 3538944 * k + 1896587 := by
    unfold C
    simp [show (7077888 * k + 3793174) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1896587) = 10616832 * k + 5689762 := by
    unfold C
    simp [show (3538944 * k + 1896587) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5689762) = 5308416 * k + 2844881 := by
    unfold C
    simp [show (10616832 * k + 5689762) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2844881) = 15925248 * k + 8534644 := by
    unfold C
    simp [show (5308416 * k + 2844881) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8534644) = 7962624 * k + 4267322 := by
    unfold C
    simp [show (15925248 * k + 8534644) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4267322) = 3981312 * k + 2133661 := by
    unfold C
    simp [show (7962624 * k + 4267322) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2133661) = 11943936 * k + 6400984 := by
    unfold C
    simp [show (3981312 * k + 2133661) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6400984) = 5971968 * k + 3200492 := by
    unfold C
    simp [show (11943936 * k + 6400984) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3200492) = 2985984 * k + 1600246 := by
    unfold C
    simp [show (5971968 * k + 3200492) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1600246) = 1492992 * k + 800123 := by
    unfold C
    simp [show (2985984 * k + 1600246) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 800123) = 4478976 * k + 2400370 := by
    unfold C
    simp [show (1492992 * k + 800123) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2400370) = 2239488 * k + 1200185 := by
    unfold C
    simp [show (4478976 * k + 2400370) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1200185) = 6718464 * k + 3600556 := by
    unfold C
    simp [show (2239488 * k + 1200185) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3600556) = 3359232 * k + 1800278 := by
    unfold C
    simp [show (6718464 * k + 3600556) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1800278) = 1679616 * k + 900139 := by
    unfold C
    simp [show (3359232 * k + 1800278) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 900139) = 5038848 * k + 2700418 := by
    unfold C
    simp [show (1679616 * k + 900139) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2700418) = 2519424 * k + 1350209 := by
    unfold C
    simp [show (5038848 * k + 2700418) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1350209) = 7558272 * k + 4050628 := by
    unfold C
    simp [show (2519424 * k + 1350209) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4050628) = 3779136 * k + 2025314 := by
    unfold C
    simp [show (7558272 * k + 4050628) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2025314) = 1889568 * k + 1012657 := by
    unfold C
    simp [show (3779136 * k + 2025314) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1012657) = 5668704 * k + 3037972 := by
    unfold C
    simp [show (1889568 * k + 1012657) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3037972) = 2834352 * k + 1518986 := by
    unfold C
    simp [show (5668704 * k + 3037972) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1518986) = 1417176 * k + 759493 := by
    unfold C
    simp [show (2834352 * k + 1518986) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 759493) = 4251528 * k + 2278480 := by
    unfold C
    simp [show (1417176 * k + 759493) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2278480) = 2125764 * k + 1139240 := by
    unfold C
    simp [show (4251528 * k + 2278480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1139240) = 1062882 * k + 569620 := by
    unfold C
    simp [show (2125764 * k + 1139240) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 569620) = 531441 * k + 284810 := by
    unfold C
    simp [show (1062882 * k + 569620) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 561951) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 561951)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_562407 : ∀ k : Nat,
    iterate (1048576 * k + 562407) 32 = 531441 * k + 285041 ∧
      531441 * k + 285041 < 1048576 * k + 562407 := by
  intro k
  have h1 : C (1048576 * k + 562407) = 3145728 * k + 1687222 := by
    unfold C
    simp [show (1048576 * k + 562407) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1687222) = 1572864 * k + 843611 := by
    unfold C
    simp [show (3145728 * k + 1687222) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 843611) = 4718592 * k + 2530834 := by
    unfold C
    simp [show (1572864 * k + 843611) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2530834) = 2359296 * k + 1265417 := by
    unfold C
    simp [show (4718592 * k + 2530834) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1265417) = 7077888 * k + 3796252 := by
    unfold C
    simp [show (2359296 * k + 1265417) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3796252) = 3538944 * k + 1898126 := by
    unfold C
    simp [show (7077888 * k + 3796252) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1898126) = 1769472 * k + 949063 := by
    unfold C
    simp [show (3538944 * k + 1898126) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 949063) = 5308416 * k + 2847190 := by
    unfold C
    simp [show (1769472 * k + 949063) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2847190) = 2654208 * k + 1423595 := by
    unfold C
    simp [show (5308416 * k + 2847190) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1423595) = 7962624 * k + 4270786 := by
    unfold C
    simp [show (2654208 * k + 1423595) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4270786) = 3981312 * k + 2135393 := by
    unfold C
    simp [show (7962624 * k + 4270786) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2135393) = 11943936 * k + 6406180 := by
    unfold C
    simp [show (3981312 * k + 2135393) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6406180) = 5971968 * k + 3203090 := by
    unfold C
    simp [show (11943936 * k + 6406180) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3203090) = 2985984 * k + 1601545 := by
    unfold C
    simp [show (5971968 * k + 3203090) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1601545) = 8957952 * k + 4804636 := by
    unfold C
    simp [show (2985984 * k + 1601545) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4804636) = 4478976 * k + 2402318 := by
    unfold C
    simp [show (8957952 * k + 4804636) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2402318) = 2239488 * k + 1201159 := by
    unfold C
    simp [show (4478976 * k + 2402318) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1201159) = 6718464 * k + 3603478 := by
    unfold C
    simp [show (2239488 * k + 1201159) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3603478) = 3359232 * k + 1801739 := by
    unfold C
    simp [show (6718464 * k + 3603478) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1801739) = 10077696 * k + 5405218 := by
    unfold C
    simp [show (3359232 * k + 1801739) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5405218) = 5038848 * k + 2702609 := by
    unfold C
    simp [show (10077696 * k + 5405218) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2702609) = 15116544 * k + 8107828 := by
    unfold C
    simp [show (5038848 * k + 2702609) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8107828) = 7558272 * k + 4053914 := by
    unfold C
    simp [show (15116544 * k + 8107828) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4053914) = 3779136 * k + 2026957 := by
    unfold C
    simp [show (7558272 * k + 4053914) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2026957) = 11337408 * k + 6080872 := by
    unfold C
    simp [show (3779136 * k + 2026957) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6080872) = 5668704 * k + 3040436 := by
    unfold C
    simp [show (11337408 * k + 6080872) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3040436) = 2834352 * k + 1520218 := by
    unfold C
    simp [show (5668704 * k + 3040436) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1520218) = 1417176 * k + 760109 := by
    unfold C
    simp [show (2834352 * k + 1520218) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 760109) = 4251528 * k + 2280328 := by
    unfold C
    simp [show (1417176 * k + 760109) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2280328) = 2125764 * k + 1140164 := by
    unfold C
    simp [show (4251528 * k + 2280328) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1140164) = 1062882 * k + 570082 := by
    unfold C
    simp [show (2125764 * k + 1140164) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 570082) = 531441 * k + 285041 := by
    unfold C
    simp [show (1062882 * k + 570082) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 562407) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 562407)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_562431 : ∀ k : Nat,
    iterate (1048576 * k + 562431) 32 = 531441 * k + 285053 ∧
      531441 * k + 285053 < 1048576 * k + 562431 := by
  intro k
  have h1 : C (1048576 * k + 562431) = 3145728 * k + 1687294 := by
    unfold C
    simp [show (1048576 * k + 562431) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1687294) = 1572864 * k + 843647 := by
    unfold C
    simp [show (3145728 * k + 1687294) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 843647) = 4718592 * k + 2530942 := by
    unfold C
    simp [show (1572864 * k + 843647) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2530942) = 2359296 * k + 1265471 := by
    unfold C
    simp [show (4718592 * k + 2530942) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1265471) = 7077888 * k + 3796414 := by
    unfold C
    simp [show (2359296 * k + 1265471) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3796414) = 3538944 * k + 1898207 := by
    unfold C
    simp [show (7077888 * k + 3796414) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1898207) = 10616832 * k + 5694622 := by
    unfold C
    simp [show (3538944 * k + 1898207) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5694622) = 5308416 * k + 2847311 := by
    unfold C
    simp [show (10616832 * k + 5694622) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2847311) = 15925248 * k + 8541934 := by
    unfold C
    simp [show (5308416 * k + 2847311) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8541934) = 7962624 * k + 4270967 := by
    unfold C
    simp [show (15925248 * k + 8541934) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4270967) = 23887872 * k + 12812902 := by
    unfold C
    simp [show (7962624 * k + 4270967) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12812902) = 11943936 * k + 6406451 := by
    unfold C
    simp [show (23887872 * k + 12812902) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6406451) = 35831808 * k + 19219354 := by
    unfold C
    simp [show (11943936 * k + 6406451) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 19219354) = 17915904 * k + 9609677 := by
    unfold C
    simp [show (35831808 * k + 19219354) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 9609677) = 53747712 * k + 28829032 := by
    unfold C
    simp [show (17915904 * k + 9609677) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 28829032) = 26873856 * k + 14414516 := by
    unfold C
    simp [show (53747712 * k + 28829032) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 14414516) = 13436928 * k + 7207258 := by
    unfold C
    simp [show (26873856 * k + 14414516) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7207258) = 6718464 * k + 3603629 := by
    unfold C
    simp [show (13436928 * k + 7207258) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3603629) = 20155392 * k + 10810888 := by
    unfold C
    simp [show (6718464 * k + 3603629) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10810888) = 10077696 * k + 5405444 := by
    unfold C
    simp [show (20155392 * k + 10810888) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5405444) = 5038848 * k + 2702722 := by
    unfold C
    simp [show (10077696 * k + 5405444) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2702722) = 2519424 * k + 1351361 := by
    unfold C
    simp [show (5038848 * k + 2702722) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1351361) = 7558272 * k + 4054084 := by
    unfold C
    simp [show (2519424 * k + 1351361) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4054084) = 3779136 * k + 2027042 := by
    unfold C
    simp [show (7558272 * k + 4054084) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2027042) = 1889568 * k + 1013521 := by
    unfold C
    simp [show (3779136 * k + 2027042) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1013521) = 5668704 * k + 3040564 := by
    unfold C
    simp [show (1889568 * k + 1013521) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3040564) = 2834352 * k + 1520282 := by
    unfold C
    simp [show (5668704 * k + 3040564) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1520282) = 1417176 * k + 760141 := by
    unfold C
    simp [show (2834352 * k + 1520282) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 760141) = 4251528 * k + 2280424 := by
    unfold C
    simp [show (1417176 * k + 760141) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2280424) = 2125764 * k + 1140212 := by
    unfold C
    simp [show (4251528 * k + 2280424) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1140212) = 1062882 * k + 570106 := by
    unfold C
    simp [show (2125764 * k + 1140212) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 570106) = 531441 * k + 285053 := by
    unfold C
    simp [show (1062882 * k + 570106) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 562431) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 562431)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_563199 : ∀ k : Nat,
    iterate (1048576 * k + 563199) 32 = 531441 * k + 285442 ∧
      531441 * k + 285442 < 1048576 * k + 563199 := by
  intro k
  have h1 : C (1048576 * k + 563199) = 3145728 * k + 1689598 := by
    unfold C
    simp [show (1048576 * k + 563199) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1689598) = 1572864 * k + 844799 := by
    unfold C
    simp [show (3145728 * k + 1689598) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 844799) = 4718592 * k + 2534398 := by
    unfold C
    simp [show (1572864 * k + 844799) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2534398) = 2359296 * k + 1267199 := by
    unfold C
    simp [show (4718592 * k + 2534398) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1267199) = 7077888 * k + 3801598 := by
    unfold C
    simp [show (2359296 * k + 1267199) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3801598) = 3538944 * k + 1900799 := by
    unfold C
    simp [show (7077888 * k + 3801598) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1900799) = 10616832 * k + 5702398 := by
    unfold C
    simp [show (3538944 * k + 1900799) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5702398) = 5308416 * k + 2851199 := by
    unfold C
    simp [show (10616832 * k + 5702398) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2851199) = 15925248 * k + 8553598 := by
    unfold C
    simp [show (5308416 * k + 2851199) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8553598) = 7962624 * k + 4276799 := by
    unfold C
    simp [show (15925248 * k + 8553598) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4276799) = 23887872 * k + 12830398 := by
    unfold C
    simp [show (7962624 * k + 4276799) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12830398) = 11943936 * k + 6415199 := by
    unfold C
    simp [show (23887872 * k + 12830398) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6415199) = 35831808 * k + 19245598 := by
    unfold C
    simp [show (11943936 * k + 6415199) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 19245598) = 17915904 * k + 9622799 := by
    unfold C
    simp [show (35831808 * k + 19245598) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 9622799) = 53747712 * k + 28868398 := by
    unfold C
    simp [show (17915904 * k + 9622799) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 28868398) = 26873856 * k + 14434199 := by
    unfold C
    simp [show (53747712 * k + 28868398) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 14434199) = 80621568 * k + 43302598 := by
    unfold C
    simp [show (26873856 * k + 14434199) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 43302598) = 40310784 * k + 21651299 := by
    unfold C
    simp [show (80621568 * k + 43302598) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 21651299) = 120932352 * k + 64953898 := by
    unfold C
    simp [show (40310784 * k + 21651299) % 2 ≠ 0 by omega]
    omega
  have h20 : C (120932352 * k + 64953898) = 60466176 * k + 32476949 := by
    unfold C
    simp [show (120932352 * k + 64953898) % 2 = 0 by omega]
    omega
  have h21 : C (60466176 * k + 32476949) = 181398528 * k + 97430848 := by
    unfold C
    simp [show (60466176 * k + 32476949) % 2 ≠ 0 by omega]
    omega
  have h22 : C (181398528 * k + 97430848) = 90699264 * k + 48715424 := by
    unfold C
    simp [show (181398528 * k + 97430848) % 2 = 0 by omega]
    omega
  have h23 : C (90699264 * k + 48715424) = 45349632 * k + 24357712 := by
    unfold C
    simp [show (90699264 * k + 48715424) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 24357712) = 22674816 * k + 12178856 := by
    unfold C
    simp [show (45349632 * k + 24357712) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 12178856) = 11337408 * k + 6089428 := by
    unfold C
    simp [show (22674816 * k + 12178856) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6089428) = 5668704 * k + 3044714 := by
    unfold C
    simp [show (11337408 * k + 6089428) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3044714) = 2834352 * k + 1522357 := by
    unfold C
    simp [show (5668704 * k + 3044714) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1522357) = 8503056 * k + 4567072 := by
    unfold C
    simp [show (2834352 * k + 1522357) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4567072) = 4251528 * k + 2283536 := by
    unfold C
    simp [show (8503056 * k + 4567072) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2283536) = 2125764 * k + 1141768 := by
    unfold C
    simp [show (4251528 * k + 2283536) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1141768) = 1062882 * k + 570884 := by
    unfold C
    simp [show (2125764 * k + 1141768) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 570884) = 531441 * k + 285442 := by
    unfold C
    simp [show (1062882 * k + 570884) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 563199) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 563199)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_563879 : ∀ k : Nat,
    iterate (1048576 * k + 563879) 32 = 531441 * k + 285787 ∧
      531441 * k + 285787 < 1048576 * k + 563879 := by
  intro k
  have h1 : C (1048576 * k + 563879) = 3145728 * k + 1691638 := by
    unfold C
    simp [show (1048576 * k + 563879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1691638) = 1572864 * k + 845819 := by
    unfold C
    simp [show (3145728 * k + 1691638) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 845819) = 4718592 * k + 2537458 := by
    unfold C
    simp [show (1572864 * k + 845819) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2537458) = 2359296 * k + 1268729 := by
    unfold C
    simp [show (4718592 * k + 2537458) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1268729) = 7077888 * k + 3806188 := by
    unfold C
    simp [show (2359296 * k + 1268729) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3806188) = 3538944 * k + 1903094 := by
    unfold C
    simp [show (7077888 * k + 3806188) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1903094) = 1769472 * k + 951547 := by
    unfold C
    simp [show (3538944 * k + 1903094) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 951547) = 5308416 * k + 2854642 := by
    unfold C
    simp [show (1769472 * k + 951547) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2854642) = 2654208 * k + 1427321 := by
    unfold C
    simp [show (5308416 * k + 2854642) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1427321) = 7962624 * k + 4281964 := by
    unfold C
    simp [show (2654208 * k + 1427321) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4281964) = 3981312 * k + 2140982 := by
    unfold C
    simp [show (7962624 * k + 4281964) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2140982) = 1990656 * k + 1070491 := by
    unfold C
    simp [show (3981312 * k + 2140982) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1070491) = 5971968 * k + 3211474 := by
    unfold C
    simp [show (1990656 * k + 1070491) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3211474) = 2985984 * k + 1605737 := by
    unfold C
    simp [show (5971968 * k + 3211474) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1605737) = 8957952 * k + 4817212 := by
    unfold C
    simp [show (2985984 * k + 1605737) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4817212) = 4478976 * k + 2408606 := by
    unfold C
    simp [show (8957952 * k + 4817212) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2408606) = 2239488 * k + 1204303 := by
    unfold C
    simp [show (4478976 * k + 2408606) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1204303) = 6718464 * k + 3612910 := by
    unfold C
    simp [show (2239488 * k + 1204303) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3612910) = 3359232 * k + 1806455 := by
    unfold C
    simp [show (6718464 * k + 3612910) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1806455) = 10077696 * k + 5419366 := by
    unfold C
    simp [show (3359232 * k + 1806455) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5419366) = 5038848 * k + 2709683 := by
    unfold C
    simp [show (10077696 * k + 5419366) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2709683) = 15116544 * k + 8129050 := by
    unfold C
    simp [show (5038848 * k + 2709683) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8129050) = 7558272 * k + 4064525 := by
    unfold C
    simp [show (15116544 * k + 8129050) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4064525) = 22674816 * k + 12193576 := by
    unfold C
    simp [show (7558272 * k + 4064525) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 12193576) = 11337408 * k + 6096788 := by
    unfold C
    simp [show (22674816 * k + 12193576) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6096788) = 5668704 * k + 3048394 := by
    unfold C
    simp [show (11337408 * k + 6096788) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3048394) = 2834352 * k + 1524197 := by
    unfold C
    simp [show (5668704 * k + 3048394) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1524197) = 8503056 * k + 4572592 := by
    unfold C
    simp [show (2834352 * k + 1524197) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4572592) = 4251528 * k + 2286296 := by
    unfold C
    simp [show (8503056 * k + 4572592) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2286296) = 2125764 * k + 1143148 := by
    unfold C
    simp [show (4251528 * k + 2286296) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1143148) = 1062882 * k + 571574 := by
    unfold C
    simp [show (2125764 * k + 1143148) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 571574) = 531441 * k + 285787 := by
    unfold C
    simp [show (1062882 * k + 571574) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 563879) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 563879)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_564287 : ∀ k : Nat,
    iterate (1048576 * k + 564287) 32 = 531441 * k + 285994 ∧
      531441 * k + 285994 < 1048576 * k + 564287 := by
  intro k
  have h1 : C (1048576 * k + 564287) = 3145728 * k + 1692862 := by
    unfold C
    simp [show (1048576 * k + 564287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1692862) = 1572864 * k + 846431 := by
    unfold C
    simp [show (3145728 * k + 1692862) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 846431) = 4718592 * k + 2539294 := by
    unfold C
    simp [show (1572864 * k + 846431) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2539294) = 2359296 * k + 1269647 := by
    unfold C
    simp [show (4718592 * k + 2539294) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1269647) = 7077888 * k + 3808942 := by
    unfold C
    simp [show (2359296 * k + 1269647) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3808942) = 3538944 * k + 1904471 := by
    unfold C
    simp [show (7077888 * k + 3808942) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1904471) = 10616832 * k + 5713414 := by
    unfold C
    simp [show (3538944 * k + 1904471) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5713414) = 5308416 * k + 2856707 := by
    unfold C
    simp [show (10616832 * k + 5713414) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2856707) = 15925248 * k + 8570122 := by
    unfold C
    simp [show (5308416 * k + 2856707) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8570122) = 7962624 * k + 4285061 := by
    unfold C
    simp [show (15925248 * k + 8570122) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4285061) = 23887872 * k + 12855184 := by
    unfold C
    simp [show (7962624 * k + 4285061) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12855184) = 11943936 * k + 6427592 := by
    unfold C
    simp [show (23887872 * k + 12855184) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6427592) = 5971968 * k + 3213796 := by
    unfold C
    simp [show (11943936 * k + 6427592) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3213796) = 2985984 * k + 1606898 := by
    unfold C
    simp [show (5971968 * k + 3213796) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1606898) = 1492992 * k + 803449 := by
    unfold C
    simp [show (2985984 * k + 1606898) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 803449) = 4478976 * k + 2410348 := by
    unfold C
    simp [show (1492992 * k + 803449) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2410348) = 2239488 * k + 1205174 := by
    unfold C
    simp [show (4478976 * k + 2410348) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1205174) = 1119744 * k + 602587 := by
    unfold C
    simp [show (2239488 * k + 1205174) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 602587) = 3359232 * k + 1807762 := by
    unfold C
    simp [show (1119744 * k + 602587) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1807762) = 1679616 * k + 903881 := by
    unfold C
    simp [show (3359232 * k + 1807762) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 903881) = 5038848 * k + 2711644 := by
    unfold C
    simp [show (1679616 * k + 903881) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2711644) = 2519424 * k + 1355822 := by
    unfold C
    simp [show (5038848 * k + 2711644) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1355822) = 1259712 * k + 677911 := by
    unfold C
    simp [show (2519424 * k + 1355822) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 677911) = 3779136 * k + 2033734 := by
    unfold C
    simp [show (1259712 * k + 677911) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2033734) = 1889568 * k + 1016867 := by
    unfold C
    simp [show (3779136 * k + 2033734) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1016867) = 5668704 * k + 3050602 := by
    unfold C
    simp [show (1889568 * k + 1016867) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3050602) = 2834352 * k + 1525301 := by
    unfold C
    simp [show (5668704 * k + 3050602) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1525301) = 8503056 * k + 4575904 := by
    unfold C
    simp [show (2834352 * k + 1525301) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4575904) = 4251528 * k + 2287952 := by
    unfold C
    simp [show (8503056 * k + 4575904) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2287952) = 2125764 * k + 1143976 := by
    unfold C
    simp [show (4251528 * k + 2287952) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1143976) = 1062882 * k + 571988 := by
    unfold C
    simp [show (2125764 * k + 1143976) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 571988) = 531441 * k + 285994 := by
    unfold C
    simp [show (1062882 * k + 571988) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 564287) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 564287)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_564335 : ∀ k : Nat,
    iterate (1048576 * k + 564335) 32 = 531441 * k + 286018 ∧
      531441 * k + 286018 < 1048576 * k + 564335 := by
  intro k
  have h1 : C (1048576 * k + 564335) = 3145728 * k + 1693006 := by
    unfold C
    simp [show (1048576 * k + 564335) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1693006) = 1572864 * k + 846503 := by
    unfold C
    simp [show (3145728 * k + 1693006) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 846503) = 4718592 * k + 2539510 := by
    unfold C
    simp [show (1572864 * k + 846503) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2539510) = 2359296 * k + 1269755 := by
    unfold C
    simp [show (4718592 * k + 2539510) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1269755) = 7077888 * k + 3809266 := by
    unfold C
    simp [show (2359296 * k + 1269755) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3809266) = 3538944 * k + 1904633 := by
    unfold C
    simp [show (7077888 * k + 3809266) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1904633) = 10616832 * k + 5713900 := by
    unfold C
    simp [show (3538944 * k + 1904633) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5713900) = 5308416 * k + 2856950 := by
    unfold C
    simp [show (10616832 * k + 5713900) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2856950) = 2654208 * k + 1428475 := by
    unfold C
    simp [show (5308416 * k + 2856950) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1428475) = 7962624 * k + 4285426 := by
    unfold C
    simp [show (2654208 * k + 1428475) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4285426) = 3981312 * k + 2142713 := by
    unfold C
    simp [show (7962624 * k + 4285426) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2142713) = 11943936 * k + 6428140 := by
    unfold C
    simp [show (3981312 * k + 2142713) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6428140) = 5971968 * k + 3214070 := by
    unfold C
    simp [show (11943936 * k + 6428140) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3214070) = 2985984 * k + 1607035 := by
    unfold C
    simp [show (5971968 * k + 3214070) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1607035) = 8957952 * k + 4821106 := by
    unfold C
    simp [show (2985984 * k + 1607035) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4821106) = 4478976 * k + 2410553 := by
    unfold C
    simp [show (8957952 * k + 4821106) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2410553) = 13436928 * k + 7231660 := by
    unfold C
    simp [show (4478976 * k + 2410553) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7231660) = 6718464 * k + 3615830 := by
    unfold C
    simp [show (13436928 * k + 7231660) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3615830) = 3359232 * k + 1807915 := by
    unfold C
    simp [show (6718464 * k + 3615830) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1807915) = 10077696 * k + 5423746 := by
    unfold C
    simp [show (3359232 * k + 1807915) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5423746) = 5038848 * k + 2711873 := by
    unfold C
    simp [show (10077696 * k + 5423746) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2711873) = 15116544 * k + 8135620 := by
    unfold C
    simp [show (5038848 * k + 2711873) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8135620) = 7558272 * k + 4067810 := by
    unfold C
    simp [show (15116544 * k + 8135620) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4067810) = 3779136 * k + 2033905 := by
    unfold C
    simp [show (7558272 * k + 4067810) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2033905) = 11337408 * k + 6101716 := by
    unfold C
    simp [show (3779136 * k + 2033905) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6101716) = 5668704 * k + 3050858 := by
    unfold C
    simp [show (11337408 * k + 6101716) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3050858) = 2834352 * k + 1525429 := by
    unfold C
    simp [show (5668704 * k + 3050858) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1525429) = 8503056 * k + 4576288 := by
    unfold C
    simp [show (2834352 * k + 1525429) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4576288) = 4251528 * k + 2288144 := by
    unfold C
    simp [show (8503056 * k + 4576288) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2288144) = 2125764 * k + 1144072 := by
    unfold C
    simp [show (4251528 * k + 2288144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1144072) = 1062882 * k + 572036 := by
    unfold C
    simp [show (2125764 * k + 1144072) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 572036) = 531441 * k + 286018 := by
    unfold C
    simp [show (1062882 * k + 572036) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 564335) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 564335)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_564607 : ∀ k : Nat,
    iterate (1048576 * k + 564607) 32 = 531441 * k + 286156 ∧
      531441 * k + 286156 < 1048576 * k + 564607 := by
  intro k
  have h1 : C (1048576 * k + 564607) = 3145728 * k + 1693822 := by
    unfold C
    simp [show (1048576 * k + 564607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1693822) = 1572864 * k + 846911 := by
    unfold C
    simp [show (3145728 * k + 1693822) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 846911) = 4718592 * k + 2540734 := by
    unfold C
    simp [show (1572864 * k + 846911) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2540734) = 2359296 * k + 1270367 := by
    unfold C
    simp [show (4718592 * k + 2540734) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1270367) = 7077888 * k + 3811102 := by
    unfold C
    simp [show (2359296 * k + 1270367) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3811102) = 3538944 * k + 1905551 := by
    unfold C
    simp [show (7077888 * k + 3811102) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1905551) = 10616832 * k + 5716654 := by
    unfold C
    simp [show (3538944 * k + 1905551) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5716654) = 5308416 * k + 2858327 := by
    unfold C
    simp [show (10616832 * k + 5716654) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2858327) = 15925248 * k + 8574982 := by
    unfold C
    simp [show (5308416 * k + 2858327) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8574982) = 7962624 * k + 4287491 := by
    unfold C
    simp [show (15925248 * k + 8574982) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4287491) = 23887872 * k + 12862474 := by
    unfold C
    simp [show (7962624 * k + 4287491) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12862474) = 11943936 * k + 6431237 := by
    unfold C
    simp [show (23887872 * k + 12862474) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6431237) = 35831808 * k + 19293712 := by
    unfold C
    simp [show (11943936 * k + 6431237) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 19293712) = 17915904 * k + 9646856 := by
    unfold C
    simp [show (35831808 * k + 19293712) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 9646856) = 8957952 * k + 4823428 := by
    unfold C
    simp [show (17915904 * k + 9646856) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4823428) = 4478976 * k + 2411714 := by
    unfold C
    simp [show (8957952 * k + 4823428) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2411714) = 2239488 * k + 1205857 := by
    unfold C
    simp [show (4478976 * k + 2411714) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1205857) = 6718464 * k + 3617572 := by
    unfold C
    simp [show (2239488 * k + 1205857) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3617572) = 3359232 * k + 1808786 := by
    unfold C
    simp [show (6718464 * k + 3617572) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1808786) = 1679616 * k + 904393 := by
    unfold C
    simp [show (3359232 * k + 1808786) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 904393) = 5038848 * k + 2713180 := by
    unfold C
    simp [show (1679616 * k + 904393) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2713180) = 2519424 * k + 1356590 := by
    unfold C
    simp [show (5038848 * k + 2713180) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1356590) = 1259712 * k + 678295 := by
    unfold C
    simp [show (2519424 * k + 1356590) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 678295) = 3779136 * k + 2034886 := by
    unfold C
    simp [show (1259712 * k + 678295) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2034886) = 1889568 * k + 1017443 := by
    unfold C
    simp [show (3779136 * k + 2034886) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1017443) = 5668704 * k + 3052330 := by
    unfold C
    simp [show (1889568 * k + 1017443) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3052330) = 2834352 * k + 1526165 := by
    unfold C
    simp [show (5668704 * k + 3052330) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1526165) = 8503056 * k + 4578496 := by
    unfold C
    simp [show (2834352 * k + 1526165) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4578496) = 4251528 * k + 2289248 := by
    unfold C
    simp [show (8503056 * k + 4578496) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2289248) = 2125764 * k + 1144624 := by
    unfold C
    simp [show (4251528 * k + 2289248) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1144624) = 1062882 * k + 572312 := by
    unfold C
    simp [show (2125764 * k + 1144624) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 572312) = 531441 * k + 286156 := by
    unfold C
    simp [show (1062882 * k + 572312) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 564607) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 564607)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_564763 : ∀ k : Nat,
    iterate (1048576 * k + 564763) 32 = 531441 * k + 286235 ∧
      531441 * k + 286235 < 1048576 * k + 564763 := by
  intro k
  have h1 : C (1048576 * k + 564763) = 3145728 * k + 1694290 := by
    unfold C
    simp [show (1048576 * k + 564763) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1694290) = 1572864 * k + 847145 := by
    unfold C
    simp [show (3145728 * k + 1694290) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 847145) = 4718592 * k + 2541436 := by
    unfold C
    simp [show (1572864 * k + 847145) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2541436) = 2359296 * k + 1270718 := by
    unfold C
    simp [show (4718592 * k + 2541436) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1270718) = 1179648 * k + 635359 := by
    unfold C
    simp [show (2359296 * k + 1270718) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 635359) = 3538944 * k + 1906078 := by
    unfold C
    simp [show (1179648 * k + 635359) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1906078) = 1769472 * k + 953039 := by
    unfold C
    simp [show (3538944 * k + 1906078) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 953039) = 5308416 * k + 2859118 := by
    unfold C
    simp [show (1769472 * k + 953039) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2859118) = 2654208 * k + 1429559 := by
    unfold C
    simp [show (5308416 * k + 2859118) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1429559) = 7962624 * k + 4288678 := by
    unfold C
    simp [show (2654208 * k + 1429559) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4288678) = 3981312 * k + 2144339 := by
    unfold C
    simp [show (7962624 * k + 4288678) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2144339) = 11943936 * k + 6433018 := by
    unfold C
    simp [show (3981312 * k + 2144339) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6433018) = 5971968 * k + 3216509 := by
    unfold C
    simp [show (11943936 * k + 6433018) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3216509) = 17915904 * k + 9649528 := by
    unfold C
    simp [show (5971968 * k + 3216509) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9649528) = 8957952 * k + 4824764 := by
    unfold C
    simp [show (17915904 * k + 9649528) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4824764) = 4478976 * k + 2412382 := by
    unfold C
    simp [show (8957952 * k + 4824764) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2412382) = 2239488 * k + 1206191 := by
    unfold C
    simp [show (4478976 * k + 2412382) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1206191) = 6718464 * k + 3618574 := by
    unfold C
    simp [show (2239488 * k + 1206191) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3618574) = 3359232 * k + 1809287 := by
    unfold C
    simp [show (6718464 * k + 3618574) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1809287) = 10077696 * k + 5427862 := by
    unfold C
    simp [show (3359232 * k + 1809287) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5427862) = 5038848 * k + 2713931 := by
    unfold C
    simp [show (10077696 * k + 5427862) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2713931) = 15116544 * k + 8141794 := by
    unfold C
    simp [show (5038848 * k + 2713931) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8141794) = 7558272 * k + 4070897 := by
    unfold C
    simp [show (15116544 * k + 8141794) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4070897) = 22674816 * k + 12212692 := by
    unfold C
    simp [show (7558272 * k + 4070897) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 12212692) = 11337408 * k + 6106346 := by
    unfold C
    simp [show (22674816 * k + 12212692) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6106346) = 5668704 * k + 3053173 := by
    unfold C
    simp [show (11337408 * k + 6106346) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3053173) = 17006112 * k + 9159520 := by
    unfold C
    simp [show (5668704 * k + 3053173) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9159520) = 8503056 * k + 4579760 := by
    unfold C
    simp [show (17006112 * k + 9159520) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4579760) = 4251528 * k + 2289880 := by
    unfold C
    simp [show (8503056 * k + 4579760) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2289880) = 2125764 * k + 1144940 := by
    unfold C
    simp [show (4251528 * k + 2289880) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1144940) = 1062882 * k + 572470 := by
    unfold C
    simp [show (2125764 * k + 1144940) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 572470) = 531441 * k + 286235 := by
    unfold C
    simp [show (1062882 * k + 572470) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 564763) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 564763)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_564767 : ∀ k : Nat,
    iterate (1048576 * k + 564767) 32 = 531441 * k + 286237 ∧
      531441 * k + 286237 < 1048576 * k + 564767 := by
  intro k
  have h1 : C (1048576 * k + 564767) = 3145728 * k + 1694302 := by
    unfold C
    simp [show (1048576 * k + 564767) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1694302) = 1572864 * k + 847151 := by
    unfold C
    simp [show (3145728 * k + 1694302) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 847151) = 4718592 * k + 2541454 := by
    unfold C
    simp [show (1572864 * k + 847151) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2541454) = 2359296 * k + 1270727 := by
    unfold C
    simp [show (4718592 * k + 2541454) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1270727) = 7077888 * k + 3812182 := by
    unfold C
    simp [show (2359296 * k + 1270727) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3812182) = 3538944 * k + 1906091 := by
    unfold C
    simp [show (7077888 * k + 3812182) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1906091) = 10616832 * k + 5718274 := by
    unfold C
    simp [show (3538944 * k + 1906091) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5718274) = 5308416 * k + 2859137 := by
    unfold C
    simp [show (10616832 * k + 5718274) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2859137) = 15925248 * k + 8577412 := by
    unfold C
    simp [show (5308416 * k + 2859137) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8577412) = 7962624 * k + 4288706 := by
    unfold C
    simp [show (15925248 * k + 8577412) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4288706) = 3981312 * k + 2144353 := by
    unfold C
    simp [show (7962624 * k + 4288706) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2144353) = 11943936 * k + 6433060 := by
    unfold C
    simp [show (3981312 * k + 2144353) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6433060) = 5971968 * k + 3216530 := by
    unfold C
    simp [show (11943936 * k + 6433060) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3216530) = 2985984 * k + 1608265 := by
    unfold C
    simp [show (5971968 * k + 3216530) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1608265) = 8957952 * k + 4824796 := by
    unfold C
    simp [show (2985984 * k + 1608265) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4824796) = 4478976 * k + 2412398 := by
    unfold C
    simp [show (8957952 * k + 4824796) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2412398) = 2239488 * k + 1206199 := by
    unfold C
    simp [show (4478976 * k + 2412398) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1206199) = 6718464 * k + 3618598 := by
    unfold C
    simp [show (2239488 * k + 1206199) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3618598) = 3359232 * k + 1809299 := by
    unfold C
    simp [show (6718464 * k + 3618598) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1809299) = 10077696 * k + 5427898 := by
    unfold C
    simp [show (3359232 * k + 1809299) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5427898) = 5038848 * k + 2713949 := by
    unfold C
    simp [show (10077696 * k + 5427898) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2713949) = 15116544 * k + 8141848 := by
    unfold C
    simp [show (5038848 * k + 2713949) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8141848) = 7558272 * k + 4070924 := by
    unfold C
    simp [show (15116544 * k + 8141848) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4070924) = 3779136 * k + 2035462 := by
    unfold C
    simp [show (7558272 * k + 4070924) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2035462) = 1889568 * k + 1017731 := by
    unfold C
    simp [show (3779136 * k + 2035462) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1017731) = 5668704 * k + 3053194 := by
    unfold C
    simp [show (1889568 * k + 1017731) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3053194) = 2834352 * k + 1526597 := by
    unfold C
    simp [show (5668704 * k + 3053194) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1526597) = 8503056 * k + 4579792 := by
    unfold C
    simp [show (2834352 * k + 1526597) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4579792) = 4251528 * k + 2289896 := by
    unfold C
    simp [show (8503056 * k + 4579792) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2289896) = 2125764 * k + 1144948 := by
    unfold C
    simp [show (4251528 * k + 2289896) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1144948) = 1062882 * k + 572474 := by
    unfold C
    simp [show (2125764 * k + 1144948) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 572474) = 531441 * k + 286237 := by
    unfold C
    simp [show (1062882 * k + 572474) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 564767) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 564767)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard072
