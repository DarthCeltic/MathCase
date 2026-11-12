import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard080

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_616027 : ∀ k : Nat,
    iterate (1048576 * k + 616027) 32 = 531441 * k + 312217 ∧
      531441 * k + 312217 < 1048576 * k + 616027 := by
  intro k
  have h1 : C (1048576 * k + 616027) = 3145728 * k + 1848082 := by
    unfold C
    simp [show (1048576 * k + 616027) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1848082) = 1572864 * k + 924041 := by
    unfold C
    simp [show (3145728 * k + 1848082) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 924041) = 4718592 * k + 2772124 := by
    unfold C
    simp [show (1572864 * k + 924041) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2772124) = 2359296 * k + 1386062 := by
    unfold C
    simp [show (4718592 * k + 2772124) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1386062) = 1179648 * k + 693031 := by
    unfold C
    simp [show (2359296 * k + 1386062) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 693031) = 3538944 * k + 2079094 := by
    unfold C
    simp [show (1179648 * k + 693031) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2079094) = 1769472 * k + 1039547 := by
    unfold C
    simp [show (3538944 * k + 2079094) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1039547) = 5308416 * k + 3118642 := by
    unfold C
    simp [show (1769472 * k + 1039547) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3118642) = 2654208 * k + 1559321 := by
    unfold C
    simp [show (5308416 * k + 3118642) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1559321) = 7962624 * k + 4677964 := by
    unfold C
    simp [show (2654208 * k + 1559321) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4677964) = 3981312 * k + 2338982 := by
    unfold C
    simp [show (7962624 * k + 4677964) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2338982) = 1990656 * k + 1169491 := by
    unfold C
    simp [show (3981312 * k + 2338982) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1169491) = 5971968 * k + 3508474 := by
    unfold C
    simp [show (1990656 * k + 1169491) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3508474) = 2985984 * k + 1754237 := by
    unfold C
    simp [show (5971968 * k + 3508474) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1754237) = 8957952 * k + 5262712 := by
    unfold C
    simp [show (2985984 * k + 1754237) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5262712) = 4478976 * k + 2631356 := by
    unfold C
    simp [show (8957952 * k + 5262712) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2631356) = 2239488 * k + 1315678 := by
    unfold C
    simp [show (4478976 * k + 2631356) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1315678) = 1119744 * k + 657839 := by
    unfold C
    simp [show (2239488 * k + 1315678) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 657839) = 3359232 * k + 1973518 := by
    unfold C
    simp [show (1119744 * k + 657839) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1973518) = 1679616 * k + 986759 := by
    unfold C
    simp [show (3359232 * k + 1973518) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 986759) = 5038848 * k + 2960278 := by
    unfold C
    simp [show (1679616 * k + 986759) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2960278) = 2519424 * k + 1480139 := by
    unfold C
    simp [show (5038848 * k + 2960278) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1480139) = 7558272 * k + 4440418 := by
    unfold C
    simp [show (2519424 * k + 1480139) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4440418) = 3779136 * k + 2220209 := by
    unfold C
    simp [show (7558272 * k + 4440418) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2220209) = 11337408 * k + 6660628 := by
    unfold C
    simp [show (3779136 * k + 2220209) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6660628) = 5668704 * k + 3330314 := by
    unfold C
    simp [show (11337408 * k + 6660628) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3330314) = 2834352 * k + 1665157 := by
    unfold C
    simp [show (5668704 * k + 3330314) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1665157) = 8503056 * k + 4995472 := by
    unfold C
    simp [show (2834352 * k + 1665157) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4995472) = 4251528 * k + 2497736 := by
    unfold C
    simp [show (8503056 * k + 4995472) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2497736) = 2125764 * k + 1248868 := by
    unfold C
    simp [show (4251528 * k + 2497736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1248868) = 1062882 * k + 624434 := by
    unfold C
    simp [show (2125764 * k + 1248868) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 624434) = 531441 * k + 312217 := by
    unfold C
    simp [show (1062882 * k + 624434) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 616027) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 616027)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_616095 : ∀ k : Nat,
    iterate (1048576 * k + 616095) 32 = 531441 * k + 312251 ∧
      531441 * k + 312251 < 1048576 * k + 616095 := by
  intro k
  have h1 : C (1048576 * k + 616095) = 3145728 * k + 1848286 := by
    unfold C
    simp [show (1048576 * k + 616095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1848286) = 1572864 * k + 924143 := by
    unfold C
    simp [show (3145728 * k + 1848286) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 924143) = 4718592 * k + 2772430 := by
    unfold C
    simp [show (1572864 * k + 924143) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2772430) = 2359296 * k + 1386215 := by
    unfold C
    simp [show (4718592 * k + 2772430) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1386215) = 7077888 * k + 4158646 := by
    unfold C
    simp [show (2359296 * k + 1386215) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4158646) = 3538944 * k + 2079323 := by
    unfold C
    simp [show (7077888 * k + 4158646) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2079323) = 10616832 * k + 6237970 := by
    unfold C
    simp [show (3538944 * k + 2079323) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6237970) = 5308416 * k + 3118985 := by
    unfold C
    simp [show (10616832 * k + 6237970) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3118985) = 15925248 * k + 9356956 := by
    unfold C
    simp [show (5308416 * k + 3118985) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9356956) = 7962624 * k + 4678478 := by
    unfold C
    simp [show (15925248 * k + 9356956) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4678478) = 3981312 * k + 2339239 := by
    unfold C
    simp [show (7962624 * k + 4678478) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2339239) = 11943936 * k + 7017718 := by
    unfold C
    simp [show (3981312 * k + 2339239) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7017718) = 5971968 * k + 3508859 := by
    unfold C
    simp [show (11943936 * k + 7017718) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3508859) = 17915904 * k + 10526578 := by
    unfold C
    simp [show (5971968 * k + 3508859) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10526578) = 8957952 * k + 5263289 := by
    unfold C
    simp [show (17915904 * k + 10526578) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5263289) = 26873856 * k + 15789868 := by
    unfold C
    simp [show (8957952 * k + 5263289) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 15789868) = 13436928 * k + 7894934 := by
    unfold C
    simp [show (26873856 * k + 15789868) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7894934) = 6718464 * k + 3947467 := by
    unfold C
    simp [show (13436928 * k + 7894934) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3947467) = 20155392 * k + 11842402 := by
    unfold C
    simp [show (6718464 * k + 3947467) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 11842402) = 10077696 * k + 5921201 := by
    unfold C
    simp [show (20155392 * k + 11842402) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5921201) = 30233088 * k + 17763604 := by
    unfold C
    simp [show (10077696 * k + 5921201) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 17763604) = 15116544 * k + 8881802 := by
    unfold C
    simp [show (30233088 * k + 17763604) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8881802) = 7558272 * k + 4440901 := by
    unfold C
    simp [show (15116544 * k + 8881802) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4440901) = 22674816 * k + 13322704 := by
    unfold C
    simp [show (7558272 * k + 4440901) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 13322704) = 11337408 * k + 6661352 := by
    unfold C
    simp [show (22674816 * k + 13322704) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6661352) = 5668704 * k + 3330676 := by
    unfold C
    simp [show (11337408 * k + 6661352) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3330676) = 2834352 * k + 1665338 := by
    unfold C
    simp [show (5668704 * k + 3330676) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1665338) = 1417176 * k + 832669 := by
    unfold C
    simp [show (2834352 * k + 1665338) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 832669) = 4251528 * k + 2498008 := by
    unfold C
    simp [show (1417176 * k + 832669) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2498008) = 2125764 * k + 1249004 := by
    unfold C
    simp [show (4251528 * k + 2498008) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1249004) = 1062882 * k + 624502 := by
    unfold C
    simp [show (2125764 * k + 1249004) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 624502) = 531441 * k + 312251 := by
    unfold C
    simp [show (1062882 * k + 624502) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 616095) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 616095)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_616911 : ∀ k : Nat,
    iterate (1048576 * k + 616911) 32 = 531441 * k + 312665 ∧
      531441 * k + 312665 < 1048576 * k + 616911 := by
  intro k
  have h1 : C (1048576 * k + 616911) = 3145728 * k + 1850734 := by
    unfold C
    simp [show (1048576 * k + 616911) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1850734) = 1572864 * k + 925367 := by
    unfold C
    simp [show (3145728 * k + 1850734) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 925367) = 4718592 * k + 2776102 := by
    unfold C
    simp [show (1572864 * k + 925367) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2776102) = 2359296 * k + 1388051 := by
    unfold C
    simp [show (4718592 * k + 2776102) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1388051) = 7077888 * k + 4164154 := by
    unfold C
    simp [show (2359296 * k + 1388051) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4164154) = 3538944 * k + 2082077 := by
    unfold C
    simp [show (7077888 * k + 4164154) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2082077) = 10616832 * k + 6246232 := by
    unfold C
    simp [show (3538944 * k + 2082077) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6246232) = 5308416 * k + 3123116 := by
    unfold C
    simp [show (10616832 * k + 6246232) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3123116) = 2654208 * k + 1561558 := by
    unfold C
    simp [show (5308416 * k + 3123116) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1561558) = 1327104 * k + 780779 := by
    unfold C
    simp [show (2654208 * k + 1561558) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 780779) = 3981312 * k + 2342338 := by
    unfold C
    simp [show (1327104 * k + 780779) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2342338) = 1990656 * k + 1171169 := by
    unfold C
    simp [show (3981312 * k + 2342338) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1171169) = 5971968 * k + 3513508 := by
    unfold C
    simp [show (1990656 * k + 1171169) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3513508) = 2985984 * k + 1756754 := by
    unfold C
    simp [show (5971968 * k + 3513508) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1756754) = 1492992 * k + 878377 := by
    unfold C
    simp [show (2985984 * k + 1756754) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 878377) = 4478976 * k + 2635132 := by
    unfold C
    simp [show (1492992 * k + 878377) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2635132) = 2239488 * k + 1317566 := by
    unfold C
    simp [show (4478976 * k + 2635132) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1317566) = 1119744 * k + 658783 := by
    unfold C
    simp [show (2239488 * k + 1317566) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 658783) = 3359232 * k + 1976350 := by
    unfold C
    simp [show (1119744 * k + 658783) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1976350) = 1679616 * k + 988175 := by
    unfold C
    simp [show (3359232 * k + 1976350) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 988175) = 5038848 * k + 2964526 := by
    unfold C
    simp [show (1679616 * k + 988175) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2964526) = 2519424 * k + 1482263 := by
    unfold C
    simp [show (5038848 * k + 2964526) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1482263) = 7558272 * k + 4446790 := by
    unfold C
    simp [show (2519424 * k + 1482263) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4446790) = 3779136 * k + 2223395 := by
    unfold C
    simp [show (7558272 * k + 4446790) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2223395) = 11337408 * k + 6670186 := by
    unfold C
    simp [show (3779136 * k + 2223395) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6670186) = 5668704 * k + 3335093 := by
    unfold C
    simp [show (11337408 * k + 6670186) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3335093) = 17006112 * k + 10005280 := by
    unfold C
    simp [show (5668704 * k + 3335093) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 10005280) = 8503056 * k + 5002640 := by
    unfold C
    simp [show (17006112 * k + 10005280) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5002640) = 4251528 * k + 2501320 := by
    unfold C
    simp [show (8503056 * k + 5002640) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2501320) = 2125764 * k + 1250660 := by
    unfold C
    simp [show (4251528 * k + 2501320) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1250660) = 1062882 * k + 625330 := by
    unfold C
    simp [show (2125764 * k + 1250660) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 625330) = 531441 * k + 312665 := by
    unfold C
    simp [show (1062882 * k + 625330) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 616911) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 616911)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_617071 : ∀ k : Nat,
    iterate (1048576 * k + 617071) 32 = 531441 * k + 312746 ∧
      531441 * k + 312746 < 1048576 * k + 617071 := by
  intro k
  have h1 : C (1048576 * k + 617071) = 3145728 * k + 1851214 := by
    unfold C
    simp [show (1048576 * k + 617071) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1851214) = 1572864 * k + 925607 := by
    unfold C
    simp [show (3145728 * k + 1851214) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 925607) = 4718592 * k + 2776822 := by
    unfold C
    simp [show (1572864 * k + 925607) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2776822) = 2359296 * k + 1388411 := by
    unfold C
    simp [show (4718592 * k + 2776822) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1388411) = 7077888 * k + 4165234 := by
    unfold C
    simp [show (2359296 * k + 1388411) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4165234) = 3538944 * k + 2082617 := by
    unfold C
    simp [show (7077888 * k + 4165234) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2082617) = 10616832 * k + 6247852 := by
    unfold C
    simp [show (3538944 * k + 2082617) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6247852) = 5308416 * k + 3123926 := by
    unfold C
    simp [show (10616832 * k + 6247852) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3123926) = 2654208 * k + 1561963 := by
    unfold C
    simp [show (5308416 * k + 3123926) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1561963) = 7962624 * k + 4685890 := by
    unfold C
    simp [show (2654208 * k + 1561963) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4685890) = 3981312 * k + 2342945 := by
    unfold C
    simp [show (7962624 * k + 4685890) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2342945) = 11943936 * k + 7028836 := by
    unfold C
    simp [show (3981312 * k + 2342945) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7028836) = 5971968 * k + 3514418 := by
    unfold C
    simp [show (11943936 * k + 7028836) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3514418) = 2985984 * k + 1757209 := by
    unfold C
    simp [show (5971968 * k + 3514418) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1757209) = 8957952 * k + 5271628 := by
    unfold C
    simp [show (2985984 * k + 1757209) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5271628) = 4478976 * k + 2635814 := by
    unfold C
    simp [show (8957952 * k + 5271628) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2635814) = 2239488 * k + 1317907 := by
    unfold C
    simp [show (4478976 * k + 2635814) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1317907) = 6718464 * k + 3953722 := by
    unfold C
    simp [show (2239488 * k + 1317907) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3953722) = 3359232 * k + 1976861 := by
    unfold C
    simp [show (6718464 * k + 3953722) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1976861) = 10077696 * k + 5930584 := by
    unfold C
    simp [show (3359232 * k + 1976861) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5930584) = 5038848 * k + 2965292 := by
    unfold C
    simp [show (10077696 * k + 5930584) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2965292) = 2519424 * k + 1482646 := by
    unfold C
    simp [show (5038848 * k + 2965292) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1482646) = 1259712 * k + 741323 := by
    unfold C
    simp [show (2519424 * k + 1482646) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 741323) = 3779136 * k + 2223970 := by
    unfold C
    simp [show (1259712 * k + 741323) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2223970) = 1889568 * k + 1111985 := by
    unfold C
    simp [show (3779136 * k + 2223970) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1111985) = 5668704 * k + 3335956 := by
    unfold C
    simp [show (1889568 * k + 1111985) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3335956) = 2834352 * k + 1667978 := by
    unfold C
    simp [show (5668704 * k + 3335956) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1667978) = 1417176 * k + 833989 := by
    unfold C
    simp [show (2834352 * k + 1667978) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 833989) = 4251528 * k + 2501968 := by
    unfold C
    simp [show (1417176 * k + 833989) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2501968) = 2125764 * k + 1250984 := by
    unfold C
    simp [show (4251528 * k + 2501968) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1250984) = 1062882 * k + 625492 := by
    unfold C
    simp [show (2125764 * k + 1250984) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 625492) = 531441 * k + 312746 := by
    unfold C
    simp [show (1062882 * k + 625492) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 617071) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 617071)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_617243 : ∀ k : Nat,
    iterate (1048576 * k + 617243) 32 = 531441 * k + 312833 ∧
      531441 * k + 312833 < 1048576 * k + 617243 := by
  intro k
  have h1 : C (1048576 * k + 617243) = 3145728 * k + 1851730 := by
    unfold C
    simp [show (1048576 * k + 617243) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1851730) = 1572864 * k + 925865 := by
    unfold C
    simp [show (3145728 * k + 1851730) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 925865) = 4718592 * k + 2777596 := by
    unfold C
    simp [show (1572864 * k + 925865) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2777596) = 2359296 * k + 1388798 := by
    unfold C
    simp [show (4718592 * k + 2777596) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1388798) = 1179648 * k + 694399 := by
    unfold C
    simp [show (2359296 * k + 1388798) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 694399) = 3538944 * k + 2083198 := by
    unfold C
    simp [show (1179648 * k + 694399) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2083198) = 1769472 * k + 1041599 := by
    unfold C
    simp [show (3538944 * k + 2083198) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1041599) = 5308416 * k + 3124798 := by
    unfold C
    simp [show (1769472 * k + 1041599) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3124798) = 2654208 * k + 1562399 := by
    unfold C
    simp [show (5308416 * k + 3124798) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1562399) = 7962624 * k + 4687198 := by
    unfold C
    simp [show (2654208 * k + 1562399) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4687198) = 3981312 * k + 2343599 := by
    unfold C
    simp [show (7962624 * k + 4687198) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2343599) = 11943936 * k + 7030798 := by
    unfold C
    simp [show (3981312 * k + 2343599) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7030798) = 5971968 * k + 3515399 := by
    unfold C
    simp [show (11943936 * k + 7030798) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3515399) = 17915904 * k + 10546198 := by
    unfold C
    simp [show (5971968 * k + 3515399) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10546198) = 8957952 * k + 5273099 := by
    unfold C
    simp [show (17915904 * k + 10546198) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5273099) = 26873856 * k + 15819298 := by
    unfold C
    simp [show (8957952 * k + 5273099) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 15819298) = 13436928 * k + 7909649 := by
    unfold C
    simp [show (26873856 * k + 15819298) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7909649) = 40310784 * k + 23728948 := by
    unfold C
    simp [show (13436928 * k + 7909649) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 23728948) = 20155392 * k + 11864474 := by
    unfold C
    simp [show (40310784 * k + 23728948) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 11864474) = 10077696 * k + 5932237 := by
    unfold C
    simp [show (20155392 * k + 11864474) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5932237) = 30233088 * k + 17796712 := by
    unfold C
    simp [show (10077696 * k + 5932237) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 17796712) = 15116544 * k + 8898356 := by
    unfold C
    simp [show (30233088 * k + 17796712) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8898356) = 7558272 * k + 4449178 := by
    unfold C
    simp [show (15116544 * k + 8898356) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4449178) = 3779136 * k + 2224589 := by
    unfold C
    simp [show (7558272 * k + 4449178) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2224589) = 11337408 * k + 6673768 := by
    unfold C
    simp [show (3779136 * k + 2224589) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6673768) = 5668704 * k + 3336884 := by
    unfold C
    simp [show (11337408 * k + 6673768) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3336884) = 2834352 * k + 1668442 := by
    unfold C
    simp [show (5668704 * k + 3336884) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1668442) = 1417176 * k + 834221 := by
    unfold C
    simp [show (2834352 * k + 1668442) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 834221) = 4251528 * k + 2502664 := by
    unfold C
    simp [show (1417176 * k + 834221) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2502664) = 2125764 * k + 1251332 := by
    unfold C
    simp [show (4251528 * k + 2502664) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1251332) = 1062882 * k + 625666 := by
    unfold C
    simp [show (2125764 * k + 1251332) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 625666) = 531441 * k + 312833 := by
    unfold C
    simp [show (1062882 * k + 625666) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 617243) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 617243)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_617935 : ∀ k : Nat,
    iterate (1048576 * k + 617935) 32 = 531441 * k + 313184 ∧
      531441 * k + 313184 < 1048576 * k + 617935 := by
  intro k
  have h1 : C (1048576 * k + 617935) = 3145728 * k + 1853806 := by
    unfold C
    simp [show (1048576 * k + 617935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1853806) = 1572864 * k + 926903 := by
    unfold C
    simp [show (3145728 * k + 1853806) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 926903) = 4718592 * k + 2780710 := by
    unfold C
    simp [show (1572864 * k + 926903) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2780710) = 2359296 * k + 1390355 := by
    unfold C
    simp [show (4718592 * k + 2780710) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1390355) = 7077888 * k + 4171066 := by
    unfold C
    simp [show (2359296 * k + 1390355) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4171066) = 3538944 * k + 2085533 := by
    unfold C
    simp [show (7077888 * k + 4171066) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2085533) = 10616832 * k + 6256600 := by
    unfold C
    simp [show (3538944 * k + 2085533) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6256600) = 5308416 * k + 3128300 := by
    unfold C
    simp [show (10616832 * k + 6256600) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3128300) = 2654208 * k + 1564150 := by
    unfold C
    simp [show (5308416 * k + 3128300) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1564150) = 1327104 * k + 782075 := by
    unfold C
    simp [show (2654208 * k + 1564150) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 782075) = 3981312 * k + 2346226 := by
    unfold C
    simp [show (1327104 * k + 782075) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2346226) = 1990656 * k + 1173113 := by
    unfold C
    simp [show (3981312 * k + 2346226) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1173113) = 5971968 * k + 3519340 := by
    unfold C
    simp [show (1990656 * k + 1173113) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3519340) = 2985984 * k + 1759670 := by
    unfold C
    simp [show (5971968 * k + 3519340) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1759670) = 1492992 * k + 879835 := by
    unfold C
    simp [show (2985984 * k + 1759670) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 879835) = 4478976 * k + 2639506 := by
    unfold C
    simp [show (1492992 * k + 879835) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2639506) = 2239488 * k + 1319753 := by
    unfold C
    simp [show (4478976 * k + 2639506) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1319753) = 6718464 * k + 3959260 := by
    unfold C
    simp [show (2239488 * k + 1319753) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3959260) = 3359232 * k + 1979630 := by
    unfold C
    simp [show (6718464 * k + 3959260) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1979630) = 1679616 * k + 989815 := by
    unfold C
    simp [show (3359232 * k + 1979630) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 989815) = 5038848 * k + 2969446 := by
    unfold C
    simp [show (1679616 * k + 989815) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2969446) = 2519424 * k + 1484723 := by
    unfold C
    simp [show (5038848 * k + 2969446) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1484723) = 7558272 * k + 4454170 := by
    unfold C
    simp [show (2519424 * k + 1484723) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4454170) = 3779136 * k + 2227085 := by
    unfold C
    simp [show (7558272 * k + 4454170) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2227085) = 11337408 * k + 6681256 := by
    unfold C
    simp [show (3779136 * k + 2227085) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6681256) = 5668704 * k + 3340628 := by
    unfold C
    simp [show (11337408 * k + 6681256) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3340628) = 2834352 * k + 1670314 := by
    unfold C
    simp [show (5668704 * k + 3340628) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1670314) = 1417176 * k + 835157 := by
    unfold C
    simp [show (2834352 * k + 1670314) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 835157) = 4251528 * k + 2505472 := by
    unfold C
    simp [show (1417176 * k + 835157) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2505472) = 2125764 * k + 1252736 := by
    unfold C
    simp [show (4251528 * k + 2505472) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1252736) = 1062882 * k + 626368 := by
    unfold C
    simp [show (2125764 * k + 1252736) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 626368) = 531441 * k + 313184 := by
    unfold C
    simp [show (1062882 * k + 626368) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 617935) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 617935)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_618095 : ∀ k : Nat,
    iterate (1048576 * k + 618095) 32 = 531441 * k + 313265 ∧
      531441 * k + 313265 < 1048576 * k + 618095 := by
  intro k
  have h1 : C (1048576 * k + 618095) = 3145728 * k + 1854286 := by
    unfold C
    simp [show (1048576 * k + 618095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1854286) = 1572864 * k + 927143 := by
    unfold C
    simp [show (3145728 * k + 1854286) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 927143) = 4718592 * k + 2781430 := by
    unfold C
    simp [show (1572864 * k + 927143) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2781430) = 2359296 * k + 1390715 := by
    unfold C
    simp [show (4718592 * k + 2781430) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1390715) = 7077888 * k + 4172146 := by
    unfold C
    simp [show (2359296 * k + 1390715) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4172146) = 3538944 * k + 2086073 := by
    unfold C
    simp [show (7077888 * k + 4172146) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2086073) = 10616832 * k + 6258220 := by
    unfold C
    simp [show (3538944 * k + 2086073) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6258220) = 5308416 * k + 3129110 := by
    unfold C
    simp [show (10616832 * k + 6258220) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3129110) = 2654208 * k + 1564555 := by
    unfold C
    simp [show (5308416 * k + 3129110) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1564555) = 7962624 * k + 4693666 := by
    unfold C
    simp [show (2654208 * k + 1564555) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4693666) = 3981312 * k + 2346833 := by
    unfold C
    simp [show (7962624 * k + 4693666) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2346833) = 11943936 * k + 7040500 := by
    unfold C
    simp [show (3981312 * k + 2346833) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7040500) = 5971968 * k + 3520250 := by
    unfold C
    simp [show (11943936 * k + 7040500) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3520250) = 2985984 * k + 1760125 := by
    unfold C
    simp [show (5971968 * k + 3520250) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1760125) = 8957952 * k + 5280376 := by
    unfold C
    simp [show (2985984 * k + 1760125) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5280376) = 4478976 * k + 2640188 := by
    unfold C
    simp [show (8957952 * k + 5280376) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2640188) = 2239488 * k + 1320094 := by
    unfold C
    simp [show (4478976 * k + 2640188) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1320094) = 1119744 * k + 660047 := by
    unfold C
    simp [show (2239488 * k + 1320094) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 660047) = 3359232 * k + 1980142 := by
    unfold C
    simp [show (1119744 * k + 660047) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1980142) = 1679616 * k + 990071 := by
    unfold C
    simp [show (3359232 * k + 1980142) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 990071) = 5038848 * k + 2970214 := by
    unfold C
    simp [show (1679616 * k + 990071) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2970214) = 2519424 * k + 1485107 := by
    unfold C
    simp [show (5038848 * k + 2970214) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1485107) = 7558272 * k + 4455322 := by
    unfold C
    simp [show (2519424 * k + 1485107) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4455322) = 3779136 * k + 2227661 := by
    unfold C
    simp [show (7558272 * k + 4455322) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2227661) = 11337408 * k + 6682984 := by
    unfold C
    simp [show (3779136 * k + 2227661) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6682984) = 5668704 * k + 3341492 := by
    unfold C
    simp [show (11337408 * k + 6682984) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3341492) = 2834352 * k + 1670746 := by
    unfold C
    simp [show (5668704 * k + 3341492) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1670746) = 1417176 * k + 835373 := by
    unfold C
    simp [show (2834352 * k + 1670746) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 835373) = 4251528 * k + 2506120 := by
    unfold C
    simp [show (1417176 * k + 835373) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2506120) = 2125764 * k + 1253060 := by
    unfold C
    simp [show (4251528 * k + 2506120) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1253060) = 1062882 * k + 626530 := by
    unfold C
    simp [show (2125764 * k + 1253060) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 626530) = 531441 * k + 313265 := by
    unfold C
    simp [show (1062882 * k + 626530) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 618095) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 618095)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_618431 : ∀ k : Nat,
    iterate (1048576 * k + 618431) 32 = 531441 * k + 313435 ∧
      531441 * k + 313435 < 1048576 * k + 618431 := by
  intro k
  have h1 : C (1048576 * k + 618431) = 3145728 * k + 1855294 := by
    unfold C
    simp [show (1048576 * k + 618431) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1855294) = 1572864 * k + 927647 := by
    unfold C
    simp [show (3145728 * k + 1855294) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 927647) = 4718592 * k + 2782942 := by
    unfold C
    simp [show (1572864 * k + 927647) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2782942) = 2359296 * k + 1391471 := by
    unfold C
    simp [show (4718592 * k + 2782942) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1391471) = 7077888 * k + 4174414 := by
    unfold C
    simp [show (2359296 * k + 1391471) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4174414) = 3538944 * k + 2087207 := by
    unfold C
    simp [show (7077888 * k + 4174414) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2087207) = 10616832 * k + 6261622 := by
    unfold C
    simp [show (3538944 * k + 2087207) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6261622) = 5308416 * k + 3130811 := by
    unfold C
    simp [show (10616832 * k + 6261622) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3130811) = 15925248 * k + 9392434 := by
    unfold C
    simp [show (5308416 * k + 3130811) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9392434) = 7962624 * k + 4696217 := by
    unfold C
    simp [show (15925248 * k + 9392434) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4696217) = 23887872 * k + 14088652 := by
    unfold C
    simp [show (7962624 * k + 4696217) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 14088652) = 11943936 * k + 7044326 := by
    unfold C
    simp [show (23887872 * k + 14088652) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7044326) = 5971968 * k + 3522163 := by
    unfold C
    simp [show (11943936 * k + 7044326) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3522163) = 17915904 * k + 10566490 := by
    unfold C
    simp [show (5971968 * k + 3522163) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10566490) = 8957952 * k + 5283245 := by
    unfold C
    simp [show (17915904 * k + 10566490) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5283245) = 26873856 * k + 15849736 := by
    unfold C
    simp [show (8957952 * k + 5283245) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 15849736) = 13436928 * k + 7924868 := by
    unfold C
    simp [show (26873856 * k + 15849736) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7924868) = 6718464 * k + 3962434 := by
    unfold C
    simp [show (13436928 * k + 7924868) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3962434) = 3359232 * k + 1981217 := by
    unfold C
    simp [show (6718464 * k + 3962434) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1981217) = 10077696 * k + 5943652 := by
    unfold C
    simp [show (3359232 * k + 1981217) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5943652) = 5038848 * k + 2971826 := by
    unfold C
    simp [show (10077696 * k + 5943652) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2971826) = 2519424 * k + 1485913 := by
    unfold C
    simp [show (5038848 * k + 2971826) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1485913) = 7558272 * k + 4457740 := by
    unfold C
    simp [show (2519424 * k + 1485913) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4457740) = 3779136 * k + 2228870 := by
    unfold C
    simp [show (7558272 * k + 4457740) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2228870) = 1889568 * k + 1114435 := by
    unfold C
    simp [show (3779136 * k + 2228870) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1114435) = 5668704 * k + 3343306 := by
    unfold C
    simp [show (1889568 * k + 1114435) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3343306) = 2834352 * k + 1671653 := by
    unfold C
    simp [show (5668704 * k + 3343306) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1671653) = 8503056 * k + 5014960 := by
    unfold C
    simp [show (2834352 * k + 1671653) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5014960) = 4251528 * k + 2507480 := by
    unfold C
    simp [show (8503056 * k + 5014960) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2507480) = 2125764 * k + 1253740 := by
    unfold C
    simp [show (4251528 * k + 2507480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1253740) = 1062882 * k + 626870 := by
    unfold C
    simp [show (2125764 * k + 1253740) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 626870) = 531441 * k + 313435 := by
    unfold C
    simp [show (1062882 * k + 626870) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 618431) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 618431)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_618687 : ∀ k : Nat,
    iterate (1048576 * k + 618687) 32 = 531441 * k + 313565 ∧
      531441 * k + 313565 < 1048576 * k + 618687 := by
  intro k
  have h1 : C (1048576 * k + 618687) = 3145728 * k + 1856062 := by
    unfold C
    simp [show (1048576 * k + 618687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1856062) = 1572864 * k + 928031 := by
    unfold C
    simp [show (3145728 * k + 1856062) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 928031) = 4718592 * k + 2784094 := by
    unfold C
    simp [show (1572864 * k + 928031) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2784094) = 2359296 * k + 1392047 := by
    unfold C
    simp [show (4718592 * k + 2784094) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1392047) = 7077888 * k + 4176142 := by
    unfold C
    simp [show (2359296 * k + 1392047) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4176142) = 3538944 * k + 2088071 := by
    unfold C
    simp [show (7077888 * k + 4176142) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2088071) = 10616832 * k + 6264214 := by
    unfold C
    simp [show (3538944 * k + 2088071) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6264214) = 5308416 * k + 3132107 := by
    unfold C
    simp [show (10616832 * k + 6264214) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3132107) = 15925248 * k + 9396322 := by
    unfold C
    simp [show (5308416 * k + 3132107) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9396322) = 7962624 * k + 4698161 := by
    unfold C
    simp [show (15925248 * k + 9396322) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4698161) = 23887872 * k + 14094484 := by
    unfold C
    simp [show (7962624 * k + 4698161) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 14094484) = 11943936 * k + 7047242 := by
    unfold C
    simp [show (23887872 * k + 14094484) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7047242) = 5971968 * k + 3523621 := by
    unfold C
    simp [show (11943936 * k + 7047242) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3523621) = 17915904 * k + 10570864 := by
    unfold C
    simp [show (5971968 * k + 3523621) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10570864) = 8957952 * k + 5285432 := by
    unfold C
    simp [show (17915904 * k + 10570864) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5285432) = 4478976 * k + 2642716 := by
    unfold C
    simp [show (8957952 * k + 5285432) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2642716) = 2239488 * k + 1321358 := by
    unfold C
    simp [show (4478976 * k + 2642716) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1321358) = 1119744 * k + 660679 := by
    unfold C
    simp [show (2239488 * k + 1321358) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 660679) = 3359232 * k + 1982038 := by
    unfold C
    simp [show (1119744 * k + 660679) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1982038) = 1679616 * k + 991019 := by
    unfold C
    simp [show (3359232 * k + 1982038) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 991019) = 5038848 * k + 2973058 := by
    unfold C
    simp [show (1679616 * k + 991019) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2973058) = 2519424 * k + 1486529 := by
    unfold C
    simp [show (5038848 * k + 2973058) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1486529) = 7558272 * k + 4459588 := by
    unfold C
    simp [show (2519424 * k + 1486529) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4459588) = 3779136 * k + 2229794 := by
    unfold C
    simp [show (7558272 * k + 4459588) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2229794) = 1889568 * k + 1114897 := by
    unfold C
    simp [show (3779136 * k + 2229794) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1114897) = 5668704 * k + 3344692 := by
    unfold C
    simp [show (1889568 * k + 1114897) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3344692) = 2834352 * k + 1672346 := by
    unfold C
    simp [show (5668704 * k + 3344692) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1672346) = 1417176 * k + 836173 := by
    unfold C
    simp [show (2834352 * k + 1672346) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 836173) = 4251528 * k + 2508520 := by
    unfold C
    simp [show (1417176 * k + 836173) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2508520) = 2125764 * k + 1254260 := by
    unfold C
    simp [show (4251528 * k + 2508520) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1254260) = 1062882 * k + 627130 := by
    unfold C
    simp [show (2125764 * k + 1254260) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 627130) = 531441 * k + 313565 := by
    unfold C
    simp [show (1062882 * k + 627130) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 618687) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 618687)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_618983 : ∀ k : Nat,
    iterate (1048576 * k + 618983) 32 = 531441 * k + 313715 ∧
      531441 * k + 313715 < 1048576 * k + 618983 := by
  intro k
  have h1 : C (1048576 * k + 618983) = 3145728 * k + 1856950 := by
    unfold C
    simp [show (1048576 * k + 618983) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1856950) = 1572864 * k + 928475 := by
    unfold C
    simp [show (3145728 * k + 1856950) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 928475) = 4718592 * k + 2785426 := by
    unfold C
    simp [show (1572864 * k + 928475) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2785426) = 2359296 * k + 1392713 := by
    unfold C
    simp [show (4718592 * k + 2785426) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1392713) = 7077888 * k + 4178140 := by
    unfold C
    simp [show (2359296 * k + 1392713) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4178140) = 3538944 * k + 2089070 := by
    unfold C
    simp [show (7077888 * k + 4178140) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2089070) = 1769472 * k + 1044535 := by
    unfold C
    simp [show (3538944 * k + 2089070) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1044535) = 5308416 * k + 3133606 := by
    unfold C
    simp [show (1769472 * k + 1044535) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3133606) = 2654208 * k + 1566803 := by
    unfold C
    simp [show (5308416 * k + 3133606) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1566803) = 7962624 * k + 4700410 := by
    unfold C
    simp [show (2654208 * k + 1566803) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4700410) = 3981312 * k + 2350205 := by
    unfold C
    simp [show (7962624 * k + 4700410) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2350205) = 11943936 * k + 7050616 := by
    unfold C
    simp [show (3981312 * k + 2350205) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7050616) = 5971968 * k + 3525308 := by
    unfold C
    simp [show (11943936 * k + 7050616) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3525308) = 2985984 * k + 1762654 := by
    unfold C
    simp [show (5971968 * k + 3525308) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1762654) = 1492992 * k + 881327 := by
    unfold C
    simp [show (2985984 * k + 1762654) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 881327) = 4478976 * k + 2643982 := by
    unfold C
    simp [show (1492992 * k + 881327) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2643982) = 2239488 * k + 1321991 := by
    unfold C
    simp [show (4478976 * k + 2643982) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1321991) = 6718464 * k + 3965974 := by
    unfold C
    simp [show (2239488 * k + 1321991) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3965974) = 3359232 * k + 1982987 := by
    unfold C
    simp [show (6718464 * k + 3965974) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1982987) = 10077696 * k + 5948962 := by
    unfold C
    simp [show (3359232 * k + 1982987) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5948962) = 5038848 * k + 2974481 := by
    unfold C
    simp [show (10077696 * k + 5948962) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2974481) = 15116544 * k + 8923444 := by
    unfold C
    simp [show (5038848 * k + 2974481) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8923444) = 7558272 * k + 4461722 := by
    unfold C
    simp [show (15116544 * k + 8923444) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4461722) = 3779136 * k + 2230861 := by
    unfold C
    simp [show (7558272 * k + 4461722) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2230861) = 11337408 * k + 6692584 := by
    unfold C
    simp [show (3779136 * k + 2230861) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6692584) = 5668704 * k + 3346292 := by
    unfold C
    simp [show (11337408 * k + 6692584) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3346292) = 2834352 * k + 1673146 := by
    unfold C
    simp [show (5668704 * k + 3346292) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1673146) = 1417176 * k + 836573 := by
    unfold C
    simp [show (2834352 * k + 1673146) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 836573) = 4251528 * k + 2509720 := by
    unfold C
    simp [show (1417176 * k + 836573) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2509720) = 2125764 * k + 1254860 := by
    unfold C
    simp [show (4251528 * k + 2509720) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1254860) = 1062882 * k + 627430 := by
    unfold C
    simp [show (2125764 * k + 1254860) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 627430) = 531441 * k + 313715 := by
    unfold C
    simp [show (1062882 * k + 627430) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 618983) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 618983)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_619167 : ∀ k : Nat,
    iterate (1048576 * k + 619167) 32 = 531441 * k + 313808 ∧
      531441 * k + 313808 < 1048576 * k + 619167 := by
  intro k
  have h1 : C (1048576 * k + 619167) = 3145728 * k + 1857502 := by
    unfold C
    simp [show (1048576 * k + 619167) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1857502) = 1572864 * k + 928751 := by
    unfold C
    simp [show (3145728 * k + 1857502) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 928751) = 4718592 * k + 2786254 := by
    unfold C
    simp [show (1572864 * k + 928751) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2786254) = 2359296 * k + 1393127 := by
    unfold C
    simp [show (4718592 * k + 2786254) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1393127) = 7077888 * k + 4179382 := by
    unfold C
    simp [show (2359296 * k + 1393127) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4179382) = 3538944 * k + 2089691 := by
    unfold C
    simp [show (7077888 * k + 4179382) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2089691) = 10616832 * k + 6269074 := by
    unfold C
    simp [show (3538944 * k + 2089691) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6269074) = 5308416 * k + 3134537 := by
    unfold C
    simp [show (10616832 * k + 6269074) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3134537) = 15925248 * k + 9403612 := by
    unfold C
    simp [show (5308416 * k + 3134537) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9403612) = 7962624 * k + 4701806 := by
    unfold C
    simp [show (15925248 * k + 9403612) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4701806) = 3981312 * k + 2350903 := by
    unfold C
    simp [show (7962624 * k + 4701806) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2350903) = 11943936 * k + 7052710 := by
    unfold C
    simp [show (3981312 * k + 2350903) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7052710) = 5971968 * k + 3526355 := by
    unfold C
    simp [show (11943936 * k + 7052710) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3526355) = 17915904 * k + 10579066 := by
    unfold C
    simp [show (5971968 * k + 3526355) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10579066) = 8957952 * k + 5289533 := by
    unfold C
    simp [show (17915904 * k + 10579066) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5289533) = 26873856 * k + 15868600 := by
    unfold C
    simp [show (8957952 * k + 5289533) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 15868600) = 13436928 * k + 7934300 := by
    unfold C
    simp [show (26873856 * k + 15868600) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7934300) = 6718464 * k + 3967150 := by
    unfold C
    simp [show (13436928 * k + 7934300) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3967150) = 3359232 * k + 1983575 := by
    unfold C
    simp [show (6718464 * k + 3967150) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1983575) = 10077696 * k + 5950726 := by
    unfold C
    simp [show (3359232 * k + 1983575) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5950726) = 5038848 * k + 2975363 := by
    unfold C
    simp [show (10077696 * k + 5950726) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2975363) = 15116544 * k + 8926090 := by
    unfold C
    simp [show (5038848 * k + 2975363) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8926090) = 7558272 * k + 4463045 := by
    unfold C
    simp [show (15116544 * k + 8926090) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4463045) = 22674816 * k + 13389136 := by
    unfold C
    simp [show (7558272 * k + 4463045) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 13389136) = 11337408 * k + 6694568 := by
    unfold C
    simp [show (22674816 * k + 13389136) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6694568) = 5668704 * k + 3347284 := by
    unfold C
    simp [show (11337408 * k + 6694568) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3347284) = 2834352 * k + 1673642 := by
    unfold C
    simp [show (5668704 * k + 3347284) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1673642) = 1417176 * k + 836821 := by
    unfold C
    simp [show (2834352 * k + 1673642) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 836821) = 4251528 * k + 2510464 := by
    unfold C
    simp [show (1417176 * k + 836821) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2510464) = 2125764 * k + 1255232 := by
    unfold C
    simp [show (4251528 * k + 2510464) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1255232) = 1062882 * k + 627616 := by
    unfold C
    simp [show (2125764 * k + 1255232) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 627616) = 531441 * k + 313808 := by
    unfold C
    simp [show (1062882 * k + 627616) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 619167) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 619167)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_620455 : ∀ k : Nat,
    iterate (1048576 * k + 620455) 32 = 531441 * k + 314461 ∧
      531441 * k + 314461 < 1048576 * k + 620455 := by
  intro k
  have h1 : C (1048576 * k + 620455) = 3145728 * k + 1861366 := by
    unfold C
    simp [show (1048576 * k + 620455) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1861366) = 1572864 * k + 930683 := by
    unfold C
    simp [show (3145728 * k + 1861366) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 930683) = 4718592 * k + 2792050 := by
    unfold C
    simp [show (1572864 * k + 930683) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2792050) = 2359296 * k + 1396025 := by
    unfold C
    simp [show (4718592 * k + 2792050) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1396025) = 7077888 * k + 4188076 := by
    unfold C
    simp [show (2359296 * k + 1396025) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4188076) = 3538944 * k + 2094038 := by
    unfold C
    simp [show (7077888 * k + 4188076) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2094038) = 1769472 * k + 1047019 := by
    unfold C
    simp [show (3538944 * k + 2094038) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1047019) = 5308416 * k + 3141058 := by
    unfold C
    simp [show (1769472 * k + 1047019) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3141058) = 2654208 * k + 1570529 := by
    unfold C
    simp [show (5308416 * k + 3141058) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1570529) = 7962624 * k + 4711588 := by
    unfold C
    simp [show (2654208 * k + 1570529) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4711588) = 3981312 * k + 2355794 := by
    unfold C
    simp [show (7962624 * k + 4711588) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2355794) = 1990656 * k + 1177897 := by
    unfold C
    simp [show (3981312 * k + 2355794) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1177897) = 5971968 * k + 3533692 := by
    unfold C
    simp [show (1990656 * k + 1177897) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3533692) = 2985984 * k + 1766846 := by
    unfold C
    simp [show (5971968 * k + 3533692) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1766846) = 1492992 * k + 883423 := by
    unfold C
    simp [show (2985984 * k + 1766846) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 883423) = 4478976 * k + 2650270 := by
    unfold C
    simp [show (1492992 * k + 883423) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2650270) = 2239488 * k + 1325135 := by
    unfold C
    simp [show (4478976 * k + 2650270) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1325135) = 6718464 * k + 3975406 := by
    unfold C
    simp [show (2239488 * k + 1325135) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3975406) = 3359232 * k + 1987703 := by
    unfold C
    simp [show (6718464 * k + 3975406) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1987703) = 10077696 * k + 5963110 := by
    unfold C
    simp [show (3359232 * k + 1987703) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5963110) = 5038848 * k + 2981555 := by
    unfold C
    simp [show (10077696 * k + 5963110) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2981555) = 15116544 * k + 8944666 := by
    unfold C
    simp [show (5038848 * k + 2981555) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8944666) = 7558272 * k + 4472333 := by
    unfold C
    simp [show (15116544 * k + 8944666) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4472333) = 22674816 * k + 13417000 := by
    unfold C
    simp [show (7558272 * k + 4472333) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 13417000) = 11337408 * k + 6708500 := by
    unfold C
    simp [show (22674816 * k + 13417000) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6708500) = 5668704 * k + 3354250 := by
    unfold C
    simp [show (11337408 * k + 6708500) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3354250) = 2834352 * k + 1677125 := by
    unfold C
    simp [show (5668704 * k + 3354250) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1677125) = 8503056 * k + 5031376 := by
    unfold C
    simp [show (2834352 * k + 1677125) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5031376) = 4251528 * k + 2515688 := by
    unfold C
    simp [show (8503056 * k + 5031376) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2515688) = 2125764 * k + 1257844 := by
    unfold C
    simp [show (4251528 * k + 2515688) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1257844) = 1062882 * k + 628922 := by
    unfold C
    simp [show (2125764 * k + 1257844) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 628922) = 531441 * k + 314461 := by
    unfold C
    simp [show (1062882 * k + 628922) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 620455) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 620455)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_620751 : ∀ k : Nat,
    iterate (1048576 * k + 620751) 32 = 531441 * k + 314611 ∧
      531441 * k + 314611 < 1048576 * k + 620751 := by
  intro k
  have h1 : C (1048576 * k + 620751) = 3145728 * k + 1862254 := by
    unfold C
    simp [show (1048576 * k + 620751) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1862254) = 1572864 * k + 931127 := by
    unfold C
    simp [show (3145728 * k + 1862254) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 931127) = 4718592 * k + 2793382 := by
    unfold C
    simp [show (1572864 * k + 931127) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2793382) = 2359296 * k + 1396691 := by
    unfold C
    simp [show (4718592 * k + 2793382) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1396691) = 7077888 * k + 4190074 := by
    unfold C
    simp [show (2359296 * k + 1396691) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4190074) = 3538944 * k + 2095037 := by
    unfold C
    simp [show (7077888 * k + 4190074) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2095037) = 10616832 * k + 6285112 := by
    unfold C
    simp [show (3538944 * k + 2095037) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6285112) = 5308416 * k + 3142556 := by
    unfold C
    simp [show (10616832 * k + 6285112) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3142556) = 2654208 * k + 1571278 := by
    unfold C
    simp [show (5308416 * k + 3142556) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1571278) = 1327104 * k + 785639 := by
    unfold C
    simp [show (2654208 * k + 1571278) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 785639) = 3981312 * k + 2356918 := by
    unfold C
    simp [show (1327104 * k + 785639) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2356918) = 1990656 * k + 1178459 := by
    unfold C
    simp [show (3981312 * k + 2356918) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1178459) = 5971968 * k + 3535378 := by
    unfold C
    simp [show (1990656 * k + 1178459) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3535378) = 2985984 * k + 1767689 := by
    unfold C
    simp [show (5971968 * k + 3535378) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1767689) = 8957952 * k + 5303068 := by
    unfold C
    simp [show (2985984 * k + 1767689) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5303068) = 4478976 * k + 2651534 := by
    unfold C
    simp [show (8957952 * k + 5303068) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2651534) = 2239488 * k + 1325767 := by
    unfold C
    simp [show (4478976 * k + 2651534) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1325767) = 6718464 * k + 3977302 := by
    unfold C
    simp [show (2239488 * k + 1325767) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3977302) = 3359232 * k + 1988651 := by
    unfold C
    simp [show (6718464 * k + 3977302) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1988651) = 10077696 * k + 5965954 := by
    unfold C
    simp [show (3359232 * k + 1988651) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5965954) = 5038848 * k + 2982977 := by
    unfold C
    simp [show (10077696 * k + 5965954) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2982977) = 15116544 * k + 8948932 := by
    unfold C
    simp [show (5038848 * k + 2982977) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8948932) = 7558272 * k + 4474466 := by
    unfold C
    simp [show (15116544 * k + 8948932) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4474466) = 3779136 * k + 2237233 := by
    unfold C
    simp [show (7558272 * k + 4474466) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2237233) = 11337408 * k + 6711700 := by
    unfold C
    simp [show (3779136 * k + 2237233) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6711700) = 5668704 * k + 3355850 := by
    unfold C
    simp [show (11337408 * k + 6711700) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3355850) = 2834352 * k + 1677925 := by
    unfold C
    simp [show (5668704 * k + 3355850) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1677925) = 8503056 * k + 5033776 := by
    unfold C
    simp [show (2834352 * k + 1677925) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5033776) = 4251528 * k + 2516888 := by
    unfold C
    simp [show (8503056 * k + 5033776) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2516888) = 2125764 * k + 1258444 := by
    unfold C
    simp [show (4251528 * k + 2516888) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1258444) = 1062882 * k + 629222 := by
    unfold C
    simp [show (2125764 * k + 1258444) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 629222) = 531441 * k + 314611 := by
    unfold C
    simp [show (1062882 * k + 629222) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 620751) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 620751)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_620783 : ∀ k : Nat,
    iterate (1048576 * k + 620783) 32 = 531441 * k + 314627 ∧
      531441 * k + 314627 < 1048576 * k + 620783 := by
  intro k
  have h1 : C (1048576 * k + 620783) = 3145728 * k + 1862350 := by
    unfold C
    simp [show (1048576 * k + 620783) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1862350) = 1572864 * k + 931175 := by
    unfold C
    simp [show (3145728 * k + 1862350) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 931175) = 4718592 * k + 2793526 := by
    unfold C
    simp [show (1572864 * k + 931175) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2793526) = 2359296 * k + 1396763 := by
    unfold C
    simp [show (4718592 * k + 2793526) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1396763) = 7077888 * k + 4190290 := by
    unfold C
    simp [show (2359296 * k + 1396763) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4190290) = 3538944 * k + 2095145 := by
    unfold C
    simp [show (7077888 * k + 4190290) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2095145) = 10616832 * k + 6285436 := by
    unfold C
    simp [show (3538944 * k + 2095145) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6285436) = 5308416 * k + 3142718 := by
    unfold C
    simp [show (10616832 * k + 6285436) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3142718) = 2654208 * k + 1571359 := by
    unfold C
    simp [show (5308416 * k + 3142718) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1571359) = 7962624 * k + 4714078 := by
    unfold C
    simp [show (2654208 * k + 1571359) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4714078) = 3981312 * k + 2357039 := by
    unfold C
    simp [show (7962624 * k + 4714078) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2357039) = 11943936 * k + 7071118 := by
    unfold C
    simp [show (3981312 * k + 2357039) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7071118) = 5971968 * k + 3535559 := by
    unfold C
    simp [show (11943936 * k + 7071118) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3535559) = 17915904 * k + 10606678 := by
    unfold C
    simp [show (5971968 * k + 3535559) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10606678) = 8957952 * k + 5303339 := by
    unfold C
    simp [show (17915904 * k + 10606678) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5303339) = 26873856 * k + 15910018 := by
    unfold C
    simp [show (8957952 * k + 5303339) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 15910018) = 13436928 * k + 7955009 := by
    unfold C
    simp [show (26873856 * k + 15910018) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7955009) = 40310784 * k + 23865028 := by
    unfold C
    simp [show (13436928 * k + 7955009) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 23865028) = 20155392 * k + 11932514 := by
    unfold C
    simp [show (40310784 * k + 23865028) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 11932514) = 10077696 * k + 5966257 := by
    unfold C
    simp [show (20155392 * k + 11932514) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5966257) = 30233088 * k + 17898772 := by
    unfold C
    simp [show (10077696 * k + 5966257) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 17898772) = 15116544 * k + 8949386 := by
    unfold C
    simp [show (30233088 * k + 17898772) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8949386) = 7558272 * k + 4474693 := by
    unfold C
    simp [show (15116544 * k + 8949386) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4474693) = 22674816 * k + 13424080 := by
    unfold C
    simp [show (7558272 * k + 4474693) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 13424080) = 11337408 * k + 6712040 := by
    unfold C
    simp [show (22674816 * k + 13424080) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6712040) = 5668704 * k + 3356020 := by
    unfold C
    simp [show (11337408 * k + 6712040) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3356020) = 2834352 * k + 1678010 := by
    unfold C
    simp [show (5668704 * k + 3356020) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1678010) = 1417176 * k + 839005 := by
    unfold C
    simp [show (2834352 * k + 1678010) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 839005) = 4251528 * k + 2517016 := by
    unfold C
    simp [show (1417176 * k + 839005) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2517016) = 2125764 * k + 1258508 := by
    unfold C
    simp [show (4251528 * k + 2517016) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1258508) = 1062882 * k + 629254 := by
    unfold C
    simp [show (2125764 * k + 1258508) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 629254) = 531441 * k + 314627 := by
    unfold C
    simp [show (1062882 * k + 629254) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 620783) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 620783)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_621307 : ∀ k : Nat,
    iterate (1048576 * k + 621307) 32 = 531441 * k + 314893 ∧
      531441 * k + 314893 < 1048576 * k + 621307 := by
  intro k
  have h1 : C (1048576 * k + 621307) = 3145728 * k + 1863922 := by
    unfold C
    simp [show (1048576 * k + 621307) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1863922) = 1572864 * k + 931961 := by
    unfold C
    simp [show (3145728 * k + 1863922) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 931961) = 4718592 * k + 2795884 := by
    unfold C
    simp [show (1572864 * k + 931961) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2795884) = 2359296 * k + 1397942 := by
    unfold C
    simp [show (4718592 * k + 2795884) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1397942) = 1179648 * k + 698971 := by
    unfold C
    simp [show (2359296 * k + 1397942) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 698971) = 3538944 * k + 2096914 := by
    unfold C
    simp [show (1179648 * k + 698971) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2096914) = 1769472 * k + 1048457 := by
    unfold C
    simp [show (3538944 * k + 2096914) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1048457) = 5308416 * k + 3145372 := by
    unfold C
    simp [show (1769472 * k + 1048457) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3145372) = 2654208 * k + 1572686 := by
    unfold C
    simp [show (5308416 * k + 3145372) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1572686) = 1327104 * k + 786343 := by
    unfold C
    simp [show (2654208 * k + 1572686) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 786343) = 3981312 * k + 2359030 := by
    unfold C
    simp [show (1327104 * k + 786343) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2359030) = 1990656 * k + 1179515 := by
    unfold C
    simp [show (3981312 * k + 2359030) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1179515) = 5971968 * k + 3538546 := by
    unfold C
    simp [show (1990656 * k + 1179515) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3538546) = 2985984 * k + 1769273 := by
    unfold C
    simp [show (5971968 * k + 3538546) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1769273) = 8957952 * k + 5307820 := by
    unfold C
    simp [show (2985984 * k + 1769273) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5307820) = 4478976 * k + 2653910 := by
    unfold C
    simp [show (8957952 * k + 5307820) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2653910) = 2239488 * k + 1326955 := by
    unfold C
    simp [show (4478976 * k + 2653910) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1326955) = 6718464 * k + 3980866 := by
    unfold C
    simp [show (2239488 * k + 1326955) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3980866) = 3359232 * k + 1990433 := by
    unfold C
    simp [show (6718464 * k + 3980866) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1990433) = 10077696 * k + 5971300 := by
    unfold C
    simp [show (3359232 * k + 1990433) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5971300) = 5038848 * k + 2985650 := by
    unfold C
    simp [show (10077696 * k + 5971300) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2985650) = 2519424 * k + 1492825 := by
    unfold C
    simp [show (5038848 * k + 2985650) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1492825) = 7558272 * k + 4478476 := by
    unfold C
    simp [show (2519424 * k + 1492825) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4478476) = 3779136 * k + 2239238 := by
    unfold C
    simp [show (7558272 * k + 4478476) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2239238) = 1889568 * k + 1119619 := by
    unfold C
    simp [show (3779136 * k + 2239238) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1119619) = 5668704 * k + 3358858 := by
    unfold C
    simp [show (1889568 * k + 1119619) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3358858) = 2834352 * k + 1679429 := by
    unfold C
    simp [show (5668704 * k + 3358858) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1679429) = 8503056 * k + 5038288 := by
    unfold C
    simp [show (2834352 * k + 1679429) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5038288) = 4251528 * k + 2519144 := by
    unfold C
    simp [show (8503056 * k + 5038288) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2519144) = 2125764 * k + 1259572 := by
    unfold C
    simp [show (4251528 * k + 2519144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1259572) = 1062882 * k + 629786 := by
    unfold C
    simp [show (2125764 * k + 1259572) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 629786) = 531441 * k + 314893 := by
    unfold C
    simp [show (1062882 * k + 629786) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 621307) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 621307)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_621343 : ∀ k : Nat,
    iterate (1048576 * k + 621343) 32 = 531441 * k + 314911 ∧
      531441 * k + 314911 < 1048576 * k + 621343 := by
  intro k
  have h1 : C (1048576 * k + 621343) = 3145728 * k + 1864030 := by
    unfold C
    simp [show (1048576 * k + 621343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1864030) = 1572864 * k + 932015 := by
    unfold C
    simp [show (3145728 * k + 1864030) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 932015) = 4718592 * k + 2796046 := by
    unfold C
    simp [show (1572864 * k + 932015) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2796046) = 2359296 * k + 1398023 := by
    unfold C
    simp [show (4718592 * k + 2796046) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1398023) = 7077888 * k + 4194070 := by
    unfold C
    simp [show (2359296 * k + 1398023) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4194070) = 3538944 * k + 2097035 := by
    unfold C
    simp [show (7077888 * k + 4194070) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2097035) = 10616832 * k + 6291106 := by
    unfold C
    simp [show (3538944 * k + 2097035) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6291106) = 5308416 * k + 3145553 := by
    unfold C
    simp [show (10616832 * k + 6291106) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3145553) = 15925248 * k + 9436660 := by
    unfold C
    simp [show (5308416 * k + 3145553) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9436660) = 7962624 * k + 4718330 := by
    unfold C
    simp [show (15925248 * k + 9436660) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4718330) = 3981312 * k + 2359165 := by
    unfold C
    simp [show (7962624 * k + 4718330) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2359165) = 11943936 * k + 7077496 := by
    unfold C
    simp [show (3981312 * k + 2359165) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7077496) = 5971968 * k + 3538748 := by
    unfold C
    simp [show (11943936 * k + 7077496) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3538748) = 2985984 * k + 1769374 := by
    unfold C
    simp [show (5971968 * k + 3538748) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1769374) = 1492992 * k + 884687 := by
    unfold C
    simp [show (2985984 * k + 1769374) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 884687) = 4478976 * k + 2654062 := by
    unfold C
    simp [show (1492992 * k + 884687) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2654062) = 2239488 * k + 1327031 := by
    unfold C
    simp [show (4478976 * k + 2654062) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1327031) = 6718464 * k + 3981094 := by
    unfold C
    simp [show (2239488 * k + 1327031) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3981094) = 3359232 * k + 1990547 := by
    unfold C
    simp [show (6718464 * k + 3981094) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1990547) = 10077696 * k + 5971642 := by
    unfold C
    simp [show (3359232 * k + 1990547) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5971642) = 5038848 * k + 2985821 := by
    unfold C
    simp [show (10077696 * k + 5971642) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2985821) = 15116544 * k + 8957464 := by
    unfold C
    simp [show (5038848 * k + 2985821) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8957464) = 7558272 * k + 4478732 := by
    unfold C
    simp [show (15116544 * k + 8957464) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4478732) = 3779136 * k + 2239366 := by
    unfold C
    simp [show (7558272 * k + 4478732) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2239366) = 1889568 * k + 1119683 := by
    unfold C
    simp [show (3779136 * k + 2239366) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1119683) = 5668704 * k + 3359050 := by
    unfold C
    simp [show (1889568 * k + 1119683) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3359050) = 2834352 * k + 1679525 := by
    unfold C
    simp [show (5668704 * k + 3359050) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1679525) = 8503056 * k + 5038576 := by
    unfold C
    simp [show (2834352 * k + 1679525) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5038576) = 4251528 * k + 2519288 := by
    unfold C
    simp [show (8503056 * k + 5038576) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2519288) = 2125764 * k + 1259644 := by
    unfold C
    simp [show (4251528 * k + 2519288) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1259644) = 1062882 * k + 629822 := by
    unfold C
    simp [show (2125764 * k + 1259644) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 629822) = 531441 * k + 314911 := by
    unfold C
    simp [show (1062882 * k + 629822) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 621343) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 621343)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_621503 : ∀ k : Nat,
    iterate (1048576 * k + 621503) 32 = 531441 * k + 314992 ∧
      531441 * k + 314992 < 1048576 * k + 621503 := by
  intro k
  have h1 : C (1048576 * k + 621503) = 3145728 * k + 1864510 := by
    unfold C
    simp [show (1048576 * k + 621503) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1864510) = 1572864 * k + 932255 := by
    unfold C
    simp [show (3145728 * k + 1864510) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 932255) = 4718592 * k + 2796766 := by
    unfold C
    simp [show (1572864 * k + 932255) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2796766) = 2359296 * k + 1398383 := by
    unfold C
    simp [show (4718592 * k + 2796766) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1398383) = 7077888 * k + 4195150 := by
    unfold C
    simp [show (2359296 * k + 1398383) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4195150) = 3538944 * k + 2097575 := by
    unfold C
    simp [show (7077888 * k + 4195150) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2097575) = 10616832 * k + 6292726 := by
    unfold C
    simp [show (3538944 * k + 2097575) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6292726) = 5308416 * k + 3146363 := by
    unfold C
    simp [show (10616832 * k + 6292726) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3146363) = 15925248 * k + 9439090 := by
    unfold C
    simp [show (5308416 * k + 3146363) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9439090) = 7962624 * k + 4719545 := by
    unfold C
    simp [show (15925248 * k + 9439090) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4719545) = 23887872 * k + 14158636 := by
    unfold C
    simp [show (7962624 * k + 4719545) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 14158636) = 11943936 * k + 7079318 := by
    unfold C
    simp [show (23887872 * k + 14158636) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7079318) = 5971968 * k + 3539659 := by
    unfold C
    simp [show (11943936 * k + 7079318) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3539659) = 17915904 * k + 10618978 := by
    unfold C
    simp [show (5971968 * k + 3539659) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10618978) = 8957952 * k + 5309489 := by
    unfold C
    simp [show (17915904 * k + 10618978) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5309489) = 26873856 * k + 15928468 := by
    unfold C
    simp [show (8957952 * k + 5309489) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 15928468) = 13436928 * k + 7964234 := by
    unfold C
    simp [show (26873856 * k + 15928468) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7964234) = 6718464 * k + 3982117 := by
    unfold C
    simp [show (13436928 * k + 7964234) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3982117) = 20155392 * k + 11946352 := by
    unfold C
    simp [show (6718464 * k + 3982117) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 11946352) = 10077696 * k + 5973176 := by
    unfold C
    simp [show (20155392 * k + 11946352) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5973176) = 5038848 * k + 2986588 := by
    unfold C
    simp [show (10077696 * k + 5973176) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2986588) = 2519424 * k + 1493294 := by
    unfold C
    simp [show (5038848 * k + 2986588) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1493294) = 1259712 * k + 746647 := by
    unfold C
    simp [show (2519424 * k + 1493294) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 746647) = 3779136 * k + 2239942 := by
    unfold C
    simp [show (1259712 * k + 746647) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2239942) = 1889568 * k + 1119971 := by
    unfold C
    simp [show (3779136 * k + 2239942) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1119971) = 5668704 * k + 3359914 := by
    unfold C
    simp [show (1889568 * k + 1119971) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3359914) = 2834352 * k + 1679957 := by
    unfold C
    simp [show (5668704 * k + 3359914) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1679957) = 8503056 * k + 5039872 := by
    unfold C
    simp [show (2834352 * k + 1679957) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5039872) = 4251528 * k + 2519936 := by
    unfold C
    simp [show (8503056 * k + 5039872) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2519936) = 2125764 * k + 1259968 := by
    unfold C
    simp [show (4251528 * k + 2519936) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1259968) = 1062882 * k + 629984 := by
    unfold C
    simp [show (2125764 * k + 1259968) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 629984) = 531441 * k + 314992 := by
    unfold C
    simp [show (1062882 * k + 629984) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 621503) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 621503)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_621563 : ∀ k : Nat,
    iterate (1048576 * k + 621563) 32 = 531441 * k + 315023 ∧
      531441 * k + 315023 < 1048576 * k + 621563 := by
  intro k
  have h1 : C (1048576 * k + 621563) = 3145728 * k + 1864690 := by
    unfold C
    simp [show (1048576 * k + 621563) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1864690) = 1572864 * k + 932345 := by
    unfold C
    simp [show (3145728 * k + 1864690) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 932345) = 4718592 * k + 2797036 := by
    unfold C
    simp [show (1572864 * k + 932345) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2797036) = 2359296 * k + 1398518 := by
    unfold C
    simp [show (4718592 * k + 2797036) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1398518) = 1179648 * k + 699259 := by
    unfold C
    simp [show (2359296 * k + 1398518) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 699259) = 3538944 * k + 2097778 := by
    unfold C
    simp [show (1179648 * k + 699259) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2097778) = 1769472 * k + 1048889 := by
    unfold C
    simp [show (3538944 * k + 2097778) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1048889) = 5308416 * k + 3146668 := by
    unfold C
    simp [show (1769472 * k + 1048889) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3146668) = 2654208 * k + 1573334 := by
    unfold C
    simp [show (5308416 * k + 3146668) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1573334) = 1327104 * k + 786667 := by
    unfold C
    simp [show (2654208 * k + 1573334) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 786667) = 3981312 * k + 2360002 := by
    unfold C
    simp [show (1327104 * k + 786667) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2360002) = 1990656 * k + 1180001 := by
    unfold C
    simp [show (3981312 * k + 2360002) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1180001) = 5971968 * k + 3540004 := by
    unfold C
    simp [show (1990656 * k + 1180001) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3540004) = 2985984 * k + 1770002 := by
    unfold C
    simp [show (5971968 * k + 3540004) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1770002) = 1492992 * k + 885001 := by
    unfold C
    simp [show (2985984 * k + 1770002) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 885001) = 4478976 * k + 2655004 := by
    unfold C
    simp [show (1492992 * k + 885001) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2655004) = 2239488 * k + 1327502 := by
    unfold C
    simp [show (4478976 * k + 2655004) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1327502) = 1119744 * k + 663751 := by
    unfold C
    simp [show (2239488 * k + 1327502) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 663751) = 3359232 * k + 1991254 := by
    unfold C
    simp [show (1119744 * k + 663751) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1991254) = 1679616 * k + 995627 := by
    unfold C
    simp [show (3359232 * k + 1991254) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 995627) = 5038848 * k + 2986882 := by
    unfold C
    simp [show (1679616 * k + 995627) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2986882) = 2519424 * k + 1493441 := by
    unfold C
    simp [show (5038848 * k + 2986882) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1493441) = 7558272 * k + 4480324 := by
    unfold C
    simp [show (2519424 * k + 1493441) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4480324) = 3779136 * k + 2240162 := by
    unfold C
    simp [show (7558272 * k + 4480324) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2240162) = 1889568 * k + 1120081 := by
    unfold C
    simp [show (3779136 * k + 2240162) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1120081) = 5668704 * k + 3360244 := by
    unfold C
    simp [show (1889568 * k + 1120081) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3360244) = 2834352 * k + 1680122 := by
    unfold C
    simp [show (5668704 * k + 3360244) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1680122) = 1417176 * k + 840061 := by
    unfold C
    simp [show (2834352 * k + 1680122) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 840061) = 4251528 * k + 2520184 := by
    unfold C
    simp [show (1417176 * k + 840061) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2520184) = 2125764 * k + 1260092 := by
    unfold C
    simp [show (4251528 * k + 2520184) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1260092) = 1062882 * k + 630046 := by
    unfold C
    simp [show (2125764 * k + 1260092) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 630046) = 531441 * k + 315023 := by
    unfold C
    simp [show (1062882 * k + 630046) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 621563) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 621563)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_621807 : ∀ k : Nat,
    iterate (1048576 * k + 621807) 32 = 531441 * k + 315146 ∧
      531441 * k + 315146 < 1048576 * k + 621807 := by
  intro k
  have h1 : C (1048576 * k + 621807) = 3145728 * k + 1865422 := by
    unfold C
    simp [show (1048576 * k + 621807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1865422) = 1572864 * k + 932711 := by
    unfold C
    simp [show (3145728 * k + 1865422) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 932711) = 4718592 * k + 2798134 := by
    unfold C
    simp [show (1572864 * k + 932711) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2798134) = 2359296 * k + 1399067 := by
    unfold C
    simp [show (4718592 * k + 2798134) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1399067) = 7077888 * k + 4197202 := by
    unfold C
    simp [show (2359296 * k + 1399067) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4197202) = 3538944 * k + 2098601 := by
    unfold C
    simp [show (7077888 * k + 4197202) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2098601) = 10616832 * k + 6295804 := by
    unfold C
    simp [show (3538944 * k + 2098601) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6295804) = 5308416 * k + 3147902 := by
    unfold C
    simp [show (10616832 * k + 6295804) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3147902) = 2654208 * k + 1573951 := by
    unfold C
    simp [show (5308416 * k + 3147902) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1573951) = 7962624 * k + 4721854 := by
    unfold C
    simp [show (2654208 * k + 1573951) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4721854) = 3981312 * k + 2360927 := by
    unfold C
    simp [show (7962624 * k + 4721854) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2360927) = 11943936 * k + 7082782 := by
    unfold C
    simp [show (3981312 * k + 2360927) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7082782) = 5971968 * k + 3541391 := by
    unfold C
    simp [show (11943936 * k + 7082782) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3541391) = 17915904 * k + 10624174 := by
    unfold C
    simp [show (5971968 * k + 3541391) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10624174) = 8957952 * k + 5312087 := by
    unfold C
    simp [show (17915904 * k + 10624174) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5312087) = 26873856 * k + 15936262 := by
    unfold C
    simp [show (8957952 * k + 5312087) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 15936262) = 13436928 * k + 7968131 := by
    unfold C
    simp [show (26873856 * k + 15936262) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7968131) = 40310784 * k + 23904394 := by
    unfold C
    simp [show (13436928 * k + 7968131) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 23904394) = 20155392 * k + 11952197 := by
    unfold C
    simp [show (40310784 * k + 23904394) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 11952197) = 60466176 * k + 35856592 := by
    unfold C
    simp [show (20155392 * k + 11952197) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 35856592) = 30233088 * k + 17928296 := by
    unfold C
    simp [show (60466176 * k + 35856592) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 17928296) = 15116544 * k + 8964148 := by
    unfold C
    simp [show (30233088 * k + 17928296) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8964148) = 7558272 * k + 4482074 := by
    unfold C
    simp [show (15116544 * k + 8964148) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4482074) = 3779136 * k + 2241037 := by
    unfold C
    simp [show (7558272 * k + 4482074) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2241037) = 11337408 * k + 6723112 := by
    unfold C
    simp [show (3779136 * k + 2241037) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6723112) = 5668704 * k + 3361556 := by
    unfold C
    simp [show (11337408 * k + 6723112) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3361556) = 2834352 * k + 1680778 := by
    unfold C
    simp [show (5668704 * k + 3361556) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1680778) = 1417176 * k + 840389 := by
    unfold C
    simp [show (2834352 * k + 1680778) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 840389) = 4251528 * k + 2521168 := by
    unfold C
    simp [show (1417176 * k + 840389) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2521168) = 2125764 * k + 1260584 := by
    unfold C
    simp [show (4251528 * k + 2521168) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1260584) = 1062882 * k + 630292 := by
    unfold C
    simp [show (2125764 * k + 1260584) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 630292) = 531441 * k + 315146 := by
    unfold C
    simp [show (1062882 * k + 630292) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 621807) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 621807)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_622239 : ∀ k : Nat,
    iterate (1048576 * k + 622239) 32 = 531441 * k + 315365 ∧
      531441 * k + 315365 < 1048576 * k + 622239 := by
  intro k
  have h1 : C (1048576 * k + 622239) = 3145728 * k + 1866718 := by
    unfold C
    simp [show (1048576 * k + 622239) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1866718) = 1572864 * k + 933359 := by
    unfold C
    simp [show (3145728 * k + 1866718) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 933359) = 4718592 * k + 2800078 := by
    unfold C
    simp [show (1572864 * k + 933359) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2800078) = 2359296 * k + 1400039 := by
    unfold C
    simp [show (4718592 * k + 2800078) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1400039) = 7077888 * k + 4200118 := by
    unfold C
    simp [show (2359296 * k + 1400039) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4200118) = 3538944 * k + 2100059 := by
    unfold C
    simp [show (7077888 * k + 4200118) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2100059) = 10616832 * k + 6300178 := by
    unfold C
    simp [show (3538944 * k + 2100059) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6300178) = 5308416 * k + 3150089 := by
    unfold C
    simp [show (10616832 * k + 6300178) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3150089) = 15925248 * k + 9450268 := by
    unfold C
    simp [show (5308416 * k + 3150089) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9450268) = 7962624 * k + 4725134 := by
    unfold C
    simp [show (15925248 * k + 9450268) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4725134) = 3981312 * k + 2362567 := by
    unfold C
    simp [show (7962624 * k + 4725134) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2362567) = 11943936 * k + 7087702 := by
    unfold C
    simp [show (3981312 * k + 2362567) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7087702) = 5971968 * k + 3543851 := by
    unfold C
    simp [show (11943936 * k + 7087702) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3543851) = 17915904 * k + 10631554 := by
    unfold C
    simp [show (5971968 * k + 3543851) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10631554) = 8957952 * k + 5315777 := by
    unfold C
    simp [show (17915904 * k + 10631554) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5315777) = 26873856 * k + 15947332 := by
    unfold C
    simp [show (8957952 * k + 5315777) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 15947332) = 13436928 * k + 7973666 := by
    unfold C
    simp [show (26873856 * k + 15947332) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7973666) = 6718464 * k + 3986833 := by
    unfold C
    simp [show (13436928 * k + 7973666) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3986833) = 20155392 * k + 11960500 := by
    unfold C
    simp [show (6718464 * k + 3986833) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 11960500) = 10077696 * k + 5980250 := by
    unfold C
    simp [show (20155392 * k + 11960500) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5980250) = 5038848 * k + 2990125 := by
    unfold C
    simp [show (10077696 * k + 5980250) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2990125) = 15116544 * k + 8970376 := by
    unfold C
    simp [show (5038848 * k + 2990125) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8970376) = 7558272 * k + 4485188 := by
    unfold C
    simp [show (15116544 * k + 8970376) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4485188) = 3779136 * k + 2242594 := by
    unfold C
    simp [show (7558272 * k + 4485188) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2242594) = 1889568 * k + 1121297 := by
    unfold C
    simp [show (3779136 * k + 2242594) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1121297) = 5668704 * k + 3363892 := by
    unfold C
    simp [show (1889568 * k + 1121297) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3363892) = 2834352 * k + 1681946 := by
    unfold C
    simp [show (5668704 * k + 3363892) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1681946) = 1417176 * k + 840973 := by
    unfold C
    simp [show (2834352 * k + 1681946) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 840973) = 4251528 * k + 2522920 := by
    unfold C
    simp [show (1417176 * k + 840973) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2522920) = 2125764 * k + 1261460 := by
    unfold C
    simp [show (4251528 * k + 2522920) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1261460) = 1062882 * k + 630730 := by
    unfold C
    simp [show (2125764 * k + 1261460) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 630730) = 531441 * k + 315365 := by
    unfold C
    simp [show (1062882 * k + 630730) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 622239) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 622239)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard080
