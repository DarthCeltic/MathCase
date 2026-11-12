import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard065

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_503343 : ∀ k : Nat,
    iterate (1048576 * k + 503343) 32 = 531441 * k + 255106 ∧
      531441 * k + 255106 < 1048576 * k + 503343 := by
  intro k
  have h1 : C (1048576 * k + 503343) = 3145728 * k + 1510030 := by
    unfold C
    simp [show (1048576 * k + 503343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1510030) = 1572864 * k + 755015 := by
    unfold C
    simp [show (3145728 * k + 1510030) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 755015) = 4718592 * k + 2265046 := by
    unfold C
    simp [show (1572864 * k + 755015) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2265046) = 2359296 * k + 1132523 := by
    unfold C
    simp [show (4718592 * k + 2265046) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1132523) = 7077888 * k + 3397570 := by
    unfold C
    simp [show (2359296 * k + 1132523) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3397570) = 3538944 * k + 1698785 := by
    unfold C
    simp [show (7077888 * k + 3397570) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1698785) = 10616832 * k + 5096356 := by
    unfold C
    simp [show (3538944 * k + 1698785) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5096356) = 5308416 * k + 2548178 := by
    unfold C
    simp [show (10616832 * k + 5096356) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2548178) = 2654208 * k + 1274089 := by
    unfold C
    simp [show (5308416 * k + 2548178) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1274089) = 7962624 * k + 3822268 := by
    unfold C
    simp [show (2654208 * k + 1274089) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3822268) = 3981312 * k + 1911134 := by
    unfold C
    simp [show (7962624 * k + 3822268) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1911134) = 1990656 * k + 955567 := by
    unfold C
    simp [show (3981312 * k + 1911134) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 955567) = 5971968 * k + 2866702 := by
    unfold C
    simp [show (1990656 * k + 955567) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2866702) = 2985984 * k + 1433351 := by
    unfold C
    simp [show (5971968 * k + 2866702) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1433351) = 8957952 * k + 4300054 := by
    unfold C
    simp [show (2985984 * k + 1433351) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4300054) = 4478976 * k + 2150027 := by
    unfold C
    simp [show (8957952 * k + 4300054) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2150027) = 13436928 * k + 6450082 := by
    unfold C
    simp [show (4478976 * k + 2150027) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6450082) = 6718464 * k + 3225041 := by
    unfold C
    simp [show (13436928 * k + 6450082) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3225041) = 20155392 * k + 9675124 := by
    unfold C
    simp [show (6718464 * k + 3225041) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9675124) = 10077696 * k + 4837562 := by
    unfold C
    simp [show (20155392 * k + 9675124) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4837562) = 5038848 * k + 2418781 := by
    unfold C
    simp [show (10077696 * k + 4837562) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2418781) = 15116544 * k + 7256344 := by
    unfold C
    simp [show (5038848 * k + 2418781) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7256344) = 7558272 * k + 3628172 := by
    unfold C
    simp [show (15116544 * k + 7256344) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3628172) = 3779136 * k + 1814086 := by
    unfold C
    simp [show (7558272 * k + 3628172) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1814086) = 1889568 * k + 907043 := by
    unfold C
    simp [show (3779136 * k + 1814086) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 907043) = 5668704 * k + 2721130 := by
    unfold C
    simp [show (1889568 * k + 907043) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2721130) = 2834352 * k + 1360565 := by
    unfold C
    simp [show (5668704 * k + 2721130) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1360565) = 8503056 * k + 4081696 := by
    unfold C
    simp [show (2834352 * k + 1360565) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4081696) = 4251528 * k + 2040848 := by
    unfold C
    simp [show (8503056 * k + 4081696) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2040848) = 2125764 * k + 1020424 := by
    unfold C
    simp [show (4251528 * k + 2040848) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1020424) = 1062882 * k + 510212 := by
    unfold C
    simp [show (2125764 * k + 1020424) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 510212) = 531441 * k + 255106 := by
    unfold C
    simp [show (1062882 * k + 510212) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 503343) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 503343)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_504367 : ∀ k : Nat,
    iterate (1048576 * k + 504367) 32 = 531441 * k + 255625 ∧
      531441 * k + 255625 < 1048576 * k + 504367 := by
  intro k
  have h1 : C (1048576 * k + 504367) = 3145728 * k + 1513102 := by
    unfold C
    simp [show (1048576 * k + 504367) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1513102) = 1572864 * k + 756551 := by
    unfold C
    simp [show (3145728 * k + 1513102) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 756551) = 4718592 * k + 2269654 := by
    unfold C
    simp [show (1572864 * k + 756551) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2269654) = 2359296 * k + 1134827 := by
    unfold C
    simp [show (4718592 * k + 2269654) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1134827) = 7077888 * k + 3404482 := by
    unfold C
    simp [show (2359296 * k + 1134827) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3404482) = 3538944 * k + 1702241 := by
    unfold C
    simp [show (7077888 * k + 3404482) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1702241) = 10616832 * k + 5106724 := by
    unfold C
    simp [show (3538944 * k + 1702241) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5106724) = 5308416 * k + 2553362 := by
    unfold C
    simp [show (10616832 * k + 5106724) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2553362) = 2654208 * k + 1276681 := by
    unfold C
    simp [show (5308416 * k + 2553362) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1276681) = 7962624 * k + 3830044 := by
    unfold C
    simp [show (2654208 * k + 1276681) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3830044) = 3981312 * k + 1915022 := by
    unfold C
    simp [show (7962624 * k + 3830044) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1915022) = 1990656 * k + 957511 := by
    unfold C
    simp [show (3981312 * k + 1915022) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 957511) = 5971968 * k + 2872534 := by
    unfold C
    simp [show (1990656 * k + 957511) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2872534) = 2985984 * k + 1436267 := by
    unfold C
    simp [show (5971968 * k + 2872534) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1436267) = 8957952 * k + 4308802 := by
    unfold C
    simp [show (2985984 * k + 1436267) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4308802) = 4478976 * k + 2154401 := by
    unfold C
    simp [show (8957952 * k + 4308802) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2154401) = 13436928 * k + 6463204 := by
    unfold C
    simp [show (4478976 * k + 2154401) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6463204) = 6718464 * k + 3231602 := by
    unfold C
    simp [show (13436928 * k + 6463204) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3231602) = 3359232 * k + 1615801 := by
    unfold C
    simp [show (6718464 * k + 3231602) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1615801) = 10077696 * k + 4847404 := by
    unfold C
    simp [show (3359232 * k + 1615801) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4847404) = 5038848 * k + 2423702 := by
    unfold C
    simp [show (10077696 * k + 4847404) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2423702) = 2519424 * k + 1211851 := by
    unfold C
    simp [show (5038848 * k + 2423702) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1211851) = 7558272 * k + 3635554 := by
    unfold C
    simp [show (2519424 * k + 1211851) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3635554) = 3779136 * k + 1817777 := by
    unfold C
    simp [show (7558272 * k + 3635554) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1817777) = 11337408 * k + 5453332 := by
    unfold C
    simp [show (3779136 * k + 1817777) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5453332) = 5668704 * k + 2726666 := by
    unfold C
    simp [show (11337408 * k + 5453332) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2726666) = 2834352 * k + 1363333 := by
    unfold C
    simp [show (5668704 * k + 2726666) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1363333) = 8503056 * k + 4090000 := by
    unfold C
    simp [show (2834352 * k + 1363333) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4090000) = 4251528 * k + 2045000 := by
    unfold C
    simp [show (8503056 * k + 4090000) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2045000) = 2125764 * k + 1022500 := by
    unfold C
    simp [show (4251528 * k + 2045000) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1022500) = 1062882 * k + 511250 := by
    unfold C
    simp [show (2125764 * k + 1022500) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 511250) = 531441 * k + 255625 := by
    unfold C
    simp [show (1062882 * k + 511250) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 504367) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 504367)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_504647 : ∀ k : Nat,
    iterate (1048576 * k + 504647) 32 = 531441 * k + 255767 ∧
      531441 * k + 255767 < 1048576 * k + 504647 := by
  intro k
  have h1 : C (1048576 * k + 504647) = 3145728 * k + 1513942 := by
    unfold C
    simp [show (1048576 * k + 504647) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1513942) = 1572864 * k + 756971 := by
    unfold C
    simp [show (3145728 * k + 1513942) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 756971) = 4718592 * k + 2270914 := by
    unfold C
    simp [show (1572864 * k + 756971) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2270914) = 2359296 * k + 1135457 := by
    unfold C
    simp [show (4718592 * k + 2270914) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1135457) = 7077888 * k + 3406372 := by
    unfold C
    simp [show (2359296 * k + 1135457) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3406372) = 3538944 * k + 1703186 := by
    unfold C
    simp [show (7077888 * k + 3406372) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1703186) = 1769472 * k + 851593 := by
    unfold C
    simp [show (3538944 * k + 1703186) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 851593) = 5308416 * k + 2554780 := by
    unfold C
    simp [show (1769472 * k + 851593) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2554780) = 2654208 * k + 1277390 := by
    unfold C
    simp [show (5308416 * k + 2554780) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1277390) = 1327104 * k + 638695 := by
    unfold C
    simp [show (2654208 * k + 1277390) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 638695) = 3981312 * k + 1916086 := by
    unfold C
    simp [show (1327104 * k + 638695) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1916086) = 1990656 * k + 958043 := by
    unfold C
    simp [show (3981312 * k + 1916086) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 958043) = 5971968 * k + 2874130 := by
    unfold C
    simp [show (1990656 * k + 958043) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2874130) = 2985984 * k + 1437065 := by
    unfold C
    simp [show (5971968 * k + 2874130) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1437065) = 8957952 * k + 4311196 := by
    unfold C
    simp [show (2985984 * k + 1437065) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4311196) = 4478976 * k + 2155598 := by
    unfold C
    simp [show (8957952 * k + 4311196) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2155598) = 2239488 * k + 1077799 := by
    unfold C
    simp [show (4478976 * k + 2155598) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1077799) = 6718464 * k + 3233398 := by
    unfold C
    simp [show (2239488 * k + 1077799) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3233398) = 3359232 * k + 1616699 := by
    unfold C
    simp [show (6718464 * k + 3233398) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1616699) = 10077696 * k + 4850098 := by
    unfold C
    simp [show (3359232 * k + 1616699) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4850098) = 5038848 * k + 2425049 := by
    unfold C
    simp [show (10077696 * k + 4850098) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2425049) = 15116544 * k + 7275148 := by
    unfold C
    simp [show (5038848 * k + 2425049) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7275148) = 7558272 * k + 3637574 := by
    unfold C
    simp [show (15116544 * k + 7275148) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3637574) = 3779136 * k + 1818787 := by
    unfold C
    simp [show (7558272 * k + 3637574) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1818787) = 11337408 * k + 5456362 := by
    unfold C
    simp [show (3779136 * k + 1818787) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5456362) = 5668704 * k + 2728181 := by
    unfold C
    simp [show (11337408 * k + 5456362) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2728181) = 17006112 * k + 8184544 := by
    unfold C
    simp [show (5668704 * k + 2728181) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 8184544) = 8503056 * k + 4092272 := by
    unfold C
    simp [show (17006112 * k + 8184544) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4092272) = 4251528 * k + 2046136 := by
    unfold C
    simp [show (8503056 * k + 4092272) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2046136) = 2125764 * k + 1023068 := by
    unfold C
    simp [show (4251528 * k + 2046136) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1023068) = 1062882 * k + 511534 := by
    unfold C
    simp [show (2125764 * k + 1023068) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 511534) = 531441 * k + 255767 := by
    unfold C
    simp [show (1062882 * k + 511534) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 504647) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 504647)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_504799 : ∀ k : Nat,
    iterate (1048576 * k + 504799) 32 = 531441 * k + 255844 ∧
      531441 * k + 255844 < 1048576 * k + 504799 := by
  intro k
  have h1 : C (1048576 * k + 504799) = 3145728 * k + 1514398 := by
    unfold C
    simp [show (1048576 * k + 504799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1514398) = 1572864 * k + 757199 := by
    unfold C
    simp [show (3145728 * k + 1514398) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 757199) = 4718592 * k + 2271598 := by
    unfold C
    simp [show (1572864 * k + 757199) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2271598) = 2359296 * k + 1135799 := by
    unfold C
    simp [show (4718592 * k + 2271598) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1135799) = 7077888 * k + 3407398 := by
    unfold C
    simp [show (2359296 * k + 1135799) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3407398) = 3538944 * k + 1703699 := by
    unfold C
    simp [show (7077888 * k + 3407398) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1703699) = 10616832 * k + 5111098 := by
    unfold C
    simp [show (3538944 * k + 1703699) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5111098) = 5308416 * k + 2555549 := by
    unfold C
    simp [show (10616832 * k + 5111098) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2555549) = 15925248 * k + 7666648 := by
    unfold C
    simp [show (5308416 * k + 2555549) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7666648) = 7962624 * k + 3833324 := by
    unfold C
    simp [show (15925248 * k + 7666648) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3833324) = 3981312 * k + 1916662 := by
    unfold C
    simp [show (7962624 * k + 3833324) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1916662) = 1990656 * k + 958331 := by
    unfold C
    simp [show (3981312 * k + 1916662) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 958331) = 5971968 * k + 2874994 := by
    unfold C
    simp [show (1990656 * k + 958331) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2874994) = 2985984 * k + 1437497 := by
    unfold C
    simp [show (5971968 * k + 2874994) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1437497) = 8957952 * k + 4312492 := by
    unfold C
    simp [show (2985984 * k + 1437497) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4312492) = 4478976 * k + 2156246 := by
    unfold C
    simp [show (8957952 * k + 4312492) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2156246) = 2239488 * k + 1078123 := by
    unfold C
    simp [show (4478976 * k + 2156246) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1078123) = 6718464 * k + 3234370 := by
    unfold C
    simp [show (2239488 * k + 1078123) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3234370) = 3359232 * k + 1617185 := by
    unfold C
    simp [show (6718464 * k + 3234370) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1617185) = 10077696 * k + 4851556 := by
    unfold C
    simp [show (3359232 * k + 1617185) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4851556) = 5038848 * k + 2425778 := by
    unfold C
    simp [show (10077696 * k + 4851556) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2425778) = 2519424 * k + 1212889 := by
    unfold C
    simp [show (5038848 * k + 2425778) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1212889) = 7558272 * k + 3638668 := by
    unfold C
    simp [show (2519424 * k + 1212889) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3638668) = 3779136 * k + 1819334 := by
    unfold C
    simp [show (7558272 * k + 3638668) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1819334) = 1889568 * k + 909667 := by
    unfold C
    simp [show (3779136 * k + 1819334) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 909667) = 5668704 * k + 2729002 := by
    unfold C
    simp [show (1889568 * k + 909667) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2729002) = 2834352 * k + 1364501 := by
    unfold C
    simp [show (5668704 * k + 2729002) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1364501) = 8503056 * k + 4093504 := by
    unfold C
    simp [show (2834352 * k + 1364501) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4093504) = 4251528 * k + 2046752 := by
    unfold C
    simp [show (8503056 * k + 4093504) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2046752) = 2125764 * k + 1023376 := by
    unfold C
    simp [show (4251528 * k + 2046752) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1023376) = 1062882 * k + 511688 := by
    unfold C
    simp [show (2125764 * k + 1023376) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 511688) = 531441 * k + 255844 := by
    unfold C
    simp [show (1062882 * k + 511688) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 504799) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 504799)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_504943 : ∀ k : Nat,
    iterate (1048576 * k + 504943) 32 = 531441 * k + 255917 ∧
      531441 * k + 255917 < 1048576 * k + 504943 := by
  intro k
  have h1 : C (1048576 * k + 504943) = 3145728 * k + 1514830 := by
    unfold C
    simp [show (1048576 * k + 504943) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1514830) = 1572864 * k + 757415 := by
    unfold C
    simp [show (3145728 * k + 1514830) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 757415) = 4718592 * k + 2272246 := by
    unfold C
    simp [show (1572864 * k + 757415) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2272246) = 2359296 * k + 1136123 := by
    unfold C
    simp [show (4718592 * k + 2272246) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1136123) = 7077888 * k + 3408370 := by
    unfold C
    simp [show (2359296 * k + 1136123) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3408370) = 3538944 * k + 1704185 := by
    unfold C
    simp [show (7077888 * k + 3408370) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1704185) = 10616832 * k + 5112556 := by
    unfold C
    simp [show (3538944 * k + 1704185) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5112556) = 5308416 * k + 2556278 := by
    unfold C
    simp [show (10616832 * k + 5112556) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2556278) = 2654208 * k + 1278139 := by
    unfold C
    simp [show (5308416 * k + 2556278) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1278139) = 7962624 * k + 3834418 := by
    unfold C
    simp [show (2654208 * k + 1278139) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3834418) = 3981312 * k + 1917209 := by
    unfold C
    simp [show (7962624 * k + 3834418) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1917209) = 11943936 * k + 5751628 := by
    unfold C
    simp [show (3981312 * k + 1917209) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5751628) = 5971968 * k + 2875814 := by
    unfold C
    simp [show (11943936 * k + 5751628) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2875814) = 2985984 * k + 1437907 := by
    unfold C
    simp [show (5971968 * k + 2875814) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1437907) = 8957952 * k + 4313722 := by
    unfold C
    simp [show (2985984 * k + 1437907) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4313722) = 4478976 * k + 2156861 := by
    unfold C
    simp [show (8957952 * k + 4313722) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2156861) = 13436928 * k + 6470584 := by
    unfold C
    simp [show (4478976 * k + 2156861) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6470584) = 6718464 * k + 3235292 := by
    unfold C
    simp [show (13436928 * k + 6470584) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3235292) = 3359232 * k + 1617646 := by
    unfold C
    simp [show (6718464 * k + 3235292) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1617646) = 1679616 * k + 808823 := by
    unfold C
    simp [show (3359232 * k + 1617646) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 808823) = 5038848 * k + 2426470 := by
    unfold C
    simp [show (1679616 * k + 808823) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2426470) = 2519424 * k + 1213235 := by
    unfold C
    simp [show (5038848 * k + 2426470) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1213235) = 7558272 * k + 3639706 := by
    unfold C
    simp [show (2519424 * k + 1213235) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3639706) = 3779136 * k + 1819853 := by
    unfold C
    simp [show (7558272 * k + 3639706) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1819853) = 11337408 * k + 5459560 := by
    unfold C
    simp [show (3779136 * k + 1819853) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5459560) = 5668704 * k + 2729780 := by
    unfold C
    simp [show (11337408 * k + 5459560) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2729780) = 2834352 * k + 1364890 := by
    unfold C
    simp [show (5668704 * k + 2729780) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1364890) = 1417176 * k + 682445 := by
    unfold C
    simp [show (2834352 * k + 1364890) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 682445) = 4251528 * k + 2047336 := by
    unfold C
    simp [show (1417176 * k + 682445) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2047336) = 2125764 * k + 1023668 := by
    unfold C
    simp [show (4251528 * k + 2047336) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1023668) = 1062882 * k + 511834 := by
    unfold C
    simp [show (2125764 * k + 1023668) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 511834) = 531441 * k + 255917 := by
    unfold C
    simp [show (1062882 * k + 511834) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 504943) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 504943)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_504991 : ∀ k : Nat,
    iterate (1048576 * k + 504991) 32 = 531441 * k + 255941 ∧
      531441 * k + 255941 < 1048576 * k + 504991 := by
  intro k
  have h1 : C (1048576 * k + 504991) = 3145728 * k + 1514974 := by
    unfold C
    simp [show (1048576 * k + 504991) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1514974) = 1572864 * k + 757487 := by
    unfold C
    simp [show (3145728 * k + 1514974) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 757487) = 4718592 * k + 2272462 := by
    unfold C
    simp [show (1572864 * k + 757487) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2272462) = 2359296 * k + 1136231 := by
    unfold C
    simp [show (4718592 * k + 2272462) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1136231) = 7077888 * k + 3408694 := by
    unfold C
    simp [show (2359296 * k + 1136231) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3408694) = 3538944 * k + 1704347 := by
    unfold C
    simp [show (7077888 * k + 3408694) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1704347) = 10616832 * k + 5113042 := by
    unfold C
    simp [show (3538944 * k + 1704347) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5113042) = 5308416 * k + 2556521 := by
    unfold C
    simp [show (10616832 * k + 5113042) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2556521) = 15925248 * k + 7669564 := by
    unfold C
    simp [show (5308416 * k + 2556521) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7669564) = 7962624 * k + 3834782 := by
    unfold C
    simp [show (15925248 * k + 7669564) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3834782) = 3981312 * k + 1917391 := by
    unfold C
    simp [show (7962624 * k + 3834782) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1917391) = 11943936 * k + 5752174 := by
    unfold C
    simp [show (3981312 * k + 1917391) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5752174) = 5971968 * k + 2876087 := by
    unfold C
    simp [show (11943936 * k + 5752174) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2876087) = 17915904 * k + 8628262 := by
    unfold C
    simp [show (5971968 * k + 2876087) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8628262) = 8957952 * k + 4314131 := by
    unfold C
    simp [show (17915904 * k + 8628262) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4314131) = 26873856 * k + 12942394 := by
    unfold C
    simp [show (8957952 * k + 4314131) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 12942394) = 13436928 * k + 6471197 := by
    unfold C
    simp [show (26873856 * k + 12942394) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6471197) = 40310784 * k + 19413592 := by
    unfold C
    simp [show (13436928 * k + 6471197) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 19413592) = 20155392 * k + 9706796 := by
    unfold C
    simp [show (40310784 * k + 19413592) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 9706796) = 10077696 * k + 4853398 := by
    unfold C
    simp [show (20155392 * k + 9706796) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4853398) = 5038848 * k + 2426699 := by
    unfold C
    simp [show (10077696 * k + 4853398) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2426699) = 15116544 * k + 7280098 := by
    unfold C
    simp [show (5038848 * k + 2426699) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7280098) = 7558272 * k + 3640049 := by
    unfold C
    simp [show (15116544 * k + 7280098) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3640049) = 22674816 * k + 10920148 := by
    unfold C
    simp [show (7558272 * k + 3640049) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 10920148) = 11337408 * k + 5460074 := by
    unfold C
    simp [show (22674816 * k + 10920148) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5460074) = 5668704 * k + 2730037 := by
    unfold C
    simp [show (11337408 * k + 5460074) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2730037) = 17006112 * k + 8190112 := by
    unfold C
    simp [show (5668704 * k + 2730037) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 8190112) = 8503056 * k + 4095056 := by
    unfold C
    simp [show (17006112 * k + 8190112) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4095056) = 4251528 * k + 2047528 := by
    unfold C
    simp [show (8503056 * k + 4095056) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2047528) = 2125764 * k + 1023764 := by
    unfold C
    simp [show (4251528 * k + 2047528) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1023764) = 1062882 * k + 511882 := by
    unfold C
    simp [show (2125764 * k + 1023764) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 511882) = 531441 * k + 255941 := by
    unfold C
    simp [show (1062882 * k + 511882) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 504991) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 504991)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_505055 : ∀ k : Nat,
    iterate (1048576 * k + 505055) 32 = 531441 * k + 255974 ∧
      531441 * k + 255974 < 1048576 * k + 505055 := by
  intro k
  have h1 : C (1048576 * k + 505055) = 3145728 * k + 1515166 := by
    unfold C
    simp [show (1048576 * k + 505055) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1515166) = 1572864 * k + 757583 := by
    unfold C
    simp [show (3145728 * k + 1515166) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 757583) = 4718592 * k + 2272750 := by
    unfold C
    simp [show (1572864 * k + 757583) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2272750) = 2359296 * k + 1136375 := by
    unfold C
    simp [show (4718592 * k + 2272750) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1136375) = 7077888 * k + 3409126 := by
    unfold C
    simp [show (2359296 * k + 1136375) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3409126) = 3538944 * k + 1704563 := by
    unfold C
    simp [show (7077888 * k + 3409126) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1704563) = 10616832 * k + 5113690 := by
    unfold C
    simp [show (3538944 * k + 1704563) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5113690) = 5308416 * k + 2556845 := by
    unfold C
    simp [show (10616832 * k + 5113690) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2556845) = 15925248 * k + 7670536 := by
    unfold C
    simp [show (5308416 * k + 2556845) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7670536) = 7962624 * k + 3835268 := by
    unfold C
    simp [show (15925248 * k + 7670536) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3835268) = 3981312 * k + 1917634 := by
    unfold C
    simp [show (7962624 * k + 3835268) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1917634) = 1990656 * k + 958817 := by
    unfold C
    simp [show (3981312 * k + 1917634) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 958817) = 5971968 * k + 2876452 := by
    unfold C
    simp [show (1990656 * k + 958817) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2876452) = 2985984 * k + 1438226 := by
    unfold C
    simp [show (5971968 * k + 2876452) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1438226) = 1492992 * k + 719113 := by
    unfold C
    simp [show (2985984 * k + 1438226) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 719113) = 4478976 * k + 2157340 := by
    unfold C
    simp [show (1492992 * k + 719113) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2157340) = 2239488 * k + 1078670 := by
    unfold C
    simp [show (4478976 * k + 2157340) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1078670) = 1119744 * k + 539335 := by
    unfold C
    simp [show (2239488 * k + 1078670) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 539335) = 3359232 * k + 1618006 := by
    unfold C
    simp [show (1119744 * k + 539335) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1618006) = 1679616 * k + 809003 := by
    unfold C
    simp [show (3359232 * k + 1618006) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 809003) = 5038848 * k + 2427010 := by
    unfold C
    simp [show (1679616 * k + 809003) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2427010) = 2519424 * k + 1213505 := by
    unfold C
    simp [show (5038848 * k + 2427010) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1213505) = 7558272 * k + 3640516 := by
    unfold C
    simp [show (2519424 * k + 1213505) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3640516) = 3779136 * k + 1820258 := by
    unfold C
    simp [show (7558272 * k + 3640516) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1820258) = 1889568 * k + 910129 := by
    unfold C
    simp [show (3779136 * k + 1820258) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 910129) = 5668704 * k + 2730388 := by
    unfold C
    simp [show (1889568 * k + 910129) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2730388) = 2834352 * k + 1365194 := by
    unfold C
    simp [show (5668704 * k + 2730388) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1365194) = 1417176 * k + 682597 := by
    unfold C
    simp [show (2834352 * k + 1365194) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 682597) = 4251528 * k + 2047792 := by
    unfold C
    simp [show (1417176 * k + 682597) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2047792) = 2125764 * k + 1023896 := by
    unfold C
    simp [show (4251528 * k + 2047792) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1023896) = 1062882 * k + 511948 := by
    unfold C
    simp [show (2125764 * k + 1023896) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 511948) = 531441 * k + 255974 := by
    unfold C
    simp [show (1062882 * k + 511948) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 505055) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 505055)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_505115 : ∀ k : Nat,
    iterate (1048576 * k + 505115) 32 = 531441 * k + 256004 ∧
      531441 * k + 256004 < 1048576 * k + 505115 := by
  intro k
  have h1 : C (1048576 * k + 505115) = 3145728 * k + 1515346 := by
    unfold C
    simp [show (1048576 * k + 505115) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1515346) = 1572864 * k + 757673 := by
    unfold C
    simp [show (3145728 * k + 1515346) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 757673) = 4718592 * k + 2273020 := by
    unfold C
    simp [show (1572864 * k + 757673) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2273020) = 2359296 * k + 1136510 := by
    unfold C
    simp [show (4718592 * k + 2273020) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1136510) = 1179648 * k + 568255 := by
    unfold C
    simp [show (2359296 * k + 1136510) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 568255) = 3538944 * k + 1704766 := by
    unfold C
    simp [show (1179648 * k + 568255) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1704766) = 1769472 * k + 852383 := by
    unfold C
    simp [show (3538944 * k + 1704766) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 852383) = 5308416 * k + 2557150 := by
    unfold C
    simp [show (1769472 * k + 852383) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2557150) = 2654208 * k + 1278575 := by
    unfold C
    simp [show (5308416 * k + 2557150) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1278575) = 7962624 * k + 3835726 := by
    unfold C
    simp [show (2654208 * k + 1278575) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3835726) = 3981312 * k + 1917863 := by
    unfold C
    simp [show (7962624 * k + 3835726) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1917863) = 11943936 * k + 5753590 := by
    unfold C
    simp [show (3981312 * k + 1917863) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5753590) = 5971968 * k + 2876795 := by
    unfold C
    simp [show (11943936 * k + 5753590) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2876795) = 17915904 * k + 8630386 := by
    unfold C
    simp [show (5971968 * k + 2876795) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8630386) = 8957952 * k + 4315193 := by
    unfold C
    simp [show (17915904 * k + 8630386) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4315193) = 26873856 * k + 12945580 := by
    unfold C
    simp [show (8957952 * k + 4315193) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 12945580) = 13436928 * k + 6472790 := by
    unfold C
    simp [show (26873856 * k + 12945580) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6472790) = 6718464 * k + 3236395 := by
    unfold C
    simp [show (13436928 * k + 6472790) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3236395) = 20155392 * k + 9709186 := by
    unfold C
    simp [show (6718464 * k + 3236395) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9709186) = 10077696 * k + 4854593 := by
    unfold C
    simp [show (20155392 * k + 9709186) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4854593) = 30233088 * k + 14563780 := by
    unfold C
    simp [show (10077696 * k + 4854593) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 14563780) = 15116544 * k + 7281890 := by
    unfold C
    simp [show (30233088 * k + 14563780) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7281890) = 7558272 * k + 3640945 := by
    unfold C
    simp [show (15116544 * k + 7281890) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3640945) = 22674816 * k + 10922836 := by
    unfold C
    simp [show (7558272 * k + 3640945) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 10922836) = 11337408 * k + 5461418 := by
    unfold C
    simp [show (22674816 * k + 10922836) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5461418) = 5668704 * k + 2730709 := by
    unfold C
    simp [show (11337408 * k + 5461418) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2730709) = 17006112 * k + 8192128 := by
    unfold C
    simp [show (5668704 * k + 2730709) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 8192128) = 8503056 * k + 4096064 := by
    unfold C
    simp [show (17006112 * k + 8192128) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4096064) = 4251528 * k + 2048032 := by
    unfold C
    simp [show (8503056 * k + 4096064) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2048032) = 2125764 * k + 1024016 := by
    unfold C
    simp [show (4251528 * k + 2048032) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1024016) = 1062882 * k + 512008 := by
    unfold C
    simp [show (2125764 * k + 1024016) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 512008) = 531441 * k + 256004 := by
    unfold C
    simp [show (1062882 * k + 512008) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 505115) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 505115)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_505375 : ∀ k : Nat,
    iterate (1048576 * k + 505375) 32 = 531441 * k + 256136 ∧
      531441 * k + 256136 < 1048576 * k + 505375 := by
  intro k
  have h1 : C (1048576 * k + 505375) = 3145728 * k + 1516126 := by
    unfold C
    simp [show (1048576 * k + 505375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1516126) = 1572864 * k + 758063 := by
    unfold C
    simp [show (3145728 * k + 1516126) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 758063) = 4718592 * k + 2274190 := by
    unfold C
    simp [show (1572864 * k + 758063) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2274190) = 2359296 * k + 1137095 := by
    unfold C
    simp [show (4718592 * k + 2274190) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1137095) = 7077888 * k + 3411286 := by
    unfold C
    simp [show (2359296 * k + 1137095) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3411286) = 3538944 * k + 1705643 := by
    unfold C
    simp [show (7077888 * k + 3411286) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1705643) = 10616832 * k + 5116930 := by
    unfold C
    simp [show (3538944 * k + 1705643) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5116930) = 5308416 * k + 2558465 := by
    unfold C
    simp [show (10616832 * k + 5116930) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2558465) = 15925248 * k + 7675396 := by
    unfold C
    simp [show (5308416 * k + 2558465) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7675396) = 7962624 * k + 3837698 := by
    unfold C
    simp [show (15925248 * k + 7675396) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3837698) = 3981312 * k + 1918849 := by
    unfold C
    simp [show (7962624 * k + 3837698) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1918849) = 11943936 * k + 5756548 := by
    unfold C
    simp [show (3981312 * k + 1918849) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5756548) = 5971968 * k + 2878274 := by
    unfold C
    simp [show (11943936 * k + 5756548) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2878274) = 2985984 * k + 1439137 := by
    unfold C
    simp [show (5971968 * k + 2878274) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1439137) = 8957952 * k + 4317412 := by
    unfold C
    simp [show (2985984 * k + 1439137) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4317412) = 4478976 * k + 2158706 := by
    unfold C
    simp [show (8957952 * k + 4317412) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2158706) = 2239488 * k + 1079353 := by
    unfold C
    simp [show (4478976 * k + 2158706) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1079353) = 6718464 * k + 3238060 := by
    unfold C
    simp [show (2239488 * k + 1079353) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3238060) = 3359232 * k + 1619030 := by
    unfold C
    simp [show (6718464 * k + 3238060) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1619030) = 1679616 * k + 809515 := by
    unfold C
    simp [show (3359232 * k + 1619030) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 809515) = 5038848 * k + 2428546 := by
    unfold C
    simp [show (1679616 * k + 809515) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2428546) = 2519424 * k + 1214273 := by
    unfold C
    simp [show (5038848 * k + 2428546) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1214273) = 7558272 * k + 3642820 := by
    unfold C
    simp [show (2519424 * k + 1214273) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3642820) = 3779136 * k + 1821410 := by
    unfold C
    simp [show (7558272 * k + 3642820) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1821410) = 1889568 * k + 910705 := by
    unfold C
    simp [show (3779136 * k + 1821410) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 910705) = 5668704 * k + 2732116 := by
    unfold C
    simp [show (1889568 * k + 910705) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2732116) = 2834352 * k + 1366058 := by
    unfold C
    simp [show (5668704 * k + 2732116) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1366058) = 1417176 * k + 683029 := by
    unfold C
    simp [show (2834352 * k + 1366058) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 683029) = 4251528 * k + 2049088 := by
    unfold C
    simp [show (1417176 * k + 683029) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2049088) = 2125764 * k + 1024544 := by
    unfold C
    simp [show (4251528 * k + 2049088) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1024544) = 1062882 * k + 512272 := by
    unfold C
    simp [show (2125764 * k + 1024544) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 512272) = 531441 * k + 256136 := by
    unfold C
    simp [show (1062882 * k + 512272) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 505375) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 505375)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_505535 : ∀ k : Nat,
    iterate (1048576 * k + 505535) 32 = 531441 * k + 256217 ∧
      531441 * k + 256217 < 1048576 * k + 505535 := by
  intro k
  have h1 : C (1048576 * k + 505535) = 3145728 * k + 1516606 := by
    unfold C
    simp [show (1048576 * k + 505535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1516606) = 1572864 * k + 758303 := by
    unfold C
    simp [show (3145728 * k + 1516606) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 758303) = 4718592 * k + 2274910 := by
    unfold C
    simp [show (1572864 * k + 758303) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2274910) = 2359296 * k + 1137455 := by
    unfold C
    simp [show (4718592 * k + 2274910) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1137455) = 7077888 * k + 3412366 := by
    unfold C
    simp [show (2359296 * k + 1137455) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3412366) = 3538944 * k + 1706183 := by
    unfold C
    simp [show (7077888 * k + 3412366) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1706183) = 10616832 * k + 5118550 := by
    unfold C
    simp [show (3538944 * k + 1706183) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5118550) = 5308416 * k + 2559275 := by
    unfold C
    simp [show (10616832 * k + 5118550) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2559275) = 15925248 * k + 7677826 := by
    unfold C
    simp [show (5308416 * k + 2559275) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7677826) = 7962624 * k + 3838913 := by
    unfold C
    simp [show (15925248 * k + 7677826) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3838913) = 23887872 * k + 11516740 := by
    unfold C
    simp [show (7962624 * k + 3838913) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11516740) = 11943936 * k + 5758370 := by
    unfold C
    simp [show (23887872 * k + 11516740) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5758370) = 5971968 * k + 2879185 := by
    unfold C
    simp [show (11943936 * k + 5758370) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2879185) = 17915904 * k + 8637556 := by
    unfold C
    simp [show (5971968 * k + 2879185) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8637556) = 8957952 * k + 4318778 := by
    unfold C
    simp [show (17915904 * k + 8637556) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4318778) = 4478976 * k + 2159389 := by
    unfold C
    simp [show (8957952 * k + 4318778) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2159389) = 13436928 * k + 6478168 := by
    unfold C
    simp [show (4478976 * k + 2159389) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6478168) = 6718464 * k + 3239084 := by
    unfold C
    simp [show (13436928 * k + 6478168) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3239084) = 3359232 * k + 1619542 := by
    unfold C
    simp [show (6718464 * k + 3239084) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1619542) = 1679616 * k + 809771 := by
    unfold C
    simp [show (3359232 * k + 1619542) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 809771) = 5038848 * k + 2429314 := by
    unfold C
    simp [show (1679616 * k + 809771) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2429314) = 2519424 * k + 1214657 := by
    unfold C
    simp [show (5038848 * k + 2429314) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1214657) = 7558272 * k + 3643972 := by
    unfold C
    simp [show (2519424 * k + 1214657) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3643972) = 3779136 * k + 1821986 := by
    unfold C
    simp [show (7558272 * k + 3643972) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1821986) = 1889568 * k + 910993 := by
    unfold C
    simp [show (3779136 * k + 1821986) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 910993) = 5668704 * k + 2732980 := by
    unfold C
    simp [show (1889568 * k + 910993) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2732980) = 2834352 * k + 1366490 := by
    unfold C
    simp [show (5668704 * k + 2732980) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1366490) = 1417176 * k + 683245 := by
    unfold C
    simp [show (2834352 * k + 1366490) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 683245) = 4251528 * k + 2049736 := by
    unfold C
    simp [show (1417176 * k + 683245) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2049736) = 2125764 * k + 1024868 := by
    unfold C
    simp [show (4251528 * k + 2049736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1024868) = 1062882 * k + 512434 := by
    unfold C
    simp [show (2125764 * k + 1024868) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 512434) = 531441 * k + 256217 := by
    unfold C
    simp [show (1062882 * k + 512434) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 505535) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 505535)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_506107 : ∀ k : Nat,
    iterate (1048576 * k + 506107) 32 = 531441 * k + 256507 ∧
      531441 * k + 256507 < 1048576 * k + 506107 := by
  intro k
  have h1 : C (1048576 * k + 506107) = 3145728 * k + 1518322 := by
    unfold C
    simp [show (1048576 * k + 506107) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1518322) = 1572864 * k + 759161 := by
    unfold C
    simp [show (3145728 * k + 1518322) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 759161) = 4718592 * k + 2277484 := by
    unfold C
    simp [show (1572864 * k + 759161) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2277484) = 2359296 * k + 1138742 := by
    unfold C
    simp [show (4718592 * k + 2277484) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1138742) = 1179648 * k + 569371 := by
    unfold C
    simp [show (2359296 * k + 1138742) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 569371) = 3538944 * k + 1708114 := by
    unfold C
    simp [show (1179648 * k + 569371) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1708114) = 1769472 * k + 854057 := by
    unfold C
    simp [show (3538944 * k + 1708114) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 854057) = 5308416 * k + 2562172 := by
    unfold C
    simp [show (1769472 * k + 854057) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2562172) = 2654208 * k + 1281086 := by
    unfold C
    simp [show (5308416 * k + 2562172) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1281086) = 1327104 * k + 640543 := by
    unfold C
    simp [show (2654208 * k + 1281086) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 640543) = 3981312 * k + 1921630 := by
    unfold C
    simp [show (1327104 * k + 640543) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1921630) = 1990656 * k + 960815 := by
    unfold C
    simp [show (3981312 * k + 1921630) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 960815) = 5971968 * k + 2882446 := by
    unfold C
    simp [show (1990656 * k + 960815) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2882446) = 2985984 * k + 1441223 := by
    unfold C
    simp [show (5971968 * k + 2882446) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1441223) = 8957952 * k + 4323670 := by
    unfold C
    simp [show (2985984 * k + 1441223) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4323670) = 4478976 * k + 2161835 := by
    unfold C
    simp [show (8957952 * k + 4323670) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2161835) = 13436928 * k + 6485506 := by
    unfold C
    simp [show (4478976 * k + 2161835) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6485506) = 6718464 * k + 3242753 := by
    unfold C
    simp [show (13436928 * k + 6485506) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3242753) = 20155392 * k + 9728260 := by
    unfold C
    simp [show (6718464 * k + 3242753) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9728260) = 10077696 * k + 4864130 := by
    unfold C
    simp [show (20155392 * k + 9728260) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4864130) = 5038848 * k + 2432065 := by
    unfold C
    simp [show (10077696 * k + 4864130) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2432065) = 15116544 * k + 7296196 := by
    unfold C
    simp [show (5038848 * k + 2432065) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7296196) = 7558272 * k + 3648098 := by
    unfold C
    simp [show (15116544 * k + 7296196) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3648098) = 3779136 * k + 1824049 := by
    unfold C
    simp [show (7558272 * k + 3648098) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1824049) = 11337408 * k + 5472148 := by
    unfold C
    simp [show (3779136 * k + 1824049) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5472148) = 5668704 * k + 2736074 := by
    unfold C
    simp [show (11337408 * k + 5472148) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2736074) = 2834352 * k + 1368037 := by
    unfold C
    simp [show (5668704 * k + 2736074) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1368037) = 8503056 * k + 4104112 := by
    unfold C
    simp [show (2834352 * k + 1368037) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4104112) = 4251528 * k + 2052056 := by
    unfold C
    simp [show (8503056 * k + 4104112) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2052056) = 2125764 * k + 1026028 := by
    unfold C
    simp [show (4251528 * k + 2052056) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1026028) = 1062882 * k + 513014 := by
    unfold C
    simp [show (2125764 * k + 1026028) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 513014) = 531441 * k + 256507 := by
    unfold C
    simp [show (1062882 * k + 513014) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 506107) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 506107)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_507599 : ∀ k : Nat,
    iterate (1048576 * k + 507599) 32 = 531441 * k + 257263 ∧
      531441 * k + 257263 < 1048576 * k + 507599 := by
  intro k
  have h1 : C (1048576 * k + 507599) = 3145728 * k + 1522798 := by
    unfold C
    simp [show (1048576 * k + 507599) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1522798) = 1572864 * k + 761399 := by
    unfold C
    simp [show (3145728 * k + 1522798) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 761399) = 4718592 * k + 2284198 := by
    unfold C
    simp [show (1572864 * k + 761399) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2284198) = 2359296 * k + 1142099 := by
    unfold C
    simp [show (4718592 * k + 2284198) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1142099) = 7077888 * k + 3426298 := by
    unfold C
    simp [show (2359296 * k + 1142099) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3426298) = 3538944 * k + 1713149 := by
    unfold C
    simp [show (7077888 * k + 3426298) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1713149) = 10616832 * k + 5139448 := by
    unfold C
    simp [show (3538944 * k + 1713149) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5139448) = 5308416 * k + 2569724 := by
    unfold C
    simp [show (10616832 * k + 5139448) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2569724) = 2654208 * k + 1284862 := by
    unfold C
    simp [show (5308416 * k + 2569724) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1284862) = 1327104 * k + 642431 := by
    unfold C
    simp [show (2654208 * k + 1284862) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 642431) = 3981312 * k + 1927294 := by
    unfold C
    simp [show (1327104 * k + 642431) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1927294) = 1990656 * k + 963647 := by
    unfold C
    simp [show (3981312 * k + 1927294) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 963647) = 5971968 * k + 2890942 := by
    unfold C
    simp [show (1990656 * k + 963647) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2890942) = 2985984 * k + 1445471 := by
    unfold C
    simp [show (5971968 * k + 2890942) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1445471) = 8957952 * k + 4336414 := by
    unfold C
    simp [show (2985984 * k + 1445471) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4336414) = 4478976 * k + 2168207 := by
    unfold C
    simp [show (8957952 * k + 4336414) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2168207) = 13436928 * k + 6504622 := by
    unfold C
    simp [show (4478976 * k + 2168207) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6504622) = 6718464 * k + 3252311 := by
    unfold C
    simp [show (13436928 * k + 6504622) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3252311) = 20155392 * k + 9756934 := by
    unfold C
    simp [show (6718464 * k + 3252311) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9756934) = 10077696 * k + 4878467 := by
    unfold C
    simp [show (20155392 * k + 9756934) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4878467) = 30233088 * k + 14635402 := by
    unfold C
    simp [show (10077696 * k + 4878467) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 14635402) = 15116544 * k + 7317701 := by
    unfold C
    simp [show (30233088 * k + 14635402) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7317701) = 45349632 * k + 21953104 := by
    unfold C
    simp [show (15116544 * k + 7317701) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 21953104) = 22674816 * k + 10976552 := by
    unfold C
    simp [show (45349632 * k + 21953104) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 10976552) = 11337408 * k + 5488276 := by
    unfold C
    simp [show (22674816 * k + 10976552) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5488276) = 5668704 * k + 2744138 := by
    unfold C
    simp [show (11337408 * k + 5488276) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2744138) = 2834352 * k + 1372069 := by
    unfold C
    simp [show (5668704 * k + 2744138) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1372069) = 8503056 * k + 4116208 := by
    unfold C
    simp [show (2834352 * k + 1372069) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4116208) = 4251528 * k + 2058104 := by
    unfold C
    simp [show (8503056 * k + 4116208) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2058104) = 2125764 * k + 1029052 := by
    unfold C
    simp [show (4251528 * k + 2058104) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1029052) = 1062882 * k + 514526 := by
    unfold C
    simp [show (2125764 * k + 1029052) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 514526) = 531441 * k + 257263 := by
    unfold C
    simp [show (1062882 * k + 514526) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 507599) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 507599)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_507647 : ∀ k : Nat,
    iterate (1048576 * k + 507647) 32 = 531441 * k + 257287 ∧
      531441 * k + 257287 < 1048576 * k + 507647 := by
  intro k
  have h1 : C (1048576 * k + 507647) = 3145728 * k + 1522942 := by
    unfold C
    simp [show (1048576 * k + 507647) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1522942) = 1572864 * k + 761471 := by
    unfold C
    simp [show (3145728 * k + 1522942) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 761471) = 4718592 * k + 2284414 := by
    unfold C
    simp [show (1572864 * k + 761471) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2284414) = 2359296 * k + 1142207 := by
    unfold C
    simp [show (4718592 * k + 2284414) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1142207) = 7077888 * k + 3426622 := by
    unfold C
    simp [show (2359296 * k + 1142207) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3426622) = 3538944 * k + 1713311 := by
    unfold C
    simp [show (7077888 * k + 3426622) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1713311) = 10616832 * k + 5139934 := by
    unfold C
    simp [show (3538944 * k + 1713311) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5139934) = 5308416 * k + 2569967 := by
    unfold C
    simp [show (10616832 * k + 5139934) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2569967) = 15925248 * k + 7709902 := by
    unfold C
    simp [show (5308416 * k + 2569967) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7709902) = 7962624 * k + 3854951 := by
    unfold C
    simp [show (15925248 * k + 7709902) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3854951) = 23887872 * k + 11564854 := by
    unfold C
    simp [show (7962624 * k + 3854951) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11564854) = 11943936 * k + 5782427 := by
    unfold C
    simp [show (23887872 * k + 11564854) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5782427) = 35831808 * k + 17347282 := by
    unfold C
    simp [show (11943936 * k + 5782427) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 17347282) = 17915904 * k + 8673641 := by
    unfold C
    simp [show (35831808 * k + 17347282) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 8673641) = 53747712 * k + 26020924 := by
    unfold C
    simp [show (17915904 * k + 8673641) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 26020924) = 26873856 * k + 13010462 := by
    unfold C
    simp [show (53747712 * k + 26020924) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 13010462) = 13436928 * k + 6505231 := by
    unfold C
    simp [show (26873856 * k + 13010462) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6505231) = 40310784 * k + 19515694 := by
    unfold C
    simp [show (13436928 * k + 6505231) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 19515694) = 20155392 * k + 9757847 := by
    unfold C
    simp [show (40310784 * k + 19515694) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 9757847) = 60466176 * k + 29273542 := by
    unfold C
    simp [show (20155392 * k + 9757847) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 29273542) = 30233088 * k + 14636771 := by
    unfold C
    simp [show (60466176 * k + 29273542) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 14636771) = 90699264 * k + 43910314 := by
    unfold C
    simp [show (30233088 * k + 14636771) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 43910314) = 45349632 * k + 21955157 := by
    unfold C
    simp [show (90699264 * k + 43910314) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 21955157) = 136048896 * k + 65865472 := by
    unfold C
    simp [show (45349632 * k + 21955157) % 2 ≠ 0 by omega]
    omega
  have h25 : C (136048896 * k + 65865472) = 68024448 * k + 32932736 := by
    unfold C
    simp [show (136048896 * k + 65865472) % 2 = 0 by omega]
    omega
  have h26 : C (68024448 * k + 32932736) = 34012224 * k + 16466368 := by
    unfold C
    simp [show (68024448 * k + 32932736) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 16466368) = 17006112 * k + 8233184 := by
    unfold C
    simp [show (34012224 * k + 16466368) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 8233184) = 8503056 * k + 4116592 := by
    unfold C
    simp [show (17006112 * k + 8233184) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4116592) = 4251528 * k + 2058296 := by
    unfold C
    simp [show (8503056 * k + 4116592) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2058296) = 2125764 * k + 1029148 := by
    unfold C
    simp [show (4251528 * k + 2058296) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1029148) = 1062882 * k + 514574 := by
    unfold C
    simp [show (2125764 * k + 1029148) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 514574) = 531441 * k + 257287 := by
    unfold C
    simp [show (1062882 * k + 514574) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 507647) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 507647)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_507711 : ∀ k : Nat,
    iterate (1048576 * k + 507711) 32 = 531441 * k + 257320 ∧
      531441 * k + 257320 < 1048576 * k + 507711 := by
  intro k
  have h1 : C (1048576 * k + 507711) = 3145728 * k + 1523134 := by
    unfold C
    simp [show (1048576 * k + 507711) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1523134) = 1572864 * k + 761567 := by
    unfold C
    simp [show (3145728 * k + 1523134) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 761567) = 4718592 * k + 2284702 := by
    unfold C
    simp [show (1572864 * k + 761567) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2284702) = 2359296 * k + 1142351 := by
    unfold C
    simp [show (4718592 * k + 2284702) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1142351) = 7077888 * k + 3427054 := by
    unfold C
    simp [show (2359296 * k + 1142351) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3427054) = 3538944 * k + 1713527 := by
    unfold C
    simp [show (7077888 * k + 3427054) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1713527) = 10616832 * k + 5140582 := by
    unfold C
    simp [show (3538944 * k + 1713527) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5140582) = 5308416 * k + 2570291 := by
    unfold C
    simp [show (10616832 * k + 5140582) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2570291) = 15925248 * k + 7710874 := by
    unfold C
    simp [show (5308416 * k + 2570291) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7710874) = 7962624 * k + 3855437 := by
    unfold C
    simp [show (15925248 * k + 7710874) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3855437) = 23887872 * k + 11566312 := by
    unfold C
    simp [show (7962624 * k + 3855437) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11566312) = 11943936 * k + 5783156 := by
    unfold C
    simp [show (23887872 * k + 11566312) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5783156) = 5971968 * k + 2891578 := by
    unfold C
    simp [show (11943936 * k + 5783156) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2891578) = 2985984 * k + 1445789 := by
    unfold C
    simp [show (5971968 * k + 2891578) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1445789) = 8957952 * k + 4337368 := by
    unfold C
    simp [show (2985984 * k + 1445789) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4337368) = 4478976 * k + 2168684 := by
    unfold C
    simp [show (8957952 * k + 4337368) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2168684) = 2239488 * k + 1084342 := by
    unfold C
    simp [show (4478976 * k + 2168684) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1084342) = 1119744 * k + 542171 := by
    unfold C
    simp [show (2239488 * k + 1084342) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 542171) = 3359232 * k + 1626514 := by
    unfold C
    simp [show (1119744 * k + 542171) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1626514) = 1679616 * k + 813257 := by
    unfold C
    simp [show (3359232 * k + 1626514) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 813257) = 5038848 * k + 2439772 := by
    unfold C
    simp [show (1679616 * k + 813257) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2439772) = 2519424 * k + 1219886 := by
    unfold C
    simp [show (5038848 * k + 2439772) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1219886) = 1259712 * k + 609943 := by
    unfold C
    simp [show (2519424 * k + 1219886) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 609943) = 3779136 * k + 1829830 := by
    unfold C
    simp [show (1259712 * k + 609943) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1829830) = 1889568 * k + 914915 := by
    unfold C
    simp [show (3779136 * k + 1829830) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 914915) = 5668704 * k + 2744746 := by
    unfold C
    simp [show (1889568 * k + 914915) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2744746) = 2834352 * k + 1372373 := by
    unfold C
    simp [show (5668704 * k + 2744746) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1372373) = 8503056 * k + 4117120 := by
    unfold C
    simp [show (2834352 * k + 1372373) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4117120) = 4251528 * k + 2058560 := by
    unfold C
    simp [show (8503056 * k + 4117120) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2058560) = 2125764 * k + 1029280 := by
    unfold C
    simp [show (4251528 * k + 2058560) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1029280) = 1062882 * k + 514640 := by
    unfold C
    simp [show (2125764 * k + 1029280) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 514640) = 531441 * k + 257320 := by
    unfold C
    simp [show (1062882 * k + 514640) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 507711) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 507711)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_508031 : ∀ k : Nat,
    iterate (1048576 * k + 508031) 32 = 531441 * k + 257482 ∧
      531441 * k + 257482 < 1048576 * k + 508031 := by
  intro k
  have h1 : C (1048576 * k + 508031) = 3145728 * k + 1524094 := by
    unfold C
    simp [show (1048576 * k + 508031) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1524094) = 1572864 * k + 762047 := by
    unfold C
    simp [show (3145728 * k + 1524094) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 762047) = 4718592 * k + 2286142 := by
    unfold C
    simp [show (1572864 * k + 762047) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2286142) = 2359296 * k + 1143071 := by
    unfold C
    simp [show (4718592 * k + 2286142) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1143071) = 7077888 * k + 3429214 := by
    unfold C
    simp [show (2359296 * k + 1143071) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3429214) = 3538944 * k + 1714607 := by
    unfold C
    simp [show (7077888 * k + 3429214) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1714607) = 10616832 * k + 5143822 := by
    unfold C
    simp [show (3538944 * k + 1714607) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5143822) = 5308416 * k + 2571911 := by
    unfold C
    simp [show (10616832 * k + 5143822) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2571911) = 15925248 * k + 7715734 := by
    unfold C
    simp [show (5308416 * k + 2571911) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7715734) = 7962624 * k + 3857867 := by
    unfold C
    simp [show (15925248 * k + 7715734) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3857867) = 23887872 * k + 11573602 := by
    unfold C
    simp [show (7962624 * k + 3857867) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11573602) = 11943936 * k + 5786801 := by
    unfold C
    simp [show (23887872 * k + 11573602) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5786801) = 35831808 * k + 17360404 := by
    unfold C
    simp [show (11943936 * k + 5786801) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 17360404) = 17915904 * k + 8680202 := by
    unfold C
    simp [show (35831808 * k + 17360404) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 8680202) = 8957952 * k + 4340101 := by
    unfold C
    simp [show (17915904 * k + 8680202) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4340101) = 26873856 * k + 13020304 := by
    unfold C
    simp [show (8957952 * k + 4340101) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 13020304) = 13436928 * k + 6510152 := by
    unfold C
    simp [show (26873856 * k + 13020304) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6510152) = 6718464 * k + 3255076 := by
    unfold C
    simp [show (13436928 * k + 6510152) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3255076) = 3359232 * k + 1627538 := by
    unfold C
    simp [show (6718464 * k + 3255076) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1627538) = 1679616 * k + 813769 := by
    unfold C
    simp [show (3359232 * k + 1627538) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 813769) = 5038848 * k + 2441308 := by
    unfold C
    simp [show (1679616 * k + 813769) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2441308) = 2519424 * k + 1220654 := by
    unfold C
    simp [show (5038848 * k + 2441308) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1220654) = 1259712 * k + 610327 := by
    unfold C
    simp [show (2519424 * k + 1220654) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 610327) = 3779136 * k + 1830982 := by
    unfold C
    simp [show (1259712 * k + 610327) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1830982) = 1889568 * k + 915491 := by
    unfold C
    simp [show (3779136 * k + 1830982) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 915491) = 5668704 * k + 2746474 := by
    unfold C
    simp [show (1889568 * k + 915491) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2746474) = 2834352 * k + 1373237 := by
    unfold C
    simp [show (5668704 * k + 2746474) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1373237) = 8503056 * k + 4119712 := by
    unfold C
    simp [show (2834352 * k + 1373237) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4119712) = 4251528 * k + 2059856 := by
    unfold C
    simp [show (8503056 * k + 4119712) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2059856) = 2125764 * k + 1029928 := by
    unfold C
    simp [show (4251528 * k + 2059856) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1029928) = 1062882 * k + 514964 := by
    unfold C
    simp [show (2125764 * k + 1029928) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 514964) = 531441 * k + 257482 := by
    unfold C
    simp [show (1062882 * k + 514964) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 508031) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 508031)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_508155 : ∀ k : Nat,
    iterate (1048576 * k + 508155) 32 = 531441 * k + 257545 ∧
      531441 * k + 257545 < 1048576 * k + 508155 := by
  intro k
  have h1 : C (1048576 * k + 508155) = 3145728 * k + 1524466 := by
    unfold C
    simp [show (1048576 * k + 508155) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1524466) = 1572864 * k + 762233 := by
    unfold C
    simp [show (3145728 * k + 1524466) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 762233) = 4718592 * k + 2286700 := by
    unfold C
    simp [show (1572864 * k + 762233) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2286700) = 2359296 * k + 1143350 := by
    unfold C
    simp [show (4718592 * k + 2286700) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1143350) = 1179648 * k + 571675 := by
    unfold C
    simp [show (2359296 * k + 1143350) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 571675) = 3538944 * k + 1715026 := by
    unfold C
    simp [show (1179648 * k + 571675) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1715026) = 1769472 * k + 857513 := by
    unfold C
    simp [show (3538944 * k + 1715026) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 857513) = 5308416 * k + 2572540 := by
    unfold C
    simp [show (1769472 * k + 857513) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2572540) = 2654208 * k + 1286270 := by
    unfold C
    simp [show (5308416 * k + 2572540) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1286270) = 1327104 * k + 643135 := by
    unfold C
    simp [show (2654208 * k + 1286270) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 643135) = 3981312 * k + 1929406 := by
    unfold C
    simp [show (1327104 * k + 643135) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1929406) = 1990656 * k + 964703 := by
    unfold C
    simp [show (3981312 * k + 1929406) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 964703) = 5971968 * k + 2894110 := by
    unfold C
    simp [show (1990656 * k + 964703) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2894110) = 2985984 * k + 1447055 := by
    unfold C
    simp [show (5971968 * k + 2894110) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1447055) = 8957952 * k + 4341166 := by
    unfold C
    simp [show (2985984 * k + 1447055) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4341166) = 4478976 * k + 2170583 := by
    unfold C
    simp [show (8957952 * k + 4341166) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2170583) = 13436928 * k + 6511750 := by
    unfold C
    simp [show (4478976 * k + 2170583) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6511750) = 6718464 * k + 3255875 := by
    unfold C
    simp [show (13436928 * k + 6511750) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3255875) = 20155392 * k + 9767626 := by
    unfold C
    simp [show (6718464 * k + 3255875) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9767626) = 10077696 * k + 4883813 := by
    unfold C
    simp [show (20155392 * k + 9767626) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4883813) = 30233088 * k + 14651440 := by
    unfold C
    simp [show (10077696 * k + 4883813) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 14651440) = 15116544 * k + 7325720 := by
    unfold C
    simp [show (30233088 * k + 14651440) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7325720) = 7558272 * k + 3662860 := by
    unfold C
    simp [show (15116544 * k + 7325720) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3662860) = 3779136 * k + 1831430 := by
    unfold C
    simp [show (7558272 * k + 3662860) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1831430) = 1889568 * k + 915715 := by
    unfold C
    simp [show (3779136 * k + 1831430) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 915715) = 5668704 * k + 2747146 := by
    unfold C
    simp [show (1889568 * k + 915715) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2747146) = 2834352 * k + 1373573 := by
    unfold C
    simp [show (5668704 * k + 2747146) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1373573) = 8503056 * k + 4120720 := by
    unfold C
    simp [show (2834352 * k + 1373573) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4120720) = 4251528 * k + 2060360 := by
    unfold C
    simp [show (8503056 * k + 4120720) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2060360) = 2125764 * k + 1030180 := by
    unfold C
    simp [show (4251528 * k + 2060360) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1030180) = 1062882 * k + 515090 := by
    unfold C
    simp [show (2125764 * k + 1030180) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 515090) = 531441 * k + 257545 := by
    unfold C
    simp [show (1062882 * k + 515090) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 508155) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 508155)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_508187 : ∀ k : Nat,
    iterate (1048576 * k + 508187) 32 = 531441 * k + 257561 ∧
      531441 * k + 257561 < 1048576 * k + 508187 := by
  intro k
  have h1 : C (1048576 * k + 508187) = 3145728 * k + 1524562 := by
    unfold C
    simp [show (1048576 * k + 508187) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1524562) = 1572864 * k + 762281 := by
    unfold C
    simp [show (3145728 * k + 1524562) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 762281) = 4718592 * k + 2286844 := by
    unfold C
    simp [show (1572864 * k + 762281) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2286844) = 2359296 * k + 1143422 := by
    unfold C
    simp [show (4718592 * k + 2286844) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1143422) = 1179648 * k + 571711 := by
    unfold C
    simp [show (2359296 * k + 1143422) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 571711) = 3538944 * k + 1715134 := by
    unfold C
    simp [show (1179648 * k + 571711) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1715134) = 1769472 * k + 857567 := by
    unfold C
    simp [show (3538944 * k + 1715134) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 857567) = 5308416 * k + 2572702 := by
    unfold C
    simp [show (1769472 * k + 857567) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2572702) = 2654208 * k + 1286351 := by
    unfold C
    simp [show (5308416 * k + 2572702) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1286351) = 7962624 * k + 3859054 := by
    unfold C
    simp [show (2654208 * k + 1286351) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3859054) = 3981312 * k + 1929527 := by
    unfold C
    simp [show (7962624 * k + 3859054) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1929527) = 11943936 * k + 5788582 := by
    unfold C
    simp [show (3981312 * k + 1929527) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5788582) = 5971968 * k + 2894291 := by
    unfold C
    simp [show (11943936 * k + 5788582) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2894291) = 17915904 * k + 8682874 := by
    unfold C
    simp [show (5971968 * k + 2894291) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8682874) = 8957952 * k + 4341437 := by
    unfold C
    simp [show (17915904 * k + 8682874) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4341437) = 26873856 * k + 13024312 := by
    unfold C
    simp [show (8957952 * k + 4341437) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 13024312) = 13436928 * k + 6512156 := by
    unfold C
    simp [show (26873856 * k + 13024312) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6512156) = 6718464 * k + 3256078 := by
    unfold C
    simp [show (13436928 * k + 6512156) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3256078) = 3359232 * k + 1628039 := by
    unfold C
    simp [show (6718464 * k + 3256078) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1628039) = 10077696 * k + 4884118 := by
    unfold C
    simp [show (3359232 * k + 1628039) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4884118) = 5038848 * k + 2442059 := by
    unfold C
    simp [show (10077696 * k + 4884118) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2442059) = 15116544 * k + 7326178 := by
    unfold C
    simp [show (5038848 * k + 2442059) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7326178) = 7558272 * k + 3663089 := by
    unfold C
    simp [show (15116544 * k + 7326178) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3663089) = 22674816 * k + 10989268 := by
    unfold C
    simp [show (7558272 * k + 3663089) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 10989268) = 11337408 * k + 5494634 := by
    unfold C
    simp [show (22674816 * k + 10989268) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5494634) = 5668704 * k + 2747317 := by
    unfold C
    simp [show (11337408 * k + 5494634) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2747317) = 17006112 * k + 8241952 := by
    unfold C
    simp [show (5668704 * k + 2747317) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 8241952) = 8503056 * k + 4120976 := by
    unfold C
    simp [show (17006112 * k + 8241952) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4120976) = 4251528 * k + 2060488 := by
    unfold C
    simp [show (8503056 * k + 4120976) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2060488) = 2125764 * k + 1030244 := by
    unfold C
    simp [show (4251528 * k + 2060488) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1030244) = 1062882 * k + 515122 := by
    unfold C
    simp [show (2125764 * k + 1030244) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 515122) = 531441 * k + 257561 := by
    unfold C
    simp [show (1062882 * k + 515122) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 508187) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 508187)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_508351 : ∀ k : Nat,
    iterate (1048576 * k + 508351) 32 = 531441 * k + 257644 ∧
      531441 * k + 257644 < 1048576 * k + 508351 := by
  intro k
  have h1 : C (1048576 * k + 508351) = 3145728 * k + 1525054 := by
    unfold C
    simp [show (1048576 * k + 508351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1525054) = 1572864 * k + 762527 := by
    unfold C
    simp [show (3145728 * k + 1525054) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 762527) = 4718592 * k + 2287582 := by
    unfold C
    simp [show (1572864 * k + 762527) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2287582) = 2359296 * k + 1143791 := by
    unfold C
    simp [show (4718592 * k + 2287582) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1143791) = 7077888 * k + 3431374 := by
    unfold C
    simp [show (2359296 * k + 1143791) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3431374) = 3538944 * k + 1715687 := by
    unfold C
    simp [show (7077888 * k + 3431374) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1715687) = 10616832 * k + 5147062 := by
    unfold C
    simp [show (3538944 * k + 1715687) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5147062) = 5308416 * k + 2573531 := by
    unfold C
    simp [show (10616832 * k + 5147062) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2573531) = 15925248 * k + 7720594 := by
    unfold C
    simp [show (5308416 * k + 2573531) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7720594) = 7962624 * k + 3860297 := by
    unfold C
    simp [show (15925248 * k + 7720594) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3860297) = 23887872 * k + 11580892 := by
    unfold C
    simp [show (7962624 * k + 3860297) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11580892) = 11943936 * k + 5790446 := by
    unfold C
    simp [show (23887872 * k + 11580892) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5790446) = 5971968 * k + 2895223 := by
    unfold C
    simp [show (11943936 * k + 5790446) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2895223) = 17915904 * k + 8685670 := by
    unfold C
    simp [show (5971968 * k + 2895223) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8685670) = 8957952 * k + 4342835 := by
    unfold C
    simp [show (17915904 * k + 8685670) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4342835) = 26873856 * k + 13028506 := by
    unfold C
    simp [show (8957952 * k + 4342835) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 13028506) = 13436928 * k + 6514253 := by
    unfold C
    simp [show (26873856 * k + 13028506) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6514253) = 40310784 * k + 19542760 := by
    unfold C
    simp [show (13436928 * k + 6514253) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 19542760) = 20155392 * k + 9771380 := by
    unfold C
    simp [show (40310784 * k + 19542760) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 9771380) = 10077696 * k + 4885690 := by
    unfold C
    simp [show (20155392 * k + 9771380) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4885690) = 5038848 * k + 2442845 := by
    unfold C
    simp [show (10077696 * k + 4885690) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2442845) = 15116544 * k + 7328536 := by
    unfold C
    simp [show (5038848 * k + 2442845) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7328536) = 7558272 * k + 3664268 := by
    unfold C
    simp [show (15116544 * k + 7328536) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3664268) = 3779136 * k + 1832134 := by
    unfold C
    simp [show (7558272 * k + 3664268) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1832134) = 1889568 * k + 916067 := by
    unfold C
    simp [show (3779136 * k + 1832134) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 916067) = 5668704 * k + 2748202 := by
    unfold C
    simp [show (1889568 * k + 916067) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2748202) = 2834352 * k + 1374101 := by
    unfold C
    simp [show (5668704 * k + 2748202) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1374101) = 8503056 * k + 4122304 := by
    unfold C
    simp [show (2834352 * k + 1374101) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4122304) = 4251528 * k + 2061152 := by
    unfold C
    simp [show (8503056 * k + 4122304) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2061152) = 2125764 * k + 1030576 := by
    unfold C
    simp [show (4251528 * k + 2061152) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1030576) = 1062882 * k + 515288 := by
    unfold C
    simp [show (2125764 * k + 1030576) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 515288) = 531441 * k + 257644 := by
    unfold C
    simp [show (1062882 * k + 515288) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 508351) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 508351)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_509087 : ∀ k : Nat,
    iterate (1048576 * k + 509087) 32 = 531441 * k + 258017 ∧
      531441 * k + 258017 < 1048576 * k + 509087 := by
  intro k
  have h1 : C (1048576 * k + 509087) = 3145728 * k + 1527262 := by
    unfold C
    simp [show (1048576 * k + 509087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1527262) = 1572864 * k + 763631 := by
    unfold C
    simp [show (3145728 * k + 1527262) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 763631) = 4718592 * k + 2290894 := by
    unfold C
    simp [show (1572864 * k + 763631) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2290894) = 2359296 * k + 1145447 := by
    unfold C
    simp [show (4718592 * k + 2290894) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1145447) = 7077888 * k + 3436342 := by
    unfold C
    simp [show (2359296 * k + 1145447) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3436342) = 3538944 * k + 1718171 := by
    unfold C
    simp [show (7077888 * k + 3436342) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1718171) = 10616832 * k + 5154514 := by
    unfold C
    simp [show (3538944 * k + 1718171) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5154514) = 5308416 * k + 2577257 := by
    unfold C
    simp [show (10616832 * k + 5154514) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2577257) = 15925248 * k + 7731772 := by
    unfold C
    simp [show (5308416 * k + 2577257) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7731772) = 7962624 * k + 3865886 := by
    unfold C
    simp [show (15925248 * k + 7731772) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3865886) = 3981312 * k + 1932943 := by
    unfold C
    simp [show (7962624 * k + 3865886) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1932943) = 11943936 * k + 5798830 := by
    unfold C
    simp [show (3981312 * k + 1932943) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5798830) = 5971968 * k + 2899415 := by
    unfold C
    simp [show (11943936 * k + 5798830) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2899415) = 17915904 * k + 8698246 := by
    unfold C
    simp [show (5971968 * k + 2899415) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8698246) = 8957952 * k + 4349123 := by
    unfold C
    simp [show (17915904 * k + 8698246) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4349123) = 26873856 * k + 13047370 := by
    unfold C
    simp [show (8957952 * k + 4349123) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 13047370) = 13436928 * k + 6523685 := by
    unfold C
    simp [show (26873856 * k + 13047370) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6523685) = 40310784 * k + 19571056 := by
    unfold C
    simp [show (13436928 * k + 6523685) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 19571056) = 20155392 * k + 9785528 := by
    unfold C
    simp [show (40310784 * k + 19571056) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 9785528) = 10077696 * k + 4892764 := by
    unfold C
    simp [show (20155392 * k + 9785528) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4892764) = 5038848 * k + 2446382 := by
    unfold C
    simp [show (10077696 * k + 4892764) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2446382) = 2519424 * k + 1223191 := by
    unfold C
    simp [show (5038848 * k + 2446382) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1223191) = 7558272 * k + 3669574 := by
    unfold C
    simp [show (2519424 * k + 1223191) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3669574) = 3779136 * k + 1834787 := by
    unfold C
    simp [show (7558272 * k + 3669574) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1834787) = 11337408 * k + 5504362 := by
    unfold C
    simp [show (3779136 * k + 1834787) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5504362) = 5668704 * k + 2752181 := by
    unfold C
    simp [show (11337408 * k + 5504362) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2752181) = 17006112 * k + 8256544 := by
    unfold C
    simp [show (5668704 * k + 2752181) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 8256544) = 8503056 * k + 4128272 := by
    unfold C
    simp [show (17006112 * k + 8256544) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4128272) = 4251528 * k + 2064136 := by
    unfold C
    simp [show (8503056 * k + 4128272) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2064136) = 2125764 * k + 1032068 := by
    unfold C
    simp [show (4251528 * k + 2064136) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1032068) = 1062882 * k + 516034 := by
    unfold C
    simp [show (2125764 * k + 1032068) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 516034) = 531441 * k + 258017 := by
    unfold C
    simp [show (1062882 * k + 516034) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 509087) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 509087)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_509647 : ∀ k : Nat,
    iterate (1048576 * k + 509647) 32 = 531441 * k + 258301 ∧
      531441 * k + 258301 < 1048576 * k + 509647 := by
  intro k
  have h1 : C (1048576 * k + 509647) = 3145728 * k + 1528942 := by
    unfold C
    simp [show (1048576 * k + 509647) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1528942) = 1572864 * k + 764471 := by
    unfold C
    simp [show (3145728 * k + 1528942) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 764471) = 4718592 * k + 2293414 := by
    unfold C
    simp [show (1572864 * k + 764471) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2293414) = 2359296 * k + 1146707 := by
    unfold C
    simp [show (4718592 * k + 2293414) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1146707) = 7077888 * k + 3440122 := by
    unfold C
    simp [show (2359296 * k + 1146707) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3440122) = 3538944 * k + 1720061 := by
    unfold C
    simp [show (7077888 * k + 3440122) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1720061) = 10616832 * k + 5160184 := by
    unfold C
    simp [show (3538944 * k + 1720061) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5160184) = 5308416 * k + 2580092 := by
    unfold C
    simp [show (10616832 * k + 5160184) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2580092) = 2654208 * k + 1290046 := by
    unfold C
    simp [show (5308416 * k + 2580092) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1290046) = 1327104 * k + 645023 := by
    unfold C
    simp [show (2654208 * k + 1290046) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 645023) = 3981312 * k + 1935070 := by
    unfold C
    simp [show (1327104 * k + 645023) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1935070) = 1990656 * k + 967535 := by
    unfold C
    simp [show (3981312 * k + 1935070) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 967535) = 5971968 * k + 2902606 := by
    unfold C
    simp [show (1990656 * k + 967535) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2902606) = 2985984 * k + 1451303 := by
    unfold C
    simp [show (5971968 * k + 2902606) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1451303) = 8957952 * k + 4353910 := by
    unfold C
    simp [show (2985984 * k + 1451303) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4353910) = 4478976 * k + 2176955 := by
    unfold C
    simp [show (8957952 * k + 4353910) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2176955) = 13436928 * k + 6530866 := by
    unfold C
    simp [show (4478976 * k + 2176955) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6530866) = 6718464 * k + 3265433 := by
    unfold C
    simp [show (13436928 * k + 6530866) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3265433) = 20155392 * k + 9796300 := by
    unfold C
    simp [show (6718464 * k + 3265433) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9796300) = 10077696 * k + 4898150 := by
    unfold C
    simp [show (20155392 * k + 9796300) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4898150) = 5038848 * k + 2449075 := by
    unfold C
    simp [show (10077696 * k + 4898150) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2449075) = 15116544 * k + 7347226 := by
    unfold C
    simp [show (5038848 * k + 2449075) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7347226) = 7558272 * k + 3673613 := by
    unfold C
    simp [show (15116544 * k + 7347226) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3673613) = 22674816 * k + 11020840 := by
    unfold C
    simp [show (7558272 * k + 3673613) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 11020840) = 11337408 * k + 5510420 := by
    unfold C
    simp [show (22674816 * k + 11020840) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5510420) = 5668704 * k + 2755210 := by
    unfold C
    simp [show (11337408 * k + 5510420) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2755210) = 2834352 * k + 1377605 := by
    unfold C
    simp [show (5668704 * k + 2755210) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1377605) = 8503056 * k + 4132816 := by
    unfold C
    simp [show (2834352 * k + 1377605) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4132816) = 4251528 * k + 2066408 := by
    unfold C
    simp [show (8503056 * k + 4132816) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2066408) = 2125764 * k + 1033204 := by
    unfold C
    simp [show (4251528 * k + 2066408) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1033204) = 1062882 * k + 516602 := by
    unfold C
    simp [show (2125764 * k + 1033204) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 516602) = 531441 * k + 258301 := by
    unfold C
    simp [show (1062882 * k + 516602) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 509647) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 509647)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard065
