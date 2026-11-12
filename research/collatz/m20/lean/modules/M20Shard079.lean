import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard079

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_609791 : ∀ k : Nat,
    iterate (1048576 * k + 609791) 32 = 531441 * k + 309056 ∧
      531441 * k + 309056 < 1048576 * k + 609791 := by
  intro k
  have h1 : C (1048576 * k + 609791) = 3145728 * k + 1829374 := by
    unfold C
    simp [show (1048576 * k + 609791) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1829374) = 1572864 * k + 914687 := by
    unfold C
    simp [show (3145728 * k + 1829374) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 914687) = 4718592 * k + 2744062 := by
    unfold C
    simp [show (1572864 * k + 914687) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2744062) = 2359296 * k + 1372031 := by
    unfold C
    simp [show (4718592 * k + 2744062) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1372031) = 7077888 * k + 4116094 := by
    unfold C
    simp [show (2359296 * k + 1372031) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4116094) = 3538944 * k + 2058047 := by
    unfold C
    simp [show (7077888 * k + 4116094) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2058047) = 10616832 * k + 6174142 := by
    unfold C
    simp [show (3538944 * k + 2058047) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6174142) = 5308416 * k + 3087071 := by
    unfold C
    simp [show (10616832 * k + 6174142) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3087071) = 15925248 * k + 9261214 := by
    unfold C
    simp [show (5308416 * k + 3087071) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9261214) = 7962624 * k + 4630607 := by
    unfold C
    simp [show (15925248 * k + 9261214) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4630607) = 23887872 * k + 13891822 := by
    unfold C
    simp [show (7962624 * k + 4630607) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 13891822) = 11943936 * k + 6945911 := by
    unfold C
    simp [show (23887872 * k + 13891822) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6945911) = 35831808 * k + 20837734 := by
    unfold C
    simp [show (11943936 * k + 6945911) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 20837734) = 17915904 * k + 10418867 := by
    unfold C
    simp [show (35831808 * k + 20837734) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 10418867) = 53747712 * k + 31256602 := by
    unfold C
    simp [show (17915904 * k + 10418867) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 31256602) = 26873856 * k + 15628301 := by
    unfold C
    simp [show (53747712 * k + 31256602) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 15628301) = 80621568 * k + 46884904 := by
    unfold C
    simp [show (26873856 * k + 15628301) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 46884904) = 40310784 * k + 23442452 := by
    unfold C
    simp [show (80621568 * k + 46884904) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 23442452) = 20155392 * k + 11721226 := by
    unfold C
    simp [show (40310784 * k + 23442452) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 11721226) = 10077696 * k + 5860613 := by
    unfold C
    simp [show (20155392 * k + 11721226) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5860613) = 30233088 * k + 17581840 := by
    unfold C
    simp [show (10077696 * k + 5860613) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 17581840) = 15116544 * k + 8790920 := by
    unfold C
    simp [show (30233088 * k + 17581840) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8790920) = 7558272 * k + 4395460 := by
    unfold C
    simp [show (15116544 * k + 8790920) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4395460) = 3779136 * k + 2197730 := by
    unfold C
    simp [show (7558272 * k + 4395460) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2197730) = 1889568 * k + 1098865 := by
    unfold C
    simp [show (3779136 * k + 2197730) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1098865) = 5668704 * k + 3296596 := by
    unfold C
    simp [show (1889568 * k + 1098865) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3296596) = 2834352 * k + 1648298 := by
    unfold C
    simp [show (5668704 * k + 3296596) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1648298) = 1417176 * k + 824149 := by
    unfold C
    simp [show (2834352 * k + 1648298) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 824149) = 4251528 * k + 2472448 := by
    unfold C
    simp [show (1417176 * k + 824149) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2472448) = 2125764 * k + 1236224 := by
    unfold C
    simp [show (4251528 * k + 2472448) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1236224) = 1062882 * k + 618112 := by
    unfold C
    simp [show (2125764 * k + 1236224) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 618112) = 531441 * k + 309056 := by
    unfold C
    simp [show (1062882 * k + 618112) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 609791) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 609791)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_610075 : ∀ k : Nat,
    iterate (1048576 * k + 610075) 32 = 531441 * k + 309200 ∧
      531441 * k + 309200 < 1048576 * k + 610075 := by
  intro k
  have h1 : C (1048576 * k + 610075) = 3145728 * k + 1830226 := by
    unfold C
    simp [show (1048576 * k + 610075) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1830226) = 1572864 * k + 915113 := by
    unfold C
    simp [show (3145728 * k + 1830226) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 915113) = 4718592 * k + 2745340 := by
    unfold C
    simp [show (1572864 * k + 915113) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2745340) = 2359296 * k + 1372670 := by
    unfold C
    simp [show (4718592 * k + 2745340) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1372670) = 1179648 * k + 686335 := by
    unfold C
    simp [show (2359296 * k + 1372670) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 686335) = 3538944 * k + 2059006 := by
    unfold C
    simp [show (1179648 * k + 686335) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2059006) = 1769472 * k + 1029503 := by
    unfold C
    simp [show (3538944 * k + 2059006) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1029503) = 5308416 * k + 3088510 := by
    unfold C
    simp [show (1769472 * k + 1029503) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3088510) = 2654208 * k + 1544255 := by
    unfold C
    simp [show (5308416 * k + 3088510) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1544255) = 7962624 * k + 4632766 := by
    unfold C
    simp [show (2654208 * k + 1544255) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4632766) = 3981312 * k + 2316383 := by
    unfold C
    simp [show (7962624 * k + 4632766) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2316383) = 11943936 * k + 6949150 := by
    unfold C
    simp [show (3981312 * k + 2316383) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6949150) = 5971968 * k + 3474575 := by
    unfold C
    simp [show (11943936 * k + 6949150) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3474575) = 17915904 * k + 10423726 := by
    unfold C
    simp [show (5971968 * k + 3474575) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10423726) = 8957952 * k + 5211863 := by
    unfold C
    simp [show (17915904 * k + 10423726) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5211863) = 26873856 * k + 15635590 := by
    unfold C
    simp [show (8957952 * k + 5211863) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 15635590) = 13436928 * k + 7817795 := by
    unfold C
    simp [show (26873856 * k + 15635590) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7817795) = 40310784 * k + 23453386 := by
    unfold C
    simp [show (13436928 * k + 7817795) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 23453386) = 20155392 * k + 11726693 := by
    unfold C
    simp [show (40310784 * k + 23453386) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 11726693) = 60466176 * k + 35180080 := by
    unfold C
    simp [show (20155392 * k + 11726693) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 35180080) = 30233088 * k + 17590040 := by
    unfold C
    simp [show (60466176 * k + 35180080) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 17590040) = 15116544 * k + 8795020 := by
    unfold C
    simp [show (30233088 * k + 17590040) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8795020) = 7558272 * k + 4397510 := by
    unfold C
    simp [show (15116544 * k + 8795020) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4397510) = 3779136 * k + 2198755 := by
    unfold C
    simp [show (7558272 * k + 4397510) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2198755) = 11337408 * k + 6596266 := by
    unfold C
    simp [show (3779136 * k + 2198755) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6596266) = 5668704 * k + 3298133 := by
    unfold C
    simp [show (11337408 * k + 6596266) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3298133) = 17006112 * k + 9894400 := by
    unfold C
    simp [show (5668704 * k + 3298133) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9894400) = 8503056 * k + 4947200 := by
    unfold C
    simp [show (17006112 * k + 9894400) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4947200) = 4251528 * k + 2473600 := by
    unfold C
    simp [show (8503056 * k + 4947200) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2473600) = 2125764 * k + 1236800 := by
    unfold C
    simp [show (4251528 * k + 2473600) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1236800) = 1062882 * k + 618400 := by
    unfold C
    simp [show (2125764 * k + 1236800) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 618400) = 531441 * k + 309200 := by
    unfold C
    simp [show (1062882 * k + 618400) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 610075) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 610075)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_610791 : ∀ k : Nat,
    iterate (1048576 * k + 610791) 32 = 531441 * k + 309563 ∧
      531441 * k + 309563 < 1048576 * k + 610791 := by
  intro k
  have h1 : C (1048576 * k + 610791) = 3145728 * k + 1832374 := by
    unfold C
    simp [show (1048576 * k + 610791) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1832374) = 1572864 * k + 916187 := by
    unfold C
    simp [show (3145728 * k + 1832374) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 916187) = 4718592 * k + 2748562 := by
    unfold C
    simp [show (1572864 * k + 916187) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2748562) = 2359296 * k + 1374281 := by
    unfold C
    simp [show (4718592 * k + 2748562) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1374281) = 7077888 * k + 4122844 := by
    unfold C
    simp [show (2359296 * k + 1374281) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4122844) = 3538944 * k + 2061422 := by
    unfold C
    simp [show (7077888 * k + 4122844) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2061422) = 1769472 * k + 1030711 := by
    unfold C
    simp [show (3538944 * k + 2061422) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1030711) = 5308416 * k + 3092134 := by
    unfold C
    simp [show (1769472 * k + 1030711) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3092134) = 2654208 * k + 1546067 := by
    unfold C
    simp [show (5308416 * k + 3092134) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1546067) = 7962624 * k + 4638202 := by
    unfold C
    simp [show (2654208 * k + 1546067) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4638202) = 3981312 * k + 2319101 := by
    unfold C
    simp [show (7962624 * k + 4638202) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2319101) = 11943936 * k + 6957304 := by
    unfold C
    simp [show (3981312 * k + 2319101) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6957304) = 5971968 * k + 3478652 := by
    unfold C
    simp [show (11943936 * k + 6957304) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3478652) = 2985984 * k + 1739326 := by
    unfold C
    simp [show (5971968 * k + 3478652) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1739326) = 1492992 * k + 869663 := by
    unfold C
    simp [show (2985984 * k + 1739326) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 869663) = 4478976 * k + 2608990 := by
    unfold C
    simp [show (1492992 * k + 869663) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2608990) = 2239488 * k + 1304495 := by
    unfold C
    simp [show (4478976 * k + 2608990) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1304495) = 6718464 * k + 3913486 := by
    unfold C
    simp [show (2239488 * k + 1304495) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3913486) = 3359232 * k + 1956743 := by
    unfold C
    simp [show (6718464 * k + 3913486) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1956743) = 10077696 * k + 5870230 := by
    unfold C
    simp [show (3359232 * k + 1956743) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5870230) = 5038848 * k + 2935115 := by
    unfold C
    simp [show (10077696 * k + 5870230) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2935115) = 15116544 * k + 8805346 := by
    unfold C
    simp [show (5038848 * k + 2935115) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8805346) = 7558272 * k + 4402673 := by
    unfold C
    simp [show (15116544 * k + 8805346) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4402673) = 22674816 * k + 13208020 := by
    unfold C
    simp [show (7558272 * k + 4402673) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 13208020) = 11337408 * k + 6604010 := by
    unfold C
    simp [show (22674816 * k + 13208020) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6604010) = 5668704 * k + 3302005 := by
    unfold C
    simp [show (11337408 * k + 6604010) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3302005) = 17006112 * k + 9906016 := by
    unfold C
    simp [show (5668704 * k + 3302005) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9906016) = 8503056 * k + 4953008 := by
    unfold C
    simp [show (17006112 * k + 9906016) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4953008) = 4251528 * k + 2476504 := by
    unfold C
    simp [show (8503056 * k + 4953008) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2476504) = 2125764 * k + 1238252 := by
    unfold C
    simp [show (4251528 * k + 2476504) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1238252) = 1062882 * k + 619126 := by
    unfold C
    simp [show (2125764 * k + 1238252) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 619126) = 531441 * k + 309563 := by
    unfold C
    simp [show (1062882 * k + 619126) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 610791) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 610791)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_611495 : ∀ k : Nat,
    iterate (1048576 * k + 611495) 32 = 531441 * k + 309920 ∧
      531441 * k + 309920 < 1048576 * k + 611495 := by
  intro k
  have h1 : C (1048576 * k + 611495) = 3145728 * k + 1834486 := by
    unfold C
    simp [show (1048576 * k + 611495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1834486) = 1572864 * k + 917243 := by
    unfold C
    simp [show (3145728 * k + 1834486) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 917243) = 4718592 * k + 2751730 := by
    unfold C
    simp [show (1572864 * k + 917243) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2751730) = 2359296 * k + 1375865 := by
    unfold C
    simp [show (4718592 * k + 2751730) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1375865) = 7077888 * k + 4127596 := by
    unfold C
    simp [show (2359296 * k + 1375865) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4127596) = 3538944 * k + 2063798 := by
    unfold C
    simp [show (7077888 * k + 4127596) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2063798) = 1769472 * k + 1031899 := by
    unfold C
    simp [show (3538944 * k + 2063798) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1031899) = 5308416 * k + 3095698 := by
    unfold C
    simp [show (1769472 * k + 1031899) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3095698) = 2654208 * k + 1547849 := by
    unfold C
    simp [show (5308416 * k + 3095698) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1547849) = 7962624 * k + 4643548 := by
    unfold C
    simp [show (2654208 * k + 1547849) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4643548) = 3981312 * k + 2321774 := by
    unfold C
    simp [show (7962624 * k + 4643548) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2321774) = 1990656 * k + 1160887 := by
    unfold C
    simp [show (3981312 * k + 2321774) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1160887) = 5971968 * k + 3482662 := by
    unfold C
    simp [show (1990656 * k + 1160887) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3482662) = 2985984 * k + 1741331 := by
    unfold C
    simp [show (5971968 * k + 3482662) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1741331) = 8957952 * k + 5223994 := by
    unfold C
    simp [show (2985984 * k + 1741331) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5223994) = 4478976 * k + 2611997 := by
    unfold C
    simp [show (8957952 * k + 5223994) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2611997) = 13436928 * k + 7835992 := by
    unfold C
    simp [show (4478976 * k + 2611997) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7835992) = 6718464 * k + 3917996 := by
    unfold C
    simp [show (13436928 * k + 7835992) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3917996) = 3359232 * k + 1958998 := by
    unfold C
    simp [show (6718464 * k + 3917996) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1958998) = 1679616 * k + 979499 := by
    unfold C
    simp [show (3359232 * k + 1958998) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 979499) = 5038848 * k + 2938498 := by
    unfold C
    simp [show (1679616 * k + 979499) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2938498) = 2519424 * k + 1469249 := by
    unfold C
    simp [show (5038848 * k + 2938498) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1469249) = 7558272 * k + 4407748 := by
    unfold C
    simp [show (2519424 * k + 1469249) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4407748) = 3779136 * k + 2203874 := by
    unfold C
    simp [show (7558272 * k + 4407748) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2203874) = 1889568 * k + 1101937 := by
    unfold C
    simp [show (3779136 * k + 2203874) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1101937) = 5668704 * k + 3305812 := by
    unfold C
    simp [show (1889568 * k + 1101937) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3305812) = 2834352 * k + 1652906 := by
    unfold C
    simp [show (5668704 * k + 3305812) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1652906) = 1417176 * k + 826453 := by
    unfold C
    simp [show (2834352 * k + 1652906) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 826453) = 4251528 * k + 2479360 := by
    unfold C
    simp [show (1417176 * k + 826453) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2479360) = 2125764 * k + 1239680 := by
    unfold C
    simp [show (4251528 * k + 2479360) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1239680) = 1062882 * k + 619840 := by
    unfold C
    simp [show (2125764 * k + 1239680) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 619840) = 531441 * k + 309920 := by
    unfold C
    simp [show (1062882 * k + 619840) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 611495) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 611495)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_611655 : ∀ k : Nat,
    iterate (1048576 * k + 611655) 32 = 531441 * k + 310001 ∧
      531441 * k + 310001 < 1048576 * k + 611655 := by
  intro k
  have h1 : C (1048576 * k + 611655) = 3145728 * k + 1834966 := by
    unfold C
    simp [show (1048576 * k + 611655) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1834966) = 1572864 * k + 917483 := by
    unfold C
    simp [show (3145728 * k + 1834966) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 917483) = 4718592 * k + 2752450 := by
    unfold C
    simp [show (1572864 * k + 917483) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2752450) = 2359296 * k + 1376225 := by
    unfold C
    simp [show (4718592 * k + 2752450) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1376225) = 7077888 * k + 4128676 := by
    unfold C
    simp [show (2359296 * k + 1376225) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4128676) = 3538944 * k + 2064338 := by
    unfold C
    simp [show (7077888 * k + 4128676) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2064338) = 1769472 * k + 1032169 := by
    unfold C
    simp [show (3538944 * k + 2064338) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1032169) = 5308416 * k + 3096508 := by
    unfold C
    simp [show (1769472 * k + 1032169) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3096508) = 2654208 * k + 1548254 := by
    unfold C
    simp [show (5308416 * k + 3096508) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1548254) = 1327104 * k + 774127 := by
    unfold C
    simp [show (2654208 * k + 1548254) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 774127) = 3981312 * k + 2322382 := by
    unfold C
    simp [show (1327104 * k + 774127) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2322382) = 1990656 * k + 1161191 := by
    unfold C
    simp [show (3981312 * k + 2322382) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1161191) = 5971968 * k + 3483574 := by
    unfold C
    simp [show (1990656 * k + 1161191) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3483574) = 2985984 * k + 1741787 := by
    unfold C
    simp [show (5971968 * k + 3483574) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1741787) = 8957952 * k + 5225362 := by
    unfold C
    simp [show (2985984 * k + 1741787) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5225362) = 4478976 * k + 2612681 := by
    unfold C
    simp [show (8957952 * k + 5225362) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2612681) = 13436928 * k + 7838044 := by
    unfold C
    simp [show (4478976 * k + 2612681) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7838044) = 6718464 * k + 3919022 := by
    unfold C
    simp [show (13436928 * k + 7838044) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3919022) = 3359232 * k + 1959511 := by
    unfold C
    simp [show (6718464 * k + 3919022) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1959511) = 10077696 * k + 5878534 := by
    unfold C
    simp [show (3359232 * k + 1959511) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5878534) = 5038848 * k + 2939267 := by
    unfold C
    simp [show (10077696 * k + 5878534) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2939267) = 15116544 * k + 8817802 := by
    unfold C
    simp [show (5038848 * k + 2939267) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8817802) = 7558272 * k + 4408901 := by
    unfold C
    simp [show (15116544 * k + 8817802) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4408901) = 22674816 * k + 13226704 := by
    unfold C
    simp [show (7558272 * k + 4408901) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 13226704) = 11337408 * k + 6613352 := by
    unfold C
    simp [show (22674816 * k + 13226704) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6613352) = 5668704 * k + 3306676 := by
    unfold C
    simp [show (11337408 * k + 6613352) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3306676) = 2834352 * k + 1653338 := by
    unfold C
    simp [show (5668704 * k + 3306676) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1653338) = 1417176 * k + 826669 := by
    unfold C
    simp [show (2834352 * k + 1653338) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 826669) = 4251528 * k + 2480008 := by
    unfold C
    simp [show (1417176 * k + 826669) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2480008) = 2125764 * k + 1240004 := by
    unfold C
    simp [show (4251528 * k + 2480008) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1240004) = 1062882 * k + 620002 := by
    unfold C
    simp [show (2125764 * k + 1240004) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 620002) = 531441 * k + 310001 := by
    unfold C
    simp [show (1062882 * k + 620002) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 611655) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 611655)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_611791 : ∀ k : Nat,
    iterate (1048576 * k + 611791) 32 = 531441 * k + 310070 ∧
      531441 * k + 310070 < 1048576 * k + 611791 := by
  intro k
  have h1 : C (1048576 * k + 611791) = 3145728 * k + 1835374 := by
    unfold C
    simp [show (1048576 * k + 611791) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1835374) = 1572864 * k + 917687 := by
    unfold C
    simp [show (3145728 * k + 1835374) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 917687) = 4718592 * k + 2753062 := by
    unfold C
    simp [show (1572864 * k + 917687) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2753062) = 2359296 * k + 1376531 := by
    unfold C
    simp [show (4718592 * k + 2753062) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1376531) = 7077888 * k + 4129594 := by
    unfold C
    simp [show (2359296 * k + 1376531) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4129594) = 3538944 * k + 2064797 := by
    unfold C
    simp [show (7077888 * k + 4129594) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2064797) = 10616832 * k + 6194392 := by
    unfold C
    simp [show (3538944 * k + 2064797) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6194392) = 5308416 * k + 3097196 := by
    unfold C
    simp [show (10616832 * k + 6194392) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3097196) = 2654208 * k + 1548598 := by
    unfold C
    simp [show (5308416 * k + 3097196) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1548598) = 1327104 * k + 774299 := by
    unfold C
    simp [show (2654208 * k + 1548598) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 774299) = 3981312 * k + 2322898 := by
    unfold C
    simp [show (1327104 * k + 774299) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2322898) = 1990656 * k + 1161449 := by
    unfold C
    simp [show (3981312 * k + 2322898) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1161449) = 5971968 * k + 3484348 := by
    unfold C
    simp [show (1990656 * k + 1161449) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3484348) = 2985984 * k + 1742174 := by
    unfold C
    simp [show (5971968 * k + 3484348) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1742174) = 1492992 * k + 871087 := by
    unfold C
    simp [show (2985984 * k + 1742174) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 871087) = 4478976 * k + 2613262 := by
    unfold C
    simp [show (1492992 * k + 871087) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2613262) = 2239488 * k + 1306631 := by
    unfold C
    simp [show (4478976 * k + 2613262) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1306631) = 6718464 * k + 3919894 := by
    unfold C
    simp [show (2239488 * k + 1306631) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3919894) = 3359232 * k + 1959947 := by
    unfold C
    simp [show (6718464 * k + 3919894) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1959947) = 10077696 * k + 5879842 := by
    unfold C
    simp [show (3359232 * k + 1959947) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5879842) = 5038848 * k + 2939921 := by
    unfold C
    simp [show (10077696 * k + 5879842) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2939921) = 15116544 * k + 8819764 := by
    unfold C
    simp [show (5038848 * k + 2939921) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8819764) = 7558272 * k + 4409882 := by
    unfold C
    simp [show (15116544 * k + 8819764) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4409882) = 3779136 * k + 2204941 := by
    unfold C
    simp [show (7558272 * k + 4409882) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2204941) = 11337408 * k + 6614824 := by
    unfold C
    simp [show (3779136 * k + 2204941) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6614824) = 5668704 * k + 3307412 := by
    unfold C
    simp [show (11337408 * k + 6614824) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3307412) = 2834352 * k + 1653706 := by
    unfold C
    simp [show (5668704 * k + 3307412) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1653706) = 1417176 * k + 826853 := by
    unfold C
    simp [show (2834352 * k + 1653706) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 826853) = 4251528 * k + 2480560 := by
    unfold C
    simp [show (1417176 * k + 826853) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2480560) = 2125764 * k + 1240280 := by
    unfold C
    simp [show (4251528 * k + 2480560) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1240280) = 1062882 * k + 620140 := by
    unfold C
    simp [show (2125764 * k + 1240280) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 620140) = 531441 * k + 310070 := by
    unfold C
    simp [show (1062882 * k + 620140) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 611791) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 611791)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_611807 : ∀ k : Nat,
    iterate (1048576 * k + 611807) 32 = 531441 * k + 310078 ∧
      531441 * k + 310078 < 1048576 * k + 611807 := by
  intro k
  have h1 : C (1048576 * k + 611807) = 3145728 * k + 1835422 := by
    unfold C
    simp [show (1048576 * k + 611807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1835422) = 1572864 * k + 917711 := by
    unfold C
    simp [show (3145728 * k + 1835422) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 917711) = 4718592 * k + 2753134 := by
    unfold C
    simp [show (1572864 * k + 917711) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2753134) = 2359296 * k + 1376567 := by
    unfold C
    simp [show (4718592 * k + 2753134) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1376567) = 7077888 * k + 4129702 := by
    unfold C
    simp [show (2359296 * k + 1376567) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4129702) = 3538944 * k + 2064851 := by
    unfold C
    simp [show (7077888 * k + 4129702) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2064851) = 10616832 * k + 6194554 := by
    unfold C
    simp [show (3538944 * k + 2064851) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6194554) = 5308416 * k + 3097277 := by
    unfold C
    simp [show (10616832 * k + 6194554) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3097277) = 15925248 * k + 9291832 := by
    unfold C
    simp [show (5308416 * k + 3097277) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9291832) = 7962624 * k + 4645916 := by
    unfold C
    simp [show (15925248 * k + 9291832) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4645916) = 3981312 * k + 2322958 := by
    unfold C
    simp [show (7962624 * k + 4645916) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2322958) = 1990656 * k + 1161479 := by
    unfold C
    simp [show (3981312 * k + 2322958) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1161479) = 5971968 * k + 3484438 := by
    unfold C
    simp [show (1990656 * k + 1161479) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3484438) = 2985984 * k + 1742219 := by
    unfold C
    simp [show (5971968 * k + 3484438) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1742219) = 8957952 * k + 5226658 := by
    unfold C
    simp [show (2985984 * k + 1742219) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5226658) = 4478976 * k + 2613329 := by
    unfold C
    simp [show (8957952 * k + 5226658) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2613329) = 13436928 * k + 7839988 := by
    unfold C
    simp [show (4478976 * k + 2613329) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7839988) = 6718464 * k + 3919994 := by
    unfold C
    simp [show (13436928 * k + 7839988) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3919994) = 3359232 * k + 1959997 := by
    unfold C
    simp [show (6718464 * k + 3919994) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1959997) = 10077696 * k + 5879992 := by
    unfold C
    simp [show (3359232 * k + 1959997) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5879992) = 5038848 * k + 2939996 := by
    unfold C
    simp [show (10077696 * k + 5879992) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2939996) = 2519424 * k + 1469998 := by
    unfold C
    simp [show (5038848 * k + 2939996) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1469998) = 1259712 * k + 734999 := by
    unfold C
    simp [show (2519424 * k + 1469998) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 734999) = 3779136 * k + 2204998 := by
    unfold C
    simp [show (1259712 * k + 734999) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2204998) = 1889568 * k + 1102499 := by
    unfold C
    simp [show (3779136 * k + 2204998) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1102499) = 5668704 * k + 3307498 := by
    unfold C
    simp [show (1889568 * k + 1102499) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3307498) = 2834352 * k + 1653749 := by
    unfold C
    simp [show (5668704 * k + 3307498) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1653749) = 8503056 * k + 4961248 := by
    unfold C
    simp [show (2834352 * k + 1653749) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4961248) = 4251528 * k + 2480624 := by
    unfold C
    simp [show (8503056 * k + 4961248) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2480624) = 2125764 * k + 1240312 := by
    unfold C
    simp [show (4251528 * k + 2480624) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1240312) = 1062882 * k + 620156 := by
    unfold C
    simp [show (2125764 * k + 1240312) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 620156) = 531441 * k + 310078 := by
    unfold C
    simp [show (1062882 * k + 620156) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 611807) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 611807)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_612347 : ∀ k : Nat,
    iterate (1048576 * k + 612347) 32 = 531441 * k + 310352 ∧
      531441 * k + 310352 < 1048576 * k + 612347 := by
  intro k
  have h1 : C (1048576 * k + 612347) = 3145728 * k + 1837042 := by
    unfold C
    simp [show (1048576 * k + 612347) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1837042) = 1572864 * k + 918521 := by
    unfold C
    simp [show (3145728 * k + 1837042) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 918521) = 4718592 * k + 2755564 := by
    unfold C
    simp [show (1572864 * k + 918521) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2755564) = 2359296 * k + 1377782 := by
    unfold C
    simp [show (4718592 * k + 2755564) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1377782) = 1179648 * k + 688891 := by
    unfold C
    simp [show (2359296 * k + 1377782) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 688891) = 3538944 * k + 2066674 := by
    unfold C
    simp [show (1179648 * k + 688891) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2066674) = 1769472 * k + 1033337 := by
    unfold C
    simp [show (3538944 * k + 2066674) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1033337) = 5308416 * k + 3100012 := by
    unfold C
    simp [show (1769472 * k + 1033337) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3100012) = 2654208 * k + 1550006 := by
    unfold C
    simp [show (5308416 * k + 3100012) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1550006) = 1327104 * k + 775003 := by
    unfold C
    simp [show (2654208 * k + 1550006) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 775003) = 3981312 * k + 2325010 := by
    unfold C
    simp [show (1327104 * k + 775003) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2325010) = 1990656 * k + 1162505 := by
    unfold C
    simp [show (3981312 * k + 2325010) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1162505) = 5971968 * k + 3487516 := by
    unfold C
    simp [show (1990656 * k + 1162505) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3487516) = 2985984 * k + 1743758 := by
    unfold C
    simp [show (5971968 * k + 3487516) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1743758) = 1492992 * k + 871879 := by
    unfold C
    simp [show (2985984 * k + 1743758) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 871879) = 4478976 * k + 2615638 := by
    unfold C
    simp [show (1492992 * k + 871879) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2615638) = 2239488 * k + 1307819 := by
    unfold C
    simp [show (4478976 * k + 2615638) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1307819) = 6718464 * k + 3923458 := by
    unfold C
    simp [show (2239488 * k + 1307819) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3923458) = 3359232 * k + 1961729 := by
    unfold C
    simp [show (6718464 * k + 3923458) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1961729) = 10077696 * k + 5885188 := by
    unfold C
    simp [show (3359232 * k + 1961729) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5885188) = 5038848 * k + 2942594 := by
    unfold C
    simp [show (10077696 * k + 5885188) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2942594) = 2519424 * k + 1471297 := by
    unfold C
    simp [show (5038848 * k + 2942594) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1471297) = 7558272 * k + 4413892 := by
    unfold C
    simp [show (2519424 * k + 1471297) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4413892) = 3779136 * k + 2206946 := by
    unfold C
    simp [show (7558272 * k + 4413892) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2206946) = 1889568 * k + 1103473 := by
    unfold C
    simp [show (3779136 * k + 2206946) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1103473) = 5668704 * k + 3310420 := by
    unfold C
    simp [show (1889568 * k + 1103473) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3310420) = 2834352 * k + 1655210 := by
    unfold C
    simp [show (5668704 * k + 3310420) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1655210) = 1417176 * k + 827605 := by
    unfold C
    simp [show (2834352 * k + 1655210) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 827605) = 4251528 * k + 2482816 := by
    unfold C
    simp [show (1417176 * k + 827605) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2482816) = 2125764 * k + 1241408 := by
    unfold C
    simp [show (4251528 * k + 2482816) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1241408) = 1062882 * k + 620704 := by
    unfold C
    simp [show (2125764 * k + 1241408) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 620704) = 531441 * k + 310352 := by
    unfold C
    simp [show (1062882 * k + 620704) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 612347) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 612347)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_612383 : ∀ k : Nat,
    iterate (1048576 * k + 612383) 32 = 531441 * k + 310370 ∧
      531441 * k + 310370 < 1048576 * k + 612383 := by
  intro k
  have h1 : C (1048576 * k + 612383) = 3145728 * k + 1837150 := by
    unfold C
    simp [show (1048576 * k + 612383) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1837150) = 1572864 * k + 918575 := by
    unfold C
    simp [show (3145728 * k + 1837150) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 918575) = 4718592 * k + 2755726 := by
    unfold C
    simp [show (1572864 * k + 918575) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2755726) = 2359296 * k + 1377863 := by
    unfold C
    simp [show (4718592 * k + 2755726) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1377863) = 7077888 * k + 4133590 := by
    unfold C
    simp [show (2359296 * k + 1377863) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4133590) = 3538944 * k + 2066795 := by
    unfold C
    simp [show (7077888 * k + 4133590) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2066795) = 10616832 * k + 6200386 := by
    unfold C
    simp [show (3538944 * k + 2066795) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6200386) = 5308416 * k + 3100193 := by
    unfold C
    simp [show (10616832 * k + 6200386) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3100193) = 15925248 * k + 9300580 := by
    unfold C
    simp [show (5308416 * k + 3100193) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9300580) = 7962624 * k + 4650290 := by
    unfold C
    simp [show (15925248 * k + 9300580) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4650290) = 3981312 * k + 2325145 := by
    unfold C
    simp [show (7962624 * k + 4650290) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2325145) = 11943936 * k + 6975436 := by
    unfold C
    simp [show (3981312 * k + 2325145) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6975436) = 5971968 * k + 3487718 := by
    unfold C
    simp [show (11943936 * k + 6975436) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3487718) = 2985984 * k + 1743859 := by
    unfold C
    simp [show (5971968 * k + 3487718) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1743859) = 8957952 * k + 5231578 := by
    unfold C
    simp [show (2985984 * k + 1743859) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5231578) = 4478976 * k + 2615789 := by
    unfold C
    simp [show (8957952 * k + 5231578) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2615789) = 13436928 * k + 7847368 := by
    unfold C
    simp [show (4478976 * k + 2615789) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7847368) = 6718464 * k + 3923684 := by
    unfold C
    simp [show (13436928 * k + 7847368) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3923684) = 3359232 * k + 1961842 := by
    unfold C
    simp [show (6718464 * k + 3923684) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1961842) = 1679616 * k + 980921 := by
    unfold C
    simp [show (3359232 * k + 1961842) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 980921) = 5038848 * k + 2942764 := by
    unfold C
    simp [show (1679616 * k + 980921) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2942764) = 2519424 * k + 1471382 := by
    unfold C
    simp [show (5038848 * k + 2942764) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1471382) = 1259712 * k + 735691 := by
    unfold C
    simp [show (2519424 * k + 1471382) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 735691) = 3779136 * k + 2207074 := by
    unfold C
    simp [show (1259712 * k + 735691) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2207074) = 1889568 * k + 1103537 := by
    unfold C
    simp [show (3779136 * k + 2207074) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1103537) = 5668704 * k + 3310612 := by
    unfold C
    simp [show (1889568 * k + 1103537) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3310612) = 2834352 * k + 1655306 := by
    unfold C
    simp [show (5668704 * k + 3310612) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1655306) = 1417176 * k + 827653 := by
    unfold C
    simp [show (2834352 * k + 1655306) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 827653) = 4251528 * k + 2482960 := by
    unfold C
    simp [show (1417176 * k + 827653) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2482960) = 2125764 * k + 1241480 := by
    unfold C
    simp [show (4251528 * k + 2482960) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1241480) = 1062882 * k + 620740 := by
    unfold C
    simp [show (2125764 * k + 1241480) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 620740) = 531441 * k + 310370 := by
    unfold C
    simp [show (1062882 * k + 620740) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 612383) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 612383)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_613151 : ∀ k : Nat,
    iterate (1048576 * k + 613151) 32 = 531441 * k + 310759 ∧
      531441 * k + 310759 < 1048576 * k + 613151 := by
  intro k
  have h1 : C (1048576 * k + 613151) = 3145728 * k + 1839454 := by
    unfold C
    simp [show (1048576 * k + 613151) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1839454) = 1572864 * k + 919727 := by
    unfold C
    simp [show (3145728 * k + 1839454) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 919727) = 4718592 * k + 2759182 := by
    unfold C
    simp [show (1572864 * k + 919727) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2759182) = 2359296 * k + 1379591 := by
    unfold C
    simp [show (4718592 * k + 2759182) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1379591) = 7077888 * k + 4138774 := by
    unfold C
    simp [show (2359296 * k + 1379591) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4138774) = 3538944 * k + 2069387 := by
    unfold C
    simp [show (7077888 * k + 4138774) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2069387) = 10616832 * k + 6208162 := by
    unfold C
    simp [show (3538944 * k + 2069387) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6208162) = 5308416 * k + 3104081 := by
    unfold C
    simp [show (10616832 * k + 6208162) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3104081) = 15925248 * k + 9312244 := by
    unfold C
    simp [show (5308416 * k + 3104081) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9312244) = 7962624 * k + 4656122 := by
    unfold C
    simp [show (15925248 * k + 9312244) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4656122) = 3981312 * k + 2328061 := by
    unfold C
    simp [show (7962624 * k + 4656122) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2328061) = 11943936 * k + 6984184 := by
    unfold C
    simp [show (3981312 * k + 2328061) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6984184) = 5971968 * k + 3492092 := by
    unfold C
    simp [show (11943936 * k + 6984184) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3492092) = 2985984 * k + 1746046 := by
    unfold C
    simp [show (5971968 * k + 3492092) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1746046) = 1492992 * k + 873023 := by
    unfold C
    simp [show (2985984 * k + 1746046) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 873023) = 4478976 * k + 2619070 := by
    unfold C
    simp [show (1492992 * k + 873023) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2619070) = 2239488 * k + 1309535 := by
    unfold C
    simp [show (4478976 * k + 2619070) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1309535) = 6718464 * k + 3928606 := by
    unfold C
    simp [show (2239488 * k + 1309535) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3928606) = 3359232 * k + 1964303 := by
    unfold C
    simp [show (6718464 * k + 3928606) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1964303) = 10077696 * k + 5892910 := by
    unfold C
    simp [show (3359232 * k + 1964303) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5892910) = 5038848 * k + 2946455 := by
    unfold C
    simp [show (10077696 * k + 5892910) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2946455) = 15116544 * k + 8839366 := by
    unfold C
    simp [show (5038848 * k + 2946455) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8839366) = 7558272 * k + 4419683 := by
    unfold C
    simp [show (15116544 * k + 8839366) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4419683) = 22674816 * k + 13259050 := by
    unfold C
    simp [show (7558272 * k + 4419683) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 13259050) = 11337408 * k + 6629525 := by
    unfold C
    simp [show (22674816 * k + 13259050) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6629525) = 34012224 * k + 19888576 := by
    unfold C
    simp [show (11337408 * k + 6629525) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 19888576) = 17006112 * k + 9944288 := by
    unfold C
    simp [show (34012224 * k + 19888576) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 9944288) = 8503056 * k + 4972144 := by
    unfold C
    simp [show (17006112 * k + 9944288) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4972144) = 4251528 * k + 2486072 := by
    unfold C
    simp [show (8503056 * k + 4972144) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2486072) = 2125764 * k + 1243036 := by
    unfold C
    simp [show (4251528 * k + 2486072) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1243036) = 1062882 * k + 621518 := by
    unfold C
    simp [show (2125764 * k + 1243036) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 621518) = 531441 * k + 310759 := by
    unfold C
    simp [show (1062882 * k + 621518) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 613151) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 613151)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_613311 : ∀ k : Nat,
    iterate (1048576 * k + 613311) 32 = 531441 * k + 310840 ∧
      531441 * k + 310840 < 1048576 * k + 613311 := by
  intro k
  have h1 : C (1048576 * k + 613311) = 3145728 * k + 1839934 := by
    unfold C
    simp [show (1048576 * k + 613311) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1839934) = 1572864 * k + 919967 := by
    unfold C
    simp [show (3145728 * k + 1839934) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 919967) = 4718592 * k + 2759902 := by
    unfold C
    simp [show (1572864 * k + 919967) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2759902) = 2359296 * k + 1379951 := by
    unfold C
    simp [show (4718592 * k + 2759902) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1379951) = 7077888 * k + 4139854 := by
    unfold C
    simp [show (2359296 * k + 1379951) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4139854) = 3538944 * k + 2069927 := by
    unfold C
    simp [show (7077888 * k + 4139854) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2069927) = 10616832 * k + 6209782 := by
    unfold C
    simp [show (3538944 * k + 2069927) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6209782) = 5308416 * k + 3104891 := by
    unfold C
    simp [show (10616832 * k + 6209782) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3104891) = 15925248 * k + 9314674 := by
    unfold C
    simp [show (5308416 * k + 3104891) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9314674) = 7962624 * k + 4657337 := by
    unfold C
    simp [show (15925248 * k + 9314674) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4657337) = 23887872 * k + 13972012 := by
    unfold C
    simp [show (7962624 * k + 4657337) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 13972012) = 11943936 * k + 6986006 := by
    unfold C
    simp [show (23887872 * k + 13972012) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6986006) = 5971968 * k + 3493003 := by
    unfold C
    simp [show (11943936 * k + 6986006) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3493003) = 17915904 * k + 10479010 := by
    unfold C
    simp [show (5971968 * k + 3493003) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10479010) = 8957952 * k + 5239505 := by
    unfold C
    simp [show (17915904 * k + 10479010) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5239505) = 26873856 * k + 15718516 := by
    unfold C
    simp [show (8957952 * k + 5239505) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 15718516) = 13436928 * k + 7859258 := by
    unfold C
    simp [show (26873856 * k + 15718516) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7859258) = 6718464 * k + 3929629 := by
    unfold C
    simp [show (13436928 * k + 7859258) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3929629) = 20155392 * k + 11788888 := by
    unfold C
    simp [show (6718464 * k + 3929629) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 11788888) = 10077696 * k + 5894444 := by
    unfold C
    simp [show (20155392 * k + 11788888) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5894444) = 5038848 * k + 2947222 := by
    unfold C
    simp [show (10077696 * k + 5894444) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2947222) = 2519424 * k + 1473611 := by
    unfold C
    simp [show (5038848 * k + 2947222) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1473611) = 7558272 * k + 4420834 := by
    unfold C
    simp [show (2519424 * k + 1473611) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4420834) = 3779136 * k + 2210417 := by
    unfold C
    simp [show (7558272 * k + 4420834) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2210417) = 11337408 * k + 6631252 := by
    unfold C
    simp [show (3779136 * k + 2210417) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6631252) = 5668704 * k + 3315626 := by
    unfold C
    simp [show (11337408 * k + 6631252) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3315626) = 2834352 * k + 1657813 := by
    unfold C
    simp [show (5668704 * k + 3315626) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1657813) = 8503056 * k + 4973440 := by
    unfold C
    simp [show (2834352 * k + 1657813) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4973440) = 4251528 * k + 2486720 := by
    unfold C
    simp [show (8503056 * k + 4973440) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2486720) = 2125764 * k + 1243360 := by
    unfold C
    simp [show (4251528 * k + 2486720) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1243360) = 1062882 * k + 621680 := by
    unfold C
    simp [show (2125764 * k + 1243360) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 621680) = 531441 * k + 310840 := by
    unfold C
    simp [show (1062882 * k + 621680) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 613311) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 613311)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_613615 : ∀ k : Nat,
    iterate (1048576 * k + 613615) 32 = 531441 * k + 310994 ∧
      531441 * k + 310994 < 1048576 * k + 613615 := by
  intro k
  have h1 : C (1048576 * k + 613615) = 3145728 * k + 1840846 := by
    unfold C
    simp [show (1048576 * k + 613615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1840846) = 1572864 * k + 920423 := by
    unfold C
    simp [show (3145728 * k + 1840846) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 920423) = 4718592 * k + 2761270 := by
    unfold C
    simp [show (1572864 * k + 920423) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2761270) = 2359296 * k + 1380635 := by
    unfold C
    simp [show (4718592 * k + 2761270) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1380635) = 7077888 * k + 4141906 := by
    unfold C
    simp [show (2359296 * k + 1380635) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4141906) = 3538944 * k + 2070953 := by
    unfold C
    simp [show (7077888 * k + 4141906) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2070953) = 10616832 * k + 6212860 := by
    unfold C
    simp [show (3538944 * k + 2070953) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6212860) = 5308416 * k + 3106430 := by
    unfold C
    simp [show (10616832 * k + 6212860) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3106430) = 2654208 * k + 1553215 := by
    unfold C
    simp [show (5308416 * k + 3106430) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1553215) = 7962624 * k + 4659646 := by
    unfold C
    simp [show (2654208 * k + 1553215) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4659646) = 3981312 * k + 2329823 := by
    unfold C
    simp [show (7962624 * k + 4659646) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2329823) = 11943936 * k + 6989470 := by
    unfold C
    simp [show (3981312 * k + 2329823) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6989470) = 5971968 * k + 3494735 := by
    unfold C
    simp [show (11943936 * k + 6989470) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3494735) = 17915904 * k + 10484206 := by
    unfold C
    simp [show (5971968 * k + 3494735) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10484206) = 8957952 * k + 5242103 := by
    unfold C
    simp [show (17915904 * k + 10484206) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5242103) = 26873856 * k + 15726310 := by
    unfold C
    simp [show (8957952 * k + 5242103) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 15726310) = 13436928 * k + 7863155 := by
    unfold C
    simp [show (26873856 * k + 15726310) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7863155) = 40310784 * k + 23589466 := by
    unfold C
    simp [show (13436928 * k + 7863155) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 23589466) = 20155392 * k + 11794733 := by
    unfold C
    simp [show (40310784 * k + 23589466) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 11794733) = 60466176 * k + 35384200 := by
    unfold C
    simp [show (20155392 * k + 11794733) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 35384200) = 30233088 * k + 17692100 := by
    unfold C
    simp [show (60466176 * k + 35384200) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 17692100) = 15116544 * k + 8846050 := by
    unfold C
    simp [show (30233088 * k + 17692100) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8846050) = 7558272 * k + 4423025 := by
    unfold C
    simp [show (15116544 * k + 8846050) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4423025) = 22674816 * k + 13269076 := by
    unfold C
    simp [show (7558272 * k + 4423025) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 13269076) = 11337408 * k + 6634538 := by
    unfold C
    simp [show (22674816 * k + 13269076) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6634538) = 5668704 * k + 3317269 := by
    unfold C
    simp [show (11337408 * k + 6634538) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3317269) = 17006112 * k + 9951808 := by
    unfold C
    simp [show (5668704 * k + 3317269) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9951808) = 8503056 * k + 4975904 := by
    unfold C
    simp [show (17006112 * k + 9951808) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4975904) = 4251528 * k + 2487952 := by
    unfold C
    simp [show (8503056 * k + 4975904) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2487952) = 2125764 * k + 1243976 := by
    unfold C
    simp [show (4251528 * k + 2487952) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1243976) = 1062882 * k + 621988 := by
    unfold C
    simp [show (2125764 * k + 1243976) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 621988) = 531441 * k + 310994 := by
    unfold C
    simp [show (1062882 * k + 621988) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 613615) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 613615)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_613991 : ∀ k : Nat,
    iterate (1048576 * k + 613991) 32 = 531441 * k + 311185 ∧
      531441 * k + 311185 < 1048576 * k + 613991 := by
  intro k
  have h1 : C (1048576 * k + 613991) = 3145728 * k + 1841974 := by
    unfold C
    simp [show (1048576 * k + 613991) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1841974) = 1572864 * k + 920987 := by
    unfold C
    simp [show (3145728 * k + 1841974) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 920987) = 4718592 * k + 2762962 := by
    unfold C
    simp [show (1572864 * k + 920987) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2762962) = 2359296 * k + 1381481 := by
    unfold C
    simp [show (4718592 * k + 2762962) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1381481) = 7077888 * k + 4144444 := by
    unfold C
    simp [show (2359296 * k + 1381481) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4144444) = 3538944 * k + 2072222 := by
    unfold C
    simp [show (7077888 * k + 4144444) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2072222) = 1769472 * k + 1036111 := by
    unfold C
    simp [show (3538944 * k + 2072222) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1036111) = 5308416 * k + 3108334 := by
    unfold C
    simp [show (1769472 * k + 1036111) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3108334) = 2654208 * k + 1554167 := by
    unfold C
    simp [show (5308416 * k + 3108334) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1554167) = 7962624 * k + 4662502 := by
    unfold C
    simp [show (2654208 * k + 1554167) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4662502) = 3981312 * k + 2331251 := by
    unfold C
    simp [show (7962624 * k + 4662502) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2331251) = 11943936 * k + 6993754 := by
    unfold C
    simp [show (3981312 * k + 2331251) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6993754) = 5971968 * k + 3496877 := by
    unfold C
    simp [show (11943936 * k + 6993754) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3496877) = 17915904 * k + 10490632 := by
    unfold C
    simp [show (5971968 * k + 3496877) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10490632) = 8957952 * k + 5245316 := by
    unfold C
    simp [show (17915904 * k + 10490632) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5245316) = 4478976 * k + 2622658 := by
    unfold C
    simp [show (8957952 * k + 5245316) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2622658) = 2239488 * k + 1311329 := by
    unfold C
    simp [show (4478976 * k + 2622658) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1311329) = 6718464 * k + 3933988 := by
    unfold C
    simp [show (2239488 * k + 1311329) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3933988) = 3359232 * k + 1966994 := by
    unfold C
    simp [show (6718464 * k + 3933988) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1966994) = 1679616 * k + 983497 := by
    unfold C
    simp [show (3359232 * k + 1966994) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 983497) = 5038848 * k + 2950492 := by
    unfold C
    simp [show (1679616 * k + 983497) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2950492) = 2519424 * k + 1475246 := by
    unfold C
    simp [show (5038848 * k + 2950492) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1475246) = 1259712 * k + 737623 := by
    unfold C
    simp [show (2519424 * k + 1475246) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 737623) = 3779136 * k + 2212870 := by
    unfold C
    simp [show (1259712 * k + 737623) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2212870) = 1889568 * k + 1106435 := by
    unfold C
    simp [show (3779136 * k + 2212870) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1106435) = 5668704 * k + 3319306 := by
    unfold C
    simp [show (1889568 * k + 1106435) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3319306) = 2834352 * k + 1659653 := by
    unfold C
    simp [show (5668704 * k + 3319306) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1659653) = 8503056 * k + 4978960 := by
    unfold C
    simp [show (2834352 * k + 1659653) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4978960) = 4251528 * k + 2489480 := by
    unfold C
    simp [show (8503056 * k + 4978960) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2489480) = 2125764 * k + 1244740 := by
    unfold C
    simp [show (4251528 * k + 2489480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1244740) = 1062882 * k + 622370 := by
    unfold C
    simp [show (2125764 * k + 1244740) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 622370) = 531441 * k + 311185 := by
    unfold C
    simp [show (1062882 * k + 622370) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 613991) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 613991)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_614171 : ∀ k : Nat,
    iterate (1048576 * k + 614171) 32 = 531441 * k + 311276 ∧
      531441 * k + 311276 < 1048576 * k + 614171 := by
  intro k
  have h1 : C (1048576 * k + 614171) = 3145728 * k + 1842514 := by
    unfold C
    simp [show (1048576 * k + 614171) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1842514) = 1572864 * k + 921257 := by
    unfold C
    simp [show (3145728 * k + 1842514) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 921257) = 4718592 * k + 2763772 := by
    unfold C
    simp [show (1572864 * k + 921257) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2763772) = 2359296 * k + 1381886 := by
    unfold C
    simp [show (4718592 * k + 2763772) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1381886) = 1179648 * k + 690943 := by
    unfold C
    simp [show (2359296 * k + 1381886) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 690943) = 3538944 * k + 2072830 := by
    unfold C
    simp [show (1179648 * k + 690943) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2072830) = 1769472 * k + 1036415 := by
    unfold C
    simp [show (3538944 * k + 2072830) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1036415) = 5308416 * k + 3109246 := by
    unfold C
    simp [show (1769472 * k + 1036415) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3109246) = 2654208 * k + 1554623 := by
    unfold C
    simp [show (5308416 * k + 3109246) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1554623) = 7962624 * k + 4663870 := by
    unfold C
    simp [show (2654208 * k + 1554623) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4663870) = 3981312 * k + 2331935 := by
    unfold C
    simp [show (7962624 * k + 4663870) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2331935) = 11943936 * k + 6995806 := by
    unfold C
    simp [show (3981312 * k + 2331935) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6995806) = 5971968 * k + 3497903 := by
    unfold C
    simp [show (11943936 * k + 6995806) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3497903) = 17915904 * k + 10493710 := by
    unfold C
    simp [show (5971968 * k + 3497903) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10493710) = 8957952 * k + 5246855 := by
    unfold C
    simp [show (17915904 * k + 10493710) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5246855) = 26873856 * k + 15740566 := by
    unfold C
    simp [show (8957952 * k + 5246855) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 15740566) = 13436928 * k + 7870283 := by
    unfold C
    simp [show (26873856 * k + 15740566) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7870283) = 40310784 * k + 23610850 := by
    unfold C
    simp [show (13436928 * k + 7870283) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 23610850) = 20155392 * k + 11805425 := by
    unfold C
    simp [show (40310784 * k + 23610850) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 11805425) = 60466176 * k + 35416276 := by
    unfold C
    simp [show (20155392 * k + 11805425) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 35416276) = 30233088 * k + 17708138 := by
    unfold C
    simp [show (60466176 * k + 35416276) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 17708138) = 15116544 * k + 8854069 := by
    unfold C
    simp [show (30233088 * k + 17708138) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8854069) = 45349632 * k + 26562208 := by
    unfold C
    simp [show (15116544 * k + 8854069) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 26562208) = 22674816 * k + 13281104 := by
    unfold C
    simp [show (45349632 * k + 26562208) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 13281104) = 11337408 * k + 6640552 := by
    unfold C
    simp [show (22674816 * k + 13281104) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6640552) = 5668704 * k + 3320276 := by
    unfold C
    simp [show (11337408 * k + 6640552) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3320276) = 2834352 * k + 1660138 := by
    unfold C
    simp [show (5668704 * k + 3320276) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1660138) = 1417176 * k + 830069 := by
    unfold C
    simp [show (2834352 * k + 1660138) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 830069) = 4251528 * k + 2490208 := by
    unfold C
    simp [show (1417176 * k + 830069) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2490208) = 2125764 * k + 1245104 := by
    unfold C
    simp [show (4251528 * k + 2490208) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1245104) = 1062882 * k + 622552 := by
    unfold C
    simp [show (2125764 * k + 1245104) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 622552) = 531441 * k + 311276 := by
    unfold C
    simp [show (1062882 * k + 622552) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 614171) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 614171)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_614727 : ∀ k : Nat,
    iterate (1048576 * k + 614727) 32 = 531441 * k + 311558 ∧
      531441 * k + 311558 < 1048576 * k + 614727 := by
  intro k
  have h1 : C (1048576 * k + 614727) = 3145728 * k + 1844182 := by
    unfold C
    simp [show (1048576 * k + 614727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1844182) = 1572864 * k + 922091 := by
    unfold C
    simp [show (3145728 * k + 1844182) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 922091) = 4718592 * k + 2766274 := by
    unfold C
    simp [show (1572864 * k + 922091) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2766274) = 2359296 * k + 1383137 := by
    unfold C
    simp [show (4718592 * k + 2766274) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1383137) = 7077888 * k + 4149412 := by
    unfold C
    simp [show (2359296 * k + 1383137) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4149412) = 3538944 * k + 2074706 := by
    unfold C
    simp [show (7077888 * k + 4149412) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2074706) = 1769472 * k + 1037353 := by
    unfold C
    simp [show (3538944 * k + 2074706) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1037353) = 5308416 * k + 3112060 := by
    unfold C
    simp [show (1769472 * k + 1037353) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3112060) = 2654208 * k + 1556030 := by
    unfold C
    simp [show (5308416 * k + 3112060) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1556030) = 1327104 * k + 778015 := by
    unfold C
    simp [show (2654208 * k + 1556030) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 778015) = 3981312 * k + 2334046 := by
    unfold C
    simp [show (1327104 * k + 778015) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2334046) = 1990656 * k + 1167023 := by
    unfold C
    simp [show (3981312 * k + 2334046) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1167023) = 5971968 * k + 3501070 := by
    unfold C
    simp [show (1990656 * k + 1167023) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3501070) = 2985984 * k + 1750535 := by
    unfold C
    simp [show (5971968 * k + 3501070) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1750535) = 8957952 * k + 5251606 := by
    unfold C
    simp [show (2985984 * k + 1750535) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5251606) = 4478976 * k + 2625803 := by
    unfold C
    simp [show (8957952 * k + 5251606) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2625803) = 13436928 * k + 7877410 := by
    unfold C
    simp [show (4478976 * k + 2625803) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7877410) = 6718464 * k + 3938705 := by
    unfold C
    simp [show (13436928 * k + 7877410) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3938705) = 20155392 * k + 11816116 := by
    unfold C
    simp [show (6718464 * k + 3938705) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 11816116) = 10077696 * k + 5908058 := by
    unfold C
    simp [show (20155392 * k + 11816116) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5908058) = 5038848 * k + 2954029 := by
    unfold C
    simp [show (10077696 * k + 5908058) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2954029) = 15116544 * k + 8862088 := by
    unfold C
    simp [show (5038848 * k + 2954029) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8862088) = 7558272 * k + 4431044 := by
    unfold C
    simp [show (15116544 * k + 8862088) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4431044) = 3779136 * k + 2215522 := by
    unfold C
    simp [show (7558272 * k + 4431044) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2215522) = 1889568 * k + 1107761 := by
    unfold C
    simp [show (3779136 * k + 2215522) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1107761) = 5668704 * k + 3323284 := by
    unfold C
    simp [show (1889568 * k + 1107761) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3323284) = 2834352 * k + 1661642 := by
    unfold C
    simp [show (5668704 * k + 3323284) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1661642) = 1417176 * k + 830821 := by
    unfold C
    simp [show (2834352 * k + 1661642) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 830821) = 4251528 * k + 2492464 := by
    unfold C
    simp [show (1417176 * k + 830821) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2492464) = 2125764 * k + 1246232 := by
    unfold C
    simp [show (4251528 * k + 2492464) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1246232) = 1062882 * k + 623116 := by
    unfold C
    simp [show (2125764 * k + 1246232) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 623116) = 531441 * k + 311558 := by
    unfold C
    simp [show (1062882 * k + 623116) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 614727) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 614727)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_614887 : ∀ k : Nat,
    iterate (1048576 * k + 614887) 32 = 531441 * k + 311639 ∧
      531441 * k + 311639 < 1048576 * k + 614887 := by
  intro k
  have h1 : C (1048576 * k + 614887) = 3145728 * k + 1844662 := by
    unfold C
    simp [show (1048576 * k + 614887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1844662) = 1572864 * k + 922331 := by
    unfold C
    simp [show (3145728 * k + 1844662) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 922331) = 4718592 * k + 2766994 := by
    unfold C
    simp [show (1572864 * k + 922331) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2766994) = 2359296 * k + 1383497 := by
    unfold C
    simp [show (4718592 * k + 2766994) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1383497) = 7077888 * k + 4150492 := by
    unfold C
    simp [show (2359296 * k + 1383497) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4150492) = 3538944 * k + 2075246 := by
    unfold C
    simp [show (7077888 * k + 4150492) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2075246) = 1769472 * k + 1037623 := by
    unfold C
    simp [show (3538944 * k + 2075246) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1037623) = 5308416 * k + 3112870 := by
    unfold C
    simp [show (1769472 * k + 1037623) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3112870) = 2654208 * k + 1556435 := by
    unfold C
    simp [show (5308416 * k + 3112870) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1556435) = 7962624 * k + 4669306 := by
    unfold C
    simp [show (2654208 * k + 1556435) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4669306) = 3981312 * k + 2334653 := by
    unfold C
    simp [show (7962624 * k + 4669306) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2334653) = 11943936 * k + 7003960 := by
    unfold C
    simp [show (3981312 * k + 2334653) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7003960) = 5971968 * k + 3501980 := by
    unfold C
    simp [show (11943936 * k + 7003960) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3501980) = 2985984 * k + 1750990 := by
    unfold C
    simp [show (5971968 * k + 3501980) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1750990) = 1492992 * k + 875495 := by
    unfold C
    simp [show (2985984 * k + 1750990) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 875495) = 4478976 * k + 2626486 := by
    unfold C
    simp [show (1492992 * k + 875495) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2626486) = 2239488 * k + 1313243 := by
    unfold C
    simp [show (4478976 * k + 2626486) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1313243) = 6718464 * k + 3939730 := by
    unfold C
    simp [show (2239488 * k + 1313243) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3939730) = 3359232 * k + 1969865 := by
    unfold C
    simp [show (6718464 * k + 3939730) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1969865) = 10077696 * k + 5909596 := by
    unfold C
    simp [show (3359232 * k + 1969865) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5909596) = 5038848 * k + 2954798 := by
    unfold C
    simp [show (10077696 * k + 5909596) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2954798) = 2519424 * k + 1477399 := by
    unfold C
    simp [show (5038848 * k + 2954798) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1477399) = 7558272 * k + 4432198 := by
    unfold C
    simp [show (2519424 * k + 1477399) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4432198) = 3779136 * k + 2216099 := by
    unfold C
    simp [show (7558272 * k + 4432198) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2216099) = 11337408 * k + 6648298 := by
    unfold C
    simp [show (3779136 * k + 2216099) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6648298) = 5668704 * k + 3324149 := by
    unfold C
    simp [show (11337408 * k + 6648298) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3324149) = 17006112 * k + 9972448 := by
    unfold C
    simp [show (5668704 * k + 3324149) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9972448) = 8503056 * k + 4986224 := by
    unfold C
    simp [show (17006112 * k + 9972448) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4986224) = 4251528 * k + 2493112 := by
    unfold C
    simp [show (8503056 * k + 4986224) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2493112) = 2125764 * k + 1246556 := by
    unfold C
    simp [show (4251528 * k + 2493112) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1246556) = 1062882 * k + 623278 := by
    unfold C
    simp [show (2125764 * k + 1246556) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 623278) = 531441 * k + 311639 := by
    unfold C
    simp [show (1062882 * k + 623278) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 614887) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 614887)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_615003 : ∀ k : Nat,
    iterate (1048576 * k + 615003) 32 = 531441 * k + 311698 ∧
      531441 * k + 311698 < 1048576 * k + 615003 := by
  intro k
  have h1 : C (1048576 * k + 615003) = 3145728 * k + 1845010 := by
    unfold C
    simp [show (1048576 * k + 615003) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1845010) = 1572864 * k + 922505 := by
    unfold C
    simp [show (3145728 * k + 1845010) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 922505) = 4718592 * k + 2767516 := by
    unfold C
    simp [show (1572864 * k + 922505) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2767516) = 2359296 * k + 1383758 := by
    unfold C
    simp [show (4718592 * k + 2767516) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1383758) = 1179648 * k + 691879 := by
    unfold C
    simp [show (2359296 * k + 1383758) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 691879) = 3538944 * k + 2075638 := by
    unfold C
    simp [show (1179648 * k + 691879) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2075638) = 1769472 * k + 1037819 := by
    unfold C
    simp [show (3538944 * k + 2075638) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1037819) = 5308416 * k + 3113458 := by
    unfold C
    simp [show (1769472 * k + 1037819) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3113458) = 2654208 * k + 1556729 := by
    unfold C
    simp [show (5308416 * k + 3113458) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1556729) = 7962624 * k + 4670188 := by
    unfold C
    simp [show (2654208 * k + 1556729) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4670188) = 3981312 * k + 2335094 := by
    unfold C
    simp [show (7962624 * k + 4670188) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2335094) = 1990656 * k + 1167547 := by
    unfold C
    simp [show (3981312 * k + 2335094) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1167547) = 5971968 * k + 3502642 := by
    unfold C
    simp [show (1990656 * k + 1167547) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3502642) = 2985984 * k + 1751321 := by
    unfold C
    simp [show (5971968 * k + 3502642) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1751321) = 8957952 * k + 5253964 := by
    unfold C
    simp [show (2985984 * k + 1751321) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5253964) = 4478976 * k + 2626982 := by
    unfold C
    simp [show (8957952 * k + 5253964) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2626982) = 2239488 * k + 1313491 := by
    unfold C
    simp [show (4478976 * k + 2626982) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1313491) = 6718464 * k + 3940474 := by
    unfold C
    simp [show (2239488 * k + 1313491) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3940474) = 3359232 * k + 1970237 := by
    unfold C
    simp [show (6718464 * k + 3940474) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1970237) = 10077696 * k + 5910712 := by
    unfold C
    simp [show (3359232 * k + 1970237) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5910712) = 5038848 * k + 2955356 := by
    unfold C
    simp [show (10077696 * k + 5910712) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2955356) = 2519424 * k + 1477678 := by
    unfold C
    simp [show (5038848 * k + 2955356) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1477678) = 1259712 * k + 738839 := by
    unfold C
    simp [show (2519424 * k + 1477678) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 738839) = 3779136 * k + 2216518 := by
    unfold C
    simp [show (1259712 * k + 738839) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2216518) = 1889568 * k + 1108259 := by
    unfold C
    simp [show (3779136 * k + 2216518) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1108259) = 5668704 * k + 3324778 := by
    unfold C
    simp [show (1889568 * k + 1108259) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3324778) = 2834352 * k + 1662389 := by
    unfold C
    simp [show (5668704 * k + 3324778) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1662389) = 8503056 * k + 4987168 := by
    unfold C
    simp [show (2834352 * k + 1662389) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4987168) = 4251528 * k + 2493584 := by
    unfold C
    simp [show (8503056 * k + 4987168) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2493584) = 2125764 * k + 1246792 := by
    unfold C
    simp [show (4251528 * k + 2493584) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1246792) = 1062882 * k + 623396 := by
    unfold C
    simp [show (2125764 * k + 1246792) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 623396) = 531441 * k + 311698 := by
    unfold C
    simp [show (1062882 * k + 623396) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 615003) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 615003)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_615259 : ∀ k : Nat,
    iterate (1048576 * k + 615259) 32 = 531441 * k + 311828 ∧
      531441 * k + 311828 < 1048576 * k + 615259 := by
  intro k
  have h1 : C (1048576 * k + 615259) = 3145728 * k + 1845778 := by
    unfold C
    simp [show (1048576 * k + 615259) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1845778) = 1572864 * k + 922889 := by
    unfold C
    simp [show (3145728 * k + 1845778) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 922889) = 4718592 * k + 2768668 := by
    unfold C
    simp [show (1572864 * k + 922889) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2768668) = 2359296 * k + 1384334 := by
    unfold C
    simp [show (4718592 * k + 2768668) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1384334) = 1179648 * k + 692167 := by
    unfold C
    simp [show (2359296 * k + 1384334) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 692167) = 3538944 * k + 2076502 := by
    unfold C
    simp [show (1179648 * k + 692167) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2076502) = 1769472 * k + 1038251 := by
    unfold C
    simp [show (3538944 * k + 2076502) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1038251) = 5308416 * k + 3114754 := by
    unfold C
    simp [show (1769472 * k + 1038251) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3114754) = 2654208 * k + 1557377 := by
    unfold C
    simp [show (5308416 * k + 3114754) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1557377) = 7962624 * k + 4672132 := by
    unfold C
    simp [show (2654208 * k + 1557377) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4672132) = 3981312 * k + 2336066 := by
    unfold C
    simp [show (7962624 * k + 4672132) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2336066) = 1990656 * k + 1168033 := by
    unfold C
    simp [show (3981312 * k + 2336066) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1168033) = 5971968 * k + 3504100 := by
    unfold C
    simp [show (1990656 * k + 1168033) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3504100) = 2985984 * k + 1752050 := by
    unfold C
    simp [show (5971968 * k + 3504100) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1752050) = 1492992 * k + 876025 := by
    unfold C
    simp [show (2985984 * k + 1752050) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 876025) = 4478976 * k + 2628076 := by
    unfold C
    simp [show (1492992 * k + 876025) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2628076) = 2239488 * k + 1314038 := by
    unfold C
    simp [show (4478976 * k + 2628076) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1314038) = 1119744 * k + 657019 := by
    unfold C
    simp [show (2239488 * k + 1314038) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 657019) = 3359232 * k + 1971058 := by
    unfold C
    simp [show (1119744 * k + 657019) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1971058) = 1679616 * k + 985529 := by
    unfold C
    simp [show (3359232 * k + 1971058) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 985529) = 5038848 * k + 2956588 := by
    unfold C
    simp [show (1679616 * k + 985529) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2956588) = 2519424 * k + 1478294 := by
    unfold C
    simp [show (5038848 * k + 2956588) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1478294) = 1259712 * k + 739147 := by
    unfold C
    simp [show (2519424 * k + 1478294) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 739147) = 3779136 * k + 2217442 := by
    unfold C
    simp [show (1259712 * k + 739147) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2217442) = 1889568 * k + 1108721 := by
    unfold C
    simp [show (3779136 * k + 2217442) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1108721) = 5668704 * k + 3326164 := by
    unfold C
    simp [show (1889568 * k + 1108721) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3326164) = 2834352 * k + 1663082 := by
    unfold C
    simp [show (5668704 * k + 3326164) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1663082) = 1417176 * k + 831541 := by
    unfold C
    simp [show (2834352 * k + 1663082) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 831541) = 4251528 * k + 2494624 := by
    unfold C
    simp [show (1417176 * k + 831541) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2494624) = 2125764 * k + 1247312 := by
    unfold C
    simp [show (4251528 * k + 2494624) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1247312) = 1062882 * k + 623656 := by
    unfold C
    simp [show (2125764 * k + 1247312) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 623656) = 531441 * k + 311828 := by
    unfold C
    simp [show (1062882 * k + 623656) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 615259) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 615259)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_615579 : ∀ k : Nat,
    iterate (1048576 * k + 615579) 32 = 531441 * k + 311990 ∧
      531441 * k + 311990 < 1048576 * k + 615579 := by
  intro k
  have h1 : C (1048576 * k + 615579) = 3145728 * k + 1846738 := by
    unfold C
    simp [show (1048576 * k + 615579) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1846738) = 1572864 * k + 923369 := by
    unfold C
    simp [show (3145728 * k + 1846738) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 923369) = 4718592 * k + 2770108 := by
    unfold C
    simp [show (1572864 * k + 923369) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2770108) = 2359296 * k + 1385054 := by
    unfold C
    simp [show (4718592 * k + 2770108) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1385054) = 1179648 * k + 692527 := by
    unfold C
    simp [show (2359296 * k + 1385054) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 692527) = 3538944 * k + 2077582 := by
    unfold C
    simp [show (1179648 * k + 692527) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2077582) = 1769472 * k + 1038791 := by
    unfold C
    simp [show (3538944 * k + 2077582) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1038791) = 5308416 * k + 3116374 := by
    unfold C
    simp [show (1769472 * k + 1038791) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3116374) = 2654208 * k + 1558187 := by
    unfold C
    simp [show (5308416 * k + 3116374) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1558187) = 7962624 * k + 4674562 := by
    unfold C
    simp [show (2654208 * k + 1558187) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4674562) = 3981312 * k + 2337281 := by
    unfold C
    simp [show (7962624 * k + 4674562) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2337281) = 11943936 * k + 7011844 := by
    unfold C
    simp [show (3981312 * k + 2337281) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7011844) = 5971968 * k + 3505922 := by
    unfold C
    simp [show (11943936 * k + 7011844) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3505922) = 2985984 * k + 1752961 := by
    unfold C
    simp [show (5971968 * k + 3505922) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1752961) = 8957952 * k + 5258884 := by
    unfold C
    simp [show (2985984 * k + 1752961) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5258884) = 4478976 * k + 2629442 := by
    unfold C
    simp [show (8957952 * k + 5258884) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2629442) = 2239488 * k + 1314721 := by
    unfold C
    simp [show (4478976 * k + 2629442) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1314721) = 6718464 * k + 3944164 := by
    unfold C
    simp [show (2239488 * k + 1314721) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3944164) = 3359232 * k + 1972082 := by
    unfold C
    simp [show (6718464 * k + 3944164) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1972082) = 1679616 * k + 986041 := by
    unfold C
    simp [show (3359232 * k + 1972082) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 986041) = 5038848 * k + 2958124 := by
    unfold C
    simp [show (1679616 * k + 986041) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2958124) = 2519424 * k + 1479062 := by
    unfold C
    simp [show (5038848 * k + 2958124) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1479062) = 1259712 * k + 739531 := by
    unfold C
    simp [show (2519424 * k + 1479062) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 739531) = 3779136 * k + 2218594 := by
    unfold C
    simp [show (1259712 * k + 739531) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2218594) = 1889568 * k + 1109297 := by
    unfold C
    simp [show (3779136 * k + 2218594) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1109297) = 5668704 * k + 3327892 := by
    unfold C
    simp [show (1889568 * k + 1109297) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3327892) = 2834352 * k + 1663946 := by
    unfold C
    simp [show (5668704 * k + 3327892) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1663946) = 1417176 * k + 831973 := by
    unfold C
    simp [show (2834352 * k + 1663946) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 831973) = 4251528 * k + 2495920 := by
    unfold C
    simp [show (1417176 * k + 831973) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2495920) = 2125764 * k + 1247960 := by
    unfold C
    simp [show (4251528 * k + 2495920) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1247960) = 1062882 * k + 623980 := by
    unfold C
    simp [show (2125764 * k + 1247960) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 623980) = 531441 * k + 311990 := by
    unfold C
    simp [show (1062882 * k + 623980) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 615579) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 615579)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_615751 : ∀ k : Nat,
    iterate (1048576 * k + 615751) 32 = 531441 * k + 312077 ∧
      531441 * k + 312077 < 1048576 * k + 615751 := by
  intro k
  have h1 : C (1048576 * k + 615751) = 3145728 * k + 1847254 := by
    unfold C
    simp [show (1048576 * k + 615751) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1847254) = 1572864 * k + 923627 := by
    unfold C
    simp [show (3145728 * k + 1847254) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 923627) = 4718592 * k + 2770882 := by
    unfold C
    simp [show (1572864 * k + 923627) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2770882) = 2359296 * k + 1385441 := by
    unfold C
    simp [show (4718592 * k + 2770882) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1385441) = 7077888 * k + 4156324 := by
    unfold C
    simp [show (2359296 * k + 1385441) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4156324) = 3538944 * k + 2078162 := by
    unfold C
    simp [show (7077888 * k + 4156324) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2078162) = 1769472 * k + 1039081 := by
    unfold C
    simp [show (3538944 * k + 2078162) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1039081) = 5308416 * k + 3117244 := by
    unfold C
    simp [show (1769472 * k + 1039081) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3117244) = 2654208 * k + 1558622 := by
    unfold C
    simp [show (5308416 * k + 3117244) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1558622) = 1327104 * k + 779311 := by
    unfold C
    simp [show (2654208 * k + 1558622) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 779311) = 3981312 * k + 2337934 := by
    unfold C
    simp [show (1327104 * k + 779311) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2337934) = 1990656 * k + 1168967 := by
    unfold C
    simp [show (3981312 * k + 2337934) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1168967) = 5971968 * k + 3506902 := by
    unfold C
    simp [show (1990656 * k + 1168967) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3506902) = 2985984 * k + 1753451 := by
    unfold C
    simp [show (5971968 * k + 3506902) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1753451) = 8957952 * k + 5260354 := by
    unfold C
    simp [show (2985984 * k + 1753451) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5260354) = 4478976 * k + 2630177 := by
    unfold C
    simp [show (8957952 * k + 5260354) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2630177) = 13436928 * k + 7890532 := by
    unfold C
    simp [show (4478976 * k + 2630177) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7890532) = 6718464 * k + 3945266 := by
    unfold C
    simp [show (13436928 * k + 7890532) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3945266) = 3359232 * k + 1972633 := by
    unfold C
    simp [show (6718464 * k + 3945266) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1972633) = 10077696 * k + 5917900 := by
    unfold C
    simp [show (3359232 * k + 1972633) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5917900) = 5038848 * k + 2958950 := by
    unfold C
    simp [show (10077696 * k + 5917900) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2958950) = 2519424 * k + 1479475 := by
    unfold C
    simp [show (5038848 * k + 2958950) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1479475) = 7558272 * k + 4438426 := by
    unfold C
    simp [show (2519424 * k + 1479475) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4438426) = 3779136 * k + 2219213 := by
    unfold C
    simp [show (7558272 * k + 4438426) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2219213) = 11337408 * k + 6657640 := by
    unfold C
    simp [show (3779136 * k + 2219213) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6657640) = 5668704 * k + 3328820 := by
    unfold C
    simp [show (11337408 * k + 6657640) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3328820) = 2834352 * k + 1664410 := by
    unfold C
    simp [show (5668704 * k + 3328820) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1664410) = 1417176 * k + 832205 := by
    unfold C
    simp [show (2834352 * k + 1664410) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 832205) = 4251528 * k + 2496616 := by
    unfold C
    simp [show (1417176 * k + 832205) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2496616) = 2125764 * k + 1248308 := by
    unfold C
    simp [show (4251528 * k + 2496616) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1248308) = 1062882 * k + 624154 := by
    unfold C
    simp [show (2125764 * k + 1248308) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 624154) = 531441 * k + 312077 := by
    unfold C
    simp [show (1062882 * k + 624154) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 615751) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 615751)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard079
