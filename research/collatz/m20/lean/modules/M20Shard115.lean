import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard115

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_897351 : ∀ k : Nat,
    iterate (1048576 * k + 897351) 32 = 531441 * k + 454798 ∧
      531441 * k + 454798 < 1048576 * k + 897351 := by
  intro k
  have h1 : C (1048576 * k + 897351) = 3145728 * k + 2692054 := by
    unfold C
    simp [show (1048576 * k + 897351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2692054) = 1572864 * k + 1346027 := by
    unfold C
    simp [show (3145728 * k + 2692054) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1346027) = 4718592 * k + 4038082 := by
    unfold C
    simp [show (1572864 * k + 1346027) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4038082) = 2359296 * k + 2019041 := by
    unfold C
    simp [show (4718592 * k + 4038082) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2019041) = 7077888 * k + 6057124 := by
    unfold C
    simp [show (2359296 * k + 2019041) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6057124) = 3538944 * k + 3028562 := by
    unfold C
    simp [show (7077888 * k + 6057124) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3028562) = 1769472 * k + 1514281 := by
    unfold C
    simp [show (3538944 * k + 3028562) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1514281) = 5308416 * k + 4542844 := by
    unfold C
    simp [show (1769472 * k + 1514281) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4542844) = 2654208 * k + 2271422 := by
    unfold C
    simp [show (5308416 * k + 4542844) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2271422) = 1327104 * k + 1135711 := by
    unfold C
    simp [show (2654208 * k + 2271422) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1135711) = 3981312 * k + 3407134 := by
    unfold C
    simp [show (1327104 * k + 1135711) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3407134) = 1990656 * k + 1703567 := by
    unfold C
    simp [show (3981312 * k + 3407134) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1703567) = 5971968 * k + 5110702 := by
    unfold C
    simp [show (1990656 * k + 1703567) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5110702) = 2985984 * k + 2555351 := by
    unfold C
    simp [show (5971968 * k + 5110702) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2555351) = 8957952 * k + 7666054 := by
    unfold C
    simp [show (2985984 * k + 2555351) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7666054) = 4478976 * k + 3833027 := by
    unfold C
    simp [show (8957952 * k + 7666054) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3833027) = 13436928 * k + 11499082 := by
    unfold C
    simp [show (4478976 * k + 3833027) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11499082) = 6718464 * k + 5749541 := by
    unfold C
    simp [show (13436928 * k + 11499082) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5749541) = 20155392 * k + 17248624 := by
    unfold C
    simp [show (6718464 * k + 5749541) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17248624) = 10077696 * k + 8624312 := by
    unfold C
    simp [show (20155392 * k + 17248624) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8624312) = 5038848 * k + 4312156 := by
    unfold C
    simp [show (10077696 * k + 8624312) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4312156) = 2519424 * k + 2156078 := by
    unfold C
    simp [show (5038848 * k + 4312156) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2156078) = 1259712 * k + 1078039 := by
    unfold C
    simp [show (2519424 * k + 2156078) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1078039) = 3779136 * k + 3234118 := by
    unfold C
    simp [show (1259712 * k + 1078039) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3234118) = 1889568 * k + 1617059 := by
    unfold C
    simp [show (3779136 * k + 3234118) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1617059) = 5668704 * k + 4851178 := by
    unfold C
    simp [show (1889568 * k + 1617059) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4851178) = 2834352 * k + 2425589 := by
    unfold C
    simp [show (5668704 * k + 4851178) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2425589) = 8503056 * k + 7276768 := by
    unfold C
    simp [show (2834352 * k + 2425589) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7276768) = 4251528 * k + 3638384 := by
    unfold C
    simp [show (8503056 * k + 7276768) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3638384) = 2125764 * k + 1819192 := by
    unfold C
    simp [show (4251528 * k + 3638384) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1819192) = 1062882 * k + 909596 := by
    unfold C
    simp [show (2125764 * k + 1819192) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 909596) = 531441 * k + 454798 := by
    unfold C
    simp [show (1062882 * k + 909596) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 897351) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 897351)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_897511 : ∀ k : Nat,
    iterate (1048576 * k + 897511) 32 = 531441 * k + 454879 ∧
      531441 * k + 454879 < 1048576 * k + 897511 := by
  intro k
  have h1 : C (1048576 * k + 897511) = 3145728 * k + 2692534 := by
    unfold C
    simp [show (1048576 * k + 897511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2692534) = 1572864 * k + 1346267 := by
    unfold C
    simp [show (3145728 * k + 2692534) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1346267) = 4718592 * k + 4038802 := by
    unfold C
    simp [show (1572864 * k + 1346267) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4038802) = 2359296 * k + 2019401 := by
    unfold C
    simp [show (4718592 * k + 4038802) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2019401) = 7077888 * k + 6058204 := by
    unfold C
    simp [show (2359296 * k + 2019401) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6058204) = 3538944 * k + 3029102 := by
    unfold C
    simp [show (7077888 * k + 6058204) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3029102) = 1769472 * k + 1514551 := by
    unfold C
    simp [show (3538944 * k + 3029102) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1514551) = 5308416 * k + 4543654 := by
    unfold C
    simp [show (1769472 * k + 1514551) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4543654) = 2654208 * k + 2271827 := by
    unfold C
    simp [show (5308416 * k + 4543654) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2271827) = 7962624 * k + 6815482 := by
    unfold C
    simp [show (2654208 * k + 2271827) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6815482) = 3981312 * k + 3407741 := by
    unfold C
    simp [show (7962624 * k + 6815482) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3407741) = 11943936 * k + 10223224 := by
    unfold C
    simp [show (3981312 * k + 3407741) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10223224) = 5971968 * k + 5111612 := by
    unfold C
    simp [show (11943936 * k + 10223224) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5111612) = 2985984 * k + 2555806 := by
    unfold C
    simp [show (5971968 * k + 5111612) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2555806) = 1492992 * k + 1277903 := by
    unfold C
    simp [show (2985984 * k + 2555806) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1277903) = 4478976 * k + 3833710 := by
    unfold C
    simp [show (1492992 * k + 1277903) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3833710) = 2239488 * k + 1916855 := by
    unfold C
    simp [show (4478976 * k + 3833710) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1916855) = 6718464 * k + 5750566 := by
    unfold C
    simp [show (2239488 * k + 1916855) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5750566) = 3359232 * k + 2875283 := by
    unfold C
    simp [show (6718464 * k + 5750566) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2875283) = 10077696 * k + 8625850 := by
    unfold C
    simp [show (3359232 * k + 2875283) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8625850) = 5038848 * k + 4312925 := by
    unfold C
    simp [show (10077696 * k + 8625850) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4312925) = 15116544 * k + 12938776 := by
    unfold C
    simp [show (5038848 * k + 4312925) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12938776) = 7558272 * k + 6469388 := by
    unfold C
    simp [show (15116544 * k + 12938776) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6469388) = 3779136 * k + 3234694 := by
    unfold C
    simp [show (7558272 * k + 6469388) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3234694) = 1889568 * k + 1617347 := by
    unfold C
    simp [show (3779136 * k + 3234694) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1617347) = 5668704 * k + 4852042 := by
    unfold C
    simp [show (1889568 * k + 1617347) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4852042) = 2834352 * k + 2426021 := by
    unfold C
    simp [show (5668704 * k + 4852042) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2426021) = 8503056 * k + 7278064 := by
    unfold C
    simp [show (2834352 * k + 2426021) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7278064) = 4251528 * k + 3639032 := by
    unfold C
    simp [show (8503056 * k + 7278064) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3639032) = 2125764 * k + 1819516 := by
    unfold C
    simp [show (4251528 * k + 3639032) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1819516) = 1062882 * k + 909758 := by
    unfold C
    simp [show (2125764 * k + 1819516) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 909758) = 531441 * k + 454879 := by
    unfold C
    simp [show (1062882 * k + 909758) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 897511) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 897511)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_898407 : ∀ k : Nat,
    iterate (1048576 * k + 898407) 32 = 531441 * k + 455333 ∧
      531441 * k + 455333 < 1048576 * k + 898407 := by
  intro k
  have h1 : C (1048576 * k + 898407) = 3145728 * k + 2695222 := by
    unfold C
    simp [show (1048576 * k + 898407) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2695222) = 1572864 * k + 1347611 := by
    unfold C
    simp [show (3145728 * k + 2695222) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1347611) = 4718592 * k + 4042834 := by
    unfold C
    simp [show (1572864 * k + 1347611) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4042834) = 2359296 * k + 2021417 := by
    unfold C
    simp [show (4718592 * k + 4042834) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2021417) = 7077888 * k + 6064252 := by
    unfold C
    simp [show (2359296 * k + 2021417) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6064252) = 3538944 * k + 3032126 := by
    unfold C
    simp [show (7077888 * k + 6064252) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3032126) = 1769472 * k + 1516063 := by
    unfold C
    simp [show (3538944 * k + 3032126) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1516063) = 5308416 * k + 4548190 := by
    unfold C
    simp [show (1769472 * k + 1516063) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4548190) = 2654208 * k + 2274095 := by
    unfold C
    simp [show (5308416 * k + 4548190) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2274095) = 7962624 * k + 6822286 := by
    unfold C
    simp [show (2654208 * k + 2274095) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6822286) = 3981312 * k + 3411143 := by
    unfold C
    simp [show (7962624 * k + 6822286) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3411143) = 11943936 * k + 10233430 := by
    unfold C
    simp [show (3981312 * k + 3411143) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10233430) = 5971968 * k + 5116715 := by
    unfold C
    simp [show (11943936 * k + 10233430) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5116715) = 17915904 * k + 15350146 := by
    unfold C
    simp [show (5971968 * k + 5116715) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15350146) = 8957952 * k + 7675073 := by
    unfold C
    simp [show (17915904 * k + 15350146) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7675073) = 26873856 * k + 23025220 := by
    unfold C
    simp [show (8957952 * k + 7675073) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23025220) = 13436928 * k + 11512610 := by
    unfold C
    simp [show (26873856 * k + 23025220) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11512610) = 6718464 * k + 5756305 := by
    unfold C
    simp [show (13436928 * k + 11512610) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5756305) = 20155392 * k + 17268916 := by
    unfold C
    simp [show (6718464 * k + 5756305) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17268916) = 10077696 * k + 8634458 := by
    unfold C
    simp [show (20155392 * k + 17268916) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8634458) = 5038848 * k + 4317229 := by
    unfold C
    simp [show (10077696 * k + 8634458) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4317229) = 15116544 * k + 12951688 := by
    unfold C
    simp [show (5038848 * k + 4317229) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12951688) = 7558272 * k + 6475844 := by
    unfold C
    simp [show (15116544 * k + 12951688) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6475844) = 3779136 * k + 3237922 := by
    unfold C
    simp [show (7558272 * k + 6475844) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3237922) = 1889568 * k + 1618961 := by
    unfold C
    simp [show (3779136 * k + 3237922) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1618961) = 5668704 * k + 4856884 := by
    unfold C
    simp [show (1889568 * k + 1618961) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4856884) = 2834352 * k + 2428442 := by
    unfold C
    simp [show (5668704 * k + 4856884) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2428442) = 1417176 * k + 1214221 := by
    unfold C
    simp [show (2834352 * k + 2428442) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1214221) = 4251528 * k + 3642664 := by
    unfold C
    simp [show (1417176 * k + 1214221) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3642664) = 2125764 * k + 1821332 := by
    unfold C
    simp [show (4251528 * k + 3642664) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1821332) = 1062882 * k + 910666 := by
    unfold C
    simp [show (2125764 * k + 1821332) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 910666) = 531441 * k + 455333 := by
    unfold C
    simp [show (1062882 * k + 910666) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 898407) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 898407)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_899099 : ∀ k : Nat,
    iterate (1048576 * k + 899099) 32 = 531441 * k + 455684 ∧
      531441 * k + 455684 < 1048576 * k + 899099 := by
  intro k
  have h1 : C (1048576 * k + 899099) = 3145728 * k + 2697298 := by
    unfold C
    simp [show (1048576 * k + 899099) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2697298) = 1572864 * k + 1348649 := by
    unfold C
    simp [show (3145728 * k + 2697298) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1348649) = 4718592 * k + 4045948 := by
    unfold C
    simp [show (1572864 * k + 1348649) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4045948) = 2359296 * k + 2022974 := by
    unfold C
    simp [show (4718592 * k + 4045948) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2022974) = 1179648 * k + 1011487 := by
    unfold C
    simp [show (2359296 * k + 2022974) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1011487) = 3538944 * k + 3034462 := by
    unfold C
    simp [show (1179648 * k + 1011487) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3034462) = 1769472 * k + 1517231 := by
    unfold C
    simp [show (3538944 * k + 3034462) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1517231) = 5308416 * k + 4551694 := by
    unfold C
    simp [show (1769472 * k + 1517231) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4551694) = 2654208 * k + 2275847 := by
    unfold C
    simp [show (5308416 * k + 4551694) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2275847) = 7962624 * k + 6827542 := by
    unfold C
    simp [show (2654208 * k + 2275847) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6827542) = 3981312 * k + 3413771 := by
    unfold C
    simp [show (7962624 * k + 6827542) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3413771) = 11943936 * k + 10241314 := by
    unfold C
    simp [show (3981312 * k + 3413771) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10241314) = 5971968 * k + 5120657 := by
    unfold C
    simp [show (11943936 * k + 10241314) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5120657) = 17915904 * k + 15361972 := by
    unfold C
    simp [show (5971968 * k + 5120657) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15361972) = 8957952 * k + 7680986 := by
    unfold C
    simp [show (17915904 * k + 15361972) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7680986) = 4478976 * k + 3840493 := by
    unfold C
    simp [show (8957952 * k + 7680986) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3840493) = 13436928 * k + 11521480 := by
    unfold C
    simp [show (4478976 * k + 3840493) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11521480) = 6718464 * k + 5760740 := by
    unfold C
    simp [show (13436928 * k + 11521480) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5760740) = 3359232 * k + 2880370 := by
    unfold C
    simp [show (6718464 * k + 5760740) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2880370) = 1679616 * k + 1440185 := by
    unfold C
    simp [show (3359232 * k + 2880370) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1440185) = 5038848 * k + 4320556 := by
    unfold C
    simp [show (1679616 * k + 1440185) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4320556) = 2519424 * k + 2160278 := by
    unfold C
    simp [show (5038848 * k + 4320556) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2160278) = 1259712 * k + 1080139 := by
    unfold C
    simp [show (2519424 * k + 2160278) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1080139) = 3779136 * k + 3240418 := by
    unfold C
    simp [show (1259712 * k + 1080139) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3240418) = 1889568 * k + 1620209 := by
    unfold C
    simp [show (3779136 * k + 3240418) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1620209) = 5668704 * k + 4860628 := by
    unfold C
    simp [show (1889568 * k + 1620209) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4860628) = 2834352 * k + 2430314 := by
    unfold C
    simp [show (5668704 * k + 4860628) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2430314) = 1417176 * k + 1215157 := by
    unfold C
    simp [show (2834352 * k + 2430314) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1215157) = 4251528 * k + 3645472 := by
    unfold C
    simp [show (1417176 * k + 1215157) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3645472) = 2125764 * k + 1822736 := by
    unfold C
    simp [show (4251528 * k + 3645472) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1822736) = 1062882 * k + 911368 := by
    unfold C
    simp [show (2125764 * k + 1822736) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 911368) = 531441 * k + 455684 := by
    unfold C
    simp [show (1062882 * k + 911368) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 899099) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 899099)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_899431 : ∀ k : Nat,
    iterate (1048576 * k + 899431) 32 = 531441 * k + 455852 ∧
      531441 * k + 455852 < 1048576 * k + 899431 := by
  intro k
  have h1 : C (1048576 * k + 899431) = 3145728 * k + 2698294 := by
    unfold C
    simp [show (1048576 * k + 899431) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2698294) = 1572864 * k + 1349147 := by
    unfold C
    simp [show (3145728 * k + 2698294) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1349147) = 4718592 * k + 4047442 := by
    unfold C
    simp [show (1572864 * k + 1349147) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4047442) = 2359296 * k + 2023721 := by
    unfold C
    simp [show (4718592 * k + 4047442) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2023721) = 7077888 * k + 6071164 := by
    unfold C
    simp [show (2359296 * k + 2023721) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6071164) = 3538944 * k + 3035582 := by
    unfold C
    simp [show (7077888 * k + 6071164) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3035582) = 1769472 * k + 1517791 := by
    unfold C
    simp [show (3538944 * k + 3035582) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1517791) = 5308416 * k + 4553374 := by
    unfold C
    simp [show (1769472 * k + 1517791) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4553374) = 2654208 * k + 2276687 := by
    unfold C
    simp [show (5308416 * k + 4553374) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2276687) = 7962624 * k + 6830062 := by
    unfold C
    simp [show (2654208 * k + 2276687) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6830062) = 3981312 * k + 3415031 := by
    unfold C
    simp [show (7962624 * k + 6830062) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3415031) = 11943936 * k + 10245094 := by
    unfold C
    simp [show (3981312 * k + 3415031) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10245094) = 5971968 * k + 5122547 := by
    unfold C
    simp [show (11943936 * k + 10245094) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5122547) = 17915904 * k + 15367642 := by
    unfold C
    simp [show (5971968 * k + 5122547) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15367642) = 8957952 * k + 7683821 := by
    unfold C
    simp [show (17915904 * k + 15367642) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7683821) = 26873856 * k + 23051464 := by
    unfold C
    simp [show (8957952 * k + 7683821) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23051464) = 13436928 * k + 11525732 := by
    unfold C
    simp [show (26873856 * k + 23051464) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11525732) = 6718464 * k + 5762866 := by
    unfold C
    simp [show (13436928 * k + 11525732) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5762866) = 3359232 * k + 2881433 := by
    unfold C
    simp [show (6718464 * k + 5762866) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2881433) = 10077696 * k + 8644300 := by
    unfold C
    simp [show (3359232 * k + 2881433) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8644300) = 5038848 * k + 4322150 := by
    unfold C
    simp [show (10077696 * k + 8644300) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4322150) = 2519424 * k + 2161075 := by
    unfold C
    simp [show (5038848 * k + 4322150) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2161075) = 7558272 * k + 6483226 := by
    unfold C
    simp [show (2519424 * k + 2161075) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6483226) = 3779136 * k + 3241613 := by
    unfold C
    simp [show (7558272 * k + 6483226) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3241613) = 11337408 * k + 9724840 := by
    unfold C
    simp [show (3779136 * k + 3241613) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9724840) = 5668704 * k + 4862420 := by
    unfold C
    simp [show (11337408 * k + 9724840) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4862420) = 2834352 * k + 2431210 := by
    unfold C
    simp [show (5668704 * k + 4862420) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2431210) = 1417176 * k + 1215605 := by
    unfold C
    simp [show (2834352 * k + 2431210) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1215605) = 4251528 * k + 3646816 := by
    unfold C
    simp [show (1417176 * k + 1215605) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3646816) = 2125764 * k + 1823408 := by
    unfold C
    simp [show (4251528 * k + 3646816) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1823408) = 1062882 * k + 911704 := by
    unfold C
    simp [show (2125764 * k + 1823408) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 911704) = 531441 * k + 455852 := by
    unfold C
    simp [show (1062882 * k + 911704) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 899431) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 899431)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_900335 : ∀ k : Nat,
    iterate (1048576 * k + 900335) 32 = 531441 * k + 456310 ∧
      531441 * k + 456310 < 1048576 * k + 900335 := by
  intro k
  have h1 : C (1048576 * k + 900335) = 3145728 * k + 2701006 := by
    unfold C
    simp [show (1048576 * k + 900335) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2701006) = 1572864 * k + 1350503 := by
    unfold C
    simp [show (3145728 * k + 2701006) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1350503) = 4718592 * k + 4051510 := by
    unfold C
    simp [show (1572864 * k + 1350503) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4051510) = 2359296 * k + 2025755 := by
    unfold C
    simp [show (4718592 * k + 4051510) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2025755) = 7077888 * k + 6077266 := by
    unfold C
    simp [show (2359296 * k + 2025755) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6077266) = 3538944 * k + 3038633 := by
    unfold C
    simp [show (7077888 * k + 6077266) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3038633) = 10616832 * k + 9115900 := by
    unfold C
    simp [show (3538944 * k + 3038633) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9115900) = 5308416 * k + 4557950 := by
    unfold C
    simp [show (10616832 * k + 9115900) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4557950) = 2654208 * k + 2278975 := by
    unfold C
    simp [show (5308416 * k + 4557950) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2278975) = 7962624 * k + 6836926 := by
    unfold C
    simp [show (2654208 * k + 2278975) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6836926) = 3981312 * k + 3418463 := by
    unfold C
    simp [show (7962624 * k + 6836926) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3418463) = 11943936 * k + 10255390 := by
    unfold C
    simp [show (3981312 * k + 3418463) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10255390) = 5971968 * k + 5127695 := by
    unfold C
    simp [show (11943936 * k + 10255390) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5127695) = 17915904 * k + 15383086 := by
    unfold C
    simp [show (5971968 * k + 5127695) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15383086) = 8957952 * k + 7691543 := by
    unfold C
    simp [show (17915904 * k + 15383086) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7691543) = 26873856 * k + 23074630 := by
    unfold C
    simp [show (8957952 * k + 7691543) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23074630) = 13436928 * k + 11537315 := by
    unfold C
    simp [show (26873856 * k + 23074630) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11537315) = 40310784 * k + 34611946 := by
    unfold C
    simp [show (13436928 * k + 11537315) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 34611946) = 20155392 * k + 17305973 := by
    unfold C
    simp [show (40310784 * k + 34611946) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 17305973) = 60466176 * k + 51917920 := by
    unfold C
    simp [show (20155392 * k + 17305973) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 51917920) = 30233088 * k + 25958960 := by
    unfold C
    simp [show (60466176 * k + 51917920) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 25958960) = 15116544 * k + 12979480 := by
    unfold C
    simp [show (30233088 * k + 25958960) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12979480) = 7558272 * k + 6489740 := by
    unfold C
    simp [show (15116544 * k + 12979480) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6489740) = 3779136 * k + 3244870 := by
    unfold C
    simp [show (7558272 * k + 6489740) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3244870) = 1889568 * k + 1622435 := by
    unfold C
    simp [show (3779136 * k + 3244870) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1622435) = 5668704 * k + 4867306 := by
    unfold C
    simp [show (1889568 * k + 1622435) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4867306) = 2834352 * k + 2433653 := by
    unfold C
    simp [show (5668704 * k + 4867306) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2433653) = 8503056 * k + 7300960 := by
    unfold C
    simp [show (2834352 * k + 2433653) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7300960) = 4251528 * k + 3650480 := by
    unfold C
    simp [show (8503056 * k + 7300960) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3650480) = 2125764 * k + 1825240 := by
    unfold C
    simp [show (4251528 * k + 3650480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1825240) = 1062882 * k + 912620 := by
    unfold C
    simp [show (2125764 * k + 1825240) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 912620) = 531441 * k + 456310 := by
    unfold C
    simp [show (1062882 * k + 912620) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 900335) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 900335)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_900591 : ∀ k : Nat,
    iterate (1048576 * k + 900591) 32 = 531441 * k + 456440 ∧
      531441 * k + 456440 < 1048576 * k + 900591 := by
  intro k
  have h1 : C (1048576 * k + 900591) = 3145728 * k + 2701774 := by
    unfold C
    simp [show (1048576 * k + 900591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2701774) = 1572864 * k + 1350887 := by
    unfold C
    simp [show (3145728 * k + 2701774) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1350887) = 4718592 * k + 4052662 := by
    unfold C
    simp [show (1572864 * k + 1350887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4052662) = 2359296 * k + 2026331 := by
    unfold C
    simp [show (4718592 * k + 4052662) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2026331) = 7077888 * k + 6078994 := by
    unfold C
    simp [show (2359296 * k + 2026331) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6078994) = 3538944 * k + 3039497 := by
    unfold C
    simp [show (7077888 * k + 6078994) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3039497) = 10616832 * k + 9118492 := by
    unfold C
    simp [show (3538944 * k + 3039497) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9118492) = 5308416 * k + 4559246 := by
    unfold C
    simp [show (10616832 * k + 9118492) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4559246) = 2654208 * k + 2279623 := by
    unfold C
    simp [show (5308416 * k + 4559246) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2279623) = 7962624 * k + 6838870 := by
    unfold C
    simp [show (2654208 * k + 2279623) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6838870) = 3981312 * k + 3419435 := by
    unfold C
    simp [show (7962624 * k + 6838870) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3419435) = 11943936 * k + 10258306 := by
    unfold C
    simp [show (3981312 * k + 3419435) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10258306) = 5971968 * k + 5129153 := by
    unfold C
    simp [show (11943936 * k + 10258306) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5129153) = 17915904 * k + 15387460 := by
    unfold C
    simp [show (5971968 * k + 5129153) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15387460) = 8957952 * k + 7693730 := by
    unfold C
    simp [show (17915904 * k + 15387460) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7693730) = 4478976 * k + 3846865 := by
    unfold C
    simp [show (8957952 * k + 7693730) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3846865) = 13436928 * k + 11540596 := by
    unfold C
    simp [show (4478976 * k + 3846865) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11540596) = 6718464 * k + 5770298 := by
    unfold C
    simp [show (13436928 * k + 11540596) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5770298) = 3359232 * k + 2885149 := by
    unfold C
    simp [show (6718464 * k + 5770298) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2885149) = 10077696 * k + 8655448 := by
    unfold C
    simp [show (3359232 * k + 2885149) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8655448) = 5038848 * k + 4327724 := by
    unfold C
    simp [show (10077696 * k + 8655448) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4327724) = 2519424 * k + 2163862 := by
    unfold C
    simp [show (5038848 * k + 4327724) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2163862) = 1259712 * k + 1081931 := by
    unfold C
    simp [show (2519424 * k + 2163862) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1081931) = 3779136 * k + 3245794 := by
    unfold C
    simp [show (1259712 * k + 1081931) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3245794) = 1889568 * k + 1622897 := by
    unfold C
    simp [show (3779136 * k + 3245794) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1622897) = 5668704 * k + 4868692 := by
    unfold C
    simp [show (1889568 * k + 1622897) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4868692) = 2834352 * k + 2434346 := by
    unfold C
    simp [show (5668704 * k + 4868692) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2434346) = 1417176 * k + 1217173 := by
    unfold C
    simp [show (2834352 * k + 2434346) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1217173) = 4251528 * k + 3651520 := by
    unfold C
    simp [show (1417176 * k + 1217173) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3651520) = 2125764 * k + 1825760 := by
    unfold C
    simp [show (4251528 * k + 3651520) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1825760) = 1062882 * k + 912880 := by
    unfold C
    simp [show (2125764 * k + 1825760) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 912880) = 531441 * k + 456440 := by
    unfold C
    simp [show (1062882 * k + 912880) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 900591) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 900591)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_901343 : ∀ k : Nat,
    iterate (1048576 * k + 901343) 32 = 531441 * k + 456821 ∧
      531441 * k + 456821 < 1048576 * k + 901343 := by
  intro k
  have h1 : C (1048576 * k + 901343) = 3145728 * k + 2704030 := by
    unfold C
    simp [show (1048576 * k + 901343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2704030) = 1572864 * k + 1352015 := by
    unfold C
    simp [show (3145728 * k + 2704030) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1352015) = 4718592 * k + 4056046 := by
    unfold C
    simp [show (1572864 * k + 1352015) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4056046) = 2359296 * k + 2028023 := by
    unfold C
    simp [show (4718592 * k + 4056046) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2028023) = 7077888 * k + 6084070 := by
    unfold C
    simp [show (2359296 * k + 2028023) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6084070) = 3538944 * k + 3042035 := by
    unfold C
    simp [show (7077888 * k + 6084070) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3042035) = 10616832 * k + 9126106 := by
    unfold C
    simp [show (3538944 * k + 3042035) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9126106) = 5308416 * k + 4563053 := by
    unfold C
    simp [show (10616832 * k + 9126106) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4563053) = 15925248 * k + 13689160 := by
    unfold C
    simp [show (5308416 * k + 4563053) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13689160) = 7962624 * k + 6844580 := by
    unfold C
    simp [show (15925248 * k + 13689160) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6844580) = 3981312 * k + 3422290 := by
    unfold C
    simp [show (7962624 * k + 6844580) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3422290) = 1990656 * k + 1711145 := by
    unfold C
    simp [show (3981312 * k + 3422290) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1711145) = 5971968 * k + 5133436 := by
    unfold C
    simp [show (1990656 * k + 1711145) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5133436) = 2985984 * k + 2566718 := by
    unfold C
    simp [show (5971968 * k + 5133436) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2566718) = 1492992 * k + 1283359 := by
    unfold C
    simp [show (2985984 * k + 2566718) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1283359) = 4478976 * k + 3850078 := by
    unfold C
    simp [show (1492992 * k + 1283359) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3850078) = 2239488 * k + 1925039 := by
    unfold C
    simp [show (4478976 * k + 3850078) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1925039) = 6718464 * k + 5775118 := by
    unfold C
    simp [show (2239488 * k + 1925039) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5775118) = 3359232 * k + 2887559 := by
    unfold C
    simp [show (6718464 * k + 5775118) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2887559) = 10077696 * k + 8662678 := by
    unfold C
    simp [show (3359232 * k + 2887559) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8662678) = 5038848 * k + 4331339 := by
    unfold C
    simp [show (10077696 * k + 8662678) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4331339) = 15116544 * k + 12994018 := by
    unfold C
    simp [show (5038848 * k + 4331339) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12994018) = 7558272 * k + 6497009 := by
    unfold C
    simp [show (15116544 * k + 12994018) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6497009) = 22674816 * k + 19491028 := by
    unfold C
    simp [show (7558272 * k + 6497009) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 19491028) = 11337408 * k + 9745514 := by
    unfold C
    simp [show (22674816 * k + 19491028) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9745514) = 5668704 * k + 4872757 := by
    unfold C
    simp [show (11337408 * k + 9745514) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4872757) = 17006112 * k + 14618272 := by
    unfold C
    simp [show (5668704 * k + 4872757) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 14618272) = 8503056 * k + 7309136 := by
    unfold C
    simp [show (17006112 * k + 14618272) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7309136) = 4251528 * k + 3654568 := by
    unfold C
    simp [show (8503056 * k + 7309136) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3654568) = 2125764 * k + 1827284 := by
    unfold C
    simp [show (4251528 * k + 3654568) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1827284) = 1062882 * k + 913642 := by
    unfold C
    simp [show (2125764 * k + 1827284) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 913642) = 531441 * k + 456821 := by
    unfold C
    simp [show (1062882 * k + 913642) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 901343) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 901343)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_901359 : ∀ k : Nat,
    iterate (1048576 * k + 901359) 32 = 531441 * k + 456829 ∧
      531441 * k + 456829 < 1048576 * k + 901359 := by
  intro k
  have h1 : C (1048576 * k + 901359) = 3145728 * k + 2704078 := by
    unfold C
    simp [show (1048576 * k + 901359) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2704078) = 1572864 * k + 1352039 := by
    unfold C
    simp [show (3145728 * k + 2704078) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1352039) = 4718592 * k + 4056118 := by
    unfold C
    simp [show (1572864 * k + 1352039) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4056118) = 2359296 * k + 2028059 := by
    unfold C
    simp [show (4718592 * k + 4056118) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2028059) = 7077888 * k + 6084178 := by
    unfold C
    simp [show (2359296 * k + 2028059) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6084178) = 3538944 * k + 3042089 := by
    unfold C
    simp [show (7077888 * k + 6084178) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3042089) = 10616832 * k + 9126268 := by
    unfold C
    simp [show (3538944 * k + 3042089) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9126268) = 5308416 * k + 4563134 := by
    unfold C
    simp [show (10616832 * k + 9126268) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4563134) = 2654208 * k + 2281567 := by
    unfold C
    simp [show (5308416 * k + 4563134) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2281567) = 7962624 * k + 6844702 := by
    unfold C
    simp [show (2654208 * k + 2281567) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6844702) = 3981312 * k + 3422351 := by
    unfold C
    simp [show (7962624 * k + 6844702) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3422351) = 11943936 * k + 10267054 := by
    unfold C
    simp [show (3981312 * k + 3422351) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10267054) = 5971968 * k + 5133527 := by
    unfold C
    simp [show (11943936 * k + 10267054) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5133527) = 17915904 * k + 15400582 := by
    unfold C
    simp [show (5971968 * k + 5133527) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15400582) = 8957952 * k + 7700291 := by
    unfold C
    simp [show (17915904 * k + 15400582) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7700291) = 26873856 * k + 23100874 := by
    unfold C
    simp [show (8957952 * k + 7700291) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23100874) = 13436928 * k + 11550437 := by
    unfold C
    simp [show (26873856 * k + 23100874) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11550437) = 40310784 * k + 34651312 := by
    unfold C
    simp [show (13436928 * k + 11550437) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 34651312) = 20155392 * k + 17325656 := by
    unfold C
    simp [show (40310784 * k + 34651312) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 17325656) = 10077696 * k + 8662828 := by
    unfold C
    simp [show (20155392 * k + 17325656) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8662828) = 5038848 * k + 4331414 := by
    unfold C
    simp [show (10077696 * k + 8662828) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4331414) = 2519424 * k + 2165707 := by
    unfold C
    simp [show (5038848 * k + 4331414) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2165707) = 7558272 * k + 6497122 := by
    unfold C
    simp [show (2519424 * k + 2165707) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6497122) = 3779136 * k + 3248561 := by
    unfold C
    simp [show (7558272 * k + 6497122) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3248561) = 11337408 * k + 9745684 := by
    unfold C
    simp [show (3779136 * k + 3248561) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9745684) = 5668704 * k + 4872842 := by
    unfold C
    simp [show (11337408 * k + 9745684) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4872842) = 2834352 * k + 2436421 := by
    unfold C
    simp [show (5668704 * k + 4872842) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2436421) = 8503056 * k + 7309264 := by
    unfold C
    simp [show (2834352 * k + 2436421) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7309264) = 4251528 * k + 3654632 := by
    unfold C
    simp [show (8503056 * k + 7309264) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3654632) = 2125764 * k + 1827316 := by
    unfold C
    simp [show (4251528 * k + 3654632) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1827316) = 1062882 * k + 913658 := by
    unfold C
    simp [show (2125764 * k + 1827316) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 913658) = 531441 * k + 456829 := by
    unfold C
    simp [show (1062882 * k + 913658) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 901359) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 901359)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_901787 : ∀ k : Nat,
    iterate (1048576 * k + 901787) 32 = 531441 * k + 457046 ∧
      531441 * k + 457046 < 1048576 * k + 901787 := by
  intro k
  have h1 : C (1048576 * k + 901787) = 3145728 * k + 2705362 := by
    unfold C
    simp [show (1048576 * k + 901787) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2705362) = 1572864 * k + 1352681 := by
    unfold C
    simp [show (3145728 * k + 2705362) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1352681) = 4718592 * k + 4058044 := by
    unfold C
    simp [show (1572864 * k + 1352681) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4058044) = 2359296 * k + 2029022 := by
    unfold C
    simp [show (4718592 * k + 4058044) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2029022) = 1179648 * k + 1014511 := by
    unfold C
    simp [show (2359296 * k + 2029022) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1014511) = 3538944 * k + 3043534 := by
    unfold C
    simp [show (1179648 * k + 1014511) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3043534) = 1769472 * k + 1521767 := by
    unfold C
    simp [show (3538944 * k + 3043534) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1521767) = 5308416 * k + 4565302 := by
    unfold C
    simp [show (1769472 * k + 1521767) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4565302) = 2654208 * k + 2282651 := by
    unfold C
    simp [show (5308416 * k + 4565302) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2282651) = 7962624 * k + 6847954 := by
    unfold C
    simp [show (2654208 * k + 2282651) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6847954) = 3981312 * k + 3423977 := by
    unfold C
    simp [show (7962624 * k + 6847954) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3423977) = 11943936 * k + 10271932 := by
    unfold C
    simp [show (3981312 * k + 3423977) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10271932) = 5971968 * k + 5135966 := by
    unfold C
    simp [show (11943936 * k + 10271932) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5135966) = 2985984 * k + 2567983 := by
    unfold C
    simp [show (5971968 * k + 5135966) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2567983) = 8957952 * k + 7703950 := by
    unfold C
    simp [show (2985984 * k + 2567983) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7703950) = 4478976 * k + 3851975 := by
    unfold C
    simp [show (8957952 * k + 7703950) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3851975) = 13436928 * k + 11555926 := by
    unfold C
    simp [show (4478976 * k + 3851975) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11555926) = 6718464 * k + 5777963 := by
    unfold C
    simp [show (13436928 * k + 11555926) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5777963) = 20155392 * k + 17333890 := by
    unfold C
    simp [show (6718464 * k + 5777963) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17333890) = 10077696 * k + 8666945 := by
    unfold C
    simp [show (20155392 * k + 17333890) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8666945) = 30233088 * k + 26000836 := by
    unfold C
    simp [show (10077696 * k + 8666945) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 26000836) = 15116544 * k + 13000418 := by
    unfold C
    simp [show (30233088 * k + 26000836) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13000418) = 7558272 * k + 6500209 := by
    unfold C
    simp [show (15116544 * k + 13000418) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6500209) = 22674816 * k + 19500628 := by
    unfold C
    simp [show (7558272 * k + 6500209) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 19500628) = 11337408 * k + 9750314 := by
    unfold C
    simp [show (22674816 * k + 19500628) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9750314) = 5668704 * k + 4875157 := by
    unfold C
    simp [show (11337408 * k + 9750314) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4875157) = 17006112 * k + 14625472 := by
    unfold C
    simp [show (5668704 * k + 4875157) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 14625472) = 8503056 * k + 7312736 := by
    unfold C
    simp [show (17006112 * k + 14625472) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7312736) = 4251528 * k + 3656368 := by
    unfold C
    simp [show (8503056 * k + 7312736) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3656368) = 2125764 * k + 1828184 := by
    unfold C
    simp [show (4251528 * k + 3656368) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1828184) = 1062882 * k + 914092 := by
    unfold C
    simp [show (2125764 * k + 1828184) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 914092) = 531441 * k + 457046 := by
    unfold C
    simp [show (1062882 * k + 914092) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 901787) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 901787)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_901791 : ∀ k : Nat,
    iterate (1048576 * k + 901791) 32 = 531441 * k + 457048 ∧
      531441 * k + 457048 < 1048576 * k + 901791 := by
  intro k
  have h1 : C (1048576 * k + 901791) = 3145728 * k + 2705374 := by
    unfold C
    simp [show (1048576 * k + 901791) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2705374) = 1572864 * k + 1352687 := by
    unfold C
    simp [show (3145728 * k + 2705374) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1352687) = 4718592 * k + 4058062 := by
    unfold C
    simp [show (1572864 * k + 1352687) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4058062) = 2359296 * k + 2029031 := by
    unfold C
    simp [show (4718592 * k + 4058062) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2029031) = 7077888 * k + 6087094 := by
    unfold C
    simp [show (2359296 * k + 2029031) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6087094) = 3538944 * k + 3043547 := by
    unfold C
    simp [show (7077888 * k + 6087094) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3043547) = 10616832 * k + 9130642 := by
    unfold C
    simp [show (3538944 * k + 3043547) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9130642) = 5308416 * k + 4565321 := by
    unfold C
    simp [show (10616832 * k + 9130642) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4565321) = 15925248 * k + 13695964 := by
    unfold C
    simp [show (5308416 * k + 4565321) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13695964) = 7962624 * k + 6847982 := by
    unfold C
    simp [show (15925248 * k + 13695964) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6847982) = 3981312 * k + 3423991 := by
    unfold C
    simp [show (7962624 * k + 6847982) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3423991) = 11943936 * k + 10271974 := by
    unfold C
    simp [show (3981312 * k + 3423991) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10271974) = 5971968 * k + 5135987 := by
    unfold C
    simp [show (11943936 * k + 10271974) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5135987) = 17915904 * k + 15407962 := by
    unfold C
    simp [show (5971968 * k + 5135987) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15407962) = 8957952 * k + 7703981 := by
    unfold C
    simp [show (17915904 * k + 15407962) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7703981) = 26873856 * k + 23111944 := by
    unfold C
    simp [show (8957952 * k + 7703981) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23111944) = 13436928 * k + 11555972 := by
    unfold C
    simp [show (26873856 * k + 23111944) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11555972) = 6718464 * k + 5777986 := by
    unfold C
    simp [show (13436928 * k + 11555972) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5777986) = 3359232 * k + 2888993 := by
    unfold C
    simp [show (6718464 * k + 5777986) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2888993) = 10077696 * k + 8666980 := by
    unfold C
    simp [show (3359232 * k + 2888993) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8666980) = 5038848 * k + 4333490 := by
    unfold C
    simp [show (10077696 * k + 8666980) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4333490) = 2519424 * k + 2166745 := by
    unfold C
    simp [show (5038848 * k + 4333490) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2166745) = 7558272 * k + 6500236 := by
    unfold C
    simp [show (2519424 * k + 2166745) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6500236) = 3779136 * k + 3250118 := by
    unfold C
    simp [show (7558272 * k + 6500236) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3250118) = 1889568 * k + 1625059 := by
    unfold C
    simp [show (3779136 * k + 3250118) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1625059) = 5668704 * k + 4875178 := by
    unfold C
    simp [show (1889568 * k + 1625059) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4875178) = 2834352 * k + 2437589 := by
    unfold C
    simp [show (5668704 * k + 4875178) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2437589) = 8503056 * k + 7312768 := by
    unfold C
    simp [show (2834352 * k + 2437589) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7312768) = 4251528 * k + 3656384 := by
    unfold C
    simp [show (8503056 * k + 7312768) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3656384) = 2125764 * k + 1828192 := by
    unfold C
    simp [show (4251528 * k + 3656384) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1828192) = 1062882 * k + 914096 := by
    unfold C
    simp [show (2125764 * k + 1828192) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 914096) = 531441 * k + 457048 := by
    unfold C
    simp [show (1062882 * k + 914096) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 901791) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 901791)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_901823 : ∀ k : Nat,
    iterate (1048576 * k + 901823) 32 = 531441 * k + 457064 ∧
      531441 * k + 457064 < 1048576 * k + 901823 := by
  intro k
  have h1 : C (1048576 * k + 901823) = 3145728 * k + 2705470 := by
    unfold C
    simp [show (1048576 * k + 901823) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2705470) = 1572864 * k + 1352735 := by
    unfold C
    simp [show (3145728 * k + 2705470) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1352735) = 4718592 * k + 4058206 := by
    unfold C
    simp [show (1572864 * k + 1352735) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4058206) = 2359296 * k + 2029103 := by
    unfold C
    simp [show (4718592 * k + 4058206) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2029103) = 7077888 * k + 6087310 := by
    unfold C
    simp [show (2359296 * k + 2029103) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6087310) = 3538944 * k + 3043655 := by
    unfold C
    simp [show (7077888 * k + 6087310) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3043655) = 10616832 * k + 9130966 := by
    unfold C
    simp [show (3538944 * k + 3043655) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9130966) = 5308416 * k + 4565483 := by
    unfold C
    simp [show (10616832 * k + 9130966) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4565483) = 15925248 * k + 13696450 := by
    unfold C
    simp [show (5308416 * k + 4565483) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13696450) = 7962624 * k + 6848225 := by
    unfold C
    simp [show (15925248 * k + 13696450) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6848225) = 23887872 * k + 20544676 := by
    unfold C
    simp [show (7962624 * k + 6848225) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 20544676) = 11943936 * k + 10272338 := by
    unfold C
    simp [show (23887872 * k + 20544676) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10272338) = 5971968 * k + 5136169 := by
    unfold C
    simp [show (11943936 * k + 10272338) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5136169) = 17915904 * k + 15408508 := by
    unfold C
    simp [show (5971968 * k + 5136169) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15408508) = 8957952 * k + 7704254 := by
    unfold C
    simp [show (17915904 * k + 15408508) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7704254) = 4478976 * k + 3852127 := by
    unfold C
    simp [show (8957952 * k + 7704254) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3852127) = 13436928 * k + 11556382 := by
    unfold C
    simp [show (4478976 * k + 3852127) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11556382) = 6718464 * k + 5778191 := by
    unfold C
    simp [show (13436928 * k + 11556382) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5778191) = 20155392 * k + 17334574 := by
    unfold C
    simp [show (6718464 * k + 5778191) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17334574) = 10077696 * k + 8667287 := by
    unfold C
    simp [show (20155392 * k + 17334574) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8667287) = 30233088 * k + 26001862 := by
    unfold C
    simp [show (10077696 * k + 8667287) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 26001862) = 15116544 * k + 13000931 := by
    unfold C
    simp [show (30233088 * k + 26001862) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13000931) = 45349632 * k + 39002794 := by
    unfold C
    simp [show (15116544 * k + 13000931) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 39002794) = 22674816 * k + 19501397 := by
    unfold C
    simp [show (45349632 * k + 39002794) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 19501397) = 68024448 * k + 58504192 := by
    unfold C
    simp [show (22674816 * k + 19501397) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 58504192) = 34012224 * k + 29252096 := by
    unfold C
    simp [show (68024448 * k + 58504192) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 29252096) = 17006112 * k + 14626048 := by
    unfold C
    simp [show (34012224 * k + 29252096) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 14626048) = 8503056 * k + 7313024 := by
    unfold C
    simp [show (17006112 * k + 14626048) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7313024) = 4251528 * k + 3656512 := by
    unfold C
    simp [show (8503056 * k + 7313024) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3656512) = 2125764 * k + 1828256 := by
    unfold C
    simp [show (4251528 * k + 3656512) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1828256) = 1062882 * k + 914128 := by
    unfold C
    simp [show (2125764 * k + 1828256) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 914128) = 531441 * k + 457064 := by
    unfold C
    simp [show (1062882 * k + 914128) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 901823) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 901823)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_902047 : ∀ k : Nat,
    iterate (1048576 * k + 902047) 32 = 531441 * k + 457178 ∧
      531441 * k + 457178 < 1048576 * k + 902047 := by
  intro k
  have h1 : C (1048576 * k + 902047) = 3145728 * k + 2706142 := by
    unfold C
    simp [show (1048576 * k + 902047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2706142) = 1572864 * k + 1353071 := by
    unfold C
    simp [show (3145728 * k + 2706142) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1353071) = 4718592 * k + 4059214 := by
    unfold C
    simp [show (1572864 * k + 1353071) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4059214) = 2359296 * k + 2029607 := by
    unfold C
    simp [show (4718592 * k + 4059214) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2029607) = 7077888 * k + 6088822 := by
    unfold C
    simp [show (2359296 * k + 2029607) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6088822) = 3538944 * k + 3044411 := by
    unfold C
    simp [show (7077888 * k + 6088822) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3044411) = 10616832 * k + 9133234 := by
    unfold C
    simp [show (3538944 * k + 3044411) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9133234) = 5308416 * k + 4566617 := by
    unfold C
    simp [show (10616832 * k + 9133234) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4566617) = 15925248 * k + 13699852 := by
    unfold C
    simp [show (5308416 * k + 4566617) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13699852) = 7962624 * k + 6849926 := by
    unfold C
    simp [show (15925248 * k + 13699852) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6849926) = 3981312 * k + 3424963 := by
    unfold C
    simp [show (7962624 * k + 6849926) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3424963) = 11943936 * k + 10274890 := by
    unfold C
    simp [show (3981312 * k + 3424963) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10274890) = 5971968 * k + 5137445 := by
    unfold C
    simp [show (11943936 * k + 10274890) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5137445) = 17915904 * k + 15412336 := by
    unfold C
    simp [show (5971968 * k + 5137445) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15412336) = 8957952 * k + 7706168 := by
    unfold C
    simp [show (17915904 * k + 15412336) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7706168) = 4478976 * k + 3853084 := by
    unfold C
    simp [show (8957952 * k + 7706168) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3853084) = 2239488 * k + 1926542 := by
    unfold C
    simp [show (4478976 * k + 3853084) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1926542) = 1119744 * k + 963271 := by
    unfold C
    simp [show (2239488 * k + 1926542) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 963271) = 3359232 * k + 2889814 := by
    unfold C
    simp [show (1119744 * k + 963271) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2889814) = 1679616 * k + 1444907 := by
    unfold C
    simp [show (3359232 * k + 2889814) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1444907) = 5038848 * k + 4334722 := by
    unfold C
    simp [show (1679616 * k + 1444907) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4334722) = 2519424 * k + 2167361 := by
    unfold C
    simp [show (5038848 * k + 4334722) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2167361) = 7558272 * k + 6502084 := by
    unfold C
    simp [show (2519424 * k + 2167361) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6502084) = 3779136 * k + 3251042 := by
    unfold C
    simp [show (7558272 * k + 6502084) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3251042) = 1889568 * k + 1625521 := by
    unfold C
    simp [show (3779136 * k + 3251042) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1625521) = 5668704 * k + 4876564 := by
    unfold C
    simp [show (1889568 * k + 1625521) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4876564) = 2834352 * k + 2438282 := by
    unfold C
    simp [show (5668704 * k + 4876564) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2438282) = 1417176 * k + 1219141 := by
    unfold C
    simp [show (2834352 * k + 2438282) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1219141) = 4251528 * k + 3657424 := by
    unfold C
    simp [show (1417176 * k + 1219141) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3657424) = 2125764 * k + 1828712 := by
    unfold C
    simp [show (4251528 * k + 3657424) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1828712) = 1062882 * k + 914356 := by
    unfold C
    simp [show (2125764 * k + 1828712) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 914356) = 531441 * k + 457178 := by
    unfold C
    simp [show (1062882 * k + 914356) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 902047) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 902047)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_902527 : ∀ k : Nat,
    iterate (1048576 * k + 902527) 32 = 531441 * k + 457421 ∧
      531441 * k + 457421 < 1048576 * k + 902527 := by
  intro k
  have h1 : C (1048576 * k + 902527) = 3145728 * k + 2707582 := by
    unfold C
    simp [show (1048576 * k + 902527) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2707582) = 1572864 * k + 1353791 := by
    unfold C
    simp [show (3145728 * k + 2707582) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1353791) = 4718592 * k + 4061374 := by
    unfold C
    simp [show (1572864 * k + 1353791) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4061374) = 2359296 * k + 2030687 := by
    unfold C
    simp [show (4718592 * k + 4061374) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2030687) = 7077888 * k + 6092062 := by
    unfold C
    simp [show (2359296 * k + 2030687) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6092062) = 3538944 * k + 3046031 := by
    unfold C
    simp [show (7077888 * k + 6092062) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3046031) = 10616832 * k + 9138094 := by
    unfold C
    simp [show (3538944 * k + 3046031) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9138094) = 5308416 * k + 4569047 := by
    unfold C
    simp [show (10616832 * k + 9138094) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4569047) = 15925248 * k + 13707142 := by
    unfold C
    simp [show (5308416 * k + 4569047) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13707142) = 7962624 * k + 6853571 := by
    unfold C
    simp [show (15925248 * k + 13707142) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6853571) = 23887872 * k + 20560714 := by
    unfold C
    simp [show (7962624 * k + 6853571) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 20560714) = 11943936 * k + 10280357 := by
    unfold C
    simp [show (23887872 * k + 20560714) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10280357) = 35831808 * k + 30841072 := by
    unfold C
    simp [show (11943936 * k + 10280357) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 30841072) = 17915904 * k + 15420536 := by
    unfold C
    simp [show (35831808 * k + 30841072) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 15420536) = 8957952 * k + 7710268 := by
    unfold C
    simp [show (17915904 * k + 15420536) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7710268) = 4478976 * k + 3855134 := by
    unfold C
    simp [show (8957952 * k + 7710268) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3855134) = 2239488 * k + 1927567 := by
    unfold C
    simp [show (4478976 * k + 3855134) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1927567) = 6718464 * k + 5782702 := by
    unfold C
    simp [show (2239488 * k + 1927567) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5782702) = 3359232 * k + 2891351 := by
    unfold C
    simp [show (6718464 * k + 5782702) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2891351) = 10077696 * k + 8674054 := by
    unfold C
    simp [show (3359232 * k + 2891351) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8674054) = 5038848 * k + 4337027 := by
    unfold C
    simp [show (10077696 * k + 8674054) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4337027) = 15116544 * k + 13011082 := by
    unfold C
    simp [show (5038848 * k + 4337027) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13011082) = 7558272 * k + 6505541 := by
    unfold C
    simp [show (15116544 * k + 13011082) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6505541) = 22674816 * k + 19516624 := by
    unfold C
    simp [show (7558272 * k + 6505541) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 19516624) = 11337408 * k + 9758312 := by
    unfold C
    simp [show (22674816 * k + 19516624) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9758312) = 5668704 * k + 4879156 := by
    unfold C
    simp [show (11337408 * k + 9758312) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4879156) = 2834352 * k + 2439578 := by
    unfold C
    simp [show (5668704 * k + 4879156) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2439578) = 1417176 * k + 1219789 := by
    unfold C
    simp [show (2834352 * k + 2439578) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1219789) = 4251528 * k + 3659368 := by
    unfold C
    simp [show (1417176 * k + 1219789) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3659368) = 2125764 * k + 1829684 := by
    unfold C
    simp [show (4251528 * k + 3659368) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1829684) = 1062882 * k + 914842 := by
    unfold C
    simp [show (2125764 * k + 1829684) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 914842) = 531441 * k + 457421 := by
    unfold C
    simp [show (1062882 * k + 914842) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 902527) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 902527)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_903655 : ∀ k : Nat,
    iterate (1048576 * k + 903655) 32 = 531441 * k + 457993 ∧
      531441 * k + 457993 < 1048576 * k + 903655 := by
  intro k
  have h1 : C (1048576 * k + 903655) = 3145728 * k + 2710966 := by
    unfold C
    simp [show (1048576 * k + 903655) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2710966) = 1572864 * k + 1355483 := by
    unfold C
    simp [show (3145728 * k + 2710966) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1355483) = 4718592 * k + 4066450 := by
    unfold C
    simp [show (1572864 * k + 1355483) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4066450) = 2359296 * k + 2033225 := by
    unfold C
    simp [show (4718592 * k + 4066450) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2033225) = 7077888 * k + 6099676 := by
    unfold C
    simp [show (2359296 * k + 2033225) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6099676) = 3538944 * k + 3049838 := by
    unfold C
    simp [show (7077888 * k + 6099676) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3049838) = 1769472 * k + 1524919 := by
    unfold C
    simp [show (3538944 * k + 3049838) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1524919) = 5308416 * k + 4574758 := by
    unfold C
    simp [show (1769472 * k + 1524919) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4574758) = 2654208 * k + 2287379 := by
    unfold C
    simp [show (5308416 * k + 4574758) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2287379) = 7962624 * k + 6862138 := by
    unfold C
    simp [show (2654208 * k + 2287379) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6862138) = 3981312 * k + 3431069 := by
    unfold C
    simp [show (7962624 * k + 6862138) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3431069) = 11943936 * k + 10293208 := by
    unfold C
    simp [show (3981312 * k + 3431069) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10293208) = 5971968 * k + 5146604 := by
    unfold C
    simp [show (11943936 * k + 10293208) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5146604) = 2985984 * k + 2573302 := by
    unfold C
    simp [show (5971968 * k + 5146604) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2573302) = 1492992 * k + 1286651 := by
    unfold C
    simp [show (2985984 * k + 2573302) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1286651) = 4478976 * k + 3859954 := by
    unfold C
    simp [show (1492992 * k + 1286651) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3859954) = 2239488 * k + 1929977 := by
    unfold C
    simp [show (4478976 * k + 3859954) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1929977) = 6718464 * k + 5789932 := by
    unfold C
    simp [show (2239488 * k + 1929977) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5789932) = 3359232 * k + 2894966 := by
    unfold C
    simp [show (6718464 * k + 5789932) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2894966) = 1679616 * k + 1447483 := by
    unfold C
    simp [show (3359232 * k + 2894966) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1447483) = 5038848 * k + 4342450 := by
    unfold C
    simp [show (1679616 * k + 1447483) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4342450) = 2519424 * k + 2171225 := by
    unfold C
    simp [show (5038848 * k + 4342450) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2171225) = 7558272 * k + 6513676 := by
    unfold C
    simp [show (2519424 * k + 2171225) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6513676) = 3779136 * k + 3256838 := by
    unfold C
    simp [show (7558272 * k + 6513676) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3256838) = 1889568 * k + 1628419 := by
    unfold C
    simp [show (3779136 * k + 3256838) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1628419) = 5668704 * k + 4885258 := by
    unfold C
    simp [show (1889568 * k + 1628419) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4885258) = 2834352 * k + 2442629 := by
    unfold C
    simp [show (5668704 * k + 4885258) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2442629) = 8503056 * k + 7327888 := by
    unfold C
    simp [show (2834352 * k + 2442629) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7327888) = 4251528 * k + 3663944 := by
    unfold C
    simp [show (8503056 * k + 7327888) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3663944) = 2125764 * k + 1831972 := by
    unfold C
    simp [show (4251528 * k + 3663944) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1831972) = 1062882 * k + 915986 := by
    unfold C
    simp [show (2125764 * k + 1831972) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 915986) = 531441 * k + 457993 := by
    unfold C
    simp [show (1062882 * k + 915986) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 903655) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 903655)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_904319 : ∀ k : Nat,
    iterate (1048576 * k + 904319) 32 = 531441 * k + 458329 ∧
      531441 * k + 458329 < 1048576 * k + 904319 := by
  intro k
  have h1 : C (1048576 * k + 904319) = 3145728 * k + 2712958 := by
    unfold C
    simp [show (1048576 * k + 904319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2712958) = 1572864 * k + 1356479 := by
    unfold C
    simp [show (3145728 * k + 2712958) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1356479) = 4718592 * k + 4069438 := by
    unfold C
    simp [show (1572864 * k + 1356479) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4069438) = 2359296 * k + 2034719 := by
    unfold C
    simp [show (4718592 * k + 4069438) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2034719) = 7077888 * k + 6104158 := by
    unfold C
    simp [show (2359296 * k + 2034719) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6104158) = 3538944 * k + 3052079 := by
    unfold C
    simp [show (7077888 * k + 6104158) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3052079) = 10616832 * k + 9156238 := by
    unfold C
    simp [show (3538944 * k + 3052079) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9156238) = 5308416 * k + 4578119 := by
    unfold C
    simp [show (10616832 * k + 9156238) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4578119) = 15925248 * k + 13734358 := by
    unfold C
    simp [show (5308416 * k + 4578119) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13734358) = 7962624 * k + 6867179 := by
    unfold C
    simp [show (15925248 * k + 13734358) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6867179) = 23887872 * k + 20601538 := by
    unfold C
    simp [show (7962624 * k + 6867179) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 20601538) = 11943936 * k + 10300769 := by
    unfold C
    simp [show (23887872 * k + 20601538) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10300769) = 35831808 * k + 30902308 := by
    unfold C
    simp [show (11943936 * k + 10300769) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 30902308) = 17915904 * k + 15451154 := by
    unfold C
    simp [show (35831808 * k + 30902308) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 15451154) = 8957952 * k + 7725577 := by
    unfold C
    simp [show (17915904 * k + 15451154) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7725577) = 26873856 * k + 23176732 := by
    unfold C
    simp [show (8957952 * k + 7725577) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23176732) = 13436928 * k + 11588366 := by
    unfold C
    simp [show (26873856 * k + 23176732) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11588366) = 6718464 * k + 5794183 := by
    unfold C
    simp [show (13436928 * k + 11588366) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5794183) = 20155392 * k + 17382550 := by
    unfold C
    simp [show (6718464 * k + 5794183) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17382550) = 10077696 * k + 8691275 := by
    unfold C
    simp [show (20155392 * k + 17382550) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8691275) = 30233088 * k + 26073826 := by
    unfold C
    simp [show (10077696 * k + 8691275) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 26073826) = 15116544 * k + 13036913 := by
    unfold C
    simp [show (30233088 * k + 26073826) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13036913) = 45349632 * k + 39110740 := by
    unfold C
    simp [show (15116544 * k + 13036913) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 39110740) = 22674816 * k + 19555370 := by
    unfold C
    simp [show (45349632 * k + 39110740) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 19555370) = 11337408 * k + 9777685 := by
    unfold C
    simp [show (22674816 * k + 19555370) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9777685) = 34012224 * k + 29333056 := by
    unfold C
    simp [show (11337408 * k + 9777685) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 29333056) = 17006112 * k + 14666528 := by
    unfold C
    simp [show (34012224 * k + 29333056) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 14666528) = 8503056 * k + 7333264 := by
    unfold C
    simp [show (17006112 * k + 14666528) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7333264) = 4251528 * k + 3666632 := by
    unfold C
    simp [show (8503056 * k + 7333264) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3666632) = 2125764 * k + 1833316 := by
    unfold C
    simp [show (4251528 * k + 3666632) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1833316) = 1062882 * k + 916658 := by
    unfold C
    simp [show (2125764 * k + 1833316) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 916658) = 531441 * k + 458329 := by
    unfold C
    simp [show (1062882 * k + 916658) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 904319) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 904319)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_904859 : ∀ k : Nat,
    iterate (1048576 * k + 904859) 32 = 531441 * k + 458603 ∧
      531441 * k + 458603 < 1048576 * k + 904859 := by
  intro k
  have h1 : C (1048576 * k + 904859) = 3145728 * k + 2714578 := by
    unfold C
    simp [show (1048576 * k + 904859) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2714578) = 1572864 * k + 1357289 := by
    unfold C
    simp [show (3145728 * k + 2714578) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1357289) = 4718592 * k + 4071868 := by
    unfold C
    simp [show (1572864 * k + 1357289) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4071868) = 2359296 * k + 2035934 := by
    unfold C
    simp [show (4718592 * k + 4071868) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2035934) = 1179648 * k + 1017967 := by
    unfold C
    simp [show (2359296 * k + 2035934) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1017967) = 3538944 * k + 3053902 := by
    unfold C
    simp [show (1179648 * k + 1017967) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3053902) = 1769472 * k + 1526951 := by
    unfold C
    simp [show (3538944 * k + 3053902) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1526951) = 5308416 * k + 4580854 := by
    unfold C
    simp [show (1769472 * k + 1526951) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4580854) = 2654208 * k + 2290427 := by
    unfold C
    simp [show (5308416 * k + 4580854) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2290427) = 7962624 * k + 6871282 := by
    unfold C
    simp [show (2654208 * k + 2290427) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6871282) = 3981312 * k + 3435641 := by
    unfold C
    simp [show (7962624 * k + 6871282) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3435641) = 11943936 * k + 10306924 := by
    unfold C
    simp [show (3981312 * k + 3435641) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10306924) = 5971968 * k + 5153462 := by
    unfold C
    simp [show (11943936 * k + 10306924) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5153462) = 2985984 * k + 2576731 := by
    unfold C
    simp [show (5971968 * k + 5153462) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2576731) = 8957952 * k + 7730194 := by
    unfold C
    simp [show (2985984 * k + 2576731) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7730194) = 4478976 * k + 3865097 := by
    unfold C
    simp [show (8957952 * k + 7730194) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3865097) = 13436928 * k + 11595292 := by
    unfold C
    simp [show (4478976 * k + 3865097) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11595292) = 6718464 * k + 5797646 := by
    unfold C
    simp [show (13436928 * k + 11595292) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5797646) = 3359232 * k + 2898823 := by
    unfold C
    simp [show (6718464 * k + 5797646) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2898823) = 10077696 * k + 8696470 := by
    unfold C
    simp [show (3359232 * k + 2898823) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8696470) = 5038848 * k + 4348235 := by
    unfold C
    simp [show (10077696 * k + 8696470) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4348235) = 15116544 * k + 13044706 := by
    unfold C
    simp [show (5038848 * k + 4348235) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13044706) = 7558272 * k + 6522353 := by
    unfold C
    simp [show (15116544 * k + 13044706) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6522353) = 22674816 * k + 19567060 := by
    unfold C
    simp [show (7558272 * k + 6522353) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 19567060) = 11337408 * k + 9783530 := by
    unfold C
    simp [show (22674816 * k + 19567060) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9783530) = 5668704 * k + 4891765 := by
    unfold C
    simp [show (11337408 * k + 9783530) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4891765) = 17006112 * k + 14675296 := by
    unfold C
    simp [show (5668704 * k + 4891765) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 14675296) = 8503056 * k + 7337648 := by
    unfold C
    simp [show (17006112 * k + 14675296) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7337648) = 4251528 * k + 3668824 := by
    unfold C
    simp [show (8503056 * k + 7337648) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3668824) = 2125764 * k + 1834412 := by
    unfold C
    simp [show (4251528 * k + 3668824) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1834412) = 1062882 * k + 917206 := by
    unfold C
    simp [show (2125764 * k + 1834412) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 917206) = 531441 * k + 458603 := by
    unfold C
    simp [show (1062882 * k + 917206) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 904859) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 904859)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_904863 : ∀ k : Nat,
    iterate (1048576 * k + 904863) 32 = 531441 * k + 458605 ∧
      531441 * k + 458605 < 1048576 * k + 904863 := by
  intro k
  have h1 : C (1048576 * k + 904863) = 3145728 * k + 2714590 := by
    unfold C
    simp [show (1048576 * k + 904863) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2714590) = 1572864 * k + 1357295 := by
    unfold C
    simp [show (3145728 * k + 2714590) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1357295) = 4718592 * k + 4071886 := by
    unfold C
    simp [show (1572864 * k + 1357295) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4071886) = 2359296 * k + 2035943 := by
    unfold C
    simp [show (4718592 * k + 4071886) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2035943) = 7077888 * k + 6107830 := by
    unfold C
    simp [show (2359296 * k + 2035943) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6107830) = 3538944 * k + 3053915 := by
    unfold C
    simp [show (7077888 * k + 6107830) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3053915) = 10616832 * k + 9161746 := by
    unfold C
    simp [show (3538944 * k + 3053915) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9161746) = 5308416 * k + 4580873 := by
    unfold C
    simp [show (10616832 * k + 9161746) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4580873) = 15925248 * k + 13742620 := by
    unfold C
    simp [show (5308416 * k + 4580873) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13742620) = 7962624 * k + 6871310 := by
    unfold C
    simp [show (15925248 * k + 13742620) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6871310) = 3981312 * k + 3435655 := by
    unfold C
    simp [show (7962624 * k + 6871310) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3435655) = 11943936 * k + 10306966 := by
    unfold C
    simp [show (3981312 * k + 3435655) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10306966) = 5971968 * k + 5153483 := by
    unfold C
    simp [show (11943936 * k + 10306966) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5153483) = 17915904 * k + 15460450 := by
    unfold C
    simp [show (5971968 * k + 5153483) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15460450) = 8957952 * k + 7730225 := by
    unfold C
    simp [show (17915904 * k + 15460450) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7730225) = 26873856 * k + 23190676 := by
    unfold C
    simp [show (8957952 * k + 7730225) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23190676) = 13436928 * k + 11595338 := by
    unfold C
    simp [show (26873856 * k + 23190676) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11595338) = 6718464 * k + 5797669 := by
    unfold C
    simp [show (13436928 * k + 11595338) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5797669) = 20155392 * k + 17393008 := by
    unfold C
    simp [show (6718464 * k + 5797669) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17393008) = 10077696 * k + 8696504 := by
    unfold C
    simp [show (20155392 * k + 17393008) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8696504) = 5038848 * k + 4348252 := by
    unfold C
    simp [show (10077696 * k + 8696504) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4348252) = 2519424 * k + 2174126 := by
    unfold C
    simp [show (5038848 * k + 4348252) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2174126) = 1259712 * k + 1087063 := by
    unfold C
    simp [show (2519424 * k + 2174126) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1087063) = 3779136 * k + 3261190 := by
    unfold C
    simp [show (1259712 * k + 1087063) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3261190) = 1889568 * k + 1630595 := by
    unfold C
    simp [show (3779136 * k + 3261190) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1630595) = 5668704 * k + 4891786 := by
    unfold C
    simp [show (1889568 * k + 1630595) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4891786) = 2834352 * k + 2445893 := by
    unfold C
    simp [show (5668704 * k + 4891786) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2445893) = 8503056 * k + 7337680 := by
    unfold C
    simp [show (2834352 * k + 2445893) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7337680) = 4251528 * k + 3668840 := by
    unfold C
    simp [show (8503056 * k + 7337680) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3668840) = 2125764 * k + 1834420 := by
    unfold C
    simp [show (4251528 * k + 3668840) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1834420) = 1062882 * k + 917210 := by
    unfold C
    simp [show (2125764 * k + 1834420) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 917210) = 531441 * k + 458605 := by
    unfold C
    simp [show (1062882 * k + 917210) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 904863) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 904863)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_905439 : ∀ k : Nat,
    iterate (1048576 * k + 905439) 32 = 531441 * k + 458897 ∧
      531441 * k + 458897 < 1048576 * k + 905439 := by
  intro k
  have h1 : C (1048576 * k + 905439) = 3145728 * k + 2716318 := by
    unfold C
    simp [show (1048576 * k + 905439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2716318) = 1572864 * k + 1358159 := by
    unfold C
    simp [show (3145728 * k + 2716318) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1358159) = 4718592 * k + 4074478 := by
    unfold C
    simp [show (1572864 * k + 1358159) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4074478) = 2359296 * k + 2037239 := by
    unfold C
    simp [show (4718592 * k + 4074478) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2037239) = 7077888 * k + 6111718 := by
    unfold C
    simp [show (2359296 * k + 2037239) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6111718) = 3538944 * k + 3055859 := by
    unfold C
    simp [show (7077888 * k + 6111718) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3055859) = 10616832 * k + 9167578 := by
    unfold C
    simp [show (3538944 * k + 3055859) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9167578) = 5308416 * k + 4583789 := by
    unfold C
    simp [show (10616832 * k + 9167578) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4583789) = 15925248 * k + 13751368 := by
    unfold C
    simp [show (5308416 * k + 4583789) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13751368) = 7962624 * k + 6875684 := by
    unfold C
    simp [show (15925248 * k + 13751368) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6875684) = 3981312 * k + 3437842 := by
    unfold C
    simp [show (7962624 * k + 6875684) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3437842) = 1990656 * k + 1718921 := by
    unfold C
    simp [show (3981312 * k + 3437842) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1718921) = 5971968 * k + 5156764 := by
    unfold C
    simp [show (1990656 * k + 1718921) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5156764) = 2985984 * k + 2578382 := by
    unfold C
    simp [show (5971968 * k + 5156764) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2578382) = 1492992 * k + 1289191 := by
    unfold C
    simp [show (2985984 * k + 2578382) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1289191) = 4478976 * k + 3867574 := by
    unfold C
    simp [show (1492992 * k + 1289191) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3867574) = 2239488 * k + 1933787 := by
    unfold C
    simp [show (4478976 * k + 3867574) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1933787) = 6718464 * k + 5801362 := by
    unfold C
    simp [show (2239488 * k + 1933787) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5801362) = 3359232 * k + 2900681 := by
    unfold C
    simp [show (6718464 * k + 5801362) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2900681) = 10077696 * k + 8702044 := by
    unfold C
    simp [show (3359232 * k + 2900681) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8702044) = 5038848 * k + 4351022 := by
    unfold C
    simp [show (10077696 * k + 8702044) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4351022) = 2519424 * k + 2175511 := by
    unfold C
    simp [show (5038848 * k + 4351022) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2175511) = 7558272 * k + 6526534 := by
    unfold C
    simp [show (2519424 * k + 2175511) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6526534) = 3779136 * k + 3263267 := by
    unfold C
    simp [show (7558272 * k + 6526534) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3263267) = 11337408 * k + 9789802 := by
    unfold C
    simp [show (3779136 * k + 3263267) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9789802) = 5668704 * k + 4894901 := by
    unfold C
    simp [show (11337408 * k + 9789802) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4894901) = 17006112 * k + 14684704 := by
    unfold C
    simp [show (5668704 * k + 4894901) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 14684704) = 8503056 * k + 7342352 := by
    unfold C
    simp [show (17006112 * k + 14684704) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7342352) = 4251528 * k + 3671176 := by
    unfold C
    simp [show (8503056 * k + 7342352) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3671176) = 2125764 * k + 1835588 := by
    unfold C
    simp [show (4251528 * k + 3671176) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1835588) = 1062882 * k + 917794 := by
    unfold C
    simp [show (2125764 * k + 1835588) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 917794) = 531441 * k + 458897 := by
    unfold C
    simp [show (1062882 * k + 917794) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 905439) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 905439)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_905919 : ∀ k : Nat,
    iterate (1048576 * k + 905919) 32 = 531441 * k + 459140 ∧
      531441 * k + 459140 < 1048576 * k + 905919 := by
  intro k
  have h1 : C (1048576 * k + 905919) = 3145728 * k + 2717758 := by
    unfold C
    simp [show (1048576 * k + 905919) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2717758) = 1572864 * k + 1358879 := by
    unfold C
    simp [show (3145728 * k + 2717758) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1358879) = 4718592 * k + 4076638 := by
    unfold C
    simp [show (1572864 * k + 1358879) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4076638) = 2359296 * k + 2038319 := by
    unfold C
    simp [show (4718592 * k + 4076638) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2038319) = 7077888 * k + 6114958 := by
    unfold C
    simp [show (2359296 * k + 2038319) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6114958) = 3538944 * k + 3057479 := by
    unfold C
    simp [show (7077888 * k + 6114958) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3057479) = 10616832 * k + 9172438 := by
    unfold C
    simp [show (3538944 * k + 3057479) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9172438) = 5308416 * k + 4586219 := by
    unfold C
    simp [show (10616832 * k + 9172438) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4586219) = 15925248 * k + 13758658 := by
    unfold C
    simp [show (5308416 * k + 4586219) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13758658) = 7962624 * k + 6879329 := by
    unfold C
    simp [show (15925248 * k + 13758658) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6879329) = 23887872 * k + 20637988 := by
    unfold C
    simp [show (7962624 * k + 6879329) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 20637988) = 11943936 * k + 10318994 := by
    unfold C
    simp [show (23887872 * k + 20637988) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10318994) = 5971968 * k + 5159497 := by
    unfold C
    simp [show (11943936 * k + 10318994) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5159497) = 17915904 * k + 15478492 := by
    unfold C
    simp [show (5971968 * k + 5159497) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15478492) = 8957952 * k + 7739246 := by
    unfold C
    simp [show (17915904 * k + 15478492) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7739246) = 4478976 * k + 3869623 := by
    unfold C
    simp [show (8957952 * k + 7739246) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3869623) = 13436928 * k + 11608870 := by
    unfold C
    simp [show (4478976 * k + 3869623) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11608870) = 6718464 * k + 5804435 := by
    unfold C
    simp [show (13436928 * k + 11608870) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5804435) = 20155392 * k + 17413306 := by
    unfold C
    simp [show (6718464 * k + 5804435) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17413306) = 10077696 * k + 8706653 := by
    unfold C
    simp [show (20155392 * k + 17413306) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8706653) = 30233088 * k + 26119960 := by
    unfold C
    simp [show (10077696 * k + 8706653) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 26119960) = 15116544 * k + 13059980 := by
    unfold C
    simp [show (30233088 * k + 26119960) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13059980) = 7558272 * k + 6529990 := by
    unfold C
    simp [show (15116544 * k + 13059980) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6529990) = 3779136 * k + 3264995 := by
    unfold C
    simp [show (7558272 * k + 6529990) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3264995) = 11337408 * k + 9794986 := by
    unfold C
    simp [show (3779136 * k + 3264995) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9794986) = 5668704 * k + 4897493 := by
    unfold C
    simp [show (11337408 * k + 9794986) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4897493) = 17006112 * k + 14692480 := by
    unfold C
    simp [show (5668704 * k + 4897493) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 14692480) = 8503056 * k + 7346240 := by
    unfold C
    simp [show (17006112 * k + 14692480) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7346240) = 4251528 * k + 3673120 := by
    unfold C
    simp [show (8503056 * k + 7346240) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3673120) = 2125764 * k + 1836560 := by
    unfold C
    simp [show (4251528 * k + 3673120) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1836560) = 1062882 * k + 918280 := by
    unfold C
    simp [show (2125764 * k + 1836560) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 918280) = 531441 * k + 459140 := by
    unfold C
    simp [show (1062882 * k + 918280) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 905919) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 905919)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard115
