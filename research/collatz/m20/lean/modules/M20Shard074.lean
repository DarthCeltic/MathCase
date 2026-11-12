import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard074

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_570911 : ∀ k : Nat,
    iterate (1048576 * k + 570911) 32 = 531441 * k + 289351 ∧
      531441 * k + 289351 < 1048576 * k + 570911 := by
  intro k
  have h1 : C (1048576 * k + 570911) = 3145728 * k + 1712734 := by
    unfold C
    simp [show (1048576 * k + 570911) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1712734) = 1572864 * k + 856367 := by
    unfold C
    simp [show (3145728 * k + 1712734) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 856367) = 4718592 * k + 2569102 := by
    unfold C
    simp [show (1572864 * k + 856367) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2569102) = 2359296 * k + 1284551 := by
    unfold C
    simp [show (4718592 * k + 2569102) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1284551) = 7077888 * k + 3853654 := by
    unfold C
    simp [show (2359296 * k + 1284551) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3853654) = 3538944 * k + 1926827 := by
    unfold C
    simp [show (7077888 * k + 3853654) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1926827) = 10616832 * k + 5780482 := by
    unfold C
    simp [show (3538944 * k + 1926827) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5780482) = 5308416 * k + 2890241 := by
    unfold C
    simp [show (10616832 * k + 5780482) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2890241) = 15925248 * k + 8670724 := by
    unfold C
    simp [show (5308416 * k + 2890241) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8670724) = 7962624 * k + 4335362 := by
    unfold C
    simp [show (15925248 * k + 8670724) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4335362) = 3981312 * k + 2167681 := by
    unfold C
    simp [show (7962624 * k + 4335362) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2167681) = 11943936 * k + 6503044 := by
    unfold C
    simp [show (3981312 * k + 2167681) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6503044) = 5971968 * k + 3251522 := by
    unfold C
    simp [show (11943936 * k + 6503044) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3251522) = 2985984 * k + 1625761 := by
    unfold C
    simp [show (5971968 * k + 3251522) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1625761) = 8957952 * k + 4877284 := by
    unfold C
    simp [show (2985984 * k + 1625761) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4877284) = 4478976 * k + 2438642 := by
    unfold C
    simp [show (8957952 * k + 4877284) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2438642) = 2239488 * k + 1219321 := by
    unfold C
    simp [show (4478976 * k + 2438642) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1219321) = 6718464 * k + 3657964 := by
    unfold C
    simp [show (2239488 * k + 1219321) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3657964) = 3359232 * k + 1828982 := by
    unfold C
    simp [show (6718464 * k + 3657964) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1828982) = 1679616 * k + 914491 := by
    unfold C
    simp [show (3359232 * k + 1828982) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 914491) = 5038848 * k + 2743474 := by
    unfold C
    simp [show (1679616 * k + 914491) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2743474) = 2519424 * k + 1371737 := by
    unfold C
    simp [show (5038848 * k + 2743474) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1371737) = 7558272 * k + 4115212 := by
    unfold C
    simp [show (2519424 * k + 1371737) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4115212) = 3779136 * k + 2057606 := by
    unfold C
    simp [show (7558272 * k + 4115212) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2057606) = 1889568 * k + 1028803 := by
    unfold C
    simp [show (3779136 * k + 2057606) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1028803) = 5668704 * k + 3086410 := by
    unfold C
    simp [show (1889568 * k + 1028803) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3086410) = 2834352 * k + 1543205 := by
    unfold C
    simp [show (5668704 * k + 3086410) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1543205) = 8503056 * k + 4629616 := by
    unfold C
    simp [show (2834352 * k + 1543205) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4629616) = 4251528 * k + 2314808 := by
    unfold C
    simp [show (8503056 * k + 4629616) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2314808) = 2125764 * k + 1157404 := by
    unfold C
    simp [show (4251528 * k + 2314808) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1157404) = 1062882 * k + 578702 := by
    unfold C
    simp [show (2125764 * k + 1157404) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 578702) = 531441 * k + 289351 := by
    unfold C
    simp [show (1062882 * k + 578702) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 570911) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 570911)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_571071 : ∀ k : Nat,
    iterate (1048576 * k + 571071) 32 = 531441 * k + 289432 ∧
      531441 * k + 289432 < 1048576 * k + 571071 := by
  intro k
  have h1 : C (1048576 * k + 571071) = 3145728 * k + 1713214 := by
    unfold C
    simp [show (1048576 * k + 571071) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1713214) = 1572864 * k + 856607 := by
    unfold C
    simp [show (3145728 * k + 1713214) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 856607) = 4718592 * k + 2569822 := by
    unfold C
    simp [show (1572864 * k + 856607) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2569822) = 2359296 * k + 1284911 := by
    unfold C
    simp [show (4718592 * k + 2569822) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1284911) = 7077888 * k + 3854734 := by
    unfold C
    simp [show (2359296 * k + 1284911) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3854734) = 3538944 * k + 1927367 := by
    unfold C
    simp [show (7077888 * k + 3854734) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1927367) = 10616832 * k + 5782102 := by
    unfold C
    simp [show (3538944 * k + 1927367) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5782102) = 5308416 * k + 2891051 := by
    unfold C
    simp [show (10616832 * k + 5782102) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2891051) = 15925248 * k + 8673154 := by
    unfold C
    simp [show (5308416 * k + 2891051) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8673154) = 7962624 * k + 4336577 := by
    unfold C
    simp [show (15925248 * k + 8673154) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4336577) = 23887872 * k + 13009732 := by
    unfold C
    simp [show (7962624 * k + 4336577) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 13009732) = 11943936 * k + 6504866 := by
    unfold C
    simp [show (23887872 * k + 13009732) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6504866) = 5971968 * k + 3252433 := by
    unfold C
    simp [show (11943936 * k + 6504866) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3252433) = 17915904 * k + 9757300 := by
    unfold C
    simp [show (5971968 * k + 3252433) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9757300) = 8957952 * k + 4878650 := by
    unfold C
    simp [show (17915904 * k + 9757300) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4878650) = 4478976 * k + 2439325 := by
    unfold C
    simp [show (8957952 * k + 4878650) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2439325) = 13436928 * k + 7317976 := by
    unfold C
    simp [show (4478976 * k + 2439325) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7317976) = 6718464 * k + 3658988 := by
    unfold C
    simp [show (13436928 * k + 7317976) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3658988) = 3359232 * k + 1829494 := by
    unfold C
    simp [show (6718464 * k + 3658988) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1829494) = 1679616 * k + 914747 := by
    unfold C
    simp [show (3359232 * k + 1829494) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 914747) = 5038848 * k + 2744242 := by
    unfold C
    simp [show (1679616 * k + 914747) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2744242) = 2519424 * k + 1372121 := by
    unfold C
    simp [show (5038848 * k + 2744242) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1372121) = 7558272 * k + 4116364 := by
    unfold C
    simp [show (2519424 * k + 1372121) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4116364) = 3779136 * k + 2058182 := by
    unfold C
    simp [show (7558272 * k + 4116364) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2058182) = 1889568 * k + 1029091 := by
    unfold C
    simp [show (3779136 * k + 2058182) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1029091) = 5668704 * k + 3087274 := by
    unfold C
    simp [show (1889568 * k + 1029091) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3087274) = 2834352 * k + 1543637 := by
    unfold C
    simp [show (5668704 * k + 3087274) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1543637) = 8503056 * k + 4630912 := by
    unfold C
    simp [show (2834352 * k + 1543637) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4630912) = 4251528 * k + 2315456 := by
    unfold C
    simp [show (8503056 * k + 4630912) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2315456) = 2125764 * k + 1157728 := by
    unfold C
    simp [show (4251528 * k + 2315456) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1157728) = 1062882 * k + 578864 := by
    unfold C
    simp [show (2125764 * k + 1157728) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 578864) = 531441 * k + 289432 := by
    unfold C
    simp [show (1062882 * k + 578864) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 571071) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 571071)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_571239 : ∀ k : Nat,
    iterate (1048576 * k + 571239) 32 = 531441 * k + 289517 ∧
      531441 * k + 289517 < 1048576 * k + 571239 := by
  intro k
  have h1 : C (1048576 * k + 571239) = 3145728 * k + 1713718 := by
    unfold C
    simp [show (1048576 * k + 571239) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1713718) = 1572864 * k + 856859 := by
    unfold C
    simp [show (3145728 * k + 1713718) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 856859) = 4718592 * k + 2570578 := by
    unfold C
    simp [show (1572864 * k + 856859) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2570578) = 2359296 * k + 1285289 := by
    unfold C
    simp [show (4718592 * k + 2570578) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1285289) = 7077888 * k + 3855868 := by
    unfold C
    simp [show (2359296 * k + 1285289) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3855868) = 3538944 * k + 1927934 := by
    unfold C
    simp [show (7077888 * k + 3855868) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1927934) = 1769472 * k + 963967 := by
    unfold C
    simp [show (3538944 * k + 1927934) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 963967) = 5308416 * k + 2891902 := by
    unfold C
    simp [show (1769472 * k + 963967) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2891902) = 2654208 * k + 1445951 := by
    unfold C
    simp [show (5308416 * k + 2891902) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1445951) = 7962624 * k + 4337854 := by
    unfold C
    simp [show (2654208 * k + 1445951) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4337854) = 3981312 * k + 2168927 := by
    unfold C
    simp [show (7962624 * k + 4337854) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2168927) = 11943936 * k + 6506782 := by
    unfold C
    simp [show (3981312 * k + 2168927) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6506782) = 5971968 * k + 3253391 := by
    unfold C
    simp [show (11943936 * k + 6506782) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3253391) = 17915904 * k + 9760174 := by
    unfold C
    simp [show (5971968 * k + 3253391) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9760174) = 8957952 * k + 4880087 := by
    unfold C
    simp [show (17915904 * k + 9760174) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4880087) = 26873856 * k + 14640262 := by
    unfold C
    simp [show (8957952 * k + 4880087) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 14640262) = 13436928 * k + 7320131 := by
    unfold C
    simp [show (26873856 * k + 14640262) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7320131) = 40310784 * k + 21960394 := by
    unfold C
    simp [show (13436928 * k + 7320131) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 21960394) = 20155392 * k + 10980197 := by
    unfold C
    simp [show (40310784 * k + 21960394) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 10980197) = 60466176 * k + 32940592 := by
    unfold C
    simp [show (20155392 * k + 10980197) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 32940592) = 30233088 * k + 16470296 := by
    unfold C
    simp [show (60466176 * k + 32940592) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 16470296) = 15116544 * k + 8235148 := by
    unfold C
    simp [show (30233088 * k + 16470296) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8235148) = 7558272 * k + 4117574 := by
    unfold C
    simp [show (15116544 * k + 8235148) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4117574) = 3779136 * k + 2058787 := by
    unfold C
    simp [show (7558272 * k + 4117574) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2058787) = 11337408 * k + 6176362 := by
    unfold C
    simp [show (3779136 * k + 2058787) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6176362) = 5668704 * k + 3088181 := by
    unfold C
    simp [show (11337408 * k + 6176362) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3088181) = 17006112 * k + 9264544 := by
    unfold C
    simp [show (5668704 * k + 3088181) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9264544) = 8503056 * k + 4632272 := by
    unfold C
    simp [show (17006112 * k + 9264544) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4632272) = 4251528 * k + 2316136 := by
    unfold C
    simp [show (8503056 * k + 4632272) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2316136) = 2125764 * k + 1158068 := by
    unfold C
    simp [show (4251528 * k + 2316136) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1158068) = 1062882 * k + 579034 := by
    unfold C
    simp [show (2125764 * k + 1158068) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 579034) = 531441 * k + 289517 := by
    unfold C
    simp [show (1062882 * k + 579034) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 571239) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 571239)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_572575 : ∀ k : Nat,
    iterate (1048576 * k + 572575) 32 = 531441 * k + 290194 ∧
      531441 * k + 290194 < 1048576 * k + 572575 := by
  intro k
  have h1 : C (1048576 * k + 572575) = 3145728 * k + 1717726 := by
    unfold C
    simp [show (1048576 * k + 572575) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1717726) = 1572864 * k + 858863 := by
    unfold C
    simp [show (3145728 * k + 1717726) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 858863) = 4718592 * k + 2576590 := by
    unfold C
    simp [show (1572864 * k + 858863) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2576590) = 2359296 * k + 1288295 := by
    unfold C
    simp [show (4718592 * k + 2576590) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1288295) = 7077888 * k + 3864886 := by
    unfold C
    simp [show (2359296 * k + 1288295) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3864886) = 3538944 * k + 1932443 := by
    unfold C
    simp [show (7077888 * k + 3864886) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1932443) = 10616832 * k + 5797330 := by
    unfold C
    simp [show (3538944 * k + 1932443) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5797330) = 5308416 * k + 2898665 := by
    unfold C
    simp [show (10616832 * k + 5797330) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2898665) = 15925248 * k + 8695996 := by
    unfold C
    simp [show (5308416 * k + 2898665) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8695996) = 7962624 * k + 4347998 := by
    unfold C
    simp [show (15925248 * k + 8695996) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4347998) = 3981312 * k + 2173999 := by
    unfold C
    simp [show (7962624 * k + 4347998) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2173999) = 11943936 * k + 6521998 := by
    unfold C
    simp [show (3981312 * k + 2173999) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6521998) = 5971968 * k + 3260999 := by
    unfold C
    simp [show (11943936 * k + 6521998) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3260999) = 17915904 * k + 9782998 := by
    unfold C
    simp [show (5971968 * k + 3260999) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9782998) = 8957952 * k + 4891499 := by
    unfold C
    simp [show (17915904 * k + 9782998) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4891499) = 26873856 * k + 14674498 := by
    unfold C
    simp [show (8957952 * k + 4891499) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 14674498) = 13436928 * k + 7337249 := by
    unfold C
    simp [show (26873856 * k + 14674498) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7337249) = 40310784 * k + 22011748 := by
    unfold C
    simp [show (13436928 * k + 7337249) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 22011748) = 20155392 * k + 11005874 := by
    unfold C
    simp [show (40310784 * k + 22011748) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 11005874) = 10077696 * k + 5502937 := by
    unfold C
    simp [show (20155392 * k + 11005874) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5502937) = 30233088 * k + 16508812 := by
    unfold C
    simp [show (10077696 * k + 5502937) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 16508812) = 15116544 * k + 8254406 := by
    unfold C
    simp [show (30233088 * k + 16508812) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8254406) = 7558272 * k + 4127203 := by
    unfold C
    simp [show (15116544 * k + 8254406) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4127203) = 22674816 * k + 12381610 := by
    unfold C
    simp [show (7558272 * k + 4127203) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 12381610) = 11337408 * k + 6190805 := by
    unfold C
    simp [show (22674816 * k + 12381610) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6190805) = 34012224 * k + 18572416 := by
    unfold C
    simp [show (11337408 * k + 6190805) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 18572416) = 17006112 * k + 9286208 := by
    unfold C
    simp [show (34012224 * k + 18572416) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 9286208) = 8503056 * k + 4643104 := by
    unfold C
    simp [show (17006112 * k + 9286208) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4643104) = 4251528 * k + 2321552 := by
    unfold C
    simp [show (8503056 * k + 4643104) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2321552) = 2125764 * k + 1160776 := by
    unfold C
    simp [show (4251528 * k + 2321552) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1160776) = 1062882 * k + 580388 := by
    unfold C
    simp [show (2125764 * k + 1160776) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 580388) = 531441 * k + 290194 := by
    unfold C
    simp [show (1062882 * k + 580388) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 572575) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 572575)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_572955 : ∀ k : Nat,
    iterate (1048576 * k + 572955) 32 = 531441 * k + 290387 ∧
      531441 * k + 290387 < 1048576 * k + 572955 := by
  intro k
  have h1 : C (1048576 * k + 572955) = 3145728 * k + 1718866 := by
    unfold C
    simp [show (1048576 * k + 572955) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1718866) = 1572864 * k + 859433 := by
    unfold C
    simp [show (3145728 * k + 1718866) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 859433) = 4718592 * k + 2578300 := by
    unfold C
    simp [show (1572864 * k + 859433) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2578300) = 2359296 * k + 1289150 := by
    unfold C
    simp [show (4718592 * k + 2578300) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1289150) = 1179648 * k + 644575 := by
    unfold C
    simp [show (2359296 * k + 1289150) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 644575) = 3538944 * k + 1933726 := by
    unfold C
    simp [show (1179648 * k + 644575) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1933726) = 1769472 * k + 966863 := by
    unfold C
    simp [show (3538944 * k + 1933726) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 966863) = 5308416 * k + 2900590 := by
    unfold C
    simp [show (1769472 * k + 966863) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2900590) = 2654208 * k + 1450295 := by
    unfold C
    simp [show (5308416 * k + 2900590) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1450295) = 7962624 * k + 4350886 := by
    unfold C
    simp [show (2654208 * k + 1450295) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4350886) = 3981312 * k + 2175443 := by
    unfold C
    simp [show (7962624 * k + 4350886) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2175443) = 11943936 * k + 6526330 := by
    unfold C
    simp [show (3981312 * k + 2175443) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6526330) = 5971968 * k + 3263165 := by
    unfold C
    simp [show (11943936 * k + 6526330) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3263165) = 17915904 * k + 9789496 := by
    unfold C
    simp [show (5971968 * k + 3263165) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9789496) = 8957952 * k + 4894748 := by
    unfold C
    simp [show (17915904 * k + 9789496) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4894748) = 4478976 * k + 2447374 := by
    unfold C
    simp [show (8957952 * k + 4894748) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2447374) = 2239488 * k + 1223687 := by
    unfold C
    simp [show (4478976 * k + 2447374) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1223687) = 6718464 * k + 3671062 := by
    unfold C
    simp [show (2239488 * k + 1223687) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3671062) = 3359232 * k + 1835531 := by
    unfold C
    simp [show (6718464 * k + 3671062) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1835531) = 10077696 * k + 5506594 := by
    unfold C
    simp [show (3359232 * k + 1835531) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5506594) = 5038848 * k + 2753297 := by
    unfold C
    simp [show (10077696 * k + 5506594) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2753297) = 15116544 * k + 8259892 := by
    unfold C
    simp [show (5038848 * k + 2753297) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8259892) = 7558272 * k + 4129946 := by
    unfold C
    simp [show (15116544 * k + 8259892) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4129946) = 3779136 * k + 2064973 := by
    unfold C
    simp [show (7558272 * k + 4129946) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2064973) = 11337408 * k + 6194920 := by
    unfold C
    simp [show (3779136 * k + 2064973) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6194920) = 5668704 * k + 3097460 := by
    unfold C
    simp [show (11337408 * k + 6194920) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3097460) = 2834352 * k + 1548730 := by
    unfold C
    simp [show (5668704 * k + 3097460) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1548730) = 1417176 * k + 774365 := by
    unfold C
    simp [show (2834352 * k + 1548730) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 774365) = 4251528 * k + 2323096 := by
    unfold C
    simp [show (1417176 * k + 774365) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2323096) = 2125764 * k + 1161548 := by
    unfold C
    simp [show (4251528 * k + 2323096) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1161548) = 1062882 * k + 580774 := by
    unfold C
    simp [show (2125764 * k + 1161548) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 580774) = 531441 * k + 290387 := by
    unfold C
    simp [show (1062882 * k + 580774) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 572955) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 572955)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_573511 : ∀ k : Nat,
    iterate (1048576 * k + 573511) 32 = 531441 * k + 290669 ∧
      531441 * k + 290669 < 1048576 * k + 573511 := by
  intro k
  have h1 : C (1048576 * k + 573511) = 3145728 * k + 1720534 := by
    unfold C
    simp [show (1048576 * k + 573511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1720534) = 1572864 * k + 860267 := by
    unfold C
    simp [show (3145728 * k + 1720534) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 860267) = 4718592 * k + 2580802 := by
    unfold C
    simp [show (1572864 * k + 860267) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2580802) = 2359296 * k + 1290401 := by
    unfold C
    simp [show (4718592 * k + 2580802) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1290401) = 7077888 * k + 3871204 := by
    unfold C
    simp [show (2359296 * k + 1290401) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3871204) = 3538944 * k + 1935602 := by
    unfold C
    simp [show (7077888 * k + 3871204) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1935602) = 1769472 * k + 967801 := by
    unfold C
    simp [show (3538944 * k + 1935602) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 967801) = 5308416 * k + 2903404 := by
    unfold C
    simp [show (1769472 * k + 967801) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2903404) = 2654208 * k + 1451702 := by
    unfold C
    simp [show (5308416 * k + 2903404) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1451702) = 1327104 * k + 725851 := by
    unfold C
    simp [show (2654208 * k + 1451702) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 725851) = 3981312 * k + 2177554 := by
    unfold C
    simp [show (1327104 * k + 725851) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2177554) = 1990656 * k + 1088777 := by
    unfold C
    simp [show (3981312 * k + 2177554) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1088777) = 5971968 * k + 3266332 := by
    unfold C
    simp [show (1990656 * k + 1088777) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3266332) = 2985984 * k + 1633166 := by
    unfold C
    simp [show (5971968 * k + 3266332) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1633166) = 1492992 * k + 816583 := by
    unfold C
    simp [show (2985984 * k + 1633166) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 816583) = 4478976 * k + 2449750 := by
    unfold C
    simp [show (1492992 * k + 816583) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2449750) = 2239488 * k + 1224875 := by
    unfold C
    simp [show (4478976 * k + 2449750) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1224875) = 6718464 * k + 3674626 := by
    unfold C
    simp [show (2239488 * k + 1224875) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3674626) = 3359232 * k + 1837313 := by
    unfold C
    simp [show (6718464 * k + 3674626) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1837313) = 10077696 * k + 5511940 := by
    unfold C
    simp [show (3359232 * k + 1837313) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5511940) = 5038848 * k + 2755970 := by
    unfold C
    simp [show (10077696 * k + 5511940) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2755970) = 2519424 * k + 1377985 := by
    unfold C
    simp [show (5038848 * k + 2755970) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1377985) = 7558272 * k + 4133956 := by
    unfold C
    simp [show (2519424 * k + 1377985) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4133956) = 3779136 * k + 2066978 := by
    unfold C
    simp [show (7558272 * k + 4133956) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2066978) = 1889568 * k + 1033489 := by
    unfold C
    simp [show (3779136 * k + 2066978) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1033489) = 5668704 * k + 3100468 := by
    unfold C
    simp [show (1889568 * k + 1033489) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3100468) = 2834352 * k + 1550234 := by
    unfold C
    simp [show (5668704 * k + 3100468) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1550234) = 1417176 * k + 775117 := by
    unfold C
    simp [show (2834352 * k + 1550234) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 775117) = 4251528 * k + 2325352 := by
    unfold C
    simp [show (1417176 * k + 775117) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2325352) = 2125764 * k + 1162676 := by
    unfold C
    simp [show (4251528 * k + 2325352) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1162676) = 1062882 * k + 581338 := by
    unfold C
    simp [show (2125764 * k + 1162676) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 581338) = 531441 * k + 290669 := by
    unfold C
    simp [show (1062882 * k + 581338) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 573511) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 573511)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_575335 : ∀ k : Nat,
    iterate (1048576 * k + 575335) 32 = 531441 * k + 291593 ∧
      531441 * k + 291593 < 1048576 * k + 575335 := by
  intro k
  have h1 : C (1048576 * k + 575335) = 3145728 * k + 1726006 := by
    unfold C
    simp [show (1048576 * k + 575335) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1726006) = 1572864 * k + 863003 := by
    unfold C
    simp [show (3145728 * k + 1726006) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 863003) = 4718592 * k + 2589010 := by
    unfold C
    simp [show (1572864 * k + 863003) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2589010) = 2359296 * k + 1294505 := by
    unfold C
    simp [show (4718592 * k + 2589010) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1294505) = 7077888 * k + 3883516 := by
    unfold C
    simp [show (2359296 * k + 1294505) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3883516) = 3538944 * k + 1941758 := by
    unfold C
    simp [show (7077888 * k + 3883516) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1941758) = 1769472 * k + 970879 := by
    unfold C
    simp [show (3538944 * k + 1941758) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 970879) = 5308416 * k + 2912638 := by
    unfold C
    simp [show (1769472 * k + 970879) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2912638) = 2654208 * k + 1456319 := by
    unfold C
    simp [show (5308416 * k + 2912638) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1456319) = 7962624 * k + 4368958 := by
    unfold C
    simp [show (2654208 * k + 1456319) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4368958) = 3981312 * k + 2184479 := by
    unfold C
    simp [show (7962624 * k + 4368958) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2184479) = 11943936 * k + 6553438 := by
    unfold C
    simp [show (3981312 * k + 2184479) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6553438) = 5971968 * k + 3276719 := by
    unfold C
    simp [show (11943936 * k + 6553438) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3276719) = 17915904 * k + 9830158 := by
    unfold C
    simp [show (5971968 * k + 3276719) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9830158) = 8957952 * k + 4915079 := by
    unfold C
    simp [show (17915904 * k + 9830158) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4915079) = 26873856 * k + 14745238 := by
    unfold C
    simp [show (8957952 * k + 4915079) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 14745238) = 13436928 * k + 7372619 := by
    unfold C
    simp [show (26873856 * k + 14745238) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7372619) = 40310784 * k + 22117858 := by
    unfold C
    simp [show (13436928 * k + 7372619) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 22117858) = 20155392 * k + 11058929 := by
    unfold C
    simp [show (40310784 * k + 22117858) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 11058929) = 60466176 * k + 33176788 := by
    unfold C
    simp [show (20155392 * k + 11058929) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 33176788) = 30233088 * k + 16588394 := by
    unfold C
    simp [show (60466176 * k + 33176788) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 16588394) = 15116544 * k + 8294197 := by
    unfold C
    simp [show (30233088 * k + 16588394) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8294197) = 45349632 * k + 24882592 := by
    unfold C
    simp [show (15116544 * k + 8294197) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 24882592) = 22674816 * k + 12441296 := by
    unfold C
    simp [show (45349632 * k + 24882592) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 12441296) = 11337408 * k + 6220648 := by
    unfold C
    simp [show (22674816 * k + 12441296) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6220648) = 5668704 * k + 3110324 := by
    unfold C
    simp [show (11337408 * k + 6220648) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3110324) = 2834352 * k + 1555162 := by
    unfold C
    simp [show (5668704 * k + 3110324) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1555162) = 1417176 * k + 777581 := by
    unfold C
    simp [show (2834352 * k + 1555162) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 777581) = 4251528 * k + 2332744 := by
    unfold C
    simp [show (1417176 * k + 777581) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2332744) = 2125764 * k + 1166372 := by
    unfold C
    simp [show (4251528 * k + 2332744) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1166372) = 1062882 * k + 583186 := by
    unfold C
    simp [show (2125764 * k + 1166372) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 583186) = 531441 * k + 291593 := by
    unfold C
    simp [show (1062882 * k + 583186) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 575335) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 575335)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_575903 : ∀ k : Nat,
    iterate (1048576 * k + 575903) 32 = 531441 * k + 291881 ∧
      531441 * k + 291881 < 1048576 * k + 575903 := by
  intro k
  have h1 : C (1048576 * k + 575903) = 3145728 * k + 1727710 := by
    unfold C
    simp [show (1048576 * k + 575903) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1727710) = 1572864 * k + 863855 := by
    unfold C
    simp [show (3145728 * k + 1727710) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 863855) = 4718592 * k + 2591566 := by
    unfold C
    simp [show (1572864 * k + 863855) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2591566) = 2359296 * k + 1295783 := by
    unfold C
    simp [show (4718592 * k + 2591566) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1295783) = 7077888 * k + 3887350 := by
    unfold C
    simp [show (2359296 * k + 1295783) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3887350) = 3538944 * k + 1943675 := by
    unfold C
    simp [show (7077888 * k + 3887350) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1943675) = 10616832 * k + 5831026 := by
    unfold C
    simp [show (3538944 * k + 1943675) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5831026) = 5308416 * k + 2915513 := by
    unfold C
    simp [show (10616832 * k + 5831026) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2915513) = 15925248 * k + 8746540 := by
    unfold C
    simp [show (5308416 * k + 2915513) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8746540) = 7962624 * k + 4373270 := by
    unfold C
    simp [show (15925248 * k + 8746540) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4373270) = 3981312 * k + 2186635 := by
    unfold C
    simp [show (7962624 * k + 4373270) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2186635) = 11943936 * k + 6559906 := by
    unfold C
    simp [show (3981312 * k + 2186635) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6559906) = 5971968 * k + 3279953 := by
    unfold C
    simp [show (11943936 * k + 6559906) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3279953) = 17915904 * k + 9839860 := by
    unfold C
    simp [show (5971968 * k + 3279953) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9839860) = 8957952 * k + 4919930 := by
    unfold C
    simp [show (17915904 * k + 9839860) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4919930) = 4478976 * k + 2459965 := by
    unfold C
    simp [show (8957952 * k + 4919930) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2459965) = 13436928 * k + 7379896 := by
    unfold C
    simp [show (4478976 * k + 2459965) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7379896) = 6718464 * k + 3689948 := by
    unfold C
    simp [show (13436928 * k + 7379896) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3689948) = 3359232 * k + 1844974 := by
    unfold C
    simp [show (6718464 * k + 3689948) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1844974) = 1679616 * k + 922487 := by
    unfold C
    simp [show (3359232 * k + 1844974) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 922487) = 5038848 * k + 2767462 := by
    unfold C
    simp [show (1679616 * k + 922487) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2767462) = 2519424 * k + 1383731 := by
    unfold C
    simp [show (5038848 * k + 2767462) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1383731) = 7558272 * k + 4151194 := by
    unfold C
    simp [show (2519424 * k + 1383731) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4151194) = 3779136 * k + 2075597 := by
    unfold C
    simp [show (7558272 * k + 4151194) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2075597) = 11337408 * k + 6226792 := by
    unfold C
    simp [show (3779136 * k + 2075597) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6226792) = 5668704 * k + 3113396 := by
    unfold C
    simp [show (11337408 * k + 6226792) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3113396) = 2834352 * k + 1556698 := by
    unfold C
    simp [show (5668704 * k + 3113396) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1556698) = 1417176 * k + 778349 := by
    unfold C
    simp [show (2834352 * k + 1556698) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 778349) = 4251528 * k + 2335048 := by
    unfold C
    simp [show (1417176 * k + 778349) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2335048) = 2125764 * k + 1167524 := by
    unfold C
    simp [show (4251528 * k + 2335048) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1167524) = 1062882 * k + 583762 := by
    unfold C
    simp [show (2125764 * k + 1167524) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 583762) = 531441 * k + 291881 := by
    unfold C
    simp [show (1062882 * k + 583762) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 575903) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 575903)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_576167 : ∀ k : Nat,
    iterate (1048576 * k + 576167) 32 = 531441 * k + 292015 ∧
      531441 * k + 292015 < 1048576 * k + 576167 := by
  intro k
  have h1 : C (1048576 * k + 576167) = 3145728 * k + 1728502 := by
    unfold C
    simp [show (1048576 * k + 576167) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1728502) = 1572864 * k + 864251 := by
    unfold C
    simp [show (3145728 * k + 1728502) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 864251) = 4718592 * k + 2592754 := by
    unfold C
    simp [show (1572864 * k + 864251) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2592754) = 2359296 * k + 1296377 := by
    unfold C
    simp [show (4718592 * k + 2592754) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1296377) = 7077888 * k + 3889132 := by
    unfold C
    simp [show (2359296 * k + 1296377) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3889132) = 3538944 * k + 1944566 := by
    unfold C
    simp [show (7077888 * k + 3889132) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1944566) = 1769472 * k + 972283 := by
    unfold C
    simp [show (3538944 * k + 1944566) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 972283) = 5308416 * k + 2916850 := by
    unfold C
    simp [show (1769472 * k + 972283) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2916850) = 2654208 * k + 1458425 := by
    unfold C
    simp [show (5308416 * k + 2916850) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1458425) = 7962624 * k + 4375276 := by
    unfold C
    simp [show (2654208 * k + 1458425) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4375276) = 3981312 * k + 2187638 := by
    unfold C
    simp [show (7962624 * k + 4375276) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2187638) = 1990656 * k + 1093819 := by
    unfold C
    simp [show (3981312 * k + 2187638) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1093819) = 5971968 * k + 3281458 := by
    unfold C
    simp [show (1990656 * k + 1093819) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3281458) = 2985984 * k + 1640729 := by
    unfold C
    simp [show (5971968 * k + 3281458) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1640729) = 8957952 * k + 4922188 := by
    unfold C
    simp [show (2985984 * k + 1640729) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4922188) = 4478976 * k + 2461094 := by
    unfold C
    simp [show (8957952 * k + 4922188) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2461094) = 2239488 * k + 1230547 := by
    unfold C
    simp [show (4478976 * k + 2461094) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1230547) = 6718464 * k + 3691642 := by
    unfold C
    simp [show (2239488 * k + 1230547) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3691642) = 3359232 * k + 1845821 := by
    unfold C
    simp [show (6718464 * k + 3691642) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1845821) = 10077696 * k + 5537464 := by
    unfold C
    simp [show (3359232 * k + 1845821) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5537464) = 5038848 * k + 2768732 := by
    unfold C
    simp [show (10077696 * k + 5537464) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2768732) = 2519424 * k + 1384366 := by
    unfold C
    simp [show (5038848 * k + 2768732) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1384366) = 1259712 * k + 692183 := by
    unfold C
    simp [show (2519424 * k + 1384366) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 692183) = 3779136 * k + 2076550 := by
    unfold C
    simp [show (1259712 * k + 692183) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2076550) = 1889568 * k + 1038275 := by
    unfold C
    simp [show (3779136 * k + 2076550) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1038275) = 5668704 * k + 3114826 := by
    unfold C
    simp [show (1889568 * k + 1038275) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3114826) = 2834352 * k + 1557413 := by
    unfold C
    simp [show (5668704 * k + 3114826) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1557413) = 8503056 * k + 4672240 := by
    unfold C
    simp [show (2834352 * k + 1557413) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4672240) = 4251528 * k + 2336120 := by
    unfold C
    simp [show (8503056 * k + 4672240) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2336120) = 2125764 * k + 1168060 := by
    unfold C
    simp [show (4251528 * k + 2336120) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1168060) = 1062882 * k + 584030 := by
    unfold C
    simp [show (2125764 * k + 1168060) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 584030) = 531441 * k + 292015 := by
    unfold C
    simp [show (1062882 * k + 584030) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 576167) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 576167)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_576423 : ∀ k : Nat,
    iterate (1048576 * k + 576423) 32 = 531441 * k + 292145 ∧
      531441 * k + 292145 < 1048576 * k + 576423 := by
  intro k
  have h1 : C (1048576 * k + 576423) = 3145728 * k + 1729270 := by
    unfold C
    simp [show (1048576 * k + 576423) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1729270) = 1572864 * k + 864635 := by
    unfold C
    simp [show (3145728 * k + 1729270) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 864635) = 4718592 * k + 2593906 := by
    unfold C
    simp [show (1572864 * k + 864635) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2593906) = 2359296 * k + 1296953 := by
    unfold C
    simp [show (4718592 * k + 2593906) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1296953) = 7077888 * k + 3890860 := by
    unfold C
    simp [show (2359296 * k + 1296953) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3890860) = 3538944 * k + 1945430 := by
    unfold C
    simp [show (7077888 * k + 3890860) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1945430) = 1769472 * k + 972715 := by
    unfold C
    simp [show (3538944 * k + 1945430) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 972715) = 5308416 * k + 2918146 := by
    unfold C
    simp [show (1769472 * k + 972715) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2918146) = 2654208 * k + 1459073 := by
    unfold C
    simp [show (5308416 * k + 2918146) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1459073) = 7962624 * k + 4377220 := by
    unfold C
    simp [show (2654208 * k + 1459073) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4377220) = 3981312 * k + 2188610 := by
    unfold C
    simp [show (7962624 * k + 4377220) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2188610) = 1990656 * k + 1094305 := by
    unfold C
    simp [show (3981312 * k + 2188610) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1094305) = 5971968 * k + 3282916 := by
    unfold C
    simp [show (1990656 * k + 1094305) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3282916) = 2985984 * k + 1641458 := by
    unfold C
    simp [show (5971968 * k + 3282916) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1641458) = 1492992 * k + 820729 := by
    unfold C
    simp [show (2985984 * k + 1641458) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 820729) = 4478976 * k + 2462188 := by
    unfold C
    simp [show (1492992 * k + 820729) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2462188) = 2239488 * k + 1231094 := by
    unfold C
    simp [show (4478976 * k + 2462188) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1231094) = 1119744 * k + 615547 := by
    unfold C
    simp [show (2239488 * k + 1231094) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 615547) = 3359232 * k + 1846642 := by
    unfold C
    simp [show (1119744 * k + 615547) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1846642) = 1679616 * k + 923321 := by
    unfold C
    simp [show (3359232 * k + 1846642) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 923321) = 5038848 * k + 2769964 := by
    unfold C
    simp [show (1679616 * k + 923321) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2769964) = 2519424 * k + 1384982 := by
    unfold C
    simp [show (5038848 * k + 2769964) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1384982) = 1259712 * k + 692491 := by
    unfold C
    simp [show (2519424 * k + 1384982) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 692491) = 3779136 * k + 2077474 := by
    unfold C
    simp [show (1259712 * k + 692491) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2077474) = 1889568 * k + 1038737 := by
    unfold C
    simp [show (3779136 * k + 2077474) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1038737) = 5668704 * k + 3116212 := by
    unfold C
    simp [show (1889568 * k + 1038737) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3116212) = 2834352 * k + 1558106 := by
    unfold C
    simp [show (5668704 * k + 3116212) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1558106) = 1417176 * k + 779053 := by
    unfold C
    simp [show (2834352 * k + 1558106) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 779053) = 4251528 * k + 2337160 := by
    unfold C
    simp [show (1417176 * k + 779053) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2337160) = 2125764 * k + 1168580 := by
    unfold C
    simp [show (4251528 * k + 2337160) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1168580) = 1062882 * k + 584290 := by
    unfold C
    simp [show (2125764 * k + 1168580) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 584290) = 531441 * k + 292145 := by
    unfold C
    simp [show (1062882 * k + 584290) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 576423) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 576423)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_576495 : ∀ k : Nat,
    iterate (1048576 * k + 576495) 32 = 531441 * k + 292181 ∧
      531441 * k + 292181 < 1048576 * k + 576495 := by
  intro k
  have h1 : C (1048576 * k + 576495) = 3145728 * k + 1729486 := by
    unfold C
    simp [show (1048576 * k + 576495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1729486) = 1572864 * k + 864743 := by
    unfold C
    simp [show (3145728 * k + 1729486) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 864743) = 4718592 * k + 2594230 := by
    unfold C
    simp [show (1572864 * k + 864743) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2594230) = 2359296 * k + 1297115 := by
    unfold C
    simp [show (4718592 * k + 2594230) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1297115) = 7077888 * k + 3891346 := by
    unfold C
    simp [show (2359296 * k + 1297115) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3891346) = 3538944 * k + 1945673 := by
    unfold C
    simp [show (7077888 * k + 3891346) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1945673) = 10616832 * k + 5837020 := by
    unfold C
    simp [show (3538944 * k + 1945673) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5837020) = 5308416 * k + 2918510 := by
    unfold C
    simp [show (10616832 * k + 5837020) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2918510) = 2654208 * k + 1459255 := by
    unfold C
    simp [show (5308416 * k + 2918510) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1459255) = 7962624 * k + 4377766 := by
    unfold C
    simp [show (2654208 * k + 1459255) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4377766) = 3981312 * k + 2188883 := by
    unfold C
    simp [show (7962624 * k + 4377766) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2188883) = 11943936 * k + 6566650 := by
    unfold C
    simp [show (3981312 * k + 2188883) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6566650) = 5971968 * k + 3283325 := by
    unfold C
    simp [show (11943936 * k + 6566650) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3283325) = 17915904 * k + 9849976 := by
    unfold C
    simp [show (5971968 * k + 3283325) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9849976) = 8957952 * k + 4924988 := by
    unfold C
    simp [show (17915904 * k + 9849976) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4924988) = 4478976 * k + 2462494 := by
    unfold C
    simp [show (8957952 * k + 4924988) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2462494) = 2239488 * k + 1231247 := by
    unfold C
    simp [show (4478976 * k + 2462494) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1231247) = 6718464 * k + 3693742 := by
    unfold C
    simp [show (2239488 * k + 1231247) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3693742) = 3359232 * k + 1846871 := by
    unfold C
    simp [show (6718464 * k + 3693742) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1846871) = 10077696 * k + 5540614 := by
    unfold C
    simp [show (3359232 * k + 1846871) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5540614) = 5038848 * k + 2770307 := by
    unfold C
    simp [show (10077696 * k + 5540614) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2770307) = 15116544 * k + 8310922 := by
    unfold C
    simp [show (5038848 * k + 2770307) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8310922) = 7558272 * k + 4155461 := by
    unfold C
    simp [show (15116544 * k + 8310922) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4155461) = 22674816 * k + 12466384 := by
    unfold C
    simp [show (7558272 * k + 4155461) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 12466384) = 11337408 * k + 6233192 := by
    unfold C
    simp [show (22674816 * k + 12466384) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6233192) = 5668704 * k + 3116596 := by
    unfold C
    simp [show (11337408 * k + 6233192) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3116596) = 2834352 * k + 1558298 := by
    unfold C
    simp [show (5668704 * k + 3116596) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1558298) = 1417176 * k + 779149 := by
    unfold C
    simp [show (2834352 * k + 1558298) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 779149) = 4251528 * k + 2337448 := by
    unfold C
    simp [show (1417176 * k + 779149) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2337448) = 2125764 * k + 1168724 := by
    unfold C
    simp [show (4251528 * k + 2337448) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1168724) = 1062882 * k + 584362 := by
    unfold C
    simp [show (2125764 * k + 1168724) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 584362) = 531441 * k + 292181 := by
    unfold C
    simp [show (1062882 * k + 584362) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 576495) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 576495)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_576743 : ∀ k : Nat,
    iterate (1048576 * k + 576743) 32 = 531441 * k + 292307 ∧
      531441 * k + 292307 < 1048576 * k + 576743 := by
  intro k
  have h1 : C (1048576 * k + 576743) = 3145728 * k + 1730230 := by
    unfold C
    simp [show (1048576 * k + 576743) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1730230) = 1572864 * k + 865115 := by
    unfold C
    simp [show (3145728 * k + 1730230) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 865115) = 4718592 * k + 2595346 := by
    unfold C
    simp [show (1572864 * k + 865115) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2595346) = 2359296 * k + 1297673 := by
    unfold C
    simp [show (4718592 * k + 2595346) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1297673) = 7077888 * k + 3893020 := by
    unfold C
    simp [show (2359296 * k + 1297673) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3893020) = 3538944 * k + 1946510 := by
    unfold C
    simp [show (7077888 * k + 3893020) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1946510) = 1769472 * k + 973255 := by
    unfold C
    simp [show (3538944 * k + 1946510) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 973255) = 5308416 * k + 2919766 := by
    unfold C
    simp [show (1769472 * k + 973255) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2919766) = 2654208 * k + 1459883 := by
    unfold C
    simp [show (5308416 * k + 2919766) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1459883) = 7962624 * k + 4379650 := by
    unfold C
    simp [show (2654208 * k + 1459883) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4379650) = 3981312 * k + 2189825 := by
    unfold C
    simp [show (7962624 * k + 4379650) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2189825) = 11943936 * k + 6569476 := by
    unfold C
    simp [show (3981312 * k + 2189825) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6569476) = 5971968 * k + 3284738 := by
    unfold C
    simp [show (11943936 * k + 6569476) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3284738) = 2985984 * k + 1642369 := by
    unfold C
    simp [show (5971968 * k + 3284738) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1642369) = 8957952 * k + 4927108 := by
    unfold C
    simp [show (2985984 * k + 1642369) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4927108) = 4478976 * k + 2463554 := by
    unfold C
    simp [show (8957952 * k + 4927108) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2463554) = 2239488 * k + 1231777 := by
    unfold C
    simp [show (4478976 * k + 2463554) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1231777) = 6718464 * k + 3695332 := by
    unfold C
    simp [show (2239488 * k + 1231777) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3695332) = 3359232 * k + 1847666 := by
    unfold C
    simp [show (6718464 * k + 3695332) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1847666) = 1679616 * k + 923833 := by
    unfold C
    simp [show (3359232 * k + 1847666) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 923833) = 5038848 * k + 2771500 := by
    unfold C
    simp [show (1679616 * k + 923833) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2771500) = 2519424 * k + 1385750 := by
    unfold C
    simp [show (5038848 * k + 2771500) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1385750) = 1259712 * k + 692875 := by
    unfold C
    simp [show (2519424 * k + 1385750) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 692875) = 3779136 * k + 2078626 := by
    unfold C
    simp [show (1259712 * k + 692875) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2078626) = 1889568 * k + 1039313 := by
    unfold C
    simp [show (3779136 * k + 2078626) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1039313) = 5668704 * k + 3117940 := by
    unfold C
    simp [show (1889568 * k + 1039313) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3117940) = 2834352 * k + 1558970 := by
    unfold C
    simp [show (5668704 * k + 3117940) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1558970) = 1417176 * k + 779485 := by
    unfold C
    simp [show (2834352 * k + 1558970) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 779485) = 4251528 * k + 2338456 := by
    unfold C
    simp [show (1417176 * k + 779485) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2338456) = 2125764 * k + 1169228 := by
    unfold C
    simp [show (4251528 * k + 2338456) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1169228) = 1062882 * k + 584614 := by
    unfold C
    simp [show (2125764 * k + 1169228) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 584614) = 531441 * k + 292307 := by
    unfold C
    simp [show (1062882 * k + 584614) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 576743) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 576743)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_577191 : ∀ k : Nat,
    iterate (1048576 * k + 577191) 32 = 531441 * k + 292534 ∧
      531441 * k + 292534 < 1048576 * k + 577191 := by
  intro k
  have h1 : C (1048576 * k + 577191) = 3145728 * k + 1731574 := by
    unfold C
    simp [show (1048576 * k + 577191) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1731574) = 1572864 * k + 865787 := by
    unfold C
    simp [show (3145728 * k + 1731574) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 865787) = 4718592 * k + 2597362 := by
    unfold C
    simp [show (1572864 * k + 865787) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2597362) = 2359296 * k + 1298681 := by
    unfold C
    simp [show (4718592 * k + 2597362) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1298681) = 7077888 * k + 3896044 := by
    unfold C
    simp [show (2359296 * k + 1298681) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3896044) = 3538944 * k + 1948022 := by
    unfold C
    simp [show (7077888 * k + 3896044) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1948022) = 1769472 * k + 974011 := by
    unfold C
    simp [show (3538944 * k + 1948022) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 974011) = 5308416 * k + 2922034 := by
    unfold C
    simp [show (1769472 * k + 974011) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2922034) = 2654208 * k + 1461017 := by
    unfold C
    simp [show (5308416 * k + 2922034) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1461017) = 7962624 * k + 4383052 := by
    unfold C
    simp [show (2654208 * k + 1461017) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4383052) = 3981312 * k + 2191526 := by
    unfold C
    simp [show (7962624 * k + 4383052) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2191526) = 1990656 * k + 1095763 := by
    unfold C
    simp [show (3981312 * k + 2191526) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1095763) = 5971968 * k + 3287290 := by
    unfold C
    simp [show (1990656 * k + 1095763) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3287290) = 2985984 * k + 1643645 := by
    unfold C
    simp [show (5971968 * k + 3287290) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1643645) = 8957952 * k + 4930936 := by
    unfold C
    simp [show (2985984 * k + 1643645) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4930936) = 4478976 * k + 2465468 := by
    unfold C
    simp [show (8957952 * k + 4930936) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2465468) = 2239488 * k + 1232734 := by
    unfold C
    simp [show (4478976 * k + 2465468) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1232734) = 1119744 * k + 616367 := by
    unfold C
    simp [show (2239488 * k + 1232734) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 616367) = 3359232 * k + 1849102 := by
    unfold C
    simp [show (1119744 * k + 616367) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1849102) = 1679616 * k + 924551 := by
    unfold C
    simp [show (3359232 * k + 1849102) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 924551) = 5038848 * k + 2773654 := by
    unfold C
    simp [show (1679616 * k + 924551) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2773654) = 2519424 * k + 1386827 := by
    unfold C
    simp [show (5038848 * k + 2773654) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1386827) = 7558272 * k + 4160482 := by
    unfold C
    simp [show (2519424 * k + 1386827) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4160482) = 3779136 * k + 2080241 := by
    unfold C
    simp [show (7558272 * k + 4160482) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2080241) = 11337408 * k + 6240724 := by
    unfold C
    simp [show (3779136 * k + 2080241) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6240724) = 5668704 * k + 3120362 := by
    unfold C
    simp [show (11337408 * k + 6240724) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3120362) = 2834352 * k + 1560181 := by
    unfold C
    simp [show (5668704 * k + 3120362) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1560181) = 8503056 * k + 4680544 := by
    unfold C
    simp [show (2834352 * k + 1560181) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4680544) = 4251528 * k + 2340272 := by
    unfold C
    simp [show (8503056 * k + 4680544) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2340272) = 2125764 * k + 1170136 := by
    unfold C
    simp [show (4251528 * k + 2340272) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1170136) = 1062882 * k + 585068 := by
    unfold C
    simp [show (2125764 * k + 1170136) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 585068) = 531441 * k + 292534 := by
    unfold C
    simp [show (1062882 * k + 585068) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 577191) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 577191)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_578075 : ∀ k : Nat,
    iterate (1048576 * k + 578075) 32 = 531441 * k + 292982 ∧
      531441 * k + 292982 < 1048576 * k + 578075 := by
  intro k
  have h1 : C (1048576 * k + 578075) = 3145728 * k + 1734226 := by
    unfold C
    simp [show (1048576 * k + 578075) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1734226) = 1572864 * k + 867113 := by
    unfold C
    simp [show (3145728 * k + 1734226) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 867113) = 4718592 * k + 2601340 := by
    unfold C
    simp [show (1572864 * k + 867113) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2601340) = 2359296 * k + 1300670 := by
    unfold C
    simp [show (4718592 * k + 2601340) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1300670) = 1179648 * k + 650335 := by
    unfold C
    simp [show (2359296 * k + 1300670) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 650335) = 3538944 * k + 1951006 := by
    unfold C
    simp [show (1179648 * k + 650335) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1951006) = 1769472 * k + 975503 := by
    unfold C
    simp [show (3538944 * k + 1951006) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 975503) = 5308416 * k + 2926510 := by
    unfold C
    simp [show (1769472 * k + 975503) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2926510) = 2654208 * k + 1463255 := by
    unfold C
    simp [show (5308416 * k + 2926510) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1463255) = 7962624 * k + 4389766 := by
    unfold C
    simp [show (2654208 * k + 1463255) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4389766) = 3981312 * k + 2194883 := by
    unfold C
    simp [show (7962624 * k + 4389766) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2194883) = 11943936 * k + 6584650 := by
    unfold C
    simp [show (3981312 * k + 2194883) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6584650) = 5971968 * k + 3292325 := by
    unfold C
    simp [show (11943936 * k + 6584650) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3292325) = 17915904 * k + 9876976 := by
    unfold C
    simp [show (5971968 * k + 3292325) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9876976) = 8957952 * k + 4938488 := by
    unfold C
    simp [show (17915904 * k + 9876976) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4938488) = 4478976 * k + 2469244 := by
    unfold C
    simp [show (8957952 * k + 4938488) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2469244) = 2239488 * k + 1234622 := by
    unfold C
    simp [show (4478976 * k + 2469244) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1234622) = 1119744 * k + 617311 := by
    unfold C
    simp [show (2239488 * k + 1234622) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 617311) = 3359232 * k + 1851934 := by
    unfold C
    simp [show (1119744 * k + 617311) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1851934) = 1679616 * k + 925967 := by
    unfold C
    simp [show (3359232 * k + 1851934) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 925967) = 5038848 * k + 2777902 := by
    unfold C
    simp [show (1679616 * k + 925967) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2777902) = 2519424 * k + 1388951 := by
    unfold C
    simp [show (5038848 * k + 2777902) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1388951) = 7558272 * k + 4166854 := by
    unfold C
    simp [show (2519424 * k + 1388951) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4166854) = 3779136 * k + 2083427 := by
    unfold C
    simp [show (7558272 * k + 4166854) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2083427) = 11337408 * k + 6250282 := by
    unfold C
    simp [show (3779136 * k + 2083427) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6250282) = 5668704 * k + 3125141 := by
    unfold C
    simp [show (11337408 * k + 6250282) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3125141) = 17006112 * k + 9375424 := by
    unfold C
    simp [show (5668704 * k + 3125141) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9375424) = 8503056 * k + 4687712 := by
    unfold C
    simp [show (17006112 * k + 9375424) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4687712) = 4251528 * k + 2343856 := by
    unfold C
    simp [show (8503056 * k + 4687712) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2343856) = 2125764 * k + 1171928 := by
    unfold C
    simp [show (4251528 * k + 2343856) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1171928) = 1062882 * k + 585964 := by
    unfold C
    simp [show (2125764 * k + 1171928) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 585964) = 531441 * k + 292982 := by
    unfold C
    simp [show (1062882 * k + 585964) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 578075) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 578075)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_578287 : ∀ k : Nat,
    iterate (1048576 * k + 578287) 32 = 531441 * k + 293089 ∧
      531441 * k + 293089 < 1048576 * k + 578287 := by
  intro k
  have h1 : C (1048576 * k + 578287) = 3145728 * k + 1734862 := by
    unfold C
    simp [show (1048576 * k + 578287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1734862) = 1572864 * k + 867431 := by
    unfold C
    simp [show (3145728 * k + 1734862) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 867431) = 4718592 * k + 2602294 := by
    unfold C
    simp [show (1572864 * k + 867431) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2602294) = 2359296 * k + 1301147 := by
    unfold C
    simp [show (4718592 * k + 2602294) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1301147) = 7077888 * k + 3903442 := by
    unfold C
    simp [show (2359296 * k + 1301147) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3903442) = 3538944 * k + 1951721 := by
    unfold C
    simp [show (7077888 * k + 3903442) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1951721) = 10616832 * k + 5855164 := by
    unfold C
    simp [show (3538944 * k + 1951721) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5855164) = 5308416 * k + 2927582 := by
    unfold C
    simp [show (10616832 * k + 5855164) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2927582) = 2654208 * k + 1463791 := by
    unfold C
    simp [show (5308416 * k + 2927582) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1463791) = 7962624 * k + 4391374 := by
    unfold C
    simp [show (2654208 * k + 1463791) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4391374) = 3981312 * k + 2195687 := by
    unfold C
    simp [show (7962624 * k + 4391374) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2195687) = 11943936 * k + 6587062 := by
    unfold C
    simp [show (3981312 * k + 2195687) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6587062) = 5971968 * k + 3293531 := by
    unfold C
    simp [show (11943936 * k + 6587062) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3293531) = 17915904 * k + 9880594 := by
    unfold C
    simp [show (5971968 * k + 3293531) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9880594) = 8957952 * k + 4940297 := by
    unfold C
    simp [show (17915904 * k + 9880594) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4940297) = 26873856 * k + 14820892 := by
    unfold C
    simp [show (8957952 * k + 4940297) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 14820892) = 13436928 * k + 7410446 := by
    unfold C
    simp [show (26873856 * k + 14820892) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7410446) = 6718464 * k + 3705223 := by
    unfold C
    simp [show (13436928 * k + 7410446) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3705223) = 20155392 * k + 11115670 := by
    unfold C
    simp [show (6718464 * k + 3705223) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 11115670) = 10077696 * k + 5557835 := by
    unfold C
    simp [show (20155392 * k + 11115670) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5557835) = 30233088 * k + 16673506 := by
    unfold C
    simp [show (10077696 * k + 5557835) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 16673506) = 15116544 * k + 8336753 := by
    unfold C
    simp [show (30233088 * k + 16673506) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8336753) = 45349632 * k + 25010260 := by
    unfold C
    simp [show (15116544 * k + 8336753) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 25010260) = 22674816 * k + 12505130 := by
    unfold C
    simp [show (45349632 * k + 25010260) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 12505130) = 11337408 * k + 6252565 := by
    unfold C
    simp [show (22674816 * k + 12505130) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6252565) = 34012224 * k + 18757696 := by
    unfold C
    simp [show (11337408 * k + 6252565) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 18757696) = 17006112 * k + 9378848 := by
    unfold C
    simp [show (34012224 * k + 18757696) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 9378848) = 8503056 * k + 4689424 := by
    unfold C
    simp [show (17006112 * k + 9378848) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4689424) = 4251528 * k + 2344712 := by
    unfold C
    simp [show (8503056 * k + 4689424) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2344712) = 2125764 * k + 1172356 := by
    unfold C
    simp [show (4251528 * k + 2344712) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1172356) = 1062882 * k + 586178 := by
    unfold C
    simp [show (2125764 * k + 1172356) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 586178) = 531441 * k + 293089 := by
    unfold C
    simp [show (1062882 * k + 586178) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 578287) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 578287)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_578407 : ∀ k : Nat,
    iterate (1048576 * k + 578407) 32 = 531441 * k + 293150 ∧
      531441 * k + 293150 < 1048576 * k + 578407 := by
  intro k
  have h1 : C (1048576 * k + 578407) = 3145728 * k + 1735222 := by
    unfold C
    simp [show (1048576 * k + 578407) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1735222) = 1572864 * k + 867611 := by
    unfold C
    simp [show (3145728 * k + 1735222) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 867611) = 4718592 * k + 2602834 := by
    unfold C
    simp [show (1572864 * k + 867611) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2602834) = 2359296 * k + 1301417 := by
    unfold C
    simp [show (4718592 * k + 2602834) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1301417) = 7077888 * k + 3904252 := by
    unfold C
    simp [show (2359296 * k + 1301417) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3904252) = 3538944 * k + 1952126 := by
    unfold C
    simp [show (7077888 * k + 3904252) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1952126) = 1769472 * k + 976063 := by
    unfold C
    simp [show (3538944 * k + 1952126) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 976063) = 5308416 * k + 2928190 := by
    unfold C
    simp [show (1769472 * k + 976063) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2928190) = 2654208 * k + 1464095 := by
    unfold C
    simp [show (5308416 * k + 2928190) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1464095) = 7962624 * k + 4392286 := by
    unfold C
    simp [show (2654208 * k + 1464095) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4392286) = 3981312 * k + 2196143 := by
    unfold C
    simp [show (7962624 * k + 4392286) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2196143) = 11943936 * k + 6588430 := by
    unfold C
    simp [show (3981312 * k + 2196143) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6588430) = 5971968 * k + 3294215 := by
    unfold C
    simp [show (11943936 * k + 6588430) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3294215) = 17915904 * k + 9882646 := by
    unfold C
    simp [show (5971968 * k + 3294215) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9882646) = 8957952 * k + 4941323 := by
    unfold C
    simp [show (17915904 * k + 9882646) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4941323) = 26873856 * k + 14823970 := by
    unfold C
    simp [show (8957952 * k + 4941323) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 14823970) = 13436928 * k + 7411985 := by
    unfold C
    simp [show (26873856 * k + 14823970) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7411985) = 40310784 * k + 22235956 := by
    unfold C
    simp [show (13436928 * k + 7411985) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 22235956) = 20155392 * k + 11117978 := by
    unfold C
    simp [show (40310784 * k + 22235956) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 11117978) = 10077696 * k + 5558989 := by
    unfold C
    simp [show (20155392 * k + 11117978) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5558989) = 30233088 * k + 16676968 := by
    unfold C
    simp [show (10077696 * k + 5558989) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 16676968) = 15116544 * k + 8338484 := by
    unfold C
    simp [show (30233088 * k + 16676968) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8338484) = 7558272 * k + 4169242 := by
    unfold C
    simp [show (15116544 * k + 8338484) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4169242) = 3779136 * k + 2084621 := by
    unfold C
    simp [show (7558272 * k + 4169242) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2084621) = 11337408 * k + 6253864 := by
    unfold C
    simp [show (3779136 * k + 2084621) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6253864) = 5668704 * k + 3126932 := by
    unfold C
    simp [show (11337408 * k + 6253864) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3126932) = 2834352 * k + 1563466 := by
    unfold C
    simp [show (5668704 * k + 3126932) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1563466) = 1417176 * k + 781733 := by
    unfold C
    simp [show (2834352 * k + 1563466) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 781733) = 4251528 * k + 2345200 := by
    unfold C
    simp [show (1417176 * k + 781733) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2345200) = 2125764 * k + 1172600 := by
    unfold C
    simp [show (4251528 * k + 2345200) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1172600) = 1062882 * k + 586300 := by
    unfold C
    simp [show (2125764 * k + 1172600) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 586300) = 531441 * k + 293150 := by
    unfold C
    simp [show (1062882 * k + 586300) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 578407) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 578407)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_578431 : ∀ k : Nat,
    iterate (1048576 * k + 578431) 32 = 531441 * k + 293162 ∧
      531441 * k + 293162 < 1048576 * k + 578431 := by
  intro k
  have h1 : C (1048576 * k + 578431) = 3145728 * k + 1735294 := by
    unfold C
    simp [show (1048576 * k + 578431) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1735294) = 1572864 * k + 867647 := by
    unfold C
    simp [show (3145728 * k + 1735294) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 867647) = 4718592 * k + 2602942 := by
    unfold C
    simp [show (1572864 * k + 867647) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2602942) = 2359296 * k + 1301471 := by
    unfold C
    simp [show (4718592 * k + 2602942) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1301471) = 7077888 * k + 3904414 := by
    unfold C
    simp [show (2359296 * k + 1301471) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3904414) = 3538944 * k + 1952207 := by
    unfold C
    simp [show (7077888 * k + 3904414) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1952207) = 10616832 * k + 5856622 := by
    unfold C
    simp [show (3538944 * k + 1952207) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5856622) = 5308416 * k + 2928311 := by
    unfold C
    simp [show (10616832 * k + 5856622) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2928311) = 15925248 * k + 8784934 := by
    unfold C
    simp [show (5308416 * k + 2928311) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8784934) = 7962624 * k + 4392467 := by
    unfold C
    simp [show (15925248 * k + 8784934) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4392467) = 23887872 * k + 13177402 := by
    unfold C
    simp [show (7962624 * k + 4392467) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 13177402) = 11943936 * k + 6588701 := by
    unfold C
    simp [show (23887872 * k + 13177402) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6588701) = 35831808 * k + 19766104 := by
    unfold C
    simp [show (11943936 * k + 6588701) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 19766104) = 17915904 * k + 9883052 := by
    unfold C
    simp [show (35831808 * k + 19766104) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 9883052) = 8957952 * k + 4941526 := by
    unfold C
    simp [show (17915904 * k + 9883052) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4941526) = 4478976 * k + 2470763 := by
    unfold C
    simp [show (8957952 * k + 4941526) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2470763) = 13436928 * k + 7412290 := by
    unfold C
    simp [show (4478976 * k + 2470763) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7412290) = 6718464 * k + 3706145 := by
    unfold C
    simp [show (13436928 * k + 7412290) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3706145) = 20155392 * k + 11118436 := by
    unfold C
    simp [show (6718464 * k + 3706145) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 11118436) = 10077696 * k + 5559218 := by
    unfold C
    simp [show (20155392 * k + 11118436) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5559218) = 5038848 * k + 2779609 := by
    unfold C
    simp [show (10077696 * k + 5559218) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2779609) = 15116544 * k + 8338828 := by
    unfold C
    simp [show (5038848 * k + 2779609) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8338828) = 7558272 * k + 4169414 := by
    unfold C
    simp [show (15116544 * k + 8338828) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4169414) = 3779136 * k + 2084707 := by
    unfold C
    simp [show (7558272 * k + 4169414) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2084707) = 11337408 * k + 6254122 := by
    unfold C
    simp [show (3779136 * k + 2084707) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6254122) = 5668704 * k + 3127061 := by
    unfold C
    simp [show (11337408 * k + 6254122) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3127061) = 17006112 * k + 9381184 := by
    unfold C
    simp [show (5668704 * k + 3127061) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9381184) = 8503056 * k + 4690592 := by
    unfold C
    simp [show (17006112 * k + 9381184) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4690592) = 4251528 * k + 2345296 := by
    unfold C
    simp [show (8503056 * k + 4690592) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2345296) = 2125764 * k + 1172648 := by
    unfold C
    simp [show (4251528 * k + 2345296) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1172648) = 1062882 * k + 586324 := by
    unfold C
    simp [show (2125764 * k + 1172648) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 586324) = 531441 * k + 293162 := by
    unfold C
    simp [show (1062882 * k + 586324) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 578431) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 578431)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_578671 : ∀ k : Nat,
    iterate (1048576 * k + 578671) 32 = 531441 * k + 293284 ∧
      531441 * k + 293284 < 1048576 * k + 578671 := by
  intro k
  have h1 : C (1048576 * k + 578671) = 3145728 * k + 1736014 := by
    unfold C
    simp [show (1048576 * k + 578671) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1736014) = 1572864 * k + 868007 := by
    unfold C
    simp [show (3145728 * k + 1736014) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 868007) = 4718592 * k + 2604022 := by
    unfold C
    simp [show (1572864 * k + 868007) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2604022) = 2359296 * k + 1302011 := by
    unfold C
    simp [show (4718592 * k + 2604022) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1302011) = 7077888 * k + 3906034 := by
    unfold C
    simp [show (2359296 * k + 1302011) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3906034) = 3538944 * k + 1953017 := by
    unfold C
    simp [show (7077888 * k + 3906034) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1953017) = 10616832 * k + 5859052 := by
    unfold C
    simp [show (3538944 * k + 1953017) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5859052) = 5308416 * k + 2929526 := by
    unfold C
    simp [show (10616832 * k + 5859052) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2929526) = 2654208 * k + 1464763 := by
    unfold C
    simp [show (5308416 * k + 2929526) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1464763) = 7962624 * k + 4394290 := by
    unfold C
    simp [show (2654208 * k + 1464763) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4394290) = 3981312 * k + 2197145 := by
    unfold C
    simp [show (7962624 * k + 4394290) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2197145) = 11943936 * k + 6591436 := by
    unfold C
    simp [show (3981312 * k + 2197145) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6591436) = 5971968 * k + 3295718 := by
    unfold C
    simp [show (11943936 * k + 6591436) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3295718) = 2985984 * k + 1647859 := by
    unfold C
    simp [show (5971968 * k + 3295718) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1647859) = 8957952 * k + 4943578 := by
    unfold C
    simp [show (2985984 * k + 1647859) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4943578) = 4478976 * k + 2471789 := by
    unfold C
    simp [show (8957952 * k + 4943578) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2471789) = 13436928 * k + 7415368 := by
    unfold C
    simp [show (4478976 * k + 2471789) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7415368) = 6718464 * k + 3707684 := by
    unfold C
    simp [show (13436928 * k + 7415368) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3707684) = 3359232 * k + 1853842 := by
    unfold C
    simp [show (6718464 * k + 3707684) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1853842) = 1679616 * k + 926921 := by
    unfold C
    simp [show (3359232 * k + 1853842) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 926921) = 5038848 * k + 2780764 := by
    unfold C
    simp [show (1679616 * k + 926921) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2780764) = 2519424 * k + 1390382 := by
    unfold C
    simp [show (5038848 * k + 2780764) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1390382) = 1259712 * k + 695191 := by
    unfold C
    simp [show (2519424 * k + 1390382) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 695191) = 3779136 * k + 2085574 := by
    unfold C
    simp [show (1259712 * k + 695191) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2085574) = 1889568 * k + 1042787 := by
    unfold C
    simp [show (3779136 * k + 2085574) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1042787) = 5668704 * k + 3128362 := by
    unfold C
    simp [show (1889568 * k + 1042787) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3128362) = 2834352 * k + 1564181 := by
    unfold C
    simp [show (5668704 * k + 3128362) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1564181) = 8503056 * k + 4692544 := by
    unfold C
    simp [show (2834352 * k + 1564181) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4692544) = 4251528 * k + 2346272 := by
    unfold C
    simp [show (8503056 * k + 4692544) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2346272) = 2125764 * k + 1173136 := by
    unfold C
    simp [show (4251528 * k + 2346272) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1173136) = 1062882 * k + 586568 := by
    unfold C
    simp [show (2125764 * k + 1173136) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 586568) = 531441 * k + 293284 := by
    unfold C
    simp [show (1062882 * k + 586568) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 578671) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 578671)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_578719 : ∀ k : Nat,
    iterate (1048576 * k + 578719) 32 = 531441 * k + 293308 ∧
      531441 * k + 293308 < 1048576 * k + 578719 := by
  intro k
  have h1 : C (1048576 * k + 578719) = 3145728 * k + 1736158 := by
    unfold C
    simp [show (1048576 * k + 578719) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1736158) = 1572864 * k + 868079 := by
    unfold C
    simp [show (3145728 * k + 1736158) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 868079) = 4718592 * k + 2604238 := by
    unfold C
    simp [show (1572864 * k + 868079) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2604238) = 2359296 * k + 1302119 := by
    unfold C
    simp [show (4718592 * k + 2604238) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1302119) = 7077888 * k + 3906358 := by
    unfold C
    simp [show (2359296 * k + 1302119) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3906358) = 3538944 * k + 1953179 := by
    unfold C
    simp [show (7077888 * k + 3906358) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1953179) = 10616832 * k + 5859538 := by
    unfold C
    simp [show (3538944 * k + 1953179) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5859538) = 5308416 * k + 2929769 := by
    unfold C
    simp [show (10616832 * k + 5859538) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2929769) = 15925248 * k + 8789308 := by
    unfold C
    simp [show (5308416 * k + 2929769) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8789308) = 7962624 * k + 4394654 := by
    unfold C
    simp [show (15925248 * k + 8789308) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4394654) = 3981312 * k + 2197327 := by
    unfold C
    simp [show (7962624 * k + 4394654) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2197327) = 11943936 * k + 6591982 := by
    unfold C
    simp [show (3981312 * k + 2197327) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6591982) = 5971968 * k + 3295991 := by
    unfold C
    simp [show (11943936 * k + 6591982) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3295991) = 17915904 * k + 9887974 := by
    unfold C
    simp [show (5971968 * k + 3295991) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9887974) = 8957952 * k + 4943987 := by
    unfold C
    simp [show (17915904 * k + 9887974) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4943987) = 26873856 * k + 14831962 := by
    unfold C
    simp [show (8957952 * k + 4943987) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 14831962) = 13436928 * k + 7415981 := by
    unfold C
    simp [show (26873856 * k + 14831962) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7415981) = 40310784 * k + 22247944 := by
    unfold C
    simp [show (13436928 * k + 7415981) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 22247944) = 20155392 * k + 11123972 := by
    unfold C
    simp [show (40310784 * k + 22247944) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 11123972) = 10077696 * k + 5561986 := by
    unfold C
    simp [show (20155392 * k + 11123972) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5561986) = 5038848 * k + 2780993 := by
    unfold C
    simp [show (10077696 * k + 5561986) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2780993) = 15116544 * k + 8342980 := by
    unfold C
    simp [show (5038848 * k + 2780993) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8342980) = 7558272 * k + 4171490 := by
    unfold C
    simp [show (15116544 * k + 8342980) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4171490) = 3779136 * k + 2085745 := by
    unfold C
    simp [show (7558272 * k + 4171490) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2085745) = 11337408 * k + 6257236 := by
    unfold C
    simp [show (3779136 * k + 2085745) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6257236) = 5668704 * k + 3128618 := by
    unfold C
    simp [show (11337408 * k + 6257236) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3128618) = 2834352 * k + 1564309 := by
    unfold C
    simp [show (5668704 * k + 3128618) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1564309) = 8503056 * k + 4692928 := by
    unfold C
    simp [show (2834352 * k + 1564309) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4692928) = 4251528 * k + 2346464 := by
    unfold C
    simp [show (8503056 * k + 4692928) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2346464) = 2125764 * k + 1173232 := by
    unfold C
    simp [show (4251528 * k + 2346464) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1173232) = 1062882 * k + 586616 := by
    unfold C
    simp [show (2125764 * k + 1173232) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 586616) = 531441 * k + 293308 := by
    unfold C
    simp [show (1062882 * k + 586616) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 578719) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 578719)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_578843 : ∀ k : Nat,
    iterate (1048576 * k + 578843) 32 = 531441 * k + 293371 ∧
      531441 * k + 293371 < 1048576 * k + 578843 := by
  intro k
  have h1 : C (1048576 * k + 578843) = 3145728 * k + 1736530 := by
    unfold C
    simp [show (1048576 * k + 578843) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1736530) = 1572864 * k + 868265 := by
    unfold C
    simp [show (3145728 * k + 1736530) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 868265) = 4718592 * k + 2604796 := by
    unfold C
    simp [show (1572864 * k + 868265) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2604796) = 2359296 * k + 1302398 := by
    unfold C
    simp [show (4718592 * k + 2604796) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1302398) = 1179648 * k + 651199 := by
    unfold C
    simp [show (2359296 * k + 1302398) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 651199) = 3538944 * k + 1953598 := by
    unfold C
    simp [show (1179648 * k + 651199) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1953598) = 1769472 * k + 976799 := by
    unfold C
    simp [show (3538944 * k + 1953598) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 976799) = 5308416 * k + 2930398 := by
    unfold C
    simp [show (1769472 * k + 976799) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2930398) = 2654208 * k + 1465199 := by
    unfold C
    simp [show (5308416 * k + 2930398) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1465199) = 7962624 * k + 4395598 := by
    unfold C
    simp [show (2654208 * k + 1465199) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4395598) = 3981312 * k + 2197799 := by
    unfold C
    simp [show (7962624 * k + 4395598) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2197799) = 11943936 * k + 6593398 := by
    unfold C
    simp [show (3981312 * k + 2197799) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6593398) = 5971968 * k + 3296699 := by
    unfold C
    simp [show (11943936 * k + 6593398) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3296699) = 17915904 * k + 9890098 := by
    unfold C
    simp [show (5971968 * k + 3296699) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9890098) = 8957952 * k + 4945049 := by
    unfold C
    simp [show (17915904 * k + 9890098) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4945049) = 26873856 * k + 14835148 := by
    unfold C
    simp [show (8957952 * k + 4945049) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 14835148) = 13436928 * k + 7417574 := by
    unfold C
    simp [show (26873856 * k + 14835148) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7417574) = 6718464 * k + 3708787 := by
    unfold C
    simp [show (13436928 * k + 7417574) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3708787) = 20155392 * k + 11126362 := by
    unfold C
    simp [show (6718464 * k + 3708787) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 11126362) = 10077696 * k + 5563181 := by
    unfold C
    simp [show (20155392 * k + 11126362) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5563181) = 30233088 * k + 16689544 := by
    unfold C
    simp [show (10077696 * k + 5563181) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 16689544) = 15116544 * k + 8344772 := by
    unfold C
    simp [show (30233088 * k + 16689544) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8344772) = 7558272 * k + 4172386 := by
    unfold C
    simp [show (15116544 * k + 8344772) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4172386) = 3779136 * k + 2086193 := by
    unfold C
    simp [show (7558272 * k + 4172386) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2086193) = 11337408 * k + 6258580 := by
    unfold C
    simp [show (3779136 * k + 2086193) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6258580) = 5668704 * k + 3129290 := by
    unfold C
    simp [show (11337408 * k + 6258580) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3129290) = 2834352 * k + 1564645 := by
    unfold C
    simp [show (5668704 * k + 3129290) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1564645) = 8503056 * k + 4693936 := by
    unfold C
    simp [show (2834352 * k + 1564645) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4693936) = 4251528 * k + 2346968 := by
    unfold C
    simp [show (8503056 * k + 4693936) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2346968) = 2125764 * k + 1173484 := by
    unfold C
    simp [show (4251528 * k + 2346968) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1173484) = 1062882 * k + 586742 := by
    unfold C
    simp [show (2125764 * k + 1173484) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 586742) = 531441 * k + 293371 := by
    unfold C
    simp [show (1062882 * k + 586742) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 578843) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 578843)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard074
