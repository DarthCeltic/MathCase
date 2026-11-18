import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard130

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_1021947 : ∀ k : Nat,
    iterate (1048576 * k + 1021947) 32 = 531441 * k + 517946 ∧
      531441 * k + 517946 < 1048576 * k + 1021947 := by
  intro k
  have h1 : C (1048576 * k + 1021947) = 3145728 * k + 3065842 := by
    unfold C
    simp [show (1048576 * k + 1021947) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3065842) = 1572864 * k + 1532921 := by
    unfold C
    simp [show (3145728 * k + 3065842) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1532921) = 4718592 * k + 4598764 := by
    unfold C
    simp [show (1572864 * k + 1532921) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4598764) = 2359296 * k + 2299382 := by
    unfold C
    simp [show (4718592 * k + 4598764) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2299382) = 1179648 * k + 1149691 := by
    unfold C
    simp [show (2359296 * k + 2299382) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1149691) = 3538944 * k + 3449074 := by
    unfold C
    simp [show (1179648 * k + 1149691) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3449074) = 1769472 * k + 1724537 := by
    unfold C
    simp [show (3538944 * k + 3449074) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1724537) = 5308416 * k + 5173612 := by
    unfold C
    simp [show (1769472 * k + 1724537) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5173612) = 2654208 * k + 2586806 := by
    unfold C
    simp [show (5308416 * k + 5173612) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2586806) = 1327104 * k + 1293403 := by
    unfold C
    simp [show (2654208 * k + 2586806) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1293403) = 3981312 * k + 3880210 := by
    unfold C
    simp [show (1327104 * k + 1293403) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3880210) = 1990656 * k + 1940105 := by
    unfold C
    simp [show (3981312 * k + 3880210) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1940105) = 5971968 * k + 5820316 := by
    unfold C
    simp [show (1990656 * k + 1940105) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5820316) = 2985984 * k + 2910158 := by
    unfold C
    simp [show (5971968 * k + 5820316) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2910158) = 1492992 * k + 1455079 := by
    unfold C
    simp [show (2985984 * k + 2910158) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1455079) = 4478976 * k + 4365238 := by
    unfold C
    simp [show (1492992 * k + 1455079) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4365238) = 2239488 * k + 2182619 := by
    unfold C
    simp [show (4478976 * k + 4365238) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2182619) = 6718464 * k + 6547858 := by
    unfold C
    simp [show (2239488 * k + 2182619) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6547858) = 3359232 * k + 3273929 := by
    unfold C
    simp [show (6718464 * k + 6547858) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3273929) = 10077696 * k + 9821788 := by
    unfold C
    simp [show (3359232 * k + 3273929) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9821788) = 5038848 * k + 4910894 := by
    unfold C
    simp [show (10077696 * k + 9821788) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4910894) = 2519424 * k + 2455447 := by
    unfold C
    simp [show (5038848 * k + 4910894) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2455447) = 7558272 * k + 7366342 := by
    unfold C
    simp [show (2519424 * k + 2455447) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7366342) = 3779136 * k + 3683171 := by
    unfold C
    simp [show (7558272 * k + 7366342) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3683171) = 11337408 * k + 11049514 := by
    unfold C
    simp [show (3779136 * k + 3683171) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11049514) = 5668704 * k + 5524757 := by
    unfold C
    simp [show (11337408 * k + 11049514) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5524757) = 17006112 * k + 16574272 := by
    unfold C
    simp [show (5668704 * k + 5524757) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 16574272) = 8503056 * k + 8287136 := by
    unfold C
    simp [show (17006112 * k + 16574272) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8287136) = 4251528 * k + 4143568 := by
    unfold C
    simp [show (8503056 * k + 8287136) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4143568) = 2125764 * k + 2071784 := by
    unfold C
    simp [show (4251528 * k + 4143568) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2071784) = 1062882 * k + 1035892 := by
    unfold C
    simp [show (2125764 * k + 2071784) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1035892) = 531441 * k + 517946 := by
    unfold C
    simp [show (1062882 * k + 1035892) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1021947) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1021947)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1022119 : ∀ k : Nat,
    iterate (1048576 * k + 1022119) 32 = 531441 * k + 518033 ∧
      531441 * k + 518033 < 1048576 * k + 1022119 := by
  intro k
  have h1 : C (1048576 * k + 1022119) = 3145728 * k + 3066358 := by
    unfold C
    simp [show (1048576 * k + 1022119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3066358) = 1572864 * k + 1533179 := by
    unfold C
    simp [show (3145728 * k + 3066358) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1533179) = 4718592 * k + 4599538 := by
    unfold C
    simp [show (1572864 * k + 1533179) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4599538) = 2359296 * k + 2299769 := by
    unfold C
    simp [show (4718592 * k + 4599538) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2299769) = 7077888 * k + 6899308 := by
    unfold C
    simp [show (2359296 * k + 2299769) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6899308) = 3538944 * k + 3449654 := by
    unfold C
    simp [show (7077888 * k + 6899308) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3449654) = 1769472 * k + 1724827 := by
    unfold C
    simp [show (3538944 * k + 3449654) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1724827) = 5308416 * k + 5174482 := by
    unfold C
    simp [show (1769472 * k + 1724827) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5174482) = 2654208 * k + 2587241 := by
    unfold C
    simp [show (5308416 * k + 5174482) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2587241) = 7962624 * k + 7761724 := by
    unfold C
    simp [show (2654208 * k + 2587241) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7761724) = 3981312 * k + 3880862 := by
    unfold C
    simp [show (7962624 * k + 7761724) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3880862) = 1990656 * k + 1940431 := by
    unfold C
    simp [show (3981312 * k + 3880862) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1940431) = 5971968 * k + 5821294 := by
    unfold C
    simp [show (1990656 * k + 1940431) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5821294) = 2985984 * k + 2910647 := by
    unfold C
    simp [show (5971968 * k + 5821294) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2910647) = 8957952 * k + 8731942 := by
    unfold C
    simp [show (2985984 * k + 2910647) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8731942) = 4478976 * k + 4365971 := by
    unfold C
    simp [show (8957952 * k + 8731942) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4365971) = 13436928 * k + 13097914 := by
    unfold C
    simp [show (4478976 * k + 4365971) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 13097914) = 6718464 * k + 6548957 := by
    unfold C
    simp [show (13436928 * k + 13097914) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6548957) = 20155392 * k + 19646872 := by
    unfold C
    simp [show (6718464 * k + 6548957) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19646872) = 10077696 * k + 9823436 := by
    unfold C
    simp [show (20155392 * k + 19646872) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9823436) = 5038848 * k + 4911718 := by
    unfold C
    simp [show (10077696 * k + 9823436) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4911718) = 2519424 * k + 2455859 := by
    unfold C
    simp [show (5038848 * k + 4911718) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2455859) = 7558272 * k + 7367578 := by
    unfold C
    simp [show (2519424 * k + 2455859) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7367578) = 3779136 * k + 3683789 := by
    unfold C
    simp [show (7558272 * k + 7367578) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3683789) = 11337408 * k + 11051368 := by
    unfold C
    simp [show (3779136 * k + 3683789) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11051368) = 5668704 * k + 5525684 := by
    unfold C
    simp [show (11337408 * k + 11051368) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5525684) = 2834352 * k + 2762842 := by
    unfold C
    simp [show (5668704 * k + 5525684) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2762842) = 1417176 * k + 1381421 := by
    unfold C
    simp [show (2834352 * k + 2762842) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1381421) = 4251528 * k + 4144264 := by
    unfold C
    simp [show (1417176 * k + 1381421) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4144264) = 2125764 * k + 2072132 := by
    unfold C
    simp [show (4251528 * k + 4144264) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2072132) = 1062882 * k + 1036066 := by
    unfold C
    simp [show (2125764 * k + 2072132) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1036066) = 531441 * k + 518033 := by
    unfold C
    simp [show (1062882 * k + 1036066) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1022119) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1022119)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1022463 : ∀ k : Nat,
    iterate (1048576 * k + 1022463) 32 = 531441 * k + 518207 ∧
      531441 * k + 518207 < 1048576 * k + 1022463 := by
  intro k
  have h1 : C (1048576 * k + 1022463) = 3145728 * k + 3067390 := by
    unfold C
    simp [show (1048576 * k + 1022463) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3067390) = 1572864 * k + 1533695 := by
    unfold C
    simp [show (3145728 * k + 3067390) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1533695) = 4718592 * k + 4601086 := by
    unfold C
    simp [show (1572864 * k + 1533695) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4601086) = 2359296 * k + 2300543 := by
    unfold C
    simp [show (4718592 * k + 4601086) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2300543) = 7077888 * k + 6901630 := by
    unfold C
    simp [show (2359296 * k + 2300543) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6901630) = 3538944 * k + 3450815 := by
    unfold C
    simp [show (7077888 * k + 6901630) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3450815) = 10616832 * k + 10352446 := by
    unfold C
    simp [show (3538944 * k + 3450815) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10352446) = 5308416 * k + 5176223 := by
    unfold C
    simp [show (10616832 * k + 10352446) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5176223) = 15925248 * k + 15528670 := by
    unfold C
    simp [show (5308416 * k + 5176223) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15528670) = 7962624 * k + 7764335 := by
    unfold C
    simp [show (15925248 * k + 15528670) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7764335) = 23887872 * k + 23293006 := by
    unfold C
    simp [show (7962624 * k + 7764335) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23293006) = 11943936 * k + 11646503 := by
    unfold C
    simp [show (23887872 * k + 23293006) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11646503) = 35831808 * k + 34939510 := by
    unfold C
    simp [show (11943936 * k + 11646503) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 34939510) = 17915904 * k + 17469755 := by
    unfold C
    simp [show (35831808 * k + 34939510) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 17469755) = 53747712 * k + 52409266 := by
    unfold C
    simp [show (17915904 * k + 17469755) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 52409266) = 26873856 * k + 26204633 := by
    unfold C
    simp [show (53747712 * k + 52409266) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 26204633) = 80621568 * k + 78613900 := by
    unfold C
    simp [show (26873856 * k + 26204633) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 78613900) = 40310784 * k + 39306950 := by
    unfold C
    simp [show (80621568 * k + 78613900) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 39306950) = 20155392 * k + 19653475 := by
    unfold C
    simp [show (40310784 * k + 39306950) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19653475) = 60466176 * k + 58960426 := by
    unfold C
    simp [show (20155392 * k + 19653475) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 58960426) = 30233088 * k + 29480213 := by
    unfold C
    simp [show (60466176 * k + 58960426) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 29480213) = 90699264 * k + 88440640 := by
    unfold C
    simp [show (30233088 * k + 29480213) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 88440640) = 45349632 * k + 44220320 := by
    unfold C
    simp [show (90699264 * k + 88440640) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 44220320) = 22674816 * k + 22110160 := by
    unfold C
    simp [show (45349632 * k + 44220320) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 22110160) = 11337408 * k + 11055080 := by
    unfold C
    simp [show (22674816 * k + 22110160) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 11055080) = 5668704 * k + 5527540 := by
    unfold C
    simp [show (11337408 * k + 11055080) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5527540) = 2834352 * k + 2763770 := by
    unfold C
    simp [show (5668704 * k + 5527540) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2763770) = 1417176 * k + 1381885 := by
    unfold C
    simp [show (2834352 * k + 2763770) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1381885) = 4251528 * k + 4145656 := by
    unfold C
    simp [show (1417176 * k + 1381885) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4145656) = 2125764 * k + 2072828 := by
    unfold C
    simp [show (4251528 * k + 4145656) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2072828) = 1062882 * k + 1036414 := by
    unfold C
    simp [show (2125764 * k + 2072828) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1036414) = 531441 * k + 518207 := by
    unfold C
    simp [show (1062882 * k + 1036414) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1022463) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1022463)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1023131 : ∀ k : Nat,
    iterate (1048576 * k + 1023131) 32 = 531441 * k + 518546 ∧
      531441 * k + 518546 < 1048576 * k + 1023131 := by
  intro k
  have h1 : C (1048576 * k + 1023131) = 3145728 * k + 3069394 := by
    unfold C
    simp [show (1048576 * k + 1023131) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3069394) = 1572864 * k + 1534697 := by
    unfold C
    simp [show (3145728 * k + 3069394) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1534697) = 4718592 * k + 4604092 := by
    unfold C
    simp [show (1572864 * k + 1534697) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4604092) = 2359296 * k + 2302046 := by
    unfold C
    simp [show (4718592 * k + 4604092) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2302046) = 1179648 * k + 1151023 := by
    unfold C
    simp [show (2359296 * k + 2302046) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1151023) = 3538944 * k + 3453070 := by
    unfold C
    simp [show (1179648 * k + 1151023) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3453070) = 1769472 * k + 1726535 := by
    unfold C
    simp [show (3538944 * k + 3453070) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1726535) = 5308416 * k + 5179606 := by
    unfold C
    simp [show (1769472 * k + 1726535) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5179606) = 2654208 * k + 2589803 := by
    unfold C
    simp [show (5308416 * k + 5179606) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2589803) = 7962624 * k + 7769410 := by
    unfold C
    simp [show (2654208 * k + 2589803) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7769410) = 3981312 * k + 3884705 := by
    unfold C
    simp [show (7962624 * k + 7769410) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3884705) = 11943936 * k + 11654116 := by
    unfold C
    simp [show (3981312 * k + 3884705) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11654116) = 5971968 * k + 5827058 := by
    unfold C
    simp [show (11943936 * k + 11654116) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5827058) = 2985984 * k + 2913529 := by
    unfold C
    simp [show (5971968 * k + 5827058) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2913529) = 8957952 * k + 8740588 := by
    unfold C
    simp [show (2985984 * k + 2913529) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8740588) = 4478976 * k + 4370294 := by
    unfold C
    simp [show (8957952 * k + 8740588) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4370294) = 2239488 * k + 2185147 := by
    unfold C
    simp [show (4478976 * k + 4370294) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2185147) = 6718464 * k + 6555442 := by
    unfold C
    simp [show (2239488 * k + 2185147) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6555442) = 3359232 * k + 3277721 := by
    unfold C
    simp [show (6718464 * k + 6555442) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3277721) = 10077696 * k + 9833164 := by
    unfold C
    simp [show (3359232 * k + 3277721) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9833164) = 5038848 * k + 4916582 := by
    unfold C
    simp [show (10077696 * k + 9833164) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4916582) = 2519424 * k + 2458291 := by
    unfold C
    simp [show (5038848 * k + 4916582) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2458291) = 7558272 * k + 7374874 := by
    unfold C
    simp [show (2519424 * k + 2458291) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7374874) = 3779136 * k + 3687437 := by
    unfold C
    simp [show (7558272 * k + 7374874) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3687437) = 11337408 * k + 11062312 := by
    unfold C
    simp [show (3779136 * k + 3687437) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11062312) = 5668704 * k + 5531156 := by
    unfold C
    simp [show (11337408 * k + 11062312) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5531156) = 2834352 * k + 2765578 := by
    unfold C
    simp [show (5668704 * k + 5531156) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2765578) = 1417176 * k + 1382789 := by
    unfold C
    simp [show (2834352 * k + 2765578) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1382789) = 4251528 * k + 4148368 := by
    unfold C
    simp [show (1417176 * k + 1382789) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4148368) = 2125764 * k + 2074184 := by
    unfold C
    simp [show (4251528 * k + 4148368) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2074184) = 1062882 * k + 1037092 := by
    unfold C
    simp [show (2125764 * k + 2074184) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1037092) = 531441 * k + 518546 := by
    unfold C
    simp [show (1062882 * k + 1037092) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1023131) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1023131)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1023167 : ∀ k : Nat,
    iterate (1048576 * k + 1023167) 32 = 531441 * k + 518564 ∧
      531441 * k + 518564 < 1048576 * k + 1023167 := by
  intro k
  have h1 : C (1048576 * k + 1023167) = 3145728 * k + 3069502 := by
    unfold C
    simp [show (1048576 * k + 1023167) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3069502) = 1572864 * k + 1534751 := by
    unfold C
    simp [show (3145728 * k + 3069502) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1534751) = 4718592 * k + 4604254 := by
    unfold C
    simp [show (1572864 * k + 1534751) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4604254) = 2359296 * k + 2302127 := by
    unfold C
    simp [show (4718592 * k + 4604254) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2302127) = 7077888 * k + 6906382 := by
    unfold C
    simp [show (2359296 * k + 2302127) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6906382) = 3538944 * k + 3453191 := by
    unfold C
    simp [show (7077888 * k + 6906382) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3453191) = 10616832 * k + 10359574 := by
    unfold C
    simp [show (3538944 * k + 3453191) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10359574) = 5308416 * k + 5179787 := by
    unfold C
    simp [show (10616832 * k + 10359574) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5179787) = 15925248 * k + 15539362 := by
    unfold C
    simp [show (5308416 * k + 5179787) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15539362) = 7962624 * k + 7769681 := by
    unfold C
    simp [show (15925248 * k + 15539362) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7769681) = 23887872 * k + 23309044 := by
    unfold C
    simp [show (7962624 * k + 7769681) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23309044) = 11943936 * k + 11654522 := by
    unfold C
    simp [show (23887872 * k + 23309044) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11654522) = 5971968 * k + 5827261 := by
    unfold C
    simp [show (11943936 * k + 11654522) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5827261) = 17915904 * k + 17481784 := by
    unfold C
    simp [show (5971968 * k + 5827261) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17481784) = 8957952 * k + 8740892 := by
    unfold C
    simp [show (17915904 * k + 17481784) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8740892) = 4478976 * k + 4370446 := by
    unfold C
    simp [show (8957952 * k + 8740892) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4370446) = 2239488 * k + 2185223 := by
    unfold C
    simp [show (4478976 * k + 4370446) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2185223) = 6718464 * k + 6555670 := by
    unfold C
    simp [show (2239488 * k + 2185223) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6555670) = 3359232 * k + 3277835 := by
    unfold C
    simp [show (6718464 * k + 6555670) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3277835) = 10077696 * k + 9833506 := by
    unfold C
    simp [show (3359232 * k + 3277835) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9833506) = 5038848 * k + 4916753 := by
    unfold C
    simp [show (10077696 * k + 9833506) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4916753) = 15116544 * k + 14750260 := by
    unfold C
    simp [show (5038848 * k + 4916753) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14750260) = 7558272 * k + 7375130 := by
    unfold C
    simp [show (15116544 * k + 14750260) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7375130) = 3779136 * k + 3687565 := by
    unfold C
    simp [show (7558272 * k + 7375130) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3687565) = 11337408 * k + 11062696 := by
    unfold C
    simp [show (3779136 * k + 3687565) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11062696) = 5668704 * k + 5531348 := by
    unfold C
    simp [show (11337408 * k + 11062696) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5531348) = 2834352 * k + 2765674 := by
    unfold C
    simp [show (5668704 * k + 5531348) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2765674) = 1417176 * k + 1382837 := by
    unfold C
    simp [show (2834352 * k + 2765674) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1382837) = 4251528 * k + 4148512 := by
    unfold C
    simp [show (1417176 * k + 1382837) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4148512) = 2125764 * k + 2074256 := by
    unfold C
    simp [show (4251528 * k + 4148512) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2074256) = 1062882 * k + 1037128 := by
    unfold C
    simp [show (2125764 * k + 2074256) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1037128) = 531441 * k + 518564 := by
    unfold C
    simp [show (1062882 * k + 1037128) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1023167) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1023167)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1023279 : ∀ k : Nat,
    iterate (1048576 * k + 1023279) 32 = 531441 * k + 518621 ∧
      531441 * k + 518621 < 1048576 * k + 1023279 := by
  intro k
  have h1 : C (1048576 * k + 1023279) = 3145728 * k + 3069838 := by
    unfold C
    simp [show (1048576 * k + 1023279) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3069838) = 1572864 * k + 1534919 := by
    unfold C
    simp [show (3145728 * k + 3069838) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1534919) = 4718592 * k + 4604758 := by
    unfold C
    simp [show (1572864 * k + 1534919) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4604758) = 2359296 * k + 2302379 := by
    unfold C
    simp [show (4718592 * k + 4604758) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2302379) = 7077888 * k + 6907138 := by
    unfold C
    simp [show (2359296 * k + 2302379) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6907138) = 3538944 * k + 3453569 := by
    unfold C
    simp [show (7077888 * k + 6907138) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3453569) = 10616832 * k + 10360708 := by
    unfold C
    simp [show (3538944 * k + 3453569) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10360708) = 5308416 * k + 5180354 := by
    unfold C
    simp [show (10616832 * k + 10360708) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5180354) = 2654208 * k + 2590177 := by
    unfold C
    simp [show (5308416 * k + 5180354) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2590177) = 7962624 * k + 7770532 := by
    unfold C
    simp [show (2654208 * k + 2590177) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7770532) = 3981312 * k + 3885266 := by
    unfold C
    simp [show (7962624 * k + 7770532) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3885266) = 1990656 * k + 1942633 := by
    unfold C
    simp [show (3981312 * k + 3885266) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1942633) = 5971968 * k + 5827900 := by
    unfold C
    simp [show (1990656 * k + 1942633) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5827900) = 2985984 * k + 2913950 := by
    unfold C
    simp [show (5971968 * k + 5827900) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2913950) = 1492992 * k + 1456975 := by
    unfold C
    simp [show (2985984 * k + 2913950) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1456975) = 4478976 * k + 4370926 := by
    unfold C
    simp [show (1492992 * k + 1456975) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4370926) = 2239488 * k + 2185463 := by
    unfold C
    simp [show (4478976 * k + 4370926) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2185463) = 6718464 * k + 6556390 := by
    unfold C
    simp [show (2239488 * k + 2185463) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6556390) = 3359232 * k + 3278195 := by
    unfold C
    simp [show (6718464 * k + 6556390) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3278195) = 10077696 * k + 9834586 := by
    unfold C
    simp [show (3359232 * k + 3278195) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9834586) = 5038848 * k + 4917293 := by
    unfold C
    simp [show (10077696 * k + 9834586) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4917293) = 15116544 * k + 14751880 := by
    unfold C
    simp [show (5038848 * k + 4917293) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14751880) = 7558272 * k + 7375940 := by
    unfold C
    simp [show (15116544 * k + 14751880) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7375940) = 3779136 * k + 3687970 := by
    unfold C
    simp [show (7558272 * k + 7375940) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3687970) = 1889568 * k + 1843985 := by
    unfold C
    simp [show (3779136 * k + 3687970) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1843985) = 5668704 * k + 5531956 := by
    unfold C
    simp [show (1889568 * k + 1843985) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5531956) = 2834352 * k + 2765978 := by
    unfold C
    simp [show (5668704 * k + 5531956) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2765978) = 1417176 * k + 1382989 := by
    unfold C
    simp [show (2834352 * k + 2765978) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1382989) = 4251528 * k + 4148968 := by
    unfold C
    simp [show (1417176 * k + 1382989) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4148968) = 2125764 * k + 2074484 := by
    unfold C
    simp [show (4251528 * k + 4148968) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2074484) = 1062882 * k + 1037242 := by
    unfold C
    simp [show (2125764 * k + 2074484) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1037242) = 531441 * k + 518621 := by
    unfold C
    simp [show (1062882 * k + 1037242) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1023279) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1023279)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1023487 : ∀ k : Nat,
    iterate (1048576 * k + 1023487) 32 = 531441 * k + 518726 ∧
      531441 * k + 518726 < 1048576 * k + 1023487 := by
  intro k
  have h1 : C (1048576 * k + 1023487) = 3145728 * k + 3070462 := by
    unfold C
    simp [show (1048576 * k + 1023487) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3070462) = 1572864 * k + 1535231 := by
    unfold C
    simp [show (3145728 * k + 3070462) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1535231) = 4718592 * k + 4605694 := by
    unfold C
    simp [show (1572864 * k + 1535231) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4605694) = 2359296 * k + 2302847 := by
    unfold C
    simp [show (4718592 * k + 4605694) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2302847) = 7077888 * k + 6908542 := by
    unfold C
    simp [show (2359296 * k + 2302847) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6908542) = 3538944 * k + 3454271 := by
    unfold C
    simp [show (7077888 * k + 6908542) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3454271) = 10616832 * k + 10362814 := by
    unfold C
    simp [show (3538944 * k + 3454271) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10362814) = 5308416 * k + 5181407 := by
    unfold C
    simp [show (10616832 * k + 10362814) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5181407) = 15925248 * k + 15544222 := by
    unfold C
    simp [show (5308416 * k + 5181407) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15544222) = 7962624 * k + 7772111 := by
    unfold C
    simp [show (15925248 * k + 15544222) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7772111) = 23887872 * k + 23316334 := by
    unfold C
    simp [show (7962624 * k + 7772111) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23316334) = 11943936 * k + 11658167 := by
    unfold C
    simp [show (23887872 * k + 23316334) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11658167) = 35831808 * k + 34974502 := by
    unfold C
    simp [show (11943936 * k + 11658167) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 34974502) = 17915904 * k + 17487251 := by
    unfold C
    simp [show (35831808 * k + 34974502) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 17487251) = 53747712 * k + 52461754 := by
    unfold C
    simp [show (17915904 * k + 17487251) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 52461754) = 26873856 * k + 26230877 := by
    unfold C
    simp [show (53747712 * k + 52461754) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 26230877) = 80621568 * k + 78692632 := by
    unfold C
    simp [show (26873856 * k + 26230877) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 78692632) = 40310784 * k + 39346316 := by
    unfold C
    simp [show (80621568 * k + 78692632) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 39346316) = 20155392 * k + 19673158 := by
    unfold C
    simp [show (40310784 * k + 39346316) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19673158) = 10077696 * k + 9836579 := by
    unfold C
    simp [show (20155392 * k + 19673158) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9836579) = 30233088 * k + 29509738 := by
    unfold C
    simp [show (10077696 * k + 9836579) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 29509738) = 15116544 * k + 14754869 := by
    unfold C
    simp [show (30233088 * k + 29509738) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14754869) = 45349632 * k + 44264608 := by
    unfold C
    simp [show (15116544 * k + 14754869) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 44264608) = 22674816 * k + 22132304 := by
    unfold C
    simp [show (45349632 * k + 44264608) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 22132304) = 11337408 * k + 11066152 := by
    unfold C
    simp [show (22674816 * k + 22132304) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 11066152) = 5668704 * k + 5533076 := by
    unfold C
    simp [show (11337408 * k + 11066152) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5533076) = 2834352 * k + 2766538 := by
    unfold C
    simp [show (5668704 * k + 5533076) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2766538) = 1417176 * k + 1383269 := by
    unfold C
    simp [show (2834352 * k + 2766538) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1383269) = 4251528 * k + 4149808 := by
    unfold C
    simp [show (1417176 * k + 1383269) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4149808) = 2125764 * k + 2074904 := by
    unfold C
    simp [show (4251528 * k + 4149808) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2074904) = 1062882 * k + 1037452 := by
    unfold C
    simp [show (2125764 * k + 2074904) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1037452) = 531441 * k + 518726 := by
    unfold C
    simp [show (1062882 * k + 1037452) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1023487) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1023487)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1024047 : ∀ k : Nat,
    iterate (1048576 * k + 1024047) 32 = 531441 * k + 519010 ∧
      531441 * k + 519010 < 1048576 * k + 1024047 := by
  intro k
  have h1 : C (1048576 * k + 1024047) = 3145728 * k + 3072142 := by
    unfold C
    simp [show (1048576 * k + 1024047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3072142) = 1572864 * k + 1536071 := by
    unfold C
    simp [show (3145728 * k + 3072142) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1536071) = 4718592 * k + 4608214 := by
    unfold C
    simp [show (1572864 * k + 1536071) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4608214) = 2359296 * k + 2304107 := by
    unfold C
    simp [show (4718592 * k + 4608214) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2304107) = 7077888 * k + 6912322 := by
    unfold C
    simp [show (2359296 * k + 2304107) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6912322) = 3538944 * k + 3456161 := by
    unfold C
    simp [show (7077888 * k + 6912322) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3456161) = 10616832 * k + 10368484 := by
    unfold C
    simp [show (3538944 * k + 3456161) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10368484) = 5308416 * k + 5184242 := by
    unfold C
    simp [show (10616832 * k + 10368484) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5184242) = 2654208 * k + 2592121 := by
    unfold C
    simp [show (5308416 * k + 5184242) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2592121) = 7962624 * k + 7776364 := by
    unfold C
    simp [show (2654208 * k + 2592121) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7776364) = 3981312 * k + 3888182 := by
    unfold C
    simp [show (7962624 * k + 7776364) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3888182) = 1990656 * k + 1944091 := by
    unfold C
    simp [show (3981312 * k + 3888182) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1944091) = 5971968 * k + 5832274 := by
    unfold C
    simp [show (1990656 * k + 1944091) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5832274) = 2985984 * k + 2916137 := by
    unfold C
    simp [show (5971968 * k + 5832274) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2916137) = 8957952 * k + 8748412 := by
    unfold C
    simp [show (2985984 * k + 2916137) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8748412) = 4478976 * k + 4374206 := by
    unfold C
    simp [show (8957952 * k + 8748412) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4374206) = 2239488 * k + 2187103 := by
    unfold C
    simp [show (4478976 * k + 4374206) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2187103) = 6718464 * k + 6561310 := by
    unfold C
    simp [show (2239488 * k + 2187103) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6561310) = 3359232 * k + 3280655 := by
    unfold C
    simp [show (6718464 * k + 6561310) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3280655) = 10077696 * k + 9841966 := by
    unfold C
    simp [show (3359232 * k + 3280655) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9841966) = 5038848 * k + 4920983 := by
    unfold C
    simp [show (10077696 * k + 9841966) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4920983) = 15116544 * k + 14762950 := by
    unfold C
    simp [show (5038848 * k + 4920983) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14762950) = 7558272 * k + 7381475 := by
    unfold C
    simp [show (15116544 * k + 14762950) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7381475) = 22674816 * k + 22144426 := by
    unfold C
    simp [show (7558272 * k + 7381475) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 22144426) = 11337408 * k + 11072213 := by
    unfold C
    simp [show (22674816 * k + 22144426) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 11072213) = 34012224 * k + 33216640 := by
    unfold C
    simp [show (11337408 * k + 11072213) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 33216640) = 17006112 * k + 16608320 := by
    unfold C
    simp [show (34012224 * k + 33216640) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 16608320) = 8503056 * k + 8304160 := by
    unfold C
    simp [show (17006112 * k + 16608320) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8304160) = 4251528 * k + 4152080 := by
    unfold C
    simp [show (8503056 * k + 8304160) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4152080) = 2125764 * k + 2076040 := by
    unfold C
    simp [show (4251528 * k + 4152080) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2076040) = 1062882 * k + 1038020 := by
    unfold C
    simp [show (2125764 * k + 2076040) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1038020) = 531441 * k + 519010 := by
    unfold C
    simp [show (1062882 * k + 1038020) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1024047) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1024047)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1024327 : ∀ k : Nat,
    iterate (1048576 * k + 1024327) 32 = 531441 * k + 519152 ∧
      531441 * k + 519152 < 1048576 * k + 1024327 := by
  intro k
  have h1 : C (1048576 * k + 1024327) = 3145728 * k + 3072982 := by
    unfold C
    simp [show (1048576 * k + 1024327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3072982) = 1572864 * k + 1536491 := by
    unfold C
    simp [show (3145728 * k + 3072982) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1536491) = 4718592 * k + 4609474 := by
    unfold C
    simp [show (1572864 * k + 1536491) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4609474) = 2359296 * k + 2304737 := by
    unfold C
    simp [show (4718592 * k + 4609474) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2304737) = 7077888 * k + 6914212 := by
    unfold C
    simp [show (2359296 * k + 2304737) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6914212) = 3538944 * k + 3457106 := by
    unfold C
    simp [show (7077888 * k + 6914212) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3457106) = 1769472 * k + 1728553 := by
    unfold C
    simp [show (3538944 * k + 3457106) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1728553) = 5308416 * k + 5185660 := by
    unfold C
    simp [show (1769472 * k + 1728553) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5185660) = 2654208 * k + 2592830 := by
    unfold C
    simp [show (5308416 * k + 5185660) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2592830) = 1327104 * k + 1296415 := by
    unfold C
    simp [show (2654208 * k + 2592830) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1296415) = 3981312 * k + 3889246 := by
    unfold C
    simp [show (1327104 * k + 1296415) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3889246) = 1990656 * k + 1944623 := by
    unfold C
    simp [show (3981312 * k + 3889246) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1944623) = 5971968 * k + 5833870 := by
    unfold C
    simp [show (1990656 * k + 1944623) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5833870) = 2985984 * k + 2916935 := by
    unfold C
    simp [show (5971968 * k + 5833870) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2916935) = 8957952 * k + 8750806 := by
    unfold C
    simp [show (2985984 * k + 2916935) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8750806) = 4478976 * k + 4375403 := by
    unfold C
    simp [show (8957952 * k + 8750806) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4375403) = 13436928 * k + 13126210 := by
    unfold C
    simp [show (4478976 * k + 4375403) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 13126210) = 6718464 * k + 6563105 := by
    unfold C
    simp [show (13436928 * k + 13126210) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6563105) = 20155392 * k + 19689316 := by
    unfold C
    simp [show (6718464 * k + 6563105) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19689316) = 10077696 * k + 9844658 := by
    unfold C
    simp [show (20155392 * k + 19689316) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9844658) = 5038848 * k + 4922329 := by
    unfold C
    simp [show (10077696 * k + 9844658) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4922329) = 15116544 * k + 14766988 := by
    unfold C
    simp [show (5038848 * k + 4922329) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14766988) = 7558272 * k + 7383494 := by
    unfold C
    simp [show (15116544 * k + 14766988) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7383494) = 3779136 * k + 3691747 := by
    unfold C
    simp [show (7558272 * k + 7383494) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3691747) = 11337408 * k + 11075242 := by
    unfold C
    simp [show (3779136 * k + 3691747) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11075242) = 5668704 * k + 5537621 := by
    unfold C
    simp [show (11337408 * k + 11075242) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5537621) = 17006112 * k + 16612864 := by
    unfold C
    simp [show (5668704 * k + 5537621) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 16612864) = 8503056 * k + 8306432 := by
    unfold C
    simp [show (17006112 * k + 16612864) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8306432) = 4251528 * k + 4153216 := by
    unfold C
    simp [show (8503056 * k + 8306432) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4153216) = 2125764 * k + 2076608 := by
    unfold C
    simp [show (4251528 * k + 4153216) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2076608) = 1062882 * k + 1038304 := by
    unfold C
    simp [show (2125764 * k + 2076608) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1038304) = 531441 * k + 519152 := by
    unfold C
    simp [show (1062882 * k + 1038304) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1024327) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1024327)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1024479 : ∀ k : Nat,
    iterate (1048576 * k + 1024479) 32 = 531441 * k + 519229 ∧
      531441 * k + 519229 < 1048576 * k + 1024479 := by
  intro k
  have h1 : C (1048576 * k + 1024479) = 3145728 * k + 3073438 := by
    unfold C
    simp [show (1048576 * k + 1024479) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3073438) = 1572864 * k + 1536719 := by
    unfold C
    simp [show (3145728 * k + 3073438) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1536719) = 4718592 * k + 4610158 := by
    unfold C
    simp [show (1572864 * k + 1536719) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4610158) = 2359296 * k + 2305079 := by
    unfold C
    simp [show (4718592 * k + 4610158) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2305079) = 7077888 * k + 6915238 := by
    unfold C
    simp [show (2359296 * k + 2305079) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6915238) = 3538944 * k + 3457619 := by
    unfold C
    simp [show (7077888 * k + 6915238) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3457619) = 10616832 * k + 10372858 := by
    unfold C
    simp [show (3538944 * k + 3457619) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10372858) = 5308416 * k + 5186429 := by
    unfold C
    simp [show (10616832 * k + 10372858) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5186429) = 15925248 * k + 15559288 := by
    unfold C
    simp [show (5308416 * k + 5186429) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15559288) = 7962624 * k + 7779644 := by
    unfold C
    simp [show (15925248 * k + 15559288) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7779644) = 3981312 * k + 3889822 := by
    unfold C
    simp [show (7962624 * k + 7779644) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3889822) = 1990656 * k + 1944911 := by
    unfold C
    simp [show (3981312 * k + 3889822) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1944911) = 5971968 * k + 5834734 := by
    unfold C
    simp [show (1990656 * k + 1944911) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5834734) = 2985984 * k + 2917367 := by
    unfold C
    simp [show (5971968 * k + 5834734) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2917367) = 8957952 * k + 8752102 := by
    unfold C
    simp [show (2985984 * k + 2917367) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8752102) = 4478976 * k + 4376051 := by
    unfold C
    simp [show (8957952 * k + 8752102) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4376051) = 13436928 * k + 13128154 := by
    unfold C
    simp [show (4478976 * k + 4376051) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 13128154) = 6718464 * k + 6564077 := by
    unfold C
    simp [show (13436928 * k + 13128154) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6564077) = 20155392 * k + 19692232 := by
    unfold C
    simp [show (6718464 * k + 6564077) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19692232) = 10077696 * k + 9846116 := by
    unfold C
    simp [show (20155392 * k + 19692232) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9846116) = 5038848 * k + 4923058 := by
    unfold C
    simp [show (10077696 * k + 9846116) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4923058) = 2519424 * k + 2461529 := by
    unfold C
    simp [show (5038848 * k + 4923058) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2461529) = 7558272 * k + 7384588 := by
    unfold C
    simp [show (2519424 * k + 2461529) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7384588) = 3779136 * k + 3692294 := by
    unfold C
    simp [show (7558272 * k + 7384588) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3692294) = 1889568 * k + 1846147 := by
    unfold C
    simp [show (3779136 * k + 3692294) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1846147) = 5668704 * k + 5538442 := by
    unfold C
    simp [show (1889568 * k + 1846147) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5538442) = 2834352 * k + 2769221 := by
    unfold C
    simp [show (5668704 * k + 5538442) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2769221) = 8503056 * k + 8307664 := by
    unfold C
    simp [show (2834352 * k + 2769221) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8307664) = 4251528 * k + 4153832 := by
    unfold C
    simp [show (8503056 * k + 8307664) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4153832) = 2125764 * k + 2076916 := by
    unfold C
    simp [show (4251528 * k + 4153832) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2076916) = 1062882 * k + 1038458 := by
    unfold C
    simp [show (2125764 * k + 2076916) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1038458) = 531441 * k + 519229 := by
    unfold C
    simp [show (1062882 * k + 1038458) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1024479) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1024479)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1025535 : ∀ k : Nat,
    iterate (1048576 * k + 1025535) 32 = 531441 * k + 519764 ∧
      531441 * k + 519764 < 1048576 * k + 1025535 := by
  intro k
  have h1 : C (1048576 * k + 1025535) = 3145728 * k + 3076606 := by
    unfold C
    simp [show (1048576 * k + 1025535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3076606) = 1572864 * k + 1538303 := by
    unfold C
    simp [show (3145728 * k + 3076606) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1538303) = 4718592 * k + 4614910 := by
    unfold C
    simp [show (1572864 * k + 1538303) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4614910) = 2359296 * k + 2307455 := by
    unfold C
    simp [show (4718592 * k + 4614910) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2307455) = 7077888 * k + 6922366 := by
    unfold C
    simp [show (2359296 * k + 2307455) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6922366) = 3538944 * k + 3461183 := by
    unfold C
    simp [show (7077888 * k + 6922366) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3461183) = 10616832 * k + 10383550 := by
    unfold C
    simp [show (3538944 * k + 3461183) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10383550) = 5308416 * k + 5191775 := by
    unfold C
    simp [show (10616832 * k + 10383550) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5191775) = 15925248 * k + 15575326 := by
    unfold C
    simp [show (5308416 * k + 5191775) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15575326) = 7962624 * k + 7787663 := by
    unfold C
    simp [show (15925248 * k + 15575326) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7787663) = 23887872 * k + 23362990 := by
    unfold C
    simp [show (7962624 * k + 7787663) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23362990) = 11943936 * k + 11681495 := by
    unfold C
    simp [show (23887872 * k + 23362990) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11681495) = 35831808 * k + 35044486 := by
    unfold C
    simp [show (11943936 * k + 11681495) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 35044486) = 17915904 * k + 17522243 := by
    unfold C
    simp [show (35831808 * k + 35044486) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 17522243) = 53747712 * k + 52566730 := by
    unfold C
    simp [show (17915904 * k + 17522243) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 52566730) = 26873856 * k + 26283365 := by
    unfold C
    simp [show (53747712 * k + 52566730) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 26283365) = 80621568 * k + 78850096 := by
    unfold C
    simp [show (26873856 * k + 26283365) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 78850096) = 40310784 * k + 39425048 := by
    unfold C
    simp [show (80621568 * k + 78850096) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 39425048) = 20155392 * k + 19712524 := by
    unfold C
    simp [show (40310784 * k + 39425048) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19712524) = 10077696 * k + 9856262 := by
    unfold C
    simp [show (20155392 * k + 19712524) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9856262) = 5038848 * k + 4928131 := by
    unfold C
    simp [show (10077696 * k + 9856262) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4928131) = 15116544 * k + 14784394 := by
    unfold C
    simp [show (5038848 * k + 4928131) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14784394) = 7558272 * k + 7392197 := by
    unfold C
    simp [show (15116544 * k + 14784394) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7392197) = 22674816 * k + 22176592 := by
    unfold C
    simp [show (7558272 * k + 7392197) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 22176592) = 11337408 * k + 11088296 := by
    unfold C
    simp [show (22674816 * k + 22176592) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 11088296) = 5668704 * k + 5544148 := by
    unfold C
    simp [show (11337408 * k + 11088296) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5544148) = 2834352 * k + 2772074 := by
    unfold C
    simp [show (5668704 * k + 5544148) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2772074) = 1417176 * k + 1386037 := by
    unfold C
    simp [show (2834352 * k + 2772074) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1386037) = 4251528 * k + 4158112 := by
    unfold C
    simp [show (1417176 * k + 1386037) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4158112) = 2125764 * k + 2079056 := by
    unfold C
    simp [show (4251528 * k + 4158112) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2079056) = 1062882 * k + 1039528 := by
    unfold C
    simp [show (2125764 * k + 2079056) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1039528) = 531441 * k + 519764 := by
    unfold C
    simp [show (1062882 * k + 1039528) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1025535) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1025535)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1026043 : ∀ k : Nat,
    iterate (1048576 * k + 1026043) 32 = 531441 * k + 520022 ∧
      531441 * k + 520022 < 1048576 * k + 1026043 := by
  intro k
  have h1 : C (1048576 * k + 1026043) = 3145728 * k + 3078130 := by
    unfold C
    simp [show (1048576 * k + 1026043) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3078130) = 1572864 * k + 1539065 := by
    unfold C
    simp [show (3145728 * k + 3078130) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1539065) = 4718592 * k + 4617196 := by
    unfold C
    simp [show (1572864 * k + 1539065) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4617196) = 2359296 * k + 2308598 := by
    unfold C
    simp [show (4718592 * k + 4617196) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2308598) = 1179648 * k + 1154299 := by
    unfold C
    simp [show (2359296 * k + 2308598) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1154299) = 3538944 * k + 3462898 := by
    unfold C
    simp [show (1179648 * k + 1154299) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3462898) = 1769472 * k + 1731449 := by
    unfold C
    simp [show (3538944 * k + 3462898) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1731449) = 5308416 * k + 5194348 := by
    unfold C
    simp [show (1769472 * k + 1731449) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5194348) = 2654208 * k + 2597174 := by
    unfold C
    simp [show (5308416 * k + 5194348) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2597174) = 1327104 * k + 1298587 := by
    unfold C
    simp [show (2654208 * k + 2597174) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1298587) = 3981312 * k + 3895762 := by
    unfold C
    simp [show (1327104 * k + 1298587) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3895762) = 1990656 * k + 1947881 := by
    unfold C
    simp [show (3981312 * k + 3895762) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1947881) = 5971968 * k + 5843644 := by
    unfold C
    simp [show (1990656 * k + 1947881) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5843644) = 2985984 * k + 2921822 := by
    unfold C
    simp [show (5971968 * k + 5843644) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2921822) = 1492992 * k + 1460911 := by
    unfold C
    simp [show (2985984 * k + 2921822) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1460911) = 4478976 * k + 4382734 := by
    unfold C
    simp [show (1492992 * k + 1460911) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4382734) = 2239488 * k + 2191367 := by
    unfold C
    simp [show (4478976 * k + 4382734) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2191367) = 6718464 * k + 6574102 := by
    unfold C
    simp [show (2239488 * k + 2191367) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6574102) = 3359232 * k + 3287051 := by
    unfold C
    simp [show (6718464 * k + 6574102) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3287051) = 10077696 * k + 9861154 := by
    unfold C
    simp [show (3359232 * k + 3287051) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9861154) = 5038848 * k + 4930577 := by
    unfold C
    simp [show (10077696 * k + 9861154) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4930577) = 15116544 * k + 14791732 := by
    unfold C
    simp [show (5038848 * k + 4930577) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14791732) = 7558272 * k + 7395866 := by
    unfold C
    simp [show (15116544 * k + 14791732) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7395866) = 3779136 * k + 3697933 := by
    unfold C
    simp [show (7558272 * k + 7395866) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3697933) = 11337408 * k + 11093800 := by
    unfold C
    simp [show (3779136 * k + 3697933) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11093800) = 5668704 * k + 5546900 := by
    unfold C
    simp [show (11337408 * k + 11093800) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5546900) = 2834352 * k + 2773450 := by
    unfold C
    simp [show (5668704 * k + 5546900) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2773450) = 1417176 * k + 1386725 := by
    unfold C
    simp [show (2834352 * k + 2773450) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1386725) = 4251528 * k + 4160176 := by
    unfold C
    simp [show (1417176 * k + 1386725) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4160176) = 2125764 * k + 2080088 := by
    unfold C
    simp [show (4251528 * k + 4160176) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2080088) = 1062882 * k + 1040044 := by
    unfold C
    simp [show (2125764 * k + 2080088) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1040044) = 531441 * k + 520022 := by
    unfold C
    simp [show (1062882 * k + 1040044) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1026043) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1026043)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1027239 : ∀ k : Nat,
    iterate (1048576 * k + 1027239) 32 = 531441 * k + 520628 ∧
      531441 * k + 520628 < 1048576 * k + 1027239 := by
  intro k
  have h1 : C (1048576 * k + 1027239) = 3145728 * k + 3081718 := by
    unfold C
    simp [show (1048576 * k + 1027239) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3081718) = 1572864 * k + 1540859 := by
    unfold C
    simp [show (3145728 * k + 3081718) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1540859) = 4718592 * k + 4622578 := by
    unfold C
    simp [show (1572864 * k + 1540859) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4622578) = 2359296 * k + 2311289 := by
    unfold C
    simp [show (4718592 * k + 4622578) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2311289) = 7077888 * k + 6933868 := by
    unfold C
    simp [show (2359296 * k + 2311289) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6933868) = 3538944 * k + 3466934 := by
    unfold C
    simp [show (7077888 * k + 6933868) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3466934) = 1769472 * k + 1733467 := by
    unfold C
    simp [show (3538944 * k + 3466934) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1733467) = 5308416 * k + 5200402 := by
    unfold C
    simp [show (1769472 * k + 1733467) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5200402) = 2654208 * k + 2600201 := by
    unfold C
    simp [show (5308416 * k + 5200402) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2600201) = 7962624 * k + 7800604 := by
    unfold C
    simp [show (2654208 * k + 2600201) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7800604) = 3981312 * k + 3900302 := by
    unfold C
    simp [show (7962624 * k + 7800604) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3900302) = 1990656 * k + 1950151 := by
    unfold C
    simp [show (3981312 * k + 3900302) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1950151) = 5971968 * k + 5850454 := by
    unfold C
    simp [show (1990656 * k + 1950151) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5850454) = 2985984 * k + 2925227 := by
    unfold C
    simp [show (5971968 * k + 5850454) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2925227) = 8957952 * k + 8775682 := by
    unfold C
    simp [show (2985984 * k + 2925227) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8775682) = 4478976 * k + 4387841 := by
    unfold C
    simp [show (8957952 * k + 8775682) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4387841) = 13436928 * k + 13163524 := by
    unfold C
    simp [show (4478976 * k + 4387841) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 13163524) = 6718464 * k + 6581762 := by
    unfold C
    simp [show (13436928 * k + 13163524) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6581762) = 3359232 * k + 3290881 := by
    unfold C
    simp [show (6718464 * k + 6581762) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3290881) = 10077696 * k + 9872644 := by
    unfold C
    simp [show (3359232 * k + 3290881) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9872644) = 5038848 * k + 4936322 := by
    unfold C
    simp [show (10077696 * k + 9872644) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4936322) = 2519424 * k + 2468161 := by
    unfold C
    simp [show (5038848 * k + 4936322) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2468161) = 7558272 * k + 7404484 := by
    unfold C
    simp [show (2519424 * k + 2468161) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7404484) = 3779136 * k + 3702242 := by
    unfold C
    simp [show (7558272 * k + 7404484) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3702242) = 1889568 * k + 1851121 := by
    unfold C
    simp [show (3779136 * k + 3702242) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1851121) = 5668704 * k + 5553364 := by
    unfold C
    simp [show (1889568 * k + 1851121) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5553364) = 2834352 * k + 2776682 := by
    unfold C
    simp [show (5668704 * k + 5553364) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2776682) = 1417176 * k + 1388341 := by
    unfold C
    simp [show (2834352 * k + 2776682) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1388341) = 4251528 * k + 4165024 := by
    unfold C
    simp [show (1417176 * k + 1388341) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4165024) = 2125764 * k + 2082512 := by
    unfold C
    simp [show (4251528 * k + 4165024) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2082512) = 1062882 * k + 1041256 := by
    unfold C
    simp [show (2125764 * k + 2082512) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1041256) = 531441 * k + 520628 := by
    unfold C
    simp [show (1062882 * k + 1041256) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1027239) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1027239)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1027867 : ∀ k : Nat,
    iterate (1048576 * k + 1027867) 32 = 531441 * k + 520946 ∧
      531441 * k + 520946 < 1048576 * k + 1027867 := by
  intro k
  have h1 : C (1048576 * k + 1027867) = 3145728 * k + 3083602 := by
    unfold C
    simp [show (1048576 * k + 1027867) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3083602) = 1572864 * k + 1541801 := by
    unfold C
    simp [show (3145728 * k + 3083602) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1541801) = 4718592 * k + 4625404 := by
    unfold C
    simp [show (1572864 * k + 1541801) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4625404) = 2359296 * k + 2312702 := by
    unfold C
    simp [show (4718592 * k + 4625404) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2312702) = 1179648 * k + 1156351 := by
    unfold C
    simp [show (2359296 * k + 2312702) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1156351) = 3538944 * k + 3469054 := by
    unfold C
    simp [show (1179648 * k + 1156351) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3469054) = 1769472 * k + 1734527 := by
    unfold C
    simp [show (3538944 * k + 3469054) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1734527) = 5308416 * k + 5203582 := by
    unfold C
    simp [show (1769472 * k + 1734527) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5203582) = 2654208 * k + 2601791 := by
    unfold C
    simp [show (5308416 * k + 5203582) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2601791) = 7962624 * k + 7805374 := by
    unfold C
    simp [show (2654208 * k + 2601791) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7805374) = 3981312 * k + 3902687 := by
    unfold C
    simp [show (7962624 * k + 7805374) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3902687) = 11943936 * k + 11708062 := by
    unfold C
    simp [show (3981312 * k + 3902687) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11708062) = 5971968 * k + 5854031 := by
    unfold C
    simp [show (11943936 * k + 11708062) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5854031) = 17915904 * k + 17562094 := by
    unfold C
    simp [show (5971968 * k + 5854031) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17562094) = 8957952 * k + 8781047 := by
    unfold C
    simp [show (17915904 * k + 17562094) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8781047) = 26873856 * k + 26343142 := by
    unfold C
    simp [show (8957952 * k + 8781047) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 26343142) = 13436928 * k + 13171571 := by
    unfold C
    simp [show (26873856 * k + 26343142) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 13171571) = 40310784 * k + 39514714 := by
    unfold C
    simp [show (13436928 * k + 13171571) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 39514714) = 20155392 * k + 19757357 := by
    unfold C
    simp [show (40310784 * k + 39514714) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19757357) = 60466176 * k + 59272072 := by
    unfold C
    simp [show (20155392 * k + 19757357) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 59272072) = 30233088 * k + 29636036 := by
    unfold C
    simp [show (60466176 * k + 59272072) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 29636036) = 15116544 * k + 14818018 := by
    unfold C
    simp [show (30233088 * k + 29636036) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14818018) = 7558272 * k + 7409009 := by
    unfold C
    simp [show (15116544 * k + 14818018) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7409009) = 22674816 * k + 22227028 := by
    unfold C
    simp [show (7558272 * k + 7409009) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 22227028) = 11337408 * k + 11113514 := by
    unfold C
    simp [show (22674816 * k + 22227028) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 11113514) = 5668704 * k + 5556757 := by
    unfold C
    simp [show (11337408 * k + 11113514) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5556757) = 17006112 * k + 16670272 := by
    unfold C
    simp [show (5668704 * k + 5556757) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 16670272) = 8503056 * k + 8335136 := by
    unfold C
    simp [show (17006112 * k + 16670272) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8335136) = 4251528 * k + 4167568 := by
    unfold C
    simp [show (8503056 * k + 8335136) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4167568) = 2125764 * k + 2083784 := by
    unfold C
    simp [show (4251528 * k + 4167568) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2083784) = 1062882 * k + 1041892 := by
    unfold C
    simp [show (2125764 * k + 2083784) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1041892) = 531441 * k + 520946 := by
    unfold C
    simp [show (1062882 * k + 1041892) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1027867) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1027867)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1028127 : ∀ k : Nat,
    iterate (1048576 * k + 1028127) 32 = 531441 * k + 521078 ∧
      531441 * k + 521078 < 1048576 * k + 1028127 := by
  intro k
  have h1 : C (1048576 * k + 1028127) = 3145728 * k + 3084382 := by
    unfold C
    simp [show (1048576 * k + 1028127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3084382) = 1572864 * k + 1542191 := by
    unfold C
    simp [show (3145728 * k + 3084382) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1542191) = 4718592 * k + 4626574 := by
    unfold C
    simp [show (1572864 * k + 1542191) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4626574) = 2359296 * k + 2313287 := by
    unfold C
    simp [show (4718592 * k + 4626574) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2313287) = 7077888 * k + 6939862 := by
    unfold C
    simp [show (2359296 * k + 2313287) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6939862) = 3538944 * k + 3469931 := by
    unfold C
    simp [show (7077888 * k + 6939862) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3469931) = 10616832 * k + 10409794 := by
    unfold C
    simp [show (3538944 * k + 3469931) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10409794) = 5308416 * k + 5204897 := by
    unfold C
    simp [show (10616832 * k + 10409794) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5204897) = 15925248 * k + 15614692 := by
    unfold C
    simp [show (5308416 * k + 5204897) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15614692) = 7962624 * k + 7807346 := by
    unfold C
    simp [show (15925248 * k + 15614692) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7807346) = 3981312 * k + 3903673 := by
    unfold C
    simp [show (7962624 * k + 7807346) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3903673) = 11943936 * k + 11711020 := by
    unfold C
    simp [show (3981312 * k + 3903673) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11711020) = 5971968 * k + 5855510 := by
    unfold C
    simp [show (11943936 * k + 11711020) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5855510) = 2985984 * k + 2927755 := by
    unfold C
    simp [show (5971968 * k + 5855510) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2927755) = 8957952 * k + 8783266 := by
    unfold C
    simp [show (2985984 * k + 2927755) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8783266) = 4478976 * k + 4391633 := by
    unfold C
    simp [show (8957952 * k + 8783266) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4391633) = 13436928 * k + 13174900 := by
    unfold C
    simp [show (4478976 * k + 4391633) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 13174900) = 6718464 * k + 6587450 := by
    unfold C
    simp [show (13436928 * k + 13174900) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6587450) = 3359232 * k + 3293725 := by
    unfold C
    simp [show (6718464 * k + 6587450) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3293725) = 10077696 * k + 9881176 := by
    unfold C
    simp [show (3359232 * k + 3293725) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9881176) = 5038848 * k + 4940588 := by
    unfold C
    simp [show (10077696 * k + 9881176) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4940588) = 2519424 * k + 2470294 := by
    unfold C
    simp [show (5038848 * k + 4940588) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2470294) = 1259712 * k + 1235147 := by
    unfold C
    simp [show (2519424 * k + 2470294) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1235147) = 3779136 * k + 3705442 := by
    unfold C
    simp [show (1259712 * k + 1235147) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3705442) = 1889568 * k + 1852721 := by
    unfold C
    simp [show (3779136 * k + 3705442) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1852721) = 5668704 * k + 5558164 := by
    unfold C
    simp [show (1889568 * k + 1852721) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5558164) = 2834352 * k + 2779082 := by
    unfold C
    simp [show (5668704 * k + 5558164) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2779082) = 1417176 * k + 1389541 := by
    unfold C
    simp [show (2834352 * k + 2779082) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1389541) = 4251528 * k + 4168624 := by
    unfold C
    simp [show (1417176 * k + 1389541) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4168624) = 2125764 * k + 2084312 := by
    unfold C
    simp [show (4251528 * k + 4168624) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2084312) = 1062882 * k + 1042156 := by
    unfold C
    simp [show (2125764 * k + 2084312) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1042156) = 531441 * k + 521078 := by
    unfold C
    simp [show (1062882 * k + 1042156) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1028127) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1028127)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1028287 : ∀ k : Nat,
    iterate (1048576 * k + 1028287) 32 = 531441 * k + 521159 ∧
      531441 * k + 521159 < 1048576 * k + 1028287 := by
  intro k
  have h1 : C (1048576 * k + 1028287) = 3145728 * k + 3084862 := by
    unfold C
    simp [show (1048576 * k + 1028287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3084862) = 1572864 * k + 1542431 := by
    unfold C
    simp [show (3145728 * k + 3084862) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1542431) = 4718592 * k + 4627294 := by
    unfold C
    simp [show (1572864 * k + 1542431) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4627294) = 2359296 * k + 2313647 := by
    unfold C
    simp [show (4718592 * k + 4627294) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2313647) = 7077888 * k + 6940942 := by
    unfold C
    simp [show (2359296 * k + 2313647) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6940942) = 3538944 * k + 3470471 := by
    unfold C
    simp [show (7077888 * k + 6940942) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3470471) = 10616832 * k + 10411414 := by
    unfold C
    simp [show (3538944 * k + 3470471) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10411414) = 5308416 * k + 5205707 := by
    unfold C
    simp [show (10616832 * k + 10411414) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5205707) = 15925248 * k + 15617122 := by
    unfold C
    simp [show (5308416 * k + 5205707) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15617122) = 7962624 * k + 7808561 := by
    unfold C
    simp [show (15925248 * k + 15617122) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7808561) = 23887872 * k + 23425684 := by
    unfold C
    simp [show (7962624 * k + 7808561) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23425684) = 11943936 * k + 11712842 := by
    unfold C
    simp [show (23887872 * k + 23425684) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11712842) = 5971968 * k + 5856421 := by
    unfold C
    simp [show (11943936 * k + 11712842) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5856421) = 17915904 * k + 17569264 := by
    unfold C
    simp [show (5971968 * k + 5856421) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17569264) = 8957952 * k + 8784632 := by
    unfold C
    simp [show (17915904 * k + 17569264) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8784632) = 4478976 * k + 4392316 := by
    unfold C
    simp [show (8957952 * k + 8784632) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4392316) = 2239488 * k + 2196158 := by
    unfold C
    simp [show (4478976 * k + 4392316) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2196158) = 1119744 * k + 1098079 := by
    unfold C
    simp [show (2239488 * k + 2196158) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 1098079) = 3359232 * k + 3294238 := by
    unfold C
    simp [show (1119744 * k + 1098079) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 3294238) = 1679616 * k + 1647119 := by
    unfold C
    simp [show (3359232 * k + 3294238) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1647119) = 5038848 * k + 4941358 := by
    unfold C
    simp [show (1679616 * k + 1647119) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4941358) = 2519424 * k + 2470679 := by
    unfold C
    simp [show (5038848 * k + 4941358) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2470679) = 7558272 * k + 7412038 := by
    unfold C
    simp [show (2519424 * k + 2470679) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7412038) = 3779136 * k + 3706019 := by
    unfold C
    simp [show (7558272 * k + 7412038) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3706019) = 11337408 * k + 11118058 := by
    unfold C
    simp [show (3779136 * k + 3706019) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11118058) = 5668704 * k + 5559029 := by
    unfold C
    simp [show (11337408 * k + 11118058) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5559029) = 17006112 * k + 16677088 := by
    unfold C
    simp [show (5668704 * k + 5559029) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 16677088) = 8503056 * k + 8338544 := by
    unfold C
    simp [show (17006112 * k + 16677088) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8338544) = 4251528 * k + 4169272 := by
    unfold C
    simp [show (8503056 * k + 8338544) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4169272) = 2125764 * k + 2084636 := by
    unfold C
    simp [show (4251528 * k + 4169272) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2084636) = 1062882 * k + 1042318 := by
    unfold C
    simp [show (2125764 * k + 2084636) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1042318) = 531441 * k + 521159 := by
    unfold C
    simp [show (1062882 * k + 1042318) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1028287) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1028287)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1028607 : ∀ k : Nat,
    iterate (1048576 * k + 1028607) 32 = 531441 * k + 521321 ∧
      531441 * k + 521321 < 1048576 * k + 1028607 := by
  intro k
  have h1 : C (1048576 * k + 1028607) = 3145728 * k + 3085822 := by
    unfold C
    simp [show (1048576 * k + 1028607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3085822) = 1572864 * k + 1542911 := by
    unfold C
    simp [show (3145728 * k + 3085822) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1542911) = 4718592 * k + 4628734 := by
    unfold C
    simp [show (1572864 * k + 1542911) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4628734) = 2359296 * k + 2314367 := by
    unfold C
    simp [show (4718592 * k + 4628734) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2314367) = 7077888 * k + 6943102 := by
    unfold C
    simp [show (2359296 * k + 2314367) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6943102) = 3538944 * k + 3471551 := by
    unfold C
    simp [show (7077888 * k + 6943102) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3471551) = 10616832 * k + 10414654 := by
    unfold C
    simp [show (3538944 * k + 3471551) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10414654) = 5308416 * k + 5207327 := by
    unfold C
    simp [show (10616832 * k + 10414654) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5207327) = 15925248 * k + 15621982 := by
    unfold C
    simp [show (5308416 * k + 5207327) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15621982) = 7962624 * k + 7810991 := by
    unfold C
    simp [show (15925248 * k + 15621982) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7810991) = 23887872 * k + 23432974 := by
    unfold C
    simp [show (7962624 * k + 7810991) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23432974) = 11943936 * k + 11716487 := by
    unfold C
    simp [show (23887872 * k + 23432974) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11716487) = 35831808 * k + 35149462 := by
    unfold C
    simp [show (11943936 * k + 11716487) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 35149462) = 17915904 * k + 17574731 := by
    unfold C
    simp [show (35831808 * k + 35149462) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 17574731) = 53747712 * k + 52724194 := by
    unfold C
    simp [show (17915904 * k + 17574731) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 52724194) = 26873856 * k + 26362097 := by
    unfold C
    simp [show (53747712 * k + 52724194) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 26362097) = 80621568 * k + 79086292 := by
    unfold C
    simp [show (26873856 * k + 26362097) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 79086292) = 40310784 * k + 39543146 := by
    unfold C
    simp [show (80621568 * k + 79086292) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 39543146) = 20155392 * k + 19771573 := by
    unfold C
    simp [show (40310784 * k + 39543146) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19771573) = 60466176 * k + 59314720 := by
    unfold C
    simp [show (20155392 * k + 19771573) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 59314720) = 30233088 * k + 29657360 := by
    unfold C
    simp [show (60466176 * k + 59314720) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 29657360) = 15116544 * k + 14828680 := by
    unfold C
    simp [show (30233088 * k + 29657360) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14828680) = 7558272 * k + 7414340 := by
    unfold C
    simp [show (15116544 * k + 14828680) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7414340) = 3779136 * k + 3707170 := by
    unfold C
    simp [show (7558272 * k + 7414340) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3707170) = 1889568 * k + 1853585 := by
    unfold C
    simp [show (3779136 * k + 3707170) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1853585) = 5668704 * k + 5560756 := by
    unfold C
    simp [show (1889568 * k + 1853585) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5560756) = 2834352 * k + 2780378 := by
    unfold C
    simp [show (5668704 * k + 5560756) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2780378) = 1417176 * k + 1390189 := by
    unfold C
    simp [show (2834352 * k + 2780378) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1390189) = 4251528 * k + 4170568 := by
    unfold C
    simp [show (1417176 * k + 1390189) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4170568) = 2125764 * k + 2085284 := by
    unfold C
    simp [show (4251528 * k + 4170568) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2085284) = 1062882 * k + 1042642 := by
    unfold C
    simp [show (2125764 * k + 2085284) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1042642) = 531441 * k + 521321 := by
    unfold C
    simp [show (1062882 * k + 1042642) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1028607) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1028607)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1029055 : ∀ k : Nat,
    iterate (1048576 * k + 1029055) 32 = 531441 * k + 521548 ∧
      531441 * k + 521548 < 1048576 * k + 1029055 := by
  intro k
  have h1 : C (1048576 * k + 1029055) = 3145728 * k + 3087166 := by
    unfold C
    simp [show (1048576 * k + 1029055) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3087166) = 1572864 * k + 1543583 := by
    unfold C
    simp [show (3145728 * k + 3087166) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1543583) = 4718592 * k + 4630750 := by
    unfold C
    simp [show (1572864 * k + 1543583) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4630750) = 2359296 * k + 2315375 := by
    unfold C
    simp [show (4718592 * k + 4630750) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2315375) = 7077888 * k + 6946126 := by
    unfold C
    simp [show (2359296 * k + 2315375) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6946126) = 3538944 * k + 3473063 := by
    unfold C
    simp [show (7077888 * k + 6946126) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3473063) = 10616832 * k + 10419190 := by
    unfold C
    simp [show (3538944 * k + 3473063) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10419190) = 5308416 * k + 5209595 := by
    unfold C
    simp [show (10616832 * k + 10419190) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5209595) = 15925248 * k + 15628786 := by
    unfold C
    simp [show (5308416 * k + 5209595) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15628786) = 7962624 * k + 7814393 := by
    unfold C
    simp [show (15925248 * k + 15628786) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7814393) = 23887872 * k + 23443180 := by
    unfold C
    simp [show (7962624 * k + 7814393) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23443180) = 11943936 * k + 11721590 := by
    unfold C
    simp [show (23887872 * k + 23443180) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11721590) = 5971968 * k + 5860795 := by
    unfold C
    simp [show (11943936 * k + 11721590) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5860795) = 17915904 * k + 17582386 := by
    unfold C
    simp [show (5971968 * k + 5860795) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17582386) = 8957952 * k + 8791193 := by
    unfold C
    simp [show (17915904 * k + 17582386) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8791193) = 26873856 * k + 26373580 := by
    unfold C
    simp [show (8957952 * k + 8791193) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 26373580) = 13436928 * k + 13186790 := by
    unfold C
    simp [show (26873856 * k + 26373580) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 13186790) = 6718464 * k + 6593395 := by
    unfold C
    simp [show (13436928 * k + 13186790) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6593395) = 20155392 * k + 19780186 := by
    unfold C
    simp [show (6718464 * k + 6593395) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19780186) = 10077696 * k + 9890093 := by
    unfold C
    simp [show (20155392 * k + 19780186) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9890093) = 30233088 * k + 29670280 := by
    unfold C
    simp [show (10077696 * k + 9890093) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 29670280) = 15116544 * k + 14835140 := by
    unfold C
    simp [show (30233088 * k + 29670280) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14835140) = 7558272 * k + 7417570 := by
    unfold C
    simp [show (15116544 * k + 14835140) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7417570) = 3779136 * k + 3708785 := by
    unfold C
    simp [show (7558272 * k + 7417570) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3708785) = 11337408 * k + 11126356 := by
    unfold C
    simp [show (3779136 * k + 3708785) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11126356) = 5668704 * k + 5563178 := by
    unfold C
    simp [show (11337408 * k + 11126356) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5563178) = 2834352 * k + 2781589 := by
    unfold C
    simp [show (5668704 * k + 5563178) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2781589) = 8503056 * k + 8344768 := by
    unfold C
    simp [show (2834352 * k + 2781589) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8344768) = 4251528 * k + 4172384 := by
    unfold C
    simp [show (8503056 * k + 8344768) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4172384) = 2125764 * k + 2086192 := by
    unfold C
    simp [show (4251528 * k + 4172384) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2086192) = 1062882 * k + 1043096 := by
    unfold C
    simp [show (2125764 * k + 2086192) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1043096) = 531441 * k + 521548 := by
    unfold C
    simp [show (1062882 * k + 1043096) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1029055) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1029055)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1029311 : ∀ k : Nat,
    iterate (1048576 * k + 1029311) 32 = 531441 * k + 521678 ∧
      531441 * k + 521678 < 1048576 * k + 1029311 := by
  intro k
  have h1 : C (1048576 * k + 1029311) = 3145728 * k + 3087934 := by
    unfold C
    simp [show (1048576 * k + 1029311) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3087934) = 1572864 * k + 1543967 := by
    unfold C
    simp [show (3145728 * k + 3087934) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1543967) = 4718592 * k + 4631902 := by
    unfold C
    simp [show (1572864 * k + 1543967) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4631902) = 2359296 * k + 2315951 := by
    unfold C
    simp [show (4718592 * k + 4631902) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2315951) = 7077888 * k + 6947854 := by
    unfold C
    simp [show (2359296 * k + 2315951) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6947854) = 3538944 * k + 3473927 := by
    unfold C
    simp [show (7077888 * k + 6947854) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3473927) = 10616832 * k + 10421782 := by
    unfold C
    simp [show (3538944 * k + 3473927) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10421782) = 5308416 * k + 5210891 := by
    unfold C
    simp [show (10616832 * k + 10421782) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5210891) = 15925248 * k + 15632674 := by
    unfold C
    simp [show (5308416 * k + 5210891) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15632674) = 7962624 * k + 7816337 := by
    unfold C
    simp [show (15925248 * k + 15632674) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7816337) = 23887872 * k + 23449012 := by
    unfold C
    simp [show (7962624 * k + 7816337) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23449012) = 11943936 * k + 11724506 := by
    unfold C
    simp [show (23887872 * k + 23449012) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11724506) = 5971968 * k + 5862253 := by
    unfold C
    simp [show (11943936 * k + 11724506) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5862253) = 17915904 * k + 17586760 := by
    unfold C
    simp [show (5971968 * k + 5862253) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17586760) = 8957952 * k + 8793380 := by
    unfold C
    simp [show (17915904 * k + 17586760) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8793380) = 4478976 * k + 4396690 := by
    unfold C
    simp [show (8957952 * k + 8793380) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4396690) = 2239488 * k + 2198345 := by
    unfold C
    simp [show (4478976 * k + 4396690) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2198345) = 6718464 * k + 6595036 := by
    unfold C
    simp [show (2239488 * k + 2198345) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6595036) = 3359232 * k + 3297518 := by
    unfold C
    simp [show (6718464 * k + 6595036) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3297518) = 1679616 * k + 1648759 := by
    unfold C
    simp [show (3359232 * k + 3297518) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1648759) = 5038848 * k + 4946278 := by
    unfold C
    simp [show (1679616 * k + 1648759) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4946278) = 2519424 * k + 2473139 := by
    unfold C
    simp [show (5038848 * k + 4946278) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2473139) = 7558272 * k + 7419418 := by
    unfold C
    simp [show (2519424 * k + 2473139) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7419418) = 3779136 * k + 3709709 := by
    unfold C
    simp [show (7558272 * k + 7419418) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3709709) = 11337408 * k + 11129128 := by
    unfold C
    simp [show (3779136 * k + 3709709) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11129128) = 5668704 * k + 5564564 := by
    unfold C
    simp [show (11337408 * k + 11129128) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5564564) = 2834352 * k + 2782282 := by
    unfold C
    simp [show (5668704 * k + 5564564) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2782282) = 1417176 * k + 1391141 := by
    unfold C
    simp [show (2834352 * k + 2782282) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1391141) = 4251528 * k + 4173424 := by
    unfold C
    simp [show (1417176 * k + 1391141) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4173424) = 2125764 * k + 2086712 := by
    unfold C
    simp [show (4251528 * k + 4173424) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2086712) = 1062882 * k + 1043356 := by
    unfold C
    simp [show (2125764 * k + 2086712) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1043356) = 531441 * k + 521678 := by
    unfold C
    simp [show (1062882 * k + 1043356) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1029311) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1029311)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1029423 : ∀ k : Nat,
    iterate (1048576 * k + 1029423) 32 = 531441 * k + 521735 ∧
      531441 * k + 521735 < 1048576 * k + 1029423 := by
  intro k
  have h1 : C (1048576 * k + 1029423) = 3145728 * k + 3088270 := by
    unfold C
    simp [show (1048576 * k + 1029423) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3088270) = 1572864 * k + 1544135 := by
    unfold C
    simp [show (3145728 * k + 3088270) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1544135) = 4718592 * k + 4632406 := by
    unfold C
    simp [show (1572864 * k + 1544135) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4632406) = 2359296 * k + 2316203 := by
    unfold C
    simp [show (4718592 * k + 4632406) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2316203) = 7077888 * k + 6948610 := by
    unfold C
    simp [show (2359296 * k + 2316203) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6948610) = 3538944 * k + 3474305 := by
    unfold C
    simp [show (7077888 * k + 6948610) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3474305) = 10616832 * k + 10422916 := by
    unfold C
    simp [show (3538944 * k + 3474305) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10422916) = 5308416 * k + 5211458 := by
    unfold C
    simp [show (10616832 * k + 10422916) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5211458) = 2654208 * k + 2605729 := by
    unfold C
    simp [show (5308416 * k + 5211458) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2605729) = 7962624 * k + 7817188 := by
    unfold C
    simp [show (2654208 * k + 2605729) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7817188) = 3981312 * k + 3908594 := by
    unfold C
    simp [show (7962624 * k + 7817188) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3908594) = 1990656 * k + 1954297 := by
    unfold C
    simp [show (3981312 * k + 3908594) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1954297) = 5971968 * k + 5862892 := by
    unfold C
    simp [show (1990656 * k + 1954297) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5862892) = 2985984 * k + 2931446 := by
    unfold C
    simp [show (5971968 * k + 5862892) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2931446) = 1492992 * k + 1465723 := by
    unfold C
    simp [show (2985984 * k + 2931446) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1465723) = 4478976 * k + 4397170 := by
    unfold C
    simp [show (1492992 * k + 1465723) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4397170) = 2239488 * k + 2198585 := by
    unfold C
    simp [show (4478976 * k + 4397170) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2198585) = 6718464 * k + 6595756 := by
    unfold C
    simp [show (2239488 * k + 2198585) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6595756) = 3359232 * k + 3297878 := by
    unfold C
    simp [show (6718464 * k + 6595756) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3297878) = 1679616 * k + 1648939 := by
    unfold C
    simp [show (3359232 * k + 3297878) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1648939) = 5038848 * k + 4946818 := by
    unfold C
    simp [show (1679616 * k + 1648939) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4946818) = 2519424 * k + 2473409 := by
    unfold C
    simp [show (5038848 * k + 4946818) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2473409) = 7558272 * k + 7420228 := by
    unfold C
    simp [show (2519424 * k + 2473409) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7420228) = 3779136 * k + 3710114 := by
    unfold C
    simp [show (7558272 * k + 7420228) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3710114) = 1889568 * k + 1855057 := by
    unfold C
    simp [show (3779136 * k + 3710114) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1855057) = 5668704 * k + 5565172 := by
    unfold C
    simp [show (1889568 * k + 1855057) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5565172) = 2834352 * k + 2782586 := by
    unfold C
    simp [show (5668704 * k + 5565172) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2782586) = 1417176 * k + 1391293 := by
    unfold C
    simp [show (2834352 * k + 2782586) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1391293) = 4251528 * k + 4173880 := by
    unfold C
    simp [show (1417176 * k + 1391293) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4173880) = 2125764 * k + 2086940 := by
    unfold C
    simp [show (4251528 * k + 4173880) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2086940) = 1062882 * k + 1043470 := by
    unfold C
    simp [show (2125764 * k + 2086940) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1043470) = 531441 * k + 521735 := by
    unfold C
    simp [show (1062882 * k + 1043470) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1029423) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1029423)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard130
